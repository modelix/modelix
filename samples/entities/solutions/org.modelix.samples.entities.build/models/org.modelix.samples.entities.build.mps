<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:efdff57a-cfa9-4913-97cf-a611096e6226(org.modelix.samples.entities.build)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="indb" ref="r:af9443ad-0981-45a3-a5fa-cc9a9d65725b(de.q60.mps.web.build)" />
    <import index="90a9" ref="r:fb24ac52-5985-4947-bba9-25be6fd32c1a(de.itemis.mps.extensions.build)" />
  </imports>
  <registry>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7389400916848050071" name="jetbrains.mps.build.structure.BuildLayout_Zip" flags="ng" index="3981dG" />
      <concept id="7389400916848050060" name="jetbrains.mps.build.structure.BuildLayout_NamedContainer" flags="ng" index="3981dR">
        <child id="4380385936562148502" name="containerName" index="Nbhlr" />
      </concept>
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT">
        <child id="7389400916848144618" name="defaultPath" index="398pKh" />
      </concept>
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="8654221991637384182" name="jetbrains.mps.build.structure.BuildFileIncludesSelector" flags="ng" index="3qWCbU">
        <property id="8654221991637384184" name="pattern" index="3qWCbO" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="5248329904287794596" name="jetbrains.mps.build.structure.BuildInputFiles" flags="ng" index="3LXTmp">
        <child id="5248329904287794598" name="dir" index="3LXTmr" />
        <child id="5248329904287794679" name="selectors" index="3LXTna" />
      </concept>
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="6592112598314586625" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginGroup" flags="ng" index="m$f5U">
        <reference id="6592112598314586626" name="group" index="m$f5T" />
      </concept>
      <concept id="6592112598314498932" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin" flags="ng" index="m$_wf">
        <property id="6592112598314498927" name="id" index="m$_wk" />
        <child id="6592112598314498931" name="version" index="m$_w8" />
        <child id="6592112598314499050" name="content" index="m$_yh" />
        <child id="6592112598314499028" name="dependencies" index="m$_yJ" />
        <child id="6592112598314499021" name="name" index="m$_yQ" />
        <child id="6592112598314855574" name="containerName" index="m_cZH" />
      </concept>
      <concept id="6592112598314498926" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_Plugin" flags="ng" index="m$_wl">
        <reference id="6592112598314801433" name="plugin" index="m_rDy" />
        <child id="3570488090019868128" name="packagingType" index="pUk7w" />
      </concept>
      <concept id="6592112598314499027" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginDependency" flags="ng" index="m$_yC">
        <reference id="6592112598314499066" name="target" index="m$_y1" />
      </concept>
      <concept id="3570488090019868065" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_AutoPluginLayoutType" flags="ng" index="pUk6x" />
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <child id="5253498789149547825" name="sources" index="3bR31x" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="5507251971038816436" name="jetbrains.mps.build.mps.structure.BuildMps_Generator" flags="ng" index="1yeLz9" />
      <concept id="4278635856200817744" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleModelRoot" flags="ng" index="1BupzO">
        <property id="8137134783396907368" name="convert2binary" index="1Hdu6h" />
        <property id="8137134783396676838" name="extracted" index="1HemKv" />
        <property id="2889113830911481881" name="deployFolderName" index="3ZfqAx" />
        <child id="8137134783396676835" name="location" index="1HemKq" />
      </concept>
      <concept id="3189788309731840248" name="jetbrains.mps.build.mps.structure.BuildMps_Language" flags="ng" index="1E1JtD">
        <child id="9200313594498201639" name="generator" index="1TViLv" />
      </concept>
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="6HlxtAUSy61">
    <property role="TrG5h" value="org.modelix.samples.entities" />
    <property role="2DA0ip" value="../.." />
    <node concept="10PD9b" id="6HlxtAUSy62" role="10PD9s" />
    <node concept="3b7kt6" id="6HlxtAUSy63" role="10PD9s" />
    <node concept="398rNT" id="6HlxtAUSys6" role="1l3spd">
      <property role="TrG5h" value="entities.home" />
      <node concept="55IIr" id="6HlxtAUSysg" role="398pKh">
        <node concept="2Ry0Ak" id="6HlxtAUSysj" role="iGT6I" />
      </node>
    </node>
    <node concept="398rNT" id="6HlxtAUSy64" role="1l3spd">
      <property role="TrG5h" value="mps.home" />
      <node concept="55IIr" id="6HlxtAUTUhl" role="398pKh">
        <node concept="2Ry0Ak" id="6HlxtAUTUhq" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="6HlxtAUTUhv" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
            <node concept="2Ry0Ak" id="6HlxtAUTUh$" role="2Ry0An">
              <property role="2Ry0Am" value="artifacts" />
              <node concept="2Ry0Ak" id="6HlxtAUTUhD" role="2Ry0An">
                <property role="2Ry0Am" value="mps" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="6HlxtAUSyrO" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="398BVA" id="6HlxtAUSyrV" role="398pKh">
        <ref role="398BVh" node="6HlxtAUSy64" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="6HlxtAUSy65" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="6HlxtAUSy66" role="2JcizS">
        <ref role="398BVh" node="6HlxtAUSy64" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="6HlxtAUSCvo" role="1l3spa">
      <ref role="1l3spb" to="indb:7gF2HTviNP8" resolve="org.modelix" />
      <node concept="55IIr" id="6HlxtAUSCvu" role="2JcizS">
        <node concept="2Ry0Ak" id="6HlxtAUSCvx" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="6HlxtAUSCv$" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
            <node concept="2Ry0Ak" id="6HlxtAUSCvD" role="2Ry0An">
              <property role="2Ry0Am" value="build" />
              <node concept="2Ry0Ak" id="6HlxtAUSCvI" role="2Ry0An">
                <property role="2Ry0Am" value="org.modelix" />
                <node concept="2Ry0Ak" id="6HlxtAUSCvN" role="2Ry0An">
                  <property role="2Ry0Am" value="build" />
                  <node concept="2Ry0Ak" id="6HlxtAUSCvS" role="2Ry0An">
                    <property role="2Ry0Am" value="artifacts" />
                    <node concept="2Ry0Ak" id="3$E0xk89mY6" role="2Ry0An">
                      <property role="2Ry0Am" value="org.modelix" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="7gF2HTvj1Qi" role="1l3spa">
      <ref role="1l3spb" to="90a9:2Xjt3l56m0V" resolve="de.itemis.mps.extensions" />
      <node concept="55IIr" id="6HlxtAUTiIY" role="2JcizS">
        <node concept="2Ry0Ak" id="6HlxtAUTiJ3" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="6HlxtAUTiJ8" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
            <node concept="2Ry0Ak" id="6HlxtAUTiJd" role="2Ry0An">
              <property role="2Ry0Am" value="artifacts" />
              <node concept="2Ry0Ak" id="6HlxtAUTiJi" role="2Ry0An">
                <property role="2Ry0Am" value="de.itemis.mps.extensions" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="6HlxtAUSy6t" role="1l3spN">
      <node concept="3981dG" id="6HlxtAUSy6u" role="39821P">
        <node concept="3_J27D" id="6HlxtAUSy6v" role="Nbhlr">
          <node concept="3Mxwew" id="6HlxtAUSy6w" role="3MwsjC">
            <property role="3MwjfP" value="org.modelix.samples.entities.zip" />
          </node>
        </node>
        <node concept="m$_wl" id="6HlxtAUSy6x" role="39821P">
          <ref role="m_rDy" node="6HlxtAUSy6i" resolve="org.modelix.samples.entities" />
          <node concept="pUk6x" id="6HlxtAUSy6y" role="pUk7w" />
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="6HlxtAUSy6i" role="3989C9">
      <property role="m$_wk" value="org.modelix.samples.entities" />
      <node concept="3_J27D" id="6HlxtAUSy6j" role="m$_yQ">
        <node concept="3Mxwew" id="6HlxtAUSy6k" role="3MwsjC">
          <property role="3MwjfP" value="de.q60.mps.web.samples.entities" />
        </node>
      </node>
      <node concept="3_J27D" id="6HlxtAUSy6l" role="m$_w8">
        <node concept="3Mxwew" id="6HlxtAUSy6m" role="3MwsjC">
          <property role="3MwjfP" value="1.0" />
        </node>
      </node>
      <node concept="m$f5U" id="6HlxtAUSy6n" role="m$_yh">
        <ref role="m$f5T" node="6HlxtAUSy6h" resolve="de.q60.mps.web.samples.entities" />
      </node>
      <node concept="m$_yC" id="6HlxtAUSy6o" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="1z8Uup0ooSx" role="m$_yJ">
        <ref role="m$_y1" to="indb:7gF2HTvj4WE" resolve="org.modelix.common" />
      </node>
      <node concept="m$_yC" id="1z8Uup0ooSD" role="m$_yJ">
        <ref role="m$_y1" to="indb:7gF2HTvj4Cd" resolve="org.modelix.ui" />
      </node>
      <node concept="3_J27D" id="6HlxtAUSy6p" role="m_cZH">
        <node concept="3Mxwew" id="6HlxtAUSy6q" role="3MwsjC">
          <property role="3MwjfP" value="de.q60.mps.web.samples.entities" />
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="6HlxtAUSy6h" role="3989C9">
      <property role="TrG5h" value="de.q60.mps.web.samples.entities" />
      <node concept="1E1JtD" id="6HlxtAUSy6g" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.samples.entities" />
        <property role="3LESm3" value="363848cf-91df-484c-9066-7089821cb609" />
        <node concept="55IIr" id="6HlxtAUSy6b" role="3LF7KH">
          <node concept="2Ry0Ak" id="6HlxtAUSy6c" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="6HlxtAUSy6d" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.samples.entities" />
              <node concept="2Ry0Ak" id="6HlxtAUSy6e" role="2Ry0An">
                <property role="2Ry0Am" value="org.modelix.samples.entities.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="6HlxtAUSy6z" role="1TViLv">
          <property role="TrG5h" value="org.modelix.samples.entities#01" />
          <property role="3LESm3" value="e2c5c617-93c2-480d-8203-5d9a4ad8787b" />
          <node concept="1BupzO" id="3$E0xk87NOq" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="3$E0xk87NOr" role="1HemKq">
              <node concept="55IIr" id="3$E0xk87NOl" role="3LXTmr">
                <node concept="2Ry0Ak" id="3$E0xk87NOm" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="3$E0xk87NOn" role="2Ry0An">
                    <property role="2Ry0Am" value="org.modelix.samples.entities" />
                    <node concept="2Ry0Ak" id="3$E0xk87NOo" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="3$E0xk87NOp" role="2Ry0An">
                        <property role="2Ry0Am" value="template" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="3$E0xk87NOs" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1z8Uup0ooSi" role="3bR37C">
          <node concept="3bR9La" id="1z8Uup0ooSj" role="1SiIV1">
            <ref role="3bR37D" to="indb:7gF2HTviNPn" resolve="org.modelix.ui.sm" />
          </node>
        </node>
        <node concept="1SiIV0" id="1z8Uup0ooSk" role="3bR37C">
          <node concept="3bR9La" id="1z8Uup0ooSl" role="1SiIV1">
            <ref role="3bR37D" to="90a9:4iIKqJTZ5HI" resolve="de.q60.mps.shadowmodels.runtimelang" />
          </node>
        </node>
        <node concept="1SiIV0" id="1z8Uup0ooSm" role="3bR37C">
          <node concept="3bR9La" id="1z8Uup0ooSn" role="1SiIV1">
            <ref role="3bR37D" to="indb:7gF2HTviNPF" resolve="org.modelix.ui.sm.dom" />
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda83CUZ" role="3bR37C">
          <node concept="3bR9La" id="5npwda83CV0" role="1SiIV1">
            <ref role="3bR37D" to="indb:7gF2HTviNPU" resolve="org.modelix.ui.sm.server" />
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda83CV1" role="3bR37C">
          <node concept="3bR9La" id="5npwda83CV2" role="1SiIV1">
            <ref role="3bR37D" to="indb:5Sw$pxbQPmv" resolve="org.modelix.jetty" />
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda83CV3" role="3bR37C">
          <node concept="3bR9La" id="5npwda83CV4" role="1SiIV1">
            <ref role="3bR37D" to="90a9:4iIKqJTZ5Hm" resolve="de.q60.mps.shadowmodels.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda83CV5" role="3bR37C">
          <node concept="3bR9La" id="5npwda83CV6" role="1SiIV1">
            <ref role="3bR37D" to="90a9:4iIKqJTZ5HO" resolve="de.q60.mps.shadowmodels.transformation" />
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda83CV7" role="3bR37C">
          <node concept="3bR9La" id="5npwda83CV8" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda83CV9" role="3bR37C">
          <node concept="3bR9La" id="5npwda83CVa" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda83CVb" role="3bR37C">
          <node concept="3bR9La" id="5npwda83CVc" role="1SiIV1">
            <ref role="3bR37D" to="90a9:BRK1N8p1Qt" resolve="de.q60.mps.shadowmodels.target.text" />
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda83CVd" role="3bR37C">
          <node concept="3bR9La" id="5npwda83CVe" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda83CVf" role="3bR37C">
          <node concept="3bR9La" id="5npwda83CVg" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda83CVh" role="3bR37C">
          <node concept="3bR9La" id="5npwda83CVi" role="1SiIV1">
            <ref role="3bR37D" to="indb:5npwda7lJQ3" resolve="org.modelix.ui.common" />
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda83CVj" role="3bR37C">
          <node concept="3bR9La" id="5npwda83CVk" role="1SiIV1">
            <ref role="3bR37D" to="indb:7gF2HTviNPP" resolve="org.modelix.lib" />
          </node>
        </node>
        <node concept="3bR9La" id="4Mx37Fxx66z" role="3bR37C">
          <ref role="3bR37D" to="indb:7gF2HTviNPs" resolve="org.modelix.model.mpsplugin" />
        </node>
        <node concept="1BupzO" id="3$E0xk87NOi" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="3$E0xk87NOj" role="1HemKq">
            <node concept="55IIr" id="3$E0xk87NOe" role="3LXTmr">
              <node concept="2Ry0Ak" id="3$E0xk87NOf" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="3$E0xk87NOg" role="2Ry0An">
                  <property role="2Ry0Am" value="org.modelix.samples.entities" />
                  <node concept="2Ry0Ak" id="3$E0xk87NOh" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3$E0xk87NOk" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

