<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:af9443ad-0981-45a3-a5fa-cc9a9d65725b(de.q60.mps.web.build)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
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
      <concept id="927724900262033858" name="jetbrains.mps.build.structure.BuildSource_JavaOptions" flags="ng" index="2_Ic$z">
        <property id="927724900262033861" name="generateDebugInfo" index="2_Ic$$" />
        <property id="927724900262033862" name="copyResources" index="2_Ic$B" />
      </concept>
      <concept id="2750015747481074431" name="jetbrains.mps.build.structure.BuildLayout_Files" flags="ng" index="2HvfSZ">
        <child id="2750015747481074432" name="path" index="2HvfZ0" />
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
      <concept id="7389400916848036984" name="jetbrains.mps.build.structure.BuildLayout_Folder" flags="ng" index="398223" />
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
        <child id="3542413272732620719" name="aspects" index="1hWBAP" />
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
      <concept id="6503355885715333289" name="jetbrains.mps.build.mps.structure.BuildMpsAspect" flags="ng" index="2igEWh">
        <property id="7981469545489178349" name="generationMaxHeapSizeInMb" index="3UIfUI" />
      </concept>
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
        <property id="5253498789149547713" name="reexport" index="3bR36h" />
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="4297162197620964123" name="jetbrains.mps.build.mps.structure.BuildMps_GeneratorOptions" flags="ng" index="1wNqPr" />
      <concept id="5507251971038816436" name="jetbrains.mps.build.mps.structure.BuildMps_Generator" flags="ng" index="1yeLz9" />
      <concept id="4278635856200817744" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleModelRoot" flags="ng" index="1BupzO">
        <property id="8137134783396907368" name="convert2binary" index="1Hdu6h" />
        <property id="8137134783396676838" name="extracted" index="1HemKv" />
        <property id="2889113830911481881" name="deployFolderName" index="3ZfqAx" />
        <child id="8137134783396676835" name="location" index="1HemKq" />
      </concept>
      <concept id="4278635856200826393" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyJar" flags="ng" index="1BurEX">
        <child id="4278635856200826394" name="path" index="1BurEY" />
      </concept>
      <concept id="4278635856200794926" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyExtendLanguage" flags="ng" index="1Busua">
        <reference id="4278635856200794928" name="language" index="1Busuk" />
      </concept>
      <concept id="3189788309731981027" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleSolutionRuntime" flags="ng" index="1E0d5M">
        <reference id="3189788309731981028" name="solution" index="1E0d5P" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="3189788309731840248" name="jetbrains.mps.build.mps.structure.BuildMps_Language" flags="ng" index="1E1JtD">
        <child id="3189788309731917348" name="runtime" index="1E1XAP" />
        <child id="9200313594498201639" name="generator" index="1TViLv" />
      </concept>
      <concept id="322010710375794190" name="jetbrains.mps.build.mps.structure.BuildMps_DevKit" flags="ng" index="3LEwk6">
        <child id="322010710375832962" name="exports" index="3LEDUa" />
      </concept>
      <concept id="322010710375832938" name="jetbrains.mps.build.mps.structure.BuildMps_DevKitExportLanguage" flags="ng" index="3LEDTy">
        <reference id="322010710375832947" name="language" index="3LEDTV" />
      </concept>
      <concept id="322010710375832954" name="jetbrains.mps.build.mps.structure.BuildMps_DevKitExportSolution" flags="ng" index="3LEDTM">
        <reference id="322010710375832955" name="solution" index="3LEDTN" />
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
  <node concept="1l3spW" id="7gF2HTviNP8">
    <property role="TrG5h" value="de.q60.mps.web" />
    <property role="2DA0ip" value="../../build/de.q60.mps.web" />
    <node concept="10PD9b" id="7gF2HTviNP9" role="10PD9s" />
    <node concept="3b7kt6" id="7gF2HTviNPa" role="10PD9s" />
    <node concept="398rNT" id="7gF2HTvk5zJ" role="1l3spd">
      <property role="TrG5h" value="webmps.home" />
      <node concept="55IIr" id="7gF2HTvk5ET" role="398pKh">
        <node concept="2Ry0Ak" id="7gF2HTvk5Hj" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="3$7Kuaihl6d" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="7gF2HTviNPb" role="1l3spd">
      <property role="TrG5h" value="mps.home" />
      <node concept="398BVA" id="3$7KuaihmH3" role="398pKh">
        <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
        <node concept="2Ry0Ak" id="3$7Kuaihn7X" role="iGT6I">
          <property role="2Ry0Am" value="artifacts" />
          <node concept="2Ry0Ak" id="3$7Kuaihnpo" role="2Ry0An">
            <property role="2Ry0Am" value="mps" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="3$7KuaihnWs" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="398BVA" id="3$7Kuaihovs" role="398pKh">
        <ref role="398BVh" node="7gF2HTviNPb" resolve="mps.home" />
      </node>
    </node>
    <node concept="398rNT" id="4jf43pv7zoM" role="1l3spd">
      <property role="TrG5h" value="artifacts.root" />
      <node concept="398BVA" id="3$7KuaihlaD" role="398pKh">
        <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
        <node concept="2Ry0Ak" id="3$7Kuaihldc" role="iGT6I">
          <property role="2Ry0Am" value="artifacts" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="7gF2HTviNPg" role="1l3spd">
      <property role="TrG5h" value="extensions.artifacts" />
      <node concept="398BVA" id="4jf43pv7zIE" role="398pKh">
        <ref role="398BVh" node="4jf43pv7zoM" resolve="artifacts.root" />
        <node concept="2Ry0Ak" id="4jf43pv7zQf" role="iGT6I">
          <property role="2Ry0Am" value="de.itemis.mps.extensions" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="3$7Kuaihl5X" role="1l3spd">
      <property role="TrG5h" value="webmps.modules" />
      <node concept="398BVA" id="3$7Kuaihl6U" role="398pKh">
        <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
        <node concept="2Ry0Ak" id="3$7Kuaihl8f" role="iGT6I">
          <property role="2Ry0Am" value="mps" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="7gF2HTviNPc" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="7gF2HTviNPd" role="2JcizS">
        <ref role="398BVh" node="7gF2HTviNPb" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="7gF2HTvj1Qi" role="1l3spa">
      <ref role="1l3spb" to="90a9:2Xjt3l56m0V" resolve="de.itemis.mps.extensions" />
      <node concept="398BVA" id="4jf43pv7KWU" role="2JcizS">
        <ref role="398BVh" node="7gF2HTviNPg" resolve="extensions.artifacts" />
      </node>
    </node>
    <node concept="1l3spV" id="7gF2HTviNQ7" role="1l3spN">
      <node concept="3981dG" id="7gF2HTviNQ8" role="39821P">
        <node concept="3_J27D" id="7gF2HTviNQ9" role="Nbhlr">
          <node concept="3Mxwew" id="7gF2HTviNQa" role="3MwsjC">
            <property role="3MwjfP" value="de.q60.mps.web.zip" />
          </node>
        </node>
        <node concept="m$_wl" id="7gF2HTvk5ef" role="39821P">
          <ref role="m_rDy" node="7gF2HTvj4WE" resolve="de.q60.mps.web.common" />
          <node concept="pUk6x" id="7gF2HTvk5gF" role="pUk7w" />
          <node concept="398223" id="7gF2HTvk5p8" role="39821P">
            <node concept="3_J27D" id="7gF2HTvk5p9" role="Nbhlr">
              <node concept="3Mxwew" id="7gF2HTvk5qm" role="3MwsjC">
                <property role="3MwjfP" value="lib" />
              </node>
            </node>
            <node concept="2HvfSZ" id="7gF2HTvk5xk" role="39821P">
              <node concept="398BVA" id="7gF2HTvk5JG" role="2HvfZ0">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
                <node concept="2Ry0Ak" id="7gF2HTvk5M8" role="iGT6I">
                  <property role="2Ry0Am" value="de.q60.mps.web.lib" />
                  <node concept="2Ry0Ak" id="7gF2HTvk5Mb" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2HvfSZ" id="5Sw$pxbSuza" role="39821P">
              <node concept="398BVA" id="5Sw$pxbSuPT" role="2HvfZ0">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
                <node concept="2Ry0Ak" id="5Sw$pxbSv8$" role="iGT6I">
                  <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                  <node concept="2Ry0Ak" id="5Sw$pxbSv8D" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2HvfSZ" id="5a2LedGLbYb" role="39821P">
              <node concept="398BVA" id="5a2LedGLbYc" role="2HvfZ0">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
                <node concept="2Ry0Ak" id="5a2LedGLbYd" role="iGT6I">
                  <property role="2Ry0Am" value="de.q60.mps.web.jersey" />
                  <node concept="2Ry0Ak" id="5a2LedGLbYe" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="m$_wl" id="7gF2HTvk5j6" role="39821P">
          <ref role="m_rDy" node="7gF2HTvj4Cd" resolve="de.q60.mps.web.ui" />
          <node concept="pUk6x" id="7gF2HTvk5ly" role="pUk7w" />
          <node concept="398223" id="1_iojA27rSX" role="39821P">
            <node concept="3_J27D" id="1_iojA27rSY" role="Nbhlr">
              <node concept="3Mxwew" id="1_iojA27s0T" role="3MwsjC">
                <property role="3MwjfP" value="lib" />
              </node>
            </node>
            <node concept="2HvfSZ" id="1_iojA27s0V" role="39821P">
              <node concept="398BVA" id="1_iojA27s8R" role="2HvfZ0">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
                <node concept="2Ry0Ak" id="1_iojA27sgP" role="iGT6I">
                  <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                  <node concept="2Ry0Ak" id="1_iojA27sgU" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2HvfSZ" id="62v7nyvXU45" role="39821P">
              <node concept="398BVA" id="62v7nyvXU46" role="2HvfZ0">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
                <node concept="2Ry0Ak" id="62v7nyvXU47" role="iGT6I">
                  <property role="2Ry0Am" value="de.q60.mps.web.ui.server" />
                  <node concept="2Ry0Ak" id="62v7nyvXU48" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="m$_wl" id="7gF2HTviNQb" role="39821P">
          <ref role="m_rDy" node="7gF2HTviNPW" resolve="de.q60.mps.web.model" />
          <node concept="pUk6x" id="7gF2HTviNQc" role="pUk7w" />
          <node concept="398223" id="7gF2HTvmh$r" role="39821P">
            <node concept="3_J27D" id="7gF2HTvmh$s" role="Nbhlr">
              <node concept="3Mxwew" id="7gF2HTvmhAP" role="3MwsjC">
                <property role="3MwjfP" value="lib" />
              </node>
            </node>
            <node concept="2HvfSZ" id="7gF2HTvmhAQ" role="39821P">
              <node concept="398BVA" id="7gF2HTvmhDg" role="2HvfZ0">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
                <node concept="2Ry0Ak" id="7gF2HTvmhFG" role="iGT6I">
                  <property role="2Ry0Am" value="de.q60.mps.web.model" />
                  <node concept="2Ry0Ak" id="7gF2HTvmhFJ" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="m$_wl" id="6HlxtAUTmjF" role="39821P">
          <ref role="m_rDy" node="6HlxtAUTj2a" resolve="de.q60.mps.web.langdev" />
          <node concept="pUk6x" id="6HlxtAUTmjG" role="pUk7w" />
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="7gF2HTvj4WE" role="3989C9">
      <property role="m$_wk" value="de.q60.mps.web.common" />
      <node concept="3_J27D" id="7gF2HTvj4WG" role="m$_yQ">
        <node concept="3Mxwew" id="7gF2HTvj51y" role="3MwsjC">
          <property role="3MwjfP" value="de.q60.mps.web.common" />
        </node>
      </node>
      <node concept="3_J27D" id="7gF2HTvj4WI" role="m_cZH">
        <node concept="3Mxwew" id="7gF2HTvj51z" role="3MwsjC">
          <property role="3MwjfP" value="de.q60.mps.web.common" />
        </node>
      </node>
      <node concept="3_J27D" id="7gF2HTvj4WK" role="m$_w8">
        <node concept="3Mxwew" id="7gF2HTvj52K" role="3MwsjC">
          <property role="3MwjfP" value="1.0" />
        </node>
      </node>
      <node concept="m$f5U" id="7gF2HTvj5b8" role="m$_yh">
        <ref role="m$f5T" node="7gF2HTvj55a" resolve="de.q60.mps.web.common" />
      </node>
      <node concept="m$_yC" id="7gF2HTvj5cl" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="5MA9wbc6Ktd" role="m$_yJ">
        <ref role="m$_y1" to="90a9:4iIKqJTZ5I8" resolve="de.q60.shadowmodels" />
      </node>
    </node>
    <node concept="m$_wf" id="7gF2HTvj4Cd" role="3989C9">
      <property role="m$_wk" value="de.q60.mps.web.ui" />
      <node concept="3_J27D" id="7gF2HTvj4Cf" role="m$_yQ">
        <node concept="3Mxwew" id="7gF2HTvj4Od" role="3MwsjC">
          <property role="3MwjfP" value="de.q60.mps.web.ui" />
        </node>
      </node>
      <node concept="3_J27D" id="7gF2HTvj4Ch" role="m_cZH">
        <node concept="3Mxwew" id="7gF2HTvj4Oe" role="3MwsjC">
          <property role="3MwjfP" value="de.q60.mps.web.ui" />
        </node>
      </node>
      <node concept="3_J27D" id="7gF2HTvj4Cj" role="m$_w8">
        <node concept="3Mxwew" id="7gF2HTvj4Pr" role="3MwsjC">
          <property role="3MwjfP" value="1.0" />
        </node>
      </node>
      <node concept="m$f5U" id="7gF2HTvj4QC" role="m$_yh">
        <ref role="m$f5T" node="7gF2HTvj46U" resolve="de.q60.mps.web.ui" />
      </node>
      <node concept="m$_yC" id="62v7nyvXijI" role="m$_yJ">
        <ref role="m$_y1" to="90a9:2Xjt3l57iTJ" resolve="de.slisson.mps.hacks" />
      </node>
      <node concept="m$_yC" id="7gF2HTvj4RP" role="m$_yJ">
        <ref role="m$_y1" to="90a9:4iIKqJTZ5I8" resolve="de.q60.shadowmodels" />
      </node>
      <node concept="m$_yC" id="7gF2HTvj4Uf" role="m$_yJ">
        <ref role="m$_y1" to="90a9:4p3FRivDLPy" resolve="org.apache.commons" />
      </node>
      <node concept="m$_yC" id="7gF2HTvj5eJ" role="m$_yJ">
        <ref role="m$_y1" node="7gF2HTvj4WE" resolve="de.q60.mps.web.common" />
      </node>
      <node concept="m$_yC" id="5a2LedGLgE6" role="m$_yJ">
        <ref role="m$_y1" node="7gF2HTviNPW" resolve="de.q60.mps.web.model" />
      </node>
    </node>
    <node concept="m$_wf" id="7gF2HTviNPW" role="3989C9">
      <property role="m$_wk" value="de.q60.mps.web.model" />
      <node concept="3_J27D" id="7gF2HTviNPX" role="m$_yQ">
        <node concept="3Mxwew" id="7gF2HTviNPY" role="3MwsjC">
          <property role="3MwjfP" value="de.q60.mps.web.model" />
        </node>
      </node>
      <node concept="3_J27D" id="7gF2HTviNPZ" role="m$_w8">
        <node concept="3Mxwew" id="7gF2HTviNQ0" role="3MwsjC">
          <property role="3MwjfP" value="1.0" />
        </node>
      </node>
      <node concept="m$f5U" id="7gF2HTviNQ1" role="m$_yh">
        <ref role="m$f5T" node="7gF2HTviNPV" resolve="de.q60.mps.web.model" />
      </node>
      <node concept="m$_yC" id="7gF2HTviNQ2" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="7gF2HTvj43j" role="m$_yJ">
        <ref role="m$_y1" to="90a9:4iIKqJTZ5I8" resolve="de.q60.shadowmodels" />
      </node>
      <node concept="m$_yC" id="7gF2HTvj5kI" role="m$_yJ">
        <ref role="m$_y1" node="7gF2HTvj4WE" resolve="de.q60.mps.web.common" />
      </node>
      <node concept="m$_yC" id="5MA9wbc4qh3" role="m$_yJ">
        <ref role="m$_y1" to="90a9:4p3FRivDLPy" resolve="org.apache.commons" />
      </node>
      <node concept="3_J27D" id="7gF2HTviNQ3" role="m_cZH">
        <node concept="3Mxwew" id="7gF2HTviNQ4" role="3MwsjC">
          <property role="3MwjfP" value="de.q60.mps.web.model" />
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="6HlxtAUTj2a" role="3989C9">
      <property role="m$_wk" value="de.q60.mps.web.langdev" />
      <node concept="3_J27D" id="6HlxtAUTj2b" role="m$_yQ">
        <node concept="3Mxwew" id="6HlxtAUTj2c" role="3MwsjC">
          <property role="3MwjfP" value="de.q60.mps.web.langdev" />
        </node>
      </node>
      <node concept="3_J27D" id="6HlxtAUTj2d" role="m$_w8">
        <node concept="3Mxwew" id="6HlxtAUTj2e" role="3MwsjC">
          <property role="3MwjfP" value="1.0" />
        </node>
      </node>
      <node concept="m$f5U" id="6HlxtAUTjYD" role="m$_yh">
        <ref role="m$f5T" node="6HlxtAUSD7b" resolve="de.q60.mps.web.langdev" />
      </node>
      <node concept="m$_yC" id="6HlxtAUTj2g" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="6HlxtAUTj2i" role="m$_yJ">
        <ref role="m$_y1" node="7gF2HTvj4WE" resolve="de.q60.mps.web.common" />
      </node>
      <node concept="m$_yC" id="6HlxtAUTlYm" role="m$_yJ">
        <ref role="m$_y1" node="7gF2HTviNPW" resolve="de.q60.mps.web.model" />
      </node>
      <node concept="m$_yC" id="1BXGyXtBVIa" role="m$_yJ">
        <ref role="m$_y1" node="7gF2HTvj4Cd" resolve="de.q60.mps.web.ui" />
      </node>
      <node concept="m$_yC" id="TSXTNiO0Dw" role="m$_yJ">
        <ref role="m$_y1" to="90a9:6SVXTgIe8wD" resolve="de.itemis.mps.celllayout" />
      </node>
      <node concept="3_J27D" id="6HlxtAUTj2j" role="m_cZH">
        <node concept="3Mxwew" id="6HlxtAUTj2k" role="3MwsjC">
          <property role="3MwjfP" value="de.q60.mps.web.langdev" />
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7gF2HTvj55a" role="3989C9">
      <property role="TrG5h" value="de.q60.mps.web.common" />
      <node concept="1E1JtA" id="5MA9wbc6HlL" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.web.common" />
        <property role="3LESm3" value="acf6d2e2-4f00-4425-b7e9-fbf011feddf1" />
        <node concept="398BVA" id="5MA9wbc6HIp" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
          <node concept="2Ry0Ak" id="5MA9wbc6Iq7" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.web.common" />
            <node concept="2Ry0Ak" id="5MA9wbc6J5O" role="2Ry0An">
              <property role="2Ry0Am" value="de.q60.mps.web.common.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5MA9wbc6JrE" role="3bR37C">
          <node concept="3bR9La" id="5MA9wbc6JrF" role="1SiIV1">
            <ref role="3bR37D" to="90a9:6fQhGuklPrV" resolve="de.q60.mps.incremental.runtime" />
          </node>
        </node>
        <node concept="1BupzO" id="7sZTyNS9$qt" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$qu" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$qm" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="7sZTyNS9$qn" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.common" />
                <node concept="2Ry0Ak" id="7sZTyNS9$qo" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7sZTyNS9$qv" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7gF2HTviNPP" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.web.lib" />
        <property role="3LESm3" value="87f4b21e-a3a5-459e-a54b-408fd9eb7350" />
        <node concept="398BVA" id="3$7KuaihldX" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
          <node concept="2Ry0Ak" id="3$7Kuaihle1" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.web.lib" />
            <node concept="2Ry0Ak" id="2ANCVnFcI7i" role="2Ry0An">
              <property role="2Ry0Am" value="de.q60.mps.web.lib.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviNSn" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviNSo" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="2ANCVnFcIfT" role="3bR37C">
          <node concept="1BurEX" id="2ANCVnFcIfU" role="1SiIV1">
            <node concept="398BVA" id="2ANCVnFcIfK" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="2ANCVnFcIfL" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.lib" />
                <node concept="2Ry0Ak" id="2ANCVnFcIfM" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="2ANCVnFcIfN" role="2Ry0An">
                    <property role="2Ry0Am" value="json-20160810.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2ANCVnFcIg4" role="3bR37C">
          <node concept="1BurEX" id="2ANCVnFcIg5" role="1SiIV1">
            <node concept="398BVA" id="2ANCVnFcIfV" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="2ANCVnFcIfW" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.lib" />
                <node concept="2Ry0Ak" id="2ANCVnFcIfX" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="2ANCVnFcIfY" role="2Ry0An">
                    <property role="2Ry0Am" value="gson-2.8.6.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2ANCVnFcIgf" role="3bR37C">
          <node concept="1BurEX" id="2ANCVnFcIgg" role="1SiIV1">
            <node concept="398BVA" id="2ANCVnFcIg6" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="2ANCVnFcIg7" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.lib" />
                <node concept="2Ry0Ak" id="2ANCVnFcIg8" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="2ANCVnFcIg9" role="2Ry0An">
                    <property role="2Ry0Am" value="gson-extras-2.8.5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbROXK" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbROXL" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbROXB" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbROXC" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.lib" />
                <node concept="2Ry0Ak" id="5Sw$pxbROXD" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbROXE" role="2Ry0An">
                    <property role="2Ry0Am" value="java_websocket.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda7lM5F" role="3bR37C">
          <node concept="1BurEX" id="5npwda7lM5G" role="1SiIV1">
            <node concept="398BVA" id="5npwda7lM5y" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5npwda7lM5z" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.lib" />
                <node concept="2Ry0Ak" id="5npwda7lM5$" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5npwda7lM5_" role="2Ry0An">
                    <property role="2Ry0Am" value="kryo-5.0.0-RC4.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda7lM5Q" role="3bR37C">
          <node concept="1BurEX" id="5npwda7lM5R" role="1SiIV1">
            <node concept="398BVA" id="5npwda7lM5H" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5npwda7lM5I" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.lib" />
                <node concept="2Ry0Ak" id="5npwda7lM5J" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5npwda7lM5K" role="2Ry0An">
                    <property role="2Ry0Am" value="minlog-1.3.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda7lM61" role="3bR37C">
          <node concept="1BurEX" id="5npwda7lM62" role="1SiIV1">
            <node concept="398BVA" id="5npwda7lM5S" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5npwda7lM5T" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.lib" />
                <node concept="2Ry0Ak" id="5npwda7lM5U" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5npwda7lM5V" role="2Ry0An">
                    <property role="2Ry0Am" value="objenesis-2.6.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda7lM6c" role="3bR37C">
          <node concept="1BurEX" id="5npwda7lM6d" role="1SiIV1">
            <node concept="398BVA" id="5npwda7lM63" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5npwda7lM64" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.lib" />
                <node concept="2Ry0Ak" id="5npwda7lM65" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5npwda7lM66" role="2Ry0An">
                    <property role="2Ry0Am" value="reflectasm-1.11.6.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="7sZTyNS9$rJ" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$rK" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$rC" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="7sZTyNS9$rD" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.lib" />
                <node concept="2Ry0Ak" id="7sZTyNS9$rE" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7sZTyNS9$rL" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5a2LedGL7Zb" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.web.jersey" />
        <property role="3LESm3" value="c740997f-28c0-47e8-9b5a-e87dfdb17a21" />
        <node concept="398BVA" id="5a2LedGL7Zc" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
          <node concept="2Ry0Ak" id="5a2LedGL7Zd" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.web.jersey" />
            <node concept="2Ry0Ak" id="5a2LedGLa4q" role="2Ry0An">
              <property role="2Ry0Am" value="de.q60.mps.web.jersey.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGL7Zf" role="3bR37C">
          <node concept="3bR9La" id="5a2LedGL7Zg" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLaCf" role="3bR37C">
          <node concept="1BurEX" id="5a2LedGLaCg" role="1SiIV1">
            <node concept="398BVA" id="5a2LedGLaC6" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5a2LedGLaC7" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jersey" />
                <node concept="2Ry0Ak" id="5a2LedGLaC8" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5a2LedGLaC9" role="2Ry0An">
                    <property role="2Ry0Am" value="jakarta.activation-1.2.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLaCq" role="3bR37C">
          <node concept="1BurEX" id="5a2LedGLaCr" role="1SiIV1">
            <node concept="398BVA" id="5a2LedGLaCh" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5a2LedGLaCi" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jersey" />
                <node concept="2Ry0Ak" id="5a2LedGLaCj" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5a2LedGLaCk" role="2Ry0An">
                    <property role="2Ry0Am" value="jakarta.activation-api-1.2.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLaC_" role="3bR37C">
          <node concept="1BurEX" id="5a2LedGLaCA" role="1SiIV1">
            <node concept="398BVA" id="5a2LedGLaCs" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5a2LedGLaCt" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jersey" />
                <node concept="2Ry0Ak" id="5a2LedGLaCu" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5a2LedGLaCv" role="2Ry0An">
                    <property role="2Ry0Am" value="jakarta.annotation-api-1.3.5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLaCK" role="3bR37C">
          <node concept="1BurEX" id="5a2LedGLaCL" role="1SiIV1">
            <node concept="398BVA" id="5a2LedGLaCB" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5a2LedGLaCC" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jersey" />
                <node concept="2Ry0Ak" id="5a2LedGLaCD" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5a2LedGLaCE" role="2Ry0An">
                    <property role="2Ry0Am" value="jakarta.inject-2.6.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLaCV" role="3bR37C">
          <node concept="1BurEX" id="5a2LedGLaCW" role="1SiIV1">
            <node concept="398BVA" id="5a2LedGLaCM" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5a2LedGLaCN" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jersey" />
                <node concept="2Ry0Ak" id="5a2LedGLaCO" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5a2LedGLaCP" role="2Ry0An">
                    <property role="2Ry0Am" value="jakarta.validation-api-2.0.2.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLaD6" role="3bR37C">
          <node concept="1BurEX" id="5a2LedGLaD7" role="1SiIV1">
            <node concept="398BVA" id="5a2LedGLaCX" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5a2LedGLaCY" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jersey" />
                <node concept="2Ry0Ak" id="5a2LedGLaCZ" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5a2LedGLaD0" role="2Ry0An">
                    <property role="2Ry0Am" value="jakarta.ws.rs-api-2.1.6.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLaDh" role="3bR37C">
          <node concept="1BurEX" id="5a2LedGLaDi" role="1SiIV1">
            <node concept="398BVA" id="5a2LedGLaD8" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5a2LedGLaD9" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jersey" />
                <node concept="2Ry0Ak" id="5a2LedGLaDa" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5a2LedGLaDb" role="2Ry0An">
                    <property role="2Ry0Am" value="jakarta.xml.bind-api-2.3.2.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLaDs" role="3bR37C">
          <node concept="1BurEX" id="5a2LedGLaDt" role="1SiIV1">
            <node concept="398BVA" id="5a2LedGLaDj" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5a2LedGLaDk" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jersey" />
                <node concept="2Ry0Ak" id="5a2LedGLaDl" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5a2LedGLaDm" role="2Ry0An">
                    <property role="2Ry0Am" value="jersey-client-2.29.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLaDB" role="3bR37C">
          <node concept="1BurEX" id="5a2LedGLaDC" role="1SiIV1">
            <node concept="398BVA" id="5a2LedGLaDu" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5a2LedGLaDv" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jersey" />
                <node concept="2Ry0Ak" id="5a2LedGLaDw" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5a2LedGLaDx" role="2Ry0An">
                    <property role="2Ry0Am" value="jersey-common-2.29.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLaDM" role="3bR37C">
          <node concept="1BurEX" id="5a2LedGLaDN" role="1SiIV1">
            <node concept="398BVA" id="5a2LedGLaDD" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5a2LedGLaDE" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jersey" />
                <node concept="2Ry0Ak" id="5a2LedGLaDF" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5a2LedGLaDG" role="2Ry0An">
                    <property role="2Ry0Am" value="jersey-media-jaxb-2.29.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLaDX" role="3bR37C">
          <node concept="1BurEX" id="5a2LedGLaDY" role="1SiIV1">
            <node concept="398BVA" id="5a2LedGLaDO" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5a2LedGLaDP" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jersey" />
                <node concept="2Ry0Ak" id="5a2LedGLaDQ" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5a2LedGLaDR" role="2Ry0An">
                    <property role="2Ry0Am" value="jersey-media-sse-2.29.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLaE8" role="3bR37C">
          <node concept="1BurEX" id="5a2LedGLaE9" role="1SiIV1">
            <node concept="398BVA" id="5a2LedGLaDZ" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5a2LedGLaE0" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jersey" />
                <node concept="2Ry0Ak" id="5a2LedGLaE1" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5a2LedGLaE2" role="2Ry0An">
                    <property role="2Ry0Am" value="jersey-server-2.29.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLaEj" role="3bR37C">
          <node concept="1BurEX" id="5a2LedGLaEk" role="1SiIV1">
            <node concept="398BVA" id="5a2LedGLaEa" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5a2LedGLaEb" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jersey" />
                <node concept="2Ry0Ak" id="5a2LedGLaEc" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5a2LedGLaEd" role="2Ry0An">
                    <property role="2Ry0Am" value="osgi-resource-locator-1.0.3.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLaEu" role="3bR37C">
          <node concept="1BurEX" id="5a2LedGLaEv" role="1SiIV1">
            <node concept="398BVA" id="5a2LedGLaEl" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5a2LedGLaEm" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jersey" />
                <node concept="2Ry0Ak" id="5a2LedGLaEn" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5a2LedGLaEo" role="2Ry0An">
                    <property role="2Ry0Am" value="aopalliance-repackaged-2.6.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLaED" role="3bR37C">
          <node concept="1BurEX" id="5a2LedGLaEE" role="1SiIV1">
            <node concept="398BVA" id="5a2LedGLaEw" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5a2LedGLaEx" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jersey" />
                <node concept="2Ry0Ak" id="5a2LedGLaEy" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5a2LedGLaEz" role="2Ry0An">
                    <property role="2Ry0Am" value="hk2-api-2.6.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLaEO" role="3bR37C">
          <node concept="1BurEX" id="5a2LedGLaEP" role="1SiIV1">
            <node concept="398BVA" id="5a2LedGLaEF" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5a2LedGLaEG" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jersey" />
                <node concept="2Ry0Ak" id="5a2LedGLaEH" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5a2LedGLaEI" role="2Ry0An">
                    <property role="2Ry0Am" value="hk2-locator-2.6.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLaEZ" role="3bR37C">
          <node concept="1BurEX" id="5a2LedGLaF0" role="1SiIV1">
            <node concept="398BVA" id="5a2LedGLaEQ" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5a2LedGLaER" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jersey" />
                <node concept="2Ry0Ak" id="5a2LedGLaES" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5a2LedGLaET" role="2Ry0An">
                    <property role="2Ry0Am" value="hk2-utils-2.6.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLaFa" role="3bR37C">
          <node concept="1BurEX" id="5a2LedGLaFb" role="1SiIV1">
            <node concept="398BVA" id="5a2LedGLaF1" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5a2LedGLaF2" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jersey" />
                <node concept="2Ry0Ak" id="5a2LedGLaF3" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5a2LedGLaF4" role="2Ry0An">
                    <property role="2Ry0Am" value="javassist-3.22.0-CR2.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLaFl" role="3bR37C">
          <node concept="1BurEX" id="5a2LedGLaFm" role="1SiIV1">
            <node concept="398BVA" id="5a2LedGLaFc" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5a2LedGLaFd" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jersey" />
                <node concept="2Ry0Ak" id="5a2LedGLaFe" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5a2LedGLaFf" role="2Ry0An">
                    <property role="2Ry0Am" value="jersey-hk2-2.29.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="7sZTyNS9$u$" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$u_" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$ut" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="7sZTyNS9$uu" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jersey" />
                <node concept="2Ry0Ak" id="7sZTyNS9$uv" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7sZTyNS9$uA" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7gF2HTvj46U" role="3989C9">
      <property role="TrG5h" value="de.q60.mps.web.ui" />
      <node concept="1E1JtA" id="5npwda7lJQ3" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.web.ui.common" />
        <property role="3LESm3" value="da981293-1ec2-4df0-95e4-df162984154c" />
        <node concept="398BVA" id="5npwda7lKnH" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
          <node concept="2Ry0Ak" id="5npwda7lL3r" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.web.ui.common" />
            <node concept="2Ry0Ak" id="5npwda7lLJ8" role="2Ry0An">
              <property role="2Ry0Am" value="de.q60.mps.web.ui.common.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda7lM8T" role="3bR37C">
          <node concept="3bR9La" id="5npwda7lM8U" role="1SiIV1">
            <ref role="3bR37D" to="90a9:4iIKqJTZ5Hm" resolve="de.q60.mps.shadowmodels.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda7lM8V" role="3bR37C">
          <node concept="3bR9La" id="5npwda7lM8W" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPP" resolve="de.q60.mps.web.lib" />
          </node>
        </node>
        <node concept="1BupzO" id="7sZTyNS9$uI" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$uJ" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$uB" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="7sZTyNS9$uC" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.common" />
                <node concept="2Ry0Ak" id="7sZTyNS9$uD" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7sZTyNS9$uK" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2jBAMx3Br5l" role="3bR37C">
          <node concept="3bR9La" id="2jBAMx3Br5m" role="1SiIV1">
            <ref role="3bR37D" to="90a9:6WlQakvIoOz" resolve="de.q60.mps.util" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="7gF2HTviNPn" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.web.ui.sm" />
        <property role="3LESm3" value="78874af2-5dd2-42a7-a21d-42fab3737d1d" />
        <node concept="398BVA" id="3$7KuaihleN" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
          <node concept="2Ry0Ak" id="3$7KuaihleR" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.web.ui.sm" />
            <node concept="2Ry0Ak" id="6GOzicS77UP" role="2Ry0An">
              <property role="2Ry0Am" value="de.q60.mps.web.ui.sm.mpl" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviNQd" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviNQe" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviNQf" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviNQg" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviNQh" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviNQi" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L4X" resolve="jetbrains.mps.lang.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviNQj" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviNQk" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1yeLz9" id="7gF2HTviNQl" role="1TViLv">
          <property role="TrG5h" value="de.q60.mps.web.ui.sm#01" />
          <property role="3LESm3" value="10ecc1c8-9e76-4395-886d-b8a9d626629f" />
          <node concept="1BupzO" id="7sZTyNS9$v4" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="7sZTyNS9$v5" role="1HemKq">
              <node concept="398BVA" id="7sZTyNS9$uV" role="3LXTmr">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
                <node concept="2Ry0Ak" id="7sZTyNS9$uW" role="iGT6I">
                  <property role="2Ry0Am" value="de.q60.mps.web.ui.sm" />
                  <node concept="2Ry0Ak" id="7sZTyNS9$uX" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="7sZTyNS9$uY" role="2Ry0An">
                      <property role="2Ry0Am" value="template" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="7sZTyNS9$v6" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviO9k" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviO9l" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPx" resolve="de.q60.mps.web.ui.sm.json" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviO9m" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviO9n" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPF" resolve="de.q60.mps.web.ui.sm.dom" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvj1Rw" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTvj1Rx" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="90a9:4iIKqJTZ5Hm" resolve="de.q60.mps.shadowmodels.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvj1Ry" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTvj1Rz" role="1SiIV1">
            <ref role="3bR37D" to="90a9:BRK1N8p1Qt" resolve="de.q60.mps.shadowmodels.target.text" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvj1R$" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTvj1R_" role="1SiIV1">
            <ref role="3bR37D" to="90a9:4iIKqJTZ5HI" resolve="de.q60.mps.shadowmodels.runtimelang" />
          </node>
        </node>
        <node concept="1SiIV0" id="3ov7kT3I16k" role="3bR37C">
          <node concept="3bR9La" id="3ov7kT3I16l" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPP" resolve="de.q60.mps.web.lib" />
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda835T1" role="3bR37C">
          <node concept="3bR9La" id="5npwda835T2" role="1SiIV1">
            <ref role="3bR37D" node="5npwda7lJQ3" resolve="de.q60.mps.web.ui.common" />
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda835T3" role="3bR37C">
          <node concept="3bR9La" id="5npwda835T4" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPK" resolve="de.q60.mps.web.model" />
          </node>
        </node>
        <node concept="1BupzO" id="7sZTyNS9$uS" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$uT" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$uL" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="7sZTyNS9$uM" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.sm" />
                <node concept="2Ry0Ak" id="7sZTyNS9$uN" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7sZTyNS9$uU" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5X1StJEGkq5" role="3bR37C">
          <node concept="3bR9La" id="5X1StJEGkq6" role="1SiIV1">
            <ref role="3bR37D" node="5Sw$pxbQPmv" resolve="de.q60.mps.web.jetty" />
          </node>
        </node>
        <node concept="1SiIV0" id="5X1StJEGkq7" role="3bR37C">
          <node concept="3bR9La" id="5X1StJEGkq8" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1SiIV0" id="5X1StJEGkq9" role="3bR37C">
          <node concept="3bR9La" id="5X1StJEGkqa" role="1SiIV1">
            <ref role="3bR37D" to="90a9:6fQhGuklPrV" resolve="de.q60.mps.incremental.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="5X1StJEGkqb" role="3bR37C">
          <node concept="3bR9La" id="5X1StJEGkqc" role="1SiIV1">
            <ref role="3bR37D" to="90a9:4iIKqJTZ5H4" resolve="de.q60.mps.polymorphicfunctions.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="6u4pZj_urO9" role="3bR37C">
          <node concept="3bR9La" id="6u4pZj_urOa" role="1SiIV1">
            <ref role="3bR37D" to="90a9:6fQhGuklQWU" resolve="de.q60.mps.libs" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="7gF2HTviNPx" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.web.ui.sm.json" />
        <property role="3LESm3" value="0f2359af-040e-43bb-b438-cf024da41518" />
        <node concept="398BVA" id="3$7KuaihlfD" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
          <node concept="2Ry0Ak" id="3$7KuaihlfH" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.web.ui.sm.json" />
            <node concept="2Ry0Ak" id="6GOzicS777L" role="2Ry0An">
              <property role="2Ry0Am" value="de.q60.mps.web.ui.sm.json.mpl" />
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="7gF2HTviNQE" role="1TViLv">
          <property role="TrG5h" value="de.q60.mps.web.ui.sm.json#01" />
          <property role="3LESm3" value="7111509f-e08e-4fa2-bc4e-046235ec2a86" />
          <node concept="1BupzO" id="7sZTyNS9$vq" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="7sZTyNS9$vr" role="1HemKq">
              <node concept="398BVA" id="7sZTyNS9$vh" role="3LXTmr">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
                <node concept="2Ry0Ak" id="7sZTyNS9$vi" role="iGT6I">
                  <property role="2Ry0Am" value="de.q60.mps.web.ui.sm.json" />
                  <node concept="2Ry0Ak" id="7sZTyNS9$vj" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="7sZTyNS9$vk" role="2Ry0An">
                      <property role="2Ry0Am" value="template" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="7sZTyNS9$vs" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviO9s" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviO9t" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPP" resolve="de.q60.mps.web.lib" />
          </node>
        </node>
        <node concept="1BupzO" id="7sZTyNS9$ve" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$vf" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$v7" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="7sZTyNS9$v8" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.sm.json" />
                <node concept="2Ry0Ak" id="7sZTyNS9$v9" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7sZTyNS9$vg" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="7gF2HTviNPF" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.web.ui.sm.dom" />
        <property role="3LESm3" value="6f6906a4-f244-4806-a98b-0bc781cef2a8" />
        <node concept="398BVA" id="3$7Kuaihlgv" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
          <node concept="2Ry0Ak" id="3$7Kuaihlgz" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.web.ui.sm.dom" />
            <node concept="2Ry0Ak" id="6GOzicS76kH" role="2Ry0An">
              <property role="2Ry0Am" value="de.q60.mps.web.ui.sm.dom.mpl" />
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="7gF2HTviNQI" role="1TViLv">
          <property role="TrG5h" value="de.q60.mps.web.ui.sm.dom#01" />
          <property role="3LESm3" value="8eeab8ed-d51a-4f98-8dd9-0a43d1a66dd7" />
          <node concept="1BupzO" id="7sZTyNS9$vK" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="7sZTyNS9$vL" role="1HemKq">
              <node concept="398BVA" id="7sZTyNS9$vB" role="3LXTmr">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
                <node concept="2Ry0Ak" id="7sZTyNS9$vC" role="iGT6I">
                  <property role="2Ry0Am" value="de.q60.mps.web.ui.sm.dom" />
                  <node concept="2Ry0Ak" id="7sZTyNS9$vD" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="7sZTyNS9$vE" role="2Ry0An">
                      <property role="2Ry0Am" value="template" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="7sZTyNS9$vM" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="7sZTyNS9$v$" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$v_" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$vt" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="7sZTyNS9$vu" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.sm.dom" />
                <node concept="2Ry0Ak" id="7sZTyNS9$vv" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7sZTyNS9$vA" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7gF2HTviNPU" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.web.ui.sm.server" />
        <property role="3LESm3" value="eb8d1040-bff5-4126-8949-fdd95ef4c502" />
        <node concept="398BVA" id="3$7Kuaihlhl" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
          <node concept="2Ry0Ak" id="3$7Kuaihlhp" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.web.ui.sm.server" />
            <node concept="2Ry0Ak" id="2ANCVnFcOL5" role="2Ry0An">
              <property role="2Ry0Am" value="de.q60.mps.web.ui.sm.server.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviOaK" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviOaL" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPn" resolve="de.q60.mps.web.ui.sm" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviOaM" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviOaN" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPx" resolve="de.q60.mps.web.ui.sm.json" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviOaO" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviOaP" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPP" resolve="de.q60.mps.web.lib" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviOaQ" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviOaR" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPF" resolve="de.q60.mps.web.ui.sm.dom" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvj1T2" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTvj1T3" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="90a9:4iIKqJTZ5Hm" resolve="de.q60.mps.shadowmodels.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvj1T4" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTvj1T5" role="1SiIV1">
            <ref role="3bR37D" to="90a9:BRK1N8p1Qt" resolve="de.q60.mps.shadowmodels.target.text" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvj1T6" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTvj1T7" role="1SiIV1">
            <ref role="3bR37D" to="90a9:4iIKqJTZ5HO" resolve="de.q60.mps.shadowmodels.transformation" />
          </node>
        </node>
        <node concept="1SiIV0" id="2iiCxFNXHZe" role="3bR37C">
          <node concept="3bR9La" id="2iiCxFNXHZf" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLbat" role="3bR37C">
          <node concept="3bR9La" id="5a2LedGLbau" role="1SiIV1">
            <ref role="3bR37D" node="5Sw$pxbQPmv" resolve="de.q60.mps.web.jetty" />
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda835T5" role="3bR37C">
          <node concept="3bR9La" id="5npwda835T6" role="1SiIV1">
            <ref role="3bR37D" node="5npwda7lJQ3" resolve="de.q60.mps.web.ui.common" />
          </node>
        </node>
        <node concept="1BupzO" id="7sZTyNS9$vU" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$vV" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$vN" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="7sZTyNS9$vO" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.sm.server" />
                <node concept="2Ry0Ak" id="7sZTyNS9$vP" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7sZTyNS9$vW" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2jBAMx3Br6e" role="3bR37C">
          <node concept="3bR9La" id="2jBAMx3Br6f" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="2jBAMx3Br6g" role="3bR37C">
          <node concept="3bR9La" id="2jBAMx3Br6h" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="2jBAMx3Br6i" role="3bR37C">
          <node concept="3bR9La" id="2jBAMx3Br6j" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="2jBAMx3Br6k" role="3bR37C">
          <node concept="3bR9La" id="2jBAMx3Br6l" role="1SiIV1">
            <ref role="3bR37D" to="90a9:6fQhGuklPrV" resolve="de.q60.mps.incremental.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="2jBAMx3Br6m" role="3bR37C">
          <node concept="3bR9La" id="2jBAMx3Br6n" role="1SiIV1">
            <ref role="3bR37D" to="90a9:2CK1QGRPmCe" resolve="de.q60.mps.explorer" />
          </node>
        </node>
        <node concept="1SiIV0" id="2jBAMx3Br6o" role="3bR37C">
          <node concept="3bR9La" id="2jBAMx3Br6p" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5wnrAmUmAQt" resolve="de.q60.mps.shadowmodels.debugview" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="1_iojA26Pac" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.web.ui.svg" />
        <property role="3LESm3" value="cceec75f-de6e-4ee7-bd91-29a3a99bfede" />
        <node concept="398BVA" id="3$7Kuaihlib" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
          <node concept="2Ry0Ak" id="3$7Kuaihlif" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
            <node concept="2Ry0Ak" id="3$7Kuaihlig" role="2Ry0An">
              <property role="2Ry0Am" value="de.q60.mps.web.ui.svg.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1_iojA26Pnq" role="3bR37C">
          <node concept="3bR9La" id="1_iojA26Pnr" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="1_iojA26Pns" role="3bR37C">
          <node concept="3bR9La" id="1_iojA26Pnt" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="1_iojA26Pnw" role="3bR37C">
          <node concept="3bR9La" id="1_iojA26Pnx" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="1_iojA26Pny" role="3bR37C">
          <node concept="3bR9La" id="1_iojA26Pnz" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="1_iojA26Pn$" role="3bR37C">
          <node concept="3bR9La" id="1_iojA26Pn_" role="1SiIV1">
            <ref role="3bR37D" to="90a9:PE3B26QCrP" resolve="org.apache.commons" />
          </node>
        </node>
        <node concept="1SiIV0" id="1_iojA26PnA" role="3bR37C">
          <node concept="3bR9La" id="1_iojA26PnB" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlLV" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlLW" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlLK" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlLL" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlLM" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlLN" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlLO" role="2Ry0An">
                      <property role="2Ry0Am" value="batik-rasterizer.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlM8" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlM9" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlLX" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlLY" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlLZ" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlM0" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlM1" role="2Ry0An">
                      <property role="2Ry0Am" value="batik-slideshow.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlMl" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlMm" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlMa" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlMb" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlMc" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlMd" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlMe" role="2Ry0An">
                      <property role="2Ry0Am" value="batik-squiggle.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlMy" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlMz" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlMn" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlMo" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlMp" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlMq" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlMr" role="2Ry0An">
                      <property role="2Ry0Am" value="batik-svgpp.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlMJ" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlMK" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlM$" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlM_" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlMA" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlMB" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlMC" role="2Ry0An">
                      <property role="2Ry0Am" value="batik-ttf2svg.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlMW" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlMX" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlML" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlMM" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlMN" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlMO" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlMP" role="2Ry0An">
                      <property role="2Ry0Am" value="batik.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlNb" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlNc" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlMY" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlMZ" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlN0" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlN1" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlN2" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="3$7KuaihlN3" role="2Ry0An">
                        <property role="2Ry0Am" value="batik-anim.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlNq" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlNr" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlNd" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlNe" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlNf" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlNg" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlNh" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="3$7KuaihlNi" role="2Ry0An">
                        <property role="2Ry0Am" value="batik-awt-util.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlND" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlNE" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlNs" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlNt" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlNu" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlNv" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlNw" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="3$7KuaihlNx" role="2Ry0An">
                        <property role="2Ry0Am" value="batik-bridge.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlNS" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlNT" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlNF" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlNG" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlNH" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlNI" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlNJ" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="3$7KuaihlNK" role="2Ry0An">
                        <property role="2Ry0Am" value="batik-codec.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlO7" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlO8" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlNU" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlNV" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlNW" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlNX" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlNY" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="3$7KuaihlNZ" role="2Ry0An">
                        <property role="2Ry0Am" value="batik-css.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlOm" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlOn" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlO9" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlOa" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlOb" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlOc" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlOd" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="3$7KuaihlOe" role="2Ry0An">
                        <property role="2Ry0Am" value="batik-dom.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlO_" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlOA" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlOo" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlOp" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlOq" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlOr" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlOs" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="3$7KuaihlOt" role="2Ry0An">
                        <property role="2Ry0Am" value="batik-ext.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlOO" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlOP" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlOB" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlOC" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlOD" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlOE" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlOF" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="3$7KuaihlOG" role="2Ry0An">
                        <property role="2Ry0Am" value="batik-extension.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlP3" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlP4" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlOQ" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlOR" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlOS" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlOT" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlOU" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="3$7KuaihlOV" role="2Ry0An">
                        <property role="2Ry0Am" value="batik-gui-util.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlPi" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlPj" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlP5" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlP6" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlP7" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlP8" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlP9" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="3$7KuaihlPa" role="2Ry0An">
                        <property role="2Ry0Am" value="batik-gvt.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlPx" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlPy" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlPk" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlPl" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlPm" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlPn" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlPo" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="3$7KuaihlPp" role="2Ry0An">
                        <property role="2Ry0Am" value="batik-parser.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlPK" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlPL" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlPz" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlP$" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlP_" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlPA" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlPB" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="3$7KuaihlPC" role="2Ry0An">
                        <property role="2Ry0Am" value="batik-script.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlPZ" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlQ0" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlPM" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlPN" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlPO" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlPP" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlPQ" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="3$7KuaihlPR" role="2Ry0An">
                        <property role="2Ry0Am" value="batik-svg-dom.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlQe" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlQf" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlQ1" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlQ2" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlQ3" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlQ4" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlQ5" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="3$7KuaihlQ6" role="2Ry0An">
                        <property role="2Ry0Am" value="batik-svggen.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlQt" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlQu" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlQg" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlQh" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlQi" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlQj" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlQk" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="3$7KuaihlQl" role="2Ry0An">
                        <property role="2Ry0Am" value="batik-swing.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlQG" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlQH" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlQv" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlQw" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlQx" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlQy" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlQz" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="3$7KuaihlQ$" role="2Ry0An">
                        <property role="2Ry0Am" value="batik-transcoder.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlQV" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlQW" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlQI" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlQJ" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlQK" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlQL" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlQM" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="3$7KuaihlQN" role="2Ry0An">
                        <property role="2Ry0Am" value="batik-util.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlRa" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlRb" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlQX" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlQY" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlQZ" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlR0" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlR1" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="3$7KuaihlR2" role="2Ry0An">
                        <property role="2Ry0Am" value="batik-xml.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlRp" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlRq" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlRc" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlRd" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlRe" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlRf" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlRg" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="3$7KuaihlRh" role="2Ry0An">
                        <property role="2Ry0Am" value="js.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlRC" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlRD" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlRr" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlRs" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlRt" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlRu" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlRv" role="2Ry0An">
                      <property role="2Ry0Am" value="extensions" />
                      <node concept="2Ry0Ak" id="3$7KuaihlRw" role="2Ry0An">
                        <property role="2Ry0Am" value="batik-rasterizer-ext.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlRR" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlRS" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlRE" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlRF" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlRG" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlRH" role="2Ry0An">
                    <property role="2Ry0Am" value="batik-1.7.1" />
                    <node concept="2Ry0Ak" id="3$7KuaihlRI" role="2Ry0An">
                      <property role="2Ry0Am" value="extensions" />
                      <node concept="2Ry0Ak" id="3$7KuaihlRJ" role="2Ry0An">
                        <property role="2Ry0Am" value="batik-squiggle-ext.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlSz" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlS$" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlSq" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlSr" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="3$7KuaihlSs" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlSt" role="2Ry0An">
                    <property role="2Ry0Am" value="commons-codec-1.10.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6GOzicSgelT" role="3bR37C">
          <node concept="3bR9La" id="6GOzicSgelU" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPP" resolve="de.q60.mps.web.lib" />
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLbav" role="3bR37C">
          <node concept="3bR9La" id="5a2LedGLbaw" role="1SiIV1">
            <ref role="3bR37D" node="5Sw$pxbQPmv" resolve="de.q60.mps.web.jetty" />
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda7lMPr" role="3bR37C">
          <node concept="3bR9La" id="5npwda7lMPs" role="1SiIV1">
            <ref role="3bR37D" node="5npwda7lJQ3" resolve="de.q60.mps.web.ui.common" />
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda835T7" role="3bR37C">
          <node concept="3bR9La" id="5npwda835T8" role="1SiIV1">
            <ref role="3bR37D" to="90a9:4iIKqJTZ5Hm" resolve="de.q60.mps.shadowmodels.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="1W$kLfSZfU9" role="3bR37C">
          <node concept="3bR9La" id="1W$kLfSZfUa" role="1SiIV1">
            <ref role="3bR37D" node="5MA9wbc6HlL" resolve="de.q60.mps.web.common" />
          </node>
        </node>
        <node concept="1SiIV0" id="Cck3bmGIJv" role="3bR37C">
          <node concept="3bR9La" id="Cck3bmGIJw" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPs" resolve="de.q60.mps.web.model.mpsplugin" />
          </node>
        </node>
        <node concept="1BupzO" id="7sZTyNS9$_w" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$_x" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$_p" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="7sZTyNS9$_q" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.svg" />
                <node concept="2Ry0Ak" id="7sZTyNS9$_r" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7sZTyNS9$_y" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5Sw$pxbQPmv" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.web.jetty" />
        <property role="3LESm3" value="fc3c2aa8-0d4b-463f-a774-40d450aa04a0" />
        <node concept="398BVA" id="5Sw$pxbQPzK" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
          <node concept="2Ry0Ak" id="5Sw$pxbQPOm" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
            <node concept="2Ry0Ak" id="5Sw$pxbQQ4V" role="2Ry0An">
              <property role="2Ry0Am" value="de.q60.mps.web.jetty.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQj4" role="3bR37C">
          <node concept="3bR9La" id="5Sw$pxbQQj5" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQjf" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQjg" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQj6" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQj7" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQj8" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQj9" role="2Ry0An">
                    <property role="2Ry0Am" value="infinispan-common-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQjq" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQjr" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQjh" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQji" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQjj" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQjk" role="2Ry0An">
                    <property role="2Ry0Am" value="infinispan-embedded-query-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQj_" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQjA" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQjs" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQjt" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQju" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQjv" role="2Ry0An">
                    <property role="2Ry0Am" value="infinispan-remote-query-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQjK" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQjL" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQjB" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQjC" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQjD" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQjE" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-alpn-conscrypt-server-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQjV" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQjW" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQjM" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQjN" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQjO" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQjP" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-alpn-java-server-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQk6" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQk7" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQjX" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQjY" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQjZ" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQk0" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-alpn-openjdk8-server-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQkh" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQki" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQk8" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQk9" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQka" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQkb" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-alpn-server-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQks" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQkt" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQkj" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQkk" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQkl" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQkm" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-annotations-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQkB" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQkC" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQku" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQkv" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQkw" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQkx" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-cdi-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQkM" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQkN" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQkD" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQkE" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQkF" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQkG" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-client-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQkX" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQkY" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQkO" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQkP" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQkQ" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQkR" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-continuation-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQl8" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQl9" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQkZ" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQl0" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQl1" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQl2" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-deploy-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQlj" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQlk" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQla" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQlb" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQlc" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQld" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-gcloud-session-manager-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQlu" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQlv" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQll" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQlm" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQln" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQlo" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-hazelcast-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQlD" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQlE" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQlw" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQlx" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQly" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQlz" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-http-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQlO" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQlP" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQlF" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQlG" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQlH" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQlI" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-io-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQlZ" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQm0" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQlQ" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQlR" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQlS" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQlT" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-jaas-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQma" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQmb" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQm1" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQm2" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQm3" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQm4" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-jaspi-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQml" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQmm" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQmc" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQmd" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQme" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQmf" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-jmx-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQmw" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQmx" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQmn" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQmo" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQmp" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQmq" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-jndi-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQmF" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQmG" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQmy" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQmz" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQm$" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQm_" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-memcached-sessions-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQmQ" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQmR" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQmH" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQmI" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQmJ" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQmK" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-nosql-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQn1" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQn2" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQmS" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQmT" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQmU" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQmV" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-plus-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQnc" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQnd" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQn3" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQn4" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQn5" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQn6" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-proxy-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQnn" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQno" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQne" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQnf" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQng" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQnh" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-quickstart-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQny" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQnz" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQnp" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQnq" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQnr" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQns" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-rewrite-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQnH" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQnI" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQn$" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQn_" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQnA" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQnB" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-security-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQnS" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQnT" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQnJ" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQnK" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQnL" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQnM" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-server-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQo3" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQo4" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQnU" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQnV" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQnW" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQnX" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-servlet-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQoe" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQof" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQo5" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQo6" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQo7" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQo8" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-servlets-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQop" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQoq" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQog" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQoh" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQoi" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQoj" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-unixsocket-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQo$" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQo_" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQor" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQos" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQot" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQou" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-util-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQoJ" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQoK" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQoA" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQoB" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQoC" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQoD" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-webapp-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQoU" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQoV" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQoL" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQoM" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQoN" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQoO" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-xml-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQp5" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQp6" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQoW" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQoX" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQoY" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQoZ" role="2Ry0An">
                    <property role="2Ry0Am" value="alpn-api-1.1.3.v20160715.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQpi" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQpj" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQp7" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQp8" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQp9" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQpa" role="2Ry0An">
                    <property role="2Ry0Am" value="annotations" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQpb" role="2Ry0An">
                      <property role="2Ry0Am" value="asm-7.1.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQpv" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQpw" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQpk" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQpl" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQpm" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQpn" role="2Ry0An">
                    <property role="2Ry0Am" value="annotations" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQpo" role="2Ry0An">
                      <property role="2Ry0Am" value="asm-analysis-7.1.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQpG" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQpH" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQpx" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQpy" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQpz" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQp$" role="2Ry0An">
                    <property role="2Ry0Am" value="annotations" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQp_" role="2Ry0An">
                      <property role="2Ry0Am" value="asm-commons-7.1.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQpT" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQpU" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQpI" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQpJ" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQpK" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQpL" role="2Ry0An">
                    <property role="2Ry0Am" value="annotations" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQpM" role="2Ry0An">
                      <property role="2Ry0Am" value="asm-tree-7.1.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQq6" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQq7" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQpV" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQpW" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQpX" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQpY" role="2Ry0An">
                    <property role="2Ry0Am" value="annotations" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQpZ" role="2Ry0An">
                      <property role="2Ry0Am" value="javax.annotation-api-1.3.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQqj" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQqk" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQq8" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQq9" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQqa" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQqb" role="2Ry0An">
                    <property role="2Ry0Am" value="apache-jsp" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQqc" role="2Ry0An">
                      <property role="2Ry0Am" value="org.eclipse.jetty.apache-jsp-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQqw" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQqx" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQql" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQqm" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQqn" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQqo" role="2Ry0An">
                    <property role="2Ry0Am" value="apache-jsp" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQqp" role="2Ry0An">
                      <property role="2Ry0Am" value="org.eclipse.jdt.ecj-3.17.0.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQqH" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQqI" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQqy" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQqz" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQq$" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQq_" role="2Ry0An">
                    <property role="2Ry0Am" value="apache-jsp" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQqA" role="2Ry0An">
                      <property role="2Ry0Am" value="org.mortbay.jasper.apache-el-8.5.40.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQqU" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQqV" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQqJ" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQqK" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQqL" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQqM" role="2Ry0An">
                    <property role="2Ry0Am" value="apache-jsp" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQqN" role="2Ry0An">
                      <property role="2Ry0Am" value="org.mortbay.jasper.apache-jsp-8.5.40.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQr7" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQr8" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQqW" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQqX" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQqY" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQqZ" role="2Ry0An">
                    <property role="2Ry0Am" value="apache-jstl" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQr0" role="2Ry0An">
                      <property role="2Ry0Am" value="org.apache.taglibs.taglibs-standard-impl-1.2.5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQrk" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQrl" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQr9" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQra" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQrb" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQrc" role="2Ry0An">
                    <property role="2Ry0Am" value="apache-jstl" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQrd" role="2Ry0An">
                      <property role="2Ry0Am" value="org.apache.taglibs.taglibs-standard-spec-1.2.5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQrx" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQry" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQrm" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQrn" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQro" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQrp" role="2Ry0An">
                    <property role="2Ry0Am" value="fcgi" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQrq" role="2Ry0An">
                      <property role="2Ry0Am" value="fcgi-client-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQrI" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQrJ" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQrz" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQr$" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQr_" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQrA" role="2Ry0An">
                    <property role="2Ry0Am" value="fcgi" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQrB" role="2Ry0An">
                      <property role="2Ry0Am" value="fcgi-server-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQrV" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQrW" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQrK" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQrL" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQrM" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQrN" role="2Ry0An">
                    <property role="2Ry0Am" value="http2" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQrO" role="2Ry0An">
                      <property role="2Ry0Am" value="http2-common-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQs8" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQs9" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQrX" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQrY" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQrZ" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQs0" role="2Ry0An">
                    <property role="2Ry0Am" value="http2" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQs1" role="2Ry0An">
                      <property role="2Ry0Am" value="http2-hpack-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQsl" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQsm" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQsa" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQsb" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQsc" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQsd" role="2Ry0An">
                    <property role="2Ry0Am" value="http2" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQse" role="2Ry0An">
                      <property role="2Ry0Am" value="http2-server-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQsy" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQsz" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQsn" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQso" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQsp" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQsq" role="2Ry0An">
                    <property role="2Ry0Am" value="jaspi" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQsr" role="2Ry0An">
                      <property role="2Ry0Am" value="javax.security.auth.message-1.0.0.v201108011116.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQsH" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQsI" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQs$" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQs_" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQsA" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQsB" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-schemas-3.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQsU" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQsV" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQsJ" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQsK" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQsL" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQsM" role="2Ry0An">
                    <property role="2Ry0Am" value="mail" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQsN" role="2Ry0An">
                      <property role="2Ry0Am" value="javax.mail.glassfish-1.4.1.v201005082020.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQt5" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQt6" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQsW" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQsX" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQsY" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQsZ" role="2Ry0An">
                    <property role="2Ry0Am" value="servlet-api-3.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQti" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQtj" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQt7" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQt8" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQt9" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQta" role="2Ry0An">
                    <property role="2Ry0Am" value="setuid" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQtb" role="2Ry0An">
                      <property role="2Ry0Am" value="jetty-setuid-java-1.0.3.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQtv" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQtw" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQtk" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQtl" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQtm" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQtn" role="2Ry0An">
                    <property role="2Ry0Am" value="spring" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQto" role="2Ry0An">
                      <property role="2Ry0Am" value="jetty-spring-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQtG" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQtH" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQtx" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQty" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQtz" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQt$" role="2Ry0An">
                    <property role="2Ry0Am" value="transactions" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQt_" role="2Ry0An">
                      <property role="2Ry0Am" value="javax.transaction-api-1.3.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQtT" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQtU" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQtI" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQtJ" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQtK" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQtL" role="2Ry0An">
                    <property role="2Ry0Am" value="websocket" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQtM" role="2Ry0An">
                      <property role="2Ry0Am" value="javax-websocket-client-impl-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQu6" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQu7" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQtV" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQtW" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQtX" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQtY" role="2Ry0An">
                    <property role="2Ry0Am" value="websocket" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQtZ" role="2Ry0An">
                      <property role="2Ry0Am" value="javax-websocket-server-impl-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQuj" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQuk" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQu8" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQu9" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQua" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQub" role="2Ry0An">
                    <property role="2Ry0Am" value="websocket" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQuc" role="2Ry0An">
                      <property role="2Ry0Am" value="websocket-api-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQuw" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQux" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQul" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQum" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQun" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQuo" role="2Ry0An">
                    <property role="2Ry0Am" value="websocket" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQup" role="2Ry0An">
                      <property role="2Ry0Am" value="websocket-client-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQuH" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQuI" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQuy" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQuz" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQu$" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQu_" role="2Ry0An">
                    <property role="2Ry0Am" value="websocket" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQuA" role="2Ry0An">
                      <property role="2Ry0Am" value="websocket-common-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQuU" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQuV" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQuJ" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQuK" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQuL" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQuM" role="2Ry0An">
                    <property role="2Ry0Am" value="websocket" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQuN" role="2Ry0An">
                      <property role="2Ry0Am" value="websocket-server-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQv7" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQv8" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQuW" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQuX" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQuY" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQuZ" role="2Ry0An">
                    <property role="2Ry0Am" value="websocket" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQv0" role="2Ry0An">
                      <property role="2Ry0Am" value="websocket-servlet-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQvk" role="3bR37C">
          <node concept="1BurEX" id="5Sw$pxbQQvl" role="1SiIV1">
            <node concept="398BVA" id="5Sw$pxbQQv9" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="5Sw$pxbQQva" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="5Sw$pxbQQvb" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="5Sw$pxbQQvc" role="2Ry0An">
                    <property role="2Ry0Am" value="websocket" />
                    <node concept="2Ry0Ak" id="5Sw$pxbQQvd" role="2Ry0An">
                      <property role="2Ry0Am" value="javax.websocket-api-1.0.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="7sZTyNS9$JQ" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$JR" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$JJ" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="7sZTyNS9$JK" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.jetty" />
                <node concept="2Ry0Ak" id="7sZTyNS9$JL" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7sZTyNS9$JS" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="6GOzicSiraw" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.web.ui.server" />
        <property role="3LESm3" value="39aab22b-473f-4e44-b037-0c602964897d" />
        <node concept="398BVA" id="6GOzicSirIi" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
          <node concept="2Ry0Ak" id="6GOzicSirZc" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.web.ui.server" />
            <node concept="2Ry0Ak" id="6GOzicSisg5" role="2Ry0An">
              <property role="2Ry0Am" value="de.q60.mps.web.ui.server.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6GOzicSisuE" role="3bR37C">
          <node concept="3bR9La" id="6GOzicSisuF" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="6GOzicSisuI" role="3bR37C">
          <node concept="3bR9La" id="6GOzicSisuJ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="62v7nyvXUrc" role="3bR37C">
          <node concept="1BurEX" id="62v7nyvXUrd" role="1SiIV1">
            <node concept="398BVA" id="62v7nyvXUr3" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="62v7nyvXUr4" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.server" />
                <node concept="2Ry0Ak" id="62v7nyvXUr5" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="62v7nyvXUr6" role="2Ry0An">
                    <property role="2Ry0Am" value="ui-client.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQvm" role="3bR37C">
          <node concept="3bR9La" id="5Sw$pxbQQvn" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPU" resolve="de.q60.mps.web.ui.sm.server" />
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQvo" role="3bR37C">
          <node concept="3bR9La" id="5Sw$pxbQQvp" role="1SiIV1">
            <ref role="3bR37D" node="1_iojA26Pac" resolve="de.q60.mps.web.ui.svg" />
          </node>
        </node>
        <node concept="1SiIV0" id="2TMlwYi2QnU" role="3bR37C">
          <node concept="3bR9La" id="2TMlwYi2QnV" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="2TMlwYi2QnW" role="3bR37C">
          <node concept="3bR9La" id="2TMlwYi2QnX" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPs" resolve="de.q60.mps.web.model.mpsplugin" />
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLbsO" role="3bR37C">
          <node concept="3bR9La" id="5a2LedGLbsP" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="5Sw$pxbQPmv" resolve="de.q60.mps.web.jetty" />
          </node>
        </node>
        <node concept="1SiIV0" id="tQiJNCmXgR" role="3bR37C">
          <node concept="3bR9La" id="tQiJNCmXgS" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1BupzO" id="7sZTyNS9$K9" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$Ka" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$K2" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="7sZTyNS9$K3" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.ui.server" />
                <node concept="2Ry0Ak" id="7sZTyNS9$K4" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7sZTyNS9$Kb" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5X1StJEGkEU" role="3bR37C">
          <node concept="3bR9La" id="5X1StJEGkEV" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPn" resolve="de.q60.mps.web.ui.sm" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7gF2HTviNPV" role="3989C9">
      <property role="TrG5h" value="de.q60.mps.web.model" />
      <node concept="1E1JtD" id="$zd_cMRR11" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.web.model.runtimelang" />
        <property role="3LESm3" value="b6980ebd-f01d-459d-a952-38740f6313b4" />
        <node concept="398BVA" id="$zd_cMRRoN" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
          <node concept="2Ry0Ak" id="$zd_cMRS3p" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.web.model.runtimelang" />
            <node concept="2Ry0Ak" id="$zd_cMRSHY" role="2Ry0An">
              <property role="2Ry0Am" value="de.q60.mps.web.model.runtimelang.mpl" />
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="$zd_cMRTHW" role="1TViLv">
          <property role="TrG5h" value="de.q60.mps.web.model.runtimelang#01" />
          <property role="3LESm3" value="1a41ca2b-5b2e-48b4-8ce0-c6444fdfc6ba" />
          <node concept="1BupzO" id="7sZTyNS9$Kv" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="7sZTyNS9$Kw" role="1HemKq">
              <node concept="398BVA" id="7sZTyNS9$Km" role="3LXTmr">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
                <node concept="2Ry0Ak" id="7sZTyNS9$Kn" role="iGT6I">
                  <property role="2Ry0Am" value="de.q60.mps.web.model.runtimelang" />
                  <node concept="2Ry0Ak" id="7sZTyNS9$Ko" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="7sZTyNS9$Kp" role="2Ry0An">
                      <property role="2Ry0Am" value="template" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="7sZTyNS9$Kx" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="7sZTyNS9$Kj" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$Kk" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$Kc" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="7sZTyNS9$Kd" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model.runtimelang" />
                <node concept="2Ry0Ak" id="7sZTyNS9$Ke" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7sZTyNS9$Kl" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7gF2HTviNPK" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.web.model" />
        <property role="3LESm3" value="5622e615-959d-4843-9df6-ef04ee578c18" />
        <node concept="398BVA" id="3$7Kuaihlvj" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
          <node concept="2Ry0Ak" id="3$7Kuaihlvn" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.web.model" />
            <node concept="2Ry0Ak" id="3$7Kuaihlvo" role="2Ry0An">
              <property role="2Ry0Am" value="de.q60.mps.web.model.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviNQJ" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviNQK" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviNQL" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviNQM" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviNQP" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviNQQ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvj1RM" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTvj1RN" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="90a9:4iIKqJTZ5Hm" resolve="de.q60.mps.shadowmodels.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvj1RO" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTvj1RP" role="1SiIV1">
            <ref role="3bR37D" to="90a9:6fQhGuklQWU" resolve="de.q60.mps.libs" />
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlSI" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlSJ" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlS_" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlSA" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="3$7KuaihlSB" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlSC" role="2Ry0An">
                    <property role="2Ry0Am" value="commons-pool2-2.6.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlST" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlSU" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlSK" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlSL" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="3$7KuaihlSM" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlSN" role="2Ry0An">
                    <property role="2Ry0Am" value="HdrHistogram-2.1.11.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlT4" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlT5" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlSV" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlSW" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="3$7KuaihlSX" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlSY" role="2Ry0An">
                    <property role="2Ry0Am" value="LatencyUtils-2.0.3.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlTf" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlTg" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlT6" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlT7" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="3$7KuaihlT8" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlT9" role="2Ry0An">
                    <property role="2Ry0Am" value="lettuce-core-5.1.7.RELEASE.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlTq" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlTr" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlTh" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlTi" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="3$7KuaihlTj" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlTk" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-buffer-4.1.36.Final.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlT_" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlTA" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlTs" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlTt" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="3$7KuaihlTu" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlTv" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-codec-4.1.36.Final.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlTK" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlTL" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlTB" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlTC" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="3$7KuaihlTD" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlTE" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-common-4.1.36.Final.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlTV" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlTW" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlTM" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlTN" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="3$7KuaihlTO" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlTP" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-handler-4.1.36.Final.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlU6" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlU7" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlTX" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlTY" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="3$7KuaihlTZ" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlU0" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-resolver-4.1.36.Final.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlUh" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlUi" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlU8" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlU9" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="3$7KuaihlUa" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlUb" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-tcnative-1.1.33.Fork26-osx-x86_64.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlUs" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlUt" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlUj" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlUk" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="3$7KuaihlUl" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlUm" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-transport-4.1.36.Final.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlUB" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlUC" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlUu" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlUv" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="3$7KuaihlUw" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlUx" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-transport-native-epoll-4.1.36.Final-linux-x86_64.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlUM" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlUN" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlUD" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlUE" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="3$7KuaihlUF" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlUG" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-transport-native-kqueue-4.1.36.Final-osx-x86_64.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlUX" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlUY" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlUO" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlUP" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="3$7KuaihlUQ" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlUR" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-transport-native-unix-common-4.1.36.Final.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlV8" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlV9" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlUZ" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlV0" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="3$7KuaihlV1" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlV2" role="2Ry0An">
                    <property role="2Ry0Am" value="reactive-streams-1.0.2.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3$7KuaihlVj" role="3bR37C">
          <node concept="1BurEX" id="3$7KuaihlVk" role="1SiIV1">
            <node concept="398BVA" id="3$7KuaihlVa" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihlVb" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="3$7KuaihlVc" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3$7KuaihlVd" role="2Ry0An">
                    <property role="2Ry0Am" value="reactor-core-3.2.8.RELEASE.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2uEMzXf$_LW" role="3bR37C">
          <node concept="3bR9La" id="2uEMzXf$_LX" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1BupzO" id="7sZTyNS9$MT" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$MU" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$MM" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="7sZTyNS9$MN" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="7sZTyNS9$MO" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7sZTyNS9$MV" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="lHiX0zbW9a" role="3bR37C">
          <node concept="3bR9La" id="lHiX0zbW9b" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7gF2HTviNPs" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.web.model.mpsplugin" />
        <property role="3LESm3" value="c5e5433e-201f-43e2-ad14-a6cba8c80cd6" />
        <node concept="398BVA" id="3$7KuaihlCg" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
          <node concept="2Ry0Ak" id="3$7KuaihlCk" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.web.model.mpsplugin" />
            <node concept="2Ry0Ak" id="3$7KuaihlCl" role="2Ry0An">
              <property role="2Ry0Am" value="de.q60.mps.web.model.mpsplugin.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviNQm" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviNQn" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviNQo" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviNQp" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviNQq" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviNQr" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJt" resolve="jetbrains.mps.ide.platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviNQs" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviNQt" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviNQu" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviNQv" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviNQw" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviNQx" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviNQy" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviNQz" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviNQ$" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviNQ_" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviNQA" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviNQB" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:2eDSGe9d1q1" resolve="MPS.Workbench" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviNQC" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviNQD" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviO9o" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviO9p" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPK" resolve="de.q60.mps.web.model" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviO9q" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviO9r" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7gF2HTviNPP" resolve="de.q60.mps.web.lib" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvj1RA" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTvj1RB" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="90a9:4iIKqJTZ5Hm" resolve="de.q60.mps.shadowmodels.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvj1RC" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTvj1RD" role="1SiIV1">
            <ref role="3bR37D" to="90a9:6fQhGuklQWU" resolve="de.q60.mps.libs" />
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLbvf" role="3bR37C">
          <node concept="3bR9La" id="5a2LedGLbvg" role="1SiIV1">
            <ref role="3bR37D" node="5a2LedGL7Zb" resolve="de.q60.mps.web.jersey" />
          </node>
        </node>
        <node concept="1SiIV0" id="7zuOo8p5Ygw" role="3bR37C">
          <node concept="3bR9La" id="7zuOo8p5Ygx" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:6aIAM_Qd5ki" resolve="jetbrains.mps.lang.test.matcher" />
          </node>
        </node>
        <node concept="1SiIV0" id="$zd_cMRKTO" role="3bR37C">
          <node concept="3bR9La" id="$zd_cMRKTP" role="1SiIV1">
            <ref role="3bR37D" to="90a9:4iIKqJTZ5HI" resolve="de.q60.mps.shadowmodels.runtimelang" />
          </node>
        </node>
        <node concept="1SiIV0" id="$zd_cMRUrg" role="3bR37C">
          <node concept="3bR9La" id="$zd_cMRUrh" role="1SiIV1">
            <ref role="3bR37D" node="$zd_cMRR11" resolve="de.q60.mps.web.model.runtimelang" />
          </node>
        </node>
        <node concept="1SiIV0" id="5MA9wbc4p$I" role="3bR37C">
          <node concept="3bR9La" id="5MA9wbc4p$J" role="1SiIV1">
            <ref role="3bR37D" to="90a9:PE3B26QCrP" resolve="org.apache.commons" />
          </node>
        </node>
        <node concept="1SiIV0" id="1W$kLfT1eWC" role="3bR37C">
          <node concept="3bR9La" id="1W$kLfT1eWD" role="1SiIV1">
            <ref role="3bR37D" node="5MA9wbc6HlL" resolve="de.q60.mps.web.common" />
          </node>
        </node>
        <node concept="1BupzO" id="7sZTyNS9$N3" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$N4" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$MW" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="7sZTyNS9$MX" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model.mpsplugin" />
                <node concept="2Ry0Ak" id="7sZTyNS9$MY" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7sZTyNS9$N5" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2jBAMx3Brpe" role="3bR37C">
          <node concept="3bR9La" id="2jBAMx3Brpf" role="1SiIV1">
            <ref role="3bR37D" to="90a9:6WlQakvIoOz" resolve="de.q60.mps.util" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="6HlxtAUSD7b" role="3989C9">
      <property role="TrG5h" value="de.q60.mps.web.langdev" />
      <node concept="1E1JtD" id="6HlxtAUSLXf" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.web.aspect" />
        <property role="3LESm3" value="375af171-bd4b-4bfb-bc9f-418fb996740b" />
        <node concept="398BVA" id="6HlxtAUSMiE" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
          <node concept="2Ry0Ak" id="6HlxtAUSMXg" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.web.aspect" />
            <node concept="2Ry0Ak" id="6HlxtAUSNBP" role="2Ry0An">
              <property role="2Ry0Am" value="de.q60.mps.web.aspect.mpl" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6HlxtAUSOin" role="3bR37C">
          <node concept="3bR9La" id="6HlxtAUSOio" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="6HlxtAUSOip" role="3bR37C">
          <node concept="3bR9La" id="6HlxtAUSOiq" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="6HlxtAUSOir" role="3bR37C">
          <node concept="3bR9La" id="6HlxtAUSOis" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="6HlxtAUSOix" role="3bR37C">
          <node concept="3bR9La" id="6HlxtAUSOiy" role="1SiIV1">
            <ref role="3bR37D" node="5a2LedGL7Zb" resolve="de.q60.mps.web.jersey" />
          </node>
        </node>
        <node concept="1SiIV0" id="6HlxtAUSOiz" role="3bR37C">
          <node concept="1Busua" id="6HlxtAUSOi$" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1yeLz9" id="6HlxtAUSOi_" role="1TViLv">
          <property role="TrG5h" value="de.q60.mps.web.aspect#01" />
          <property role="3LESm3" value="be246e10-5276-4b2b-a05e-7a68bd87894d" />
          <node concept="1SiIV0" id="6HlxtAUSOiA" role="3bR37C">
            <node concept="3bR9La" id="6HlxtAUSOiB" role="1SiIV1">
              <ref role="3bR37D" node="7gF2HTviNPs" resolve="de.q60.mps.web.model.mpsplugin" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ya3eUXRG2X" role="3bR37C">
            <node concept="3bR9La" id="7Ya3eUXRG2Y" role="1SiIV1">
              <ref role="3bR37D" node="7gF2HTviNPn" resolve="de.q60.mps.web.ui.sm" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ya3eUXRG2Z" role="3bR37C">
            <node concept="3bR9La" id="7Ya3eUXRG30" role="1SiIV1">
              <ref role="3bR37D" node="7gF2HTviNPU" resolve="de.q60.mps.web.ui.sm.server" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ya3eUXRG31" role="3bR37C">
            <node concept="3bR9La" id="7Ya3eUXRG32" role="1SiIV1">
              <ref role="3bR37D" node="5Sw$pxbQPmv" resolve="de.q60.mps.web.jetty" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ya3eUXRG33" role="3bR37C">
            <node concept="3bR9La" id="7Ya3eUXRG34" role="1SiIV1">
              <ref role="3bR37D" to="90a9:4iIKqJTZ5Hm" resolve="de.q60.mps.shadowmodels.runtime" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ya3eUXRG35" role="3bR37C">
            <node concept="3bR9La" id="7Ya3eUXRG36" role="1SiIV1">
              <ref role="3bR37D" to="90a9:4iIKqJTZ5HO" resolve="de.q60.mps.shadowmodels.transformation" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ya3eUXRG37" role="3bR37C">
            <node concept="3bR9La" id="7Ya3eUXRG38" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ya3eUXRG39" role="3bR37C">
            <node concept="3bR9La" id="7Ya3eUXRG3a" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ya3eUXRG3b" role="3bR37C">
            <node concept="3bR9La" id="7Ya3eUXRG3c" role="1SiIV1">
              <ref role="3bR37D" to="90a9:BRK1N8p1Qt" resolve="de.q60.mps.shadowmodels.target.text" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ya3eUXRG3d" role="3bR37C">
            <node concept="3bR9La" id="7Ya3eUXRG3e" role="1SiIV1">
              <ref role="3bR37D" to="90a9:PE3B26QCrP" resolve="org.apache.commons" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ya3eUXRG3f" role="3bR37C">
            <node concept="3bR9La" id="7Ya3eUXRG3g" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ya3eUXRG3h" role="3bR37C">
            <node concept="3bR9La" id="7Ya3eUXRG3i" role="1SiIV1">
              <ref role="3bR37D" node="5npwda7lJQ3" resolve="de.q60.mps.web.ui.common" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ya3eUXRG3j" role="3bR37C">
            <node concept="3bR9La" id="7Ya3eUXRG3k" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6L2F" resolve="jetbrains.mps.baseLanguage.tuples" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ya3eUXRG3l" role="3bR37C">
            <node concept="3bR9La" id="7Ya3eUXRG3m" role="1SiIV1">
              <ref role="3bR37D" node="7gF2HTviNPF" resolve="de.q60.mps.web.ui.sm.dom" />
            </node>
          </node>
          <node concept="1BupzO" id="7sZTyNS9$Np" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="7sZTyNS9$Nq" role="1HemKq">
              <node concept="398BVA" id="7sZTyNS9$Ng" role="3LXTmr">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
                <node concept="2Ry0Ak" id="7sZTyNS9$Nh" role="iGT6I">
                  <property role="2Ry0Am" value="de.q60.mps.web.aspect" />
                  <node concept="2Ry0Ak" id="7sZTyNS9$Ni" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="7sZTyNS9$Nj" role="2Ry0An">
                      <property role="2Ry0Am" value="template" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="7sZTyNS9$Nr" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Ya3eUXRG2N" role="3bR37C">
          <node concept="3bR9La" id="7Ya3eUXRG2O" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ya3eUXRG2P" role="3bR37C">
          <node concept="3bR9La" id="7Ya3eUXRG2Q" role="1SiIV1">
            <ref role="3bR37D" to="90a9:4iIKqJTZ5HO" resolve="de.q60.mps.shadowmodels.transformation" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ya3eUXRG2R" role="3bR37C">
          <node concept="3bR9La" id="7Ya3eUXRG2S" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
          </node>
        </node>
        <node concept="1SiIV0" id="7Ya3eUXRG2T" role="3bR37C">
          <node concept="3bR9La" id="7Ya3eUXRG2U" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1E0d5M" id="7Ya3eUXRG2V" role="1E1XAP">
          <ref role="1E0d5P" to="90a9:PE3B26QCrP" resolve="org.apache.commons" />
        </node>
        <node concept="1E0d5M" id="7Ya3eUXRG2W" role="1E1XAP">
          <ref role="1E0d5P" node="5npwda7lJQ3" resolve="de.q60.mps.web.ui.common" />
        </node>
        <node concept="1SiIV0" id="1BXGyXtBV1Z" role="3bR37C">
          <node concept="3bR9La" id="1BXGyXtBV20" role="1SiIV1">
            <ref role="3bR37D" to="90a9:4iIKqJTZ5HI" resolve="de.q60.mps.shadowmodels.runtimelang" />
          </node>
        </node>
        <node concept="1SiIV0" id="1BXGyXtBV21" role="3bR37C">
          <node concept="3bR9La" id="1BXGyXtBV22" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPF" resolve="de.q60.mps.web.ui.sm.dom" />
          </node>
        </node>
        <node concept="1E0d5M" id="1BXGyXtBV23" role="1E1XAP">
          <ref role="1E0d5P" node="7gF2HTviNPs" resolve="de.q60.mps.web.model.mpsplugin" />
        </node>
        <node concept="1BupzO" id="7sZTyNS9$Nd" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$Ne" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$N6" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="7sZTyNS9$N7" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.aspect" />
                <node concept="2Ry0Ak" id="7sZTyNS9$N8" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7sZTyNS9$Nf" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="6HlxtAUSOXT" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.web.aspect.genplan" />
        <property role="3LESm3" value="a35af0cf-8051-4b27-9686-59193edda5fc" />
        <node concept="398BVA" id="6HlxtAUSPjD" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
          <node concept="2Ry0Ak" id="6HlxtAUTZMq" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.web.aspect.genplan" />
            <node concept="2Ry0Ak" id="6HlxtAUU0sZ" role="2Ry0An">
              <property role="2Ry0Am" value="de.q60.mps.web.aspect.genplan.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Ya3eUXRG3n" role="3bR37C">
          <node concept="3bR9La" id="7Ya3eUXRG3o" role="1SiIV1">
            <ref role="3bR37D" to="90a9:4iIKqJTZ5Ha" resolve="de.q60.mps.shadowmodels.genplan" />
          </node>
        </node>
        <node concept="1BupzO" id="7sZTyNS9$Nz" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$N$" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$Ns" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="7sZTyNS9$Nt" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.aspect.genplan" />
                <node concept="2Ry0Ak" id="7sZTyNS9$Nu" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7sZTyNS9$N_" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="TSXTNiNWKE" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.web.notation" />
        <property role="3LESm3" value="25fcb6ab-d05a-4950-8cdf-251526bdf513" />
        <node concept="398BVA" id="TSXTNiNX7X" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
          <node concept="2Ry0Ak" id="TSXTNiNXNF" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.web.notation" />
            <node concept="2Ry0Ak" id="TSXTNiNYvo" role="2Ry0An">
              <property role="2Ry0Am" value="de.q60.mps.web.notation.mpl" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="TSXTNiNZdv" role="3bR37C">
          <node concept="3bR9La" id="TSXTNiNZdw" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="TSXTNiNZdx" role="3bR37C">
          <node concept="3bR9La" id="TSXTNiNZdy" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="TSXTNiNZdz" role="3bR37C">
          <node concept="3bR9La" id="TSXTNiNZd$" role="1SiIV1">
            <ref role="3bR37D" to="90a9:6SVXTgIel8z" resolve="de.itemis.mps.editor.celllayout.styles" />
          </node>
        </node>
        <node concept="1SiIV0" id="TSXTNiNZd_" role="3bR37C">
          <node concept="3bR9La" id="TSXTNiNZdA" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1BupzO" id="TSXTNiNZdI" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="TSXTNiNZdJ" role="1HemKq">
            <node concept="398BVA" id="TSXTNiNZdB" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="TSXTNiNZdC" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.notation" />
                <node concept="2Ry0Ak" id="TSXTNiNZdD" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="TSXTNiNZdK" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="TSXTNiNZdL" role="1TViLv">
          <property role="TrG5h" value="de.q60.mps.web.notation#01" />
          <property role="3LESm3" value="e05c7284-56e4-4441-895d-d653ff88f7da" />
          <node concept="1SiIV0" id="TSXTNiNZdM" role="3bR37C">
            <node concept="3bR9La" id="TSXTNiNZdN" role="1SiIV1">
              <ref role="3bR37D" node="7gF2HTviNPn" resolve="de.q60.mps.web.ui.sm" />
            </node>
          </node>
          <node concept="1SiIV0" id="TSXTNiNZdO" role="3bR37C">
            <node concept="3bR9La" id="TSXTNiNZdP" role="1SiIV1">
              <ref role="3bR37D" to="90a9:4iIKqJTZ5HO" resolve="de.q60.mps.shadowmodels.transformation" />
            </node>
          </node>
          <node concept="1BupzO" id="TSXTNiNZdZ" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="TSXTNiNZe0" role="1HemKq">
              <node concept="398BVA" id="TSXTNiNZdQ" role="3LXTmr">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
                <node concept="2Ry0Ak" id="TSXTNiNZdR" role="iGT6I">
                  <property role="2Ry0Am" value="de.q60.mps.web.notation" />
                  <node concept="2Ry0Ak" id="TSXTNiNZdS" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="TSXTNiNZdT" role="2Ry0An">
                      <property role="2Ry0Am" value="templates" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="TSXTNiNZe1" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
          <node concept="1SiIV0" id="5X1StJEGkIo" role="3bR37C">
            <node concept="3bR9La" id="5X1StJEGkIp" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
            </node>
          </node>
          <node concept="1SiIV0" id="5mkQn$DAmy8" role="3bR37C">
            <node concept="3bR9La" id="5mkQn$DAmy9" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
            </node>
          </node>
          <node concept="1SiIV0" id="5mkQn$DAmya" role="3bR37C">
            <node concept="3bR9La" id="5mkQn$DAmyb" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
            </node>
          </node>
          <node concept="1SiIV0" id="5mkQn$DAmyc" role="3bR37C">
            <node concept="3bR9La" id="5mkQn$DAmyd" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
            </node>
          </node>
          <node concept="1SiIV0" id="5mkQn$DAmye" role="3bR37C">
            <node concept="3bR9La" id="5mkQn$DAmyf" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
            </node>
          </node>
          <node concept="1SiIV0" id="5mkQn$DAmyg" role="3bR37C">
            <node concept="3bR9La" id="5mkQn$DAmyh" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5mkQn$DAmxX" role="3bR37C">
          <node concept="3bR9La" id="5mkQn$DAmxY" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
          </node>
        </node>
        <node concept="1SiIV0" id="5mkQn$DAmy6" role="3bR37C">
          <node concept="1Busua" id="5mkQn$DAmy7" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
      </node>
      <node concept="3LEwk6" id="6HlxtAUSHCt" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.web.aspect.devkit" />
        <property role="3LESm3" value="df4512e0-2de7-456b-8e87-16e2011a3e91" />
        <node concept="398BVA" id="6HlxtAUSICk" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
          <node concept="2Ry0Ak" id="6HlxtAUSJXv" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.web.aspect.devkit" />
            <node concept="2Ry0Ak" id="6HlxtAUSKC4" role="2Ry0An">
              <property role="2Ry0Am" value="de.q60.mps.web.aspect.devkit.devkit" />
            </node>
          </node>
        </node>
        <node concept="3LEDTy" id="7sZTyNS9$NA" role="3LEDUa">
          <ref role="3LEDTV" node="6HlxtAUSLXf" resolve="de.q60.mps.web.aspect" />
        </node>
        <node concept="3LEDTM" id="7sZTyNS9$NB" role="3LEDUa">
          <ref role="3LEDTN" node="6HlxtAUSOXT" resolve="de.q60.mps.web.aspect.genplan" />
        </node>
        <node concept="3LEDTy" id="TSXTNiNZXI" role="3LEDUa">
          <ref role="3LEDTV" node="TSXTNiNWKE" resolve="de.q60.mps.web.notation" />
        </node>
        <node concept="3LEDTy" id="7BujJjYSJ9v" role="3LEDUa">
          <ref role="3LEDTV" node="7gF2HTviNPn" resolve="de.q60.mps.web.ui.sm" />
        </node>
        <node concept="3LEDTy" id="7BujJjYSJ9w" role="3LEDUa">
          <ref role="3LEDTV" to="ffeo:7Kfy9QB6KZc" resolve="jetbrains.mps.baseLanguage.checkedDots" />
        </node>
        <node concept="3LEDTy" id="7BujJjYSJ9x" role="3LEDUa">
          <ref role="3LEDTV" to="ffeo:7Kfy9QB6L9c" resolve="jetbrains.mps.lang.quotation" />
        </node>
      </node>
      <node concept="1E1JtD" id="7BujJjXYVmv" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.web.notation.impl.baseLanguage" />
        <property role="3LESm3" value="2db6cf34-1ef5-4ea9-ab56-6511aab61960" />
        <node concept="398BVA" id="7BujJjXYVIz" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
          <node concept="2Ry0Ak" id="7BujJjXYWK5" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.web.notation.impl.baseLanguage" />
            <node concept="2Ry0Ak" id="7BujJjXYXrM" role="2Ry0An">
              <property role="2Ry0Am" value="de.q60.mps.web.notation.impl.baseLanguage.mpl" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7BujJjXYY9T" role="3bR37C">
          <node concept="3bR9La" id="7BujJjXYY9U" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BujJjXYY9V" role="3bR37C">
          <node concept="3bR9La" id="7BujJjXYY9W" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1BupzO" id="7BujJjXYYa4" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7BujJjXYYa5" role="1HemKq">
            <node concept="398BVA" id="7BujJjXYY9X" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="7BujJjXYY9Y" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.notation.impl.baseLanguage" />
                <node concept="2Ry0Ak" id="7BujJjXYY9Z" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7BujJjXYYa6" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="7BujJjXYYa7" role="1TViLv">
          <property role="TrG5h" value="de.q60.mps.web.notation.impl.baseLanguage#01" />
          <property role="3LESm3" value="dbfa7ed5-30aa-4ea4-849d-5271e2dbda9b" />
          <node concept="1BupzO" id="7BujJjXYYah" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="7BujJjXYYai" role="1HemKq">
              <node concept="398BVA" id="7BujJjXYYa8" role="3LXTmr">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
                <node concept="2Ry0Ak" id="7BujJjXYYa9" role="iGT6I">
                  <property role="2Ry0Am" value="de.q60.mps.web.notation.impl.baseLanguage" />
                  <node concept="2Ry0Ak" id="7BujJjXYYaa" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="7BujJjXYYab" role="2Ry0An">
                      <property role="2Ry0Am" value="templates" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="7BujJjXYYaj" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7BujJjYSJ9y" role="3bR37C">
          <node concept="3bR9La" id="7BujJjYSJ9z" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPn" resolve="de.q60.mps.web.ui.sm" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2_Ic$z" id="7BujJjXgSfB" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
    </node>
    <node concept="1wNqPr" id="7BujJjXgTCz" role="3989C9" />
    <node concept="2igEWh" id="7BujJjXgXsI" role="1hWBAP">
      <property role="3UIfUI" value="1024" />
    </node>
  </node>
</model>

