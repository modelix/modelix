<?xml version="1.0" encoding="UTF-8"?>
<language namespace="org.modelix.aspect" uuid="375af171-bd4b-4bfb-bc9f-418fb996740b" languageVersion="0" moduleVersion="0">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="models" />
    </modelRoot>
  </models>
  <facets>
    <facet type="java">
      <classes generated="true" path="${module}/classes_gen" />
    </facet>
  </facets>
  <accessoryModels />
  <generators>
    <generator alias="main" namespace="org.modelix.aspect#01" uuid="be246e10-5276-4b2b-a05e-7a68bd87894d">
      <models>
        <modelRoot contentPath="${module}/generator/template" type="default">
          <sourceRoot location="." />
        </modelRoot>
      </models>
      <facets>
        <facet type="java">
          <classes generated="true" path="${module}/generator/classes_gen" />
        </facet>
      </facets>
      <external-templates />
      <dependencies>
        <dependency reexport="false">c5e5433e-201f-43e2-ad14-a6cba8c80cd6(org.modelix.model.mpsplugin)</dependency>
        <dependency reexport="false">6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)</dependency>
        <dependency reexport="false">e52a4835-844d-46a1-99f8-c06129db796f(de.q60.mps.shadowmodels.runtime)</dependency>
        <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
        <dependency reexport="false">8865b7a8-5271-43d3-884c-6fd1d9cfdd34(MPS.OpenAPI)</dependency>
        <dependency reexport="false">a7322769-ef64-4daa-a2f4-fd4228fb713e(de.q60.mps.shadowmodels.target.text)</dependency>
        <dependency reexport="false">fc3c2aa8-0d4b-463f-a774-40d450aa04a0(org.modelix.jetty)</dependency>
        <dependency reexport="false">6f6906a4-f244-4806-a98b-0bc781cef2a8(org.modelix.ui.sm.dom)</dependency>
        <dependency reexport="false">78874af2-5dd2-42a7-a21d-42fab3737d1d(org.modelix.ui.sm)</dependency>
        <dependency reexport="false">94b64715-a263-4c36-a138-8da14705ffa7(de.q60.mps.shadowmodels.transformation)</dependency>
        <dependency reexport="false">da981293-1ec2-4df0-95e4-df162984154c(org.modelix.ui.common)</dependency>
        <dependency reexport="false">b0f8641f-bd77-4421-8425-30d9088a82f7(org.apache.commons)</dependency>
        <dependency reexport="false">eb8d1040-bff5-4126-8949-fdd95ef4c502(org.modelix.ui.sm.server)</dependency>
        <dependency reexport="false">a247e09e-2435-45ba-b8d2-07e93feba96a(jetbrains.mps.baseLanguage.tuples)</dependency>
        <dependency reexport="false">5622e615-959d-4843-9df6-ef04ee578c18(org.modelix.model.mpsadapters)</dependency>
        <dependency reexport="false">2f21df6f-a66f-4e3b-9314-ca64c09b2e6c(org.modelix.aspect.runtime)</dependency>
      </dependencies>
      <languageVersions>
        <language slang="l:bc963c22-d419-49b6-8543-ea411eb9d3a1:de.q60.mps.polymorphicfunctions" version="0" />
        <language slang="l:94b64715-a263-4c36-a138-8da14705ffa7:de.q60.mps.shadowmodels.transformation" version="1" />
        <language slang="l:f3061a53-9226-4cc5-a443-f952ceaf5816:jetbrains.mps.baseLanguage" version="11" />
        <language slang="l:fd392034-7849-419d-9071-12563d152375:jetbrains.mps.baseLanguage.closures" version="0" />
        <language slang="l:83888646-71ce-4f1c-9c53-c54016f6ad4f:jetbrains.mps.baseLanguage.collections" version="1" />
        <language slang="l:f2801650-65d5-424e-bb1b-463a8781b786:jetbrains.mps.baseLanguage.javadoc" version="2" />
        <language slang="l:760a0a8c-eabb-4521-8bfd-65db761a9ba3:jetbrains.mps.baseLanguage.logging" version="0" />
        <language slang="l:a247e09e-2435-45ba-b8d2-07e93feba96a:jetbrains.mps.baseLanguage.tuples" version="0" />
        <language slang="l:df345b11-b8c7-4213-ac66-48d2a9b75d88:jetbrains.mps.baseLanguageInternal" version="0" />
        <language slang="l:63650c59-16c8-498a-99c8-005c7ee9515d:jetbrains.mps.lang.access" version="0" />
        <language slang="l:ceab5195-25ea-4f22-9b92-103b95ca8c0c:jetbrains.mps.lang.core" version="2" />
        <language slang="l:b401a680-8325-4110-8fd3-84331ff25bef:jetbrains.mps.lang.generator" version="4" />
        <language slang="l:d7706f63-9be2-479c-a3da-ae92af1e64d5:jetbrains.mps.lang.generator.generationContext" version="2" />
        <language slang="l:289fcc83-6543-41e8-a5ca-768235715ce4:jetbrains.mps.lang.generator.generationParameters" version="0" />
        <language slang="l:446c26eb-2b7b-4bf0-9b35-f83fa582753e:jetbrains.mps.lang.modelapi" version="0" />
        <language slang="l:3a13115c-633c-4c5c-bbcc-75c4219e9555:jetbrains.mps.lang.quotation" version="5" />
        <language slang="l:13744753-c81f-424a-9c1b-cf8943bf4e86:jetbrains.mps.lang.sharedConcepts" version="0" />
        <language slang="l:7866978e-a0f0-4cc7-81bc-4d213d9375e1:jetbrains.mps.lang.smodel" version="19" />
        <language slang="l:c7fb639f-be78-4307-89b0-b5959c3fa8c8:jetbrains.mps.lang.text" version="0" />
        <language slang="l:9ded098b-ad6a-4657-bfd9-48636cfe8bc3:jetbrains.mps.lang.traceable" version="0" />
      </languageVersions>
      <dependencyVersions>
        <module reference="3f233e7f-b8a6-46d2-a57f-795d56775243(Annotations)" version="0" />
        <module reference="6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)" version="0" />
        <module reference="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)" version="0" />
        <module reference="1ed103c3-3aa6-49b7-9c21-6765ee11f224(MPS.Editor)" version="0" />
        <module reference="498d89d2-c2e9-11e2-ad49-6cf049e62fe5(MPS.IDEA)" version="0" />
        <module reference="8865b7a8-5271-43d3-884c-6fd1d9cfdd34(MPS.OpenAPI)" version="0" />
        <module reference="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61(MPS.Platform)" version="0" />
        <module reference="95085166-3236-4dd7-bd8e-e753c8d20885(de.q60.mps.incremental.runtime)" version="0" />
        <module reference="ecfb9949-7433-4db5-85de-0f84d172e4ce(de.q60.mps.libs)" version="0" />
        <module reference="18463265-6d45-4514-82f1-cf7eb1222492(de.q60.mps.polymorphicfunctions.runtime)" version="0" />
        <module reference="e52a4835-844d-46a1-99f8-c06129db796f(de.q60.mps.shadowmodels.runtime)" version="0" />
        <module reference="a7322769-ef64-4daa-a2f4-fd4228fb713e(de.q60.mps.shadowmodels.target.text)" version="0" />
        <module reference="94b64715-a263-4c36-a138-8da14705ffa7(de.q60.mps.shadowmodels.transformation)" version="0" />
        <module reference="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" version="0" />
        <module reference="52b81ac7-93fd-4e9e-b972-4995882da6d4(jetbrains.mps.baseLanguage.references.runtime)" version="0" />
        <module reference="e39e4a59-8cb6-498e-860e-8fa8361c0d90(jetbrains.mps.baseLanguage.scopes)" version="0" />
        <module reference="a247e09e-2435-45ba-b8d2-07e93feba96a(jetbrains.mps.baseLanguage.tuples)" version="0" />
        <module reference="2d3c70e9-aab2-4870-8d8d-6036800e4103(jetbrains.mps.kernel)" version="0" />
        <module reference="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" version="0" />
        <module reference="9ded098b-ad6a-4657-bfd9-48636cfe8bc3(jetbrains.mps.lang.traceable)" version="0" />
        <module reference="b0f8641f-bd77-4421-8425-30d9088a82f7(org.apache.commons)" version="0" />
        <module reference="375af171-bd4b-4bfb-bc9f-418fb996740b(org.modelix.aspect)" version="0" />
        <module reference="be246e10-5276-4b2b-a05e-7a68bd87894d(org.modelix.aspect#01)" version="0" />
        <module reference="2f21df6f-a66f-4e3b-9314-ca64c09b2e6c(org.modelix.aspect.runtime)" version="0" />
        <module reference="fc3c2aa8-0d4b-463f-a774-40d450aa04a0(org.modelix.jetty)" version="0" />
        <module reference="87f4b21e-a3a5-459e-a54b-408fd9eb7350(org.modelix.lib)" version="0" />
        <module reference="cc99dce1-49f3-4392-8dbf-e22ca47bd0af(org.modelix.model.api)" version="0" />
        <module reference="0a2651ab-f212-45c2-a2f0-343e76cbc26b(org.modelix.model.client)" version="0" />
        <module reference="5622e615-959d-4843-9df6-ef04ee578c18(org.modelix.model.mpsadapters)" version="0" />
        <module reference="c5e5433e-201f-43e2-ad14-a6cba8c80cd6(org.modelix.model.mpsplugin)" version="0" />
        <module reference="da981293-1ec2-4df0-95e4-df162984154c(org.modelix.ui.common)" version="0" />
        <module reference="78874af2-5dd2-42a7-a21d-42fab3737d1d(org.modelix.ui.sm)" version="1" />
        <module reference="6f6906a4-f244-4806-a98b-0bc781cef2a8(org.modelix.ui.sm.dom)" version="0" />
        <module reference="eb8d1040-bff5-4126-8949-fdd95ef4c502(org.modelix.ui.sm.server)" version="0" />
      </dependencyVersions>
      <mapping-priorities />
    </generator>
  </generators>
  <sourcePath />
  <dependencies>
    <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
    <dependency reexport="false">c740997f-28c0-47e8-9b5a-e87dfdb17a21(org.modelix.jersey)</dependency>
    <dependency reexport="false">8865b7a8-5271-43d3-884c-6fd1d9cfdd34(MPS.OpenAPI)</dependency>
    <dependency reexport="false">f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</dependency>
    <dependency reexport="false">c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)</dependency>
    <dependency reexport="false">94b64715-a263-4c36-a138-8da14705ffa7(de.q60.mps.shadowmodels.transformation)</dependency>
    <dependency reexport="false">1ed103c3-3aa6-49b7-9c21-6765ee11f224(MPS.Editor)</dependency>
    <dependency reexport="false">7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)</dependency>
    <dependency reexport="false">6f6906a4-f244-4806-a98b-0bc781cef2a8(org.modelix.ui.sm.dom)</dependency>
    <dependency reexport="false">0bf7bc3b-b11d-42e4-b160-93d72af96397(de.q60.mps.shadowmodels.runtimelang)</dependency>
    <dependency reexport="false">0a7577d1-d4e5-431d-98b1-fae38f9aee80(org.modelix.model.repositoryconcepts)</dependency>
  </dependencies>
  <languageVersions>
    <language slang="l:52733268-be24-4f5f-ab84-a73b7c0c03b0:de.slisson.mps.richtext.customcell" version="0" />
    <language slang="l:f3061a53-9226-4cc5-a443-f952ceaf5816:jetbrains.mps.baseLanguage" version="11" />
    <language slang="l:443f4c36-fcf5-4eb6-9500-8d06ed259e3e:jetbrains.mps.baseLanguage.classifiers" version="0" />
    <language slang="l:fd392034-7849-419d-9071-12563d152375:jetbrains.mps.baseLanguage.closures" version="0" />
    <language slang="l:83888646-71ce-4f1c-9c53-c54016f6ad4f:jetbrains.mps.baseLanguage.collections" version="1" />
    <language slang="l:f2801650-65d5-424e-bb1b-463a8781b786:jetbrains.mps.baseLanguage.javadoc" version="2" />
    <language slang="l:c7d5b9dd-a05f-4be2-bc73-f2e16994cc67:jetbrains.mps.baseLanguage.lightweightdsl" version="1" />
    <language slang="l:760a0a8c-eabb-4521-8bfd-65db761a9ba3:jetbrains.mps.baseLanguage.logging" version="0" />
    <language slang="l:a247e09e-2435-45ba-b8d2-07e93feba96a:jetbrains.mps.baseLanguage.tuples" version="0" />
    <language slang="l:aee9cad2-acd4-4608-aef2-0004f6a1cdbd:jetbrains.mps.lang.actions" version="4" />
    <language slang="l:f159adf4-3c93-40f9-9c5a-1f245a8697af:jetbrains.mps.lang.aspect" version="2" />
    <language slang="l:af65afd8-f0dd-4942-87d9-63a55f2a9db1:jetbrains.mps.lang.behavior" version="2" />
    <language slang="l:3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1:jetbrains.mps.lang.constraints" version="6" />
    <language slang="l:e51810c5-7308-4642-bcb6-469e61b5dd18:jetbrains.mps.lang.constraints.msg.specification" version="0" />
    <language slang="l:47257bf3-78d3-470b-89d9-8c3261a61d15:jetbrains.mps.lang.constraints.rules" version="0" />
    <language slang="l:5dae8159-ab99-46bb-a40d-0cee30ee7018:jetbrains.mps.lang.constraints.rules.kinds" version="0" />
    <language slang="l:134c38d4-e3af-4d9e-b069-1c7df0a4005d:jetbrains.mps.lang.constraints.rules.skeleton" version="0" />
    <language slang="l:3ad5badc-1d9c-461c-b7b1-fa2fcd0a0ae7:jetbrains.mps.lang.context" version="0" />
    <language slang="l:ea3159bf-f48e-4720-bde2-86dba75f0d34:jetbrains.mps.lang.context.defs" version="0" />
    <language slang="l:ceab5195-25ea-4f22-9b92-103b95ca8c0c:jetbrains.mps.lang.core" version="2" />
    <language slang="l:f4ad079d-bc71-4ffb-9600-9328705cf998:jetbrains.mps.lang.descriptor" version="0" />
    <language slang="l:18bc6592-03a6-4e29-a83a-7ff23bde13ba:jetbrains.mps.lang.editor" version="14" />
    <language slang="l:ad93155d-79b2-4759-b10c-55123e763903:jetbrains.mps.lang.messages" version="0" />
    <language slang="l:446c26eb-2b7b-4bf0-9b35-f83fa582753e:jetbrains.mps.lang.modelapi" version="0" />
    <language slang="l:d4615e3b-d671-4ba9-af01-2b78369b0ba7:jetbrains.mps.lang.pattern" version="2" />
    <language slang="l:28f9e497-3b42-4291-aeba-0a1039153ab1:jetbrains.mps.lang.plugin" version="5" />
    <language slang="l:3a13115c-633c-4c5c-bbcc-75c4219e9555:jetbrains.mps.lang.quotation" version="5" />
    <language slang="l:982eb8df-2c96-4bd7-9963-11712ea622e5:jetbrains.mps.lang.resources" version="2" />
    <language slang="l:b3551702-269c-4f05-ba61-58060cef4292:jetbrains.mps.lang.rulesAndMessages" version="0" />
    <language slang="l:d8f591ec-4d86-4af2-9f92-a9e93c803ffa:jetbrains.mps.lang.scopes" version="0" />
    <language slang="l:13744753-c81f-424a-9c1b-cf8943bf4e86:jetbrains.mps.lang.sharedConcepts" version="0" />
    <language slang="l:7866978e-a0f0-4cc7-81bc-4d213d9375e1:jetbrains.mps.lang.smodel" version="19" />
    <language slang="l:c72da2b9-7cce-4447-8389-f407dc1158b7:jetbrains.mps.lang.structure" version="9" />
    <language slang="l:c7fb639f-be78-4307-89b0-b5959c3fa8c8:jetbrains.mps.lang.text" version="0" />
    <language slang="l:9ded098b-ad6a-4657-bfd9-48636cfe8bc3:jetbrains.mps.lang.traceable" version="0" />
    <language slang="l:7a5dda62-9140-4668-ab76-d5ed1746f2b2:jetbrains.mps.lang.typesystem" version="5" />
    <language slang="l:c9d137c4-3259-44f8-80ff-33ab2b506ee4:jetbrains.mps.lang.util.order" version="0" />
    <language slang="l:696c1165-4a59-463b-bc5d-902caab85dd0:jetbrains.mps.make.facet" version="0" />
  </languageVersions>
  <dependencyVersions>
    <module reference="3f233e7f-b8a6-46d2-a57f-795d56775243(Annotations)" version="0" />
    <module reference="6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)" version="0" />
    <module reference="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)" version="0" />
    <module reference="1ed103c3-3aa6-49b7-9c21-6765ee11f224(MPS.Editor)" version="0" />
    <module reference="498d89d2-c2e9-11e2-ad49-6cf049e62fe5(MPS.IDEA)" version="0" />
    <module reference="8865b7a8-5271-43d3-884c-6fd1d9cfdd34(MPS.OpenAPI)" version="0" />
    <module reference="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61(MPS.Platform)" version="0" />
    <module reference="0bf7bc3b-b11d-42e4-b160-93d72af96397(de.q60.mps.shadowmodels.runtimelang)" version="0" />
    <module reference="94b64715-a263-4c36-a138-8da14705ffa7(de.q60.mps.shadowmodels.transformation)" version="0" />
    <module reference="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" version="0" />
    <module reference="fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)" version="0" />
    <module reference="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" version="0" />
    <module reference="e39e4a59-8cb6-498e-860e-8fa8361c0d90(jetbrains.mps.baseLanguage.scopes)" version="0" />
    <module reference="2d3c70e9-aab2-4870-8d8d-6036800e4103(jetbrains.mps.kernel)" version="0" />
    <module reference="d936855b-48da-4812-a8a0-2bfddd633ac5(jetbrains.mps.lang.behavior.api)" version="0" />
    <module reference="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" version="0" />
    <module reference="a9e4c532-c5f5-4bb7-99ef-42abb73bbb70(jetbrains.mps.lang.descriptor.aspects)" version="0" />
    <module reference="446c26eb-2b7b-4bf0-9b35-f83fa582753e(jetbrains.mps.lang.modelapi)" version="0" />
    <module reference="d7eb0a2a-bd50-4576-beae-e4a89db35f20(jetbrains.mps.lang.scopes.runtime)" version="0" />
    <module reference="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" version="1" />
    <module reference="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" version="0" />
    <module reference="9ded098b-ad6a-4657-bfd9-48636cfe8bc3(jetbrains.mps.lang.traceable)" version="0" />
    <module reference="375af171-bd4b-4bfb-bc9f-418fb996740b(org.modelix.aspect)" version="0" />
    <module reference="c740997f-28c0-47e8-9b5a-e87dfdb17a21(org.modelix.jersey)" version="0" />
    <module reference="0a7577d1-d4e5-431d-98b1-fae38f9aee80(org.modelix.model.repositoryconcepts)" version="0" />
    <module reference="6f6906a4-f244-4806-a98b-0bc781cef2a8(org.modelix.ui.sm.dom)" version="0" />
  </dependencyVersions>
  <runtime>
    <dependency reexport="false">b0f8641f-bd77-4421-8425-30d9088a82f7(org.apache.commons)</dependency>
    <dependency reexport="false">c5e5433e-201f-43e2-ad14-a6cba8c80cd6(org.modelix.model.mpsplugin)</dependency>
    <dependency reexport="false">da981293-1ec2-4df0-95e4-df162984154c(org.modelix.ui.common)</dependency>
    <dependency reexport="false">cc99dce1-49f3-4392-8dbf-e22ca47bd0af(org.modelix.model.api)</dependency>
    <dependency reexport="false">5622e615-959d-4843-9df6-ef04ee578c18(org.modelix.model.mpsadapters)</dependency>
    <dependency reexport="false">fc3c2aa8-0d4b-463f-a774-40d450aa04a0(org.modelix.jetty)</dependency>
    <dependency reexport="false">2f21df6f-a66f-4e3b-9314-ca64c09b2e6c(org.modelix.aspect.runtime)</dependency>
  </runtime>
  <extendedLanguages>
    <extendedLanguage>f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</extendedLanguage>
  </extendedLanguages>
</language>

