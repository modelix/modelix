/*
 * Copyright 2003-2020 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.modelix.gradle.model;

import com.intellij.openapi.application.ApplicationManager;
import jetbrains.mps.ide.MPSCoreComponents;
import jetbrains.mps.persistence.DefaultModelRoot;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.MPSExtentions;
import jetbrains.mps.project.Solution;
import jetbrains.mps.project.structure.modules.SolutionDescriptor;
import jetbrains.mps.project.structure.modules.SolutionKind;
import jetbrains.mps.smodel.GeneralModuleFactory;
import jetbrains.mps.smodel.adapter.structure.concept.SAbstractConceptAdapter;
import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.vfs.IFileSystem;
import jetbrains.mps.vfs.VFSManager;
import kotlin.Unit;
import org.apache.log4j.Logger;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.modelix.model.api.IBranch;
import org.modelix.model.api.IConcept;
import org.modelix.model.api.INode;
import org.modelix.model.api.ITransaction;
import org.modelix.model.api.ITree;
import org.modelix.model.api.PBranch;
import org.modelix.model.api.PNodeAdapter;
import org.modelix.model.client.IdGeneratorDummy;
import org.modelix.model.client.RestWebModelClient;
import org.modelix.model.lazy.CLVersion;
import org.modelix.model.lazy.IConceptSerializer;
import org.modelix.model.lazy.INodeReferenceSerializer;
import org.modelix.model.util.StreamUtils;

import java.io.File;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

public class Sandbox {

    public static final Logger LOG = Logger.getLogger(Sandbox.class);

    public static void main(String[] args) {
        try {
            EnvironmentLoader.loadEnvironment((File) null);
            INodeReferenceSerializer.Companion.register(SNodeReferenceAdapter.SERIALIZER);
            IConceptSerializer.Companion.register(SConceptAdapter.SERIALIZER);

            RestWebModelClient client = new RestWebModelClient("http://localhost:28101/");
            String versionHash = client.get("branch_default_master");
            CLVersion version = CLVersion.Companion.loadFromHash(versionHash, client.getStoreCache());
            IBranch branch = new PBranch(version.getTree(), new IdGeneratorDummy());

            ApplicationManager.getApplication().invokeAndWait(() -> {
                ApplicationManager.getApplication().runWriteAction(() -> {
                    branch.runRead(() -> {
                        ITransaction t = branch.getTransaction();
                        List<INode> modules = StreamUtils.INSTANCE.toStream(t.getChildren(ITree.ROOT_ID, "modules"))
                                .map(id -> PNodeAdapter.Companion.wrap(id, branch)).collect(Collectors.toList());
                        createModules(modules);
                        return Unit.INSTANCE;
                    });
                });
            });
            System.exit(0);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
            ex.printStackTrace();
            LOG.error("", ex);
            System.exit(1);
        }
    }

    private static void createModules(List<INode> modules) {
        for (INode module : modules) {
            createModule(module);
        }
    }

    private static void createModule(INode module) {
        String name = module.getPropertyValue("name");
        MPSCoreComponents coreComponents = ApplicationManager.getApplication().getComponent(MPSCoreComponents.class);
        VFSManager vfsManager = coreComponents.getPlatform().findComponent(VFSManager.class);
        IFileSystem fileSystem = vfsManager.getFileSystem(VFSManager.FILE_FS);
        IFile generatedModulesFolder = fileSystem.getFile(new File("generatedModules"));
        generatedModulesFolder.deleteIfExists();
        IFile solutionFile = generatedModulesFolder.findChild(name).findChild("solution" + MPSExtentions.DOT_SOLUTION);
        SolutionDescriptor descriptor = new SolutionDescriptor();
        descriptor.getModelRootDescriptors().add(DefaultModelRoot.createDescriptor(solutionFile.getParent(), solutionFile.getParent().findChild(Solution.SOLUTION_MODELS)));
        descriptor.setKind(SolutionKind.PLUGIN_OTHER);
        Solution solution = (Solution) new GeneralModuleFactory().instantiate(descriptor, solutionFile);
        solution.updateModelsSet();
        for (INode model : module.getChildren("models")) {
            createModel(solution, model);
        }
        System.out.println("file: " + solutionFile.getPath());
        solution.save();
    }

    private static void createModel(AbstractModule module, INode model) {
        EditableSModel smodel = (EditableSModel) module.getModelRoots().iterator().next().createModel(model.getPropertyValue("name"));
        for (INode rootNode : model.getChildren("rootNodes")) {
            IConcept concept = rootNode.getConcept();
            SConcept sconcept = (SConcept) ((SConceptAdapter)concept).getAdapted();
            SNode rootSNode = smodel.createNode(sconcept);
            smodel.addRootNode(rootSNode);
            syncNode(rootNode, rootSNode);
        }
        smodel.save();
    }

    private static void syncNode(INode node, SNode snode) {
        for (SProperty property : snode.getConcept().getProperties()) {
            snode.setProperty(property, node.getPropertyValue(property.getName()));
        }

        // TODO references

        for (INode childNode : node.getAllChildren()) {
            SConcept childConcept = (SConcept) ((SConceptAdapter)childNode.getConcept()).getAdapted();
            SNode childSNode = snode.getModel().createNode(childConcept);
            snode.addChild(
                    findContainmentLink(snode.getConcept(), childNode.getRoleInParent()),
                    childSNode
            );
            syncNode(childNode, childSNode);
        }
    }

    private static SContainmentLink findContainmentLink(SAbstractConcept concept, String name) {
        for (SContainmentLink link : concept.getContainmentLinks()) {
            if (link.getName().equals(name)) {
                return link;
            }
        }
        throw new RuntimeException("containment link " + name + " not found in concept " + concept);
    }
}
