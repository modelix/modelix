<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:af9443ad-0981-45a3-a5fa-cc9a9d65725b(org.modelix.build)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="false" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
    <use id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests" version="1" />
    <use id="427a473d-5177-432c-9905-bcbceb71b996" name="jetbrains.mps.build.mps.runner" version="0" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="90a9" ref="r:fb24ac52-5985-4947-bba9-25be6fd32c1a(de.itemis.mps.extensions.build)" />
  </imports>
  <registry>
    <language id="3600cb0a-44dd-4a5b-9968-22924406419e" name="jetbrains.mps.build.mps.tests">
      <concept id="4560297596904469357" name="jetbrains.mps.build.mps.tests.structure.BuildAspect_MpsTestModules" flags="nn" index="22LTRH">
        <child id="4560297596904469360" name="modules" index="22LTRK" />
        <child id="6593674873639474544" name="options" index="24cAkG" />
      </concept>
      <concept id="4560297596904469362" name="jetbrains.mps.build.mps.tests.structure.BuildMps_TestModule" flags="nn" index="22LTRM">
        <reference id="4560297596904469363" name="module" index="22LTRN" />
      </concept>
      <concept id="6593674873639474400" name="jetbrains.mps.build.mps.tests.structure.BuildMps_TestModules_Options" flags="ng" index="24cAiW">
        <child id="6593674873639478221" name="haltonfailure" index="24c_eh" />
        <child id="3609768169816292377" name="jvmArgs" index="1psgkv" />
      </concept>
      <concept id="4005526075820600484" name="jetbrains.mps.build.mps.tests.structure.BuildModuleTestsPlugin" flags="ng" index="1gjT0q" />
    </language>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="2755237150521975431" name="jetbrains.mps.build.structure.BuildVariableMacroInitWithString" flags="ng" index="aVJcg">
        <child id="2755237150521975437" name="value" index="aVJcq" />
      </concept>
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="3767587139141066978" name="jetbrains.mps.build.structure.BuildVariableMacro" flags="ng" index="2kB4xC">
        <child id="2755237150521975432" name="initialValue" index="aVJcv" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="927724900262033858" name="jetbrains.mps.build.structure.BuildSource_JavaOptions" flags="ng" index="2_Ic$z">
        <property id="927724900262033861" name="generateDebugInfo" index="2_Ic$$" />
        <property id="927724900262033862" name="copyResources" index="2_Ic$B" />
        <property id="6998860900671147996" name="javaLevel" index="TZNOO" />
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
      <concept id="7181125477683417252" name="jetbrains.mps.build.structure.BuildExternalLayoutDependency" flags="ng" index="13uUGR">
        <reference id="7181125477683417255" name="layout" index="13uUGO" />
        <child id="7181125477683417254" name="artifacts" index="13uUGP" />
      </concept>
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
        <property id="4915877860348071612" name="fileName" index="turDy" />
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="4796668409958418110" name="scriptsDir" index="auvoZ" />
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
      <concept id="4903714810883702017" name="jetbrains.mps.build.structure.BuildVarRefStringPart" flags="ng" index="3Mxwey">
        <reference id="4903714810883702018" name="macro" index="3Mxwex" />
      </concept>
      <concept id="202934866059043946" name="jetbrains.mps.build.structure.BuildLayout_EchoProperties" flags="ng" index="1TblL5">
        <child id="202934866059043948" name="fileName" index="1TblL3" />
      </concept>
    </language>
    <language id="427a473d-5177-432c-9905-bcbceb71b996" name="jetbrains.mps.build.mps.runner">
      <concept id="4173297143638950526" name="jetbrains.mps.build.mps.runner.structure.BuildSolutionRunnerAspect" flags="ng" index="_awnq">
        <reference id="6102524510011680401" name="solution" index="30Vec$" />
      </concept>
      <concept id="4173297143638832582" name="jetbrains.mps.build.mps.runner.structure.BuildSolutionRunnerPlugin" flags="ng" index="_l39y" />
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
      <concept id="1265949165890536423" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleJars" flags="ng" index="L2wRC">
        <reference id="1265949165890536425" name="module" index="L2wRA" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <property id="1500819558096356884" name="doNotCompile" index="2GAjPV" />
        <child id="5253498789149547825" name="sources" index="3bR31x" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <property id="5253498789149547713" name="reexport" index="3bR36h" />
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="763829979718664966" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleResources" flags="ng" index="3rtmxn">
        <child id="763829979718664967" name="files" index="3rtmxm" />
      </concept>
      <concept id="4297162197620964123" name="jetbrains.mps.build.mps.structure.BuildMps_GeneratorOptions" flags="ng" index="1wNqPr">
        <property id="4297162197620978190" name="parallel" index="1wNuhe" />
        <property id="4297162197620978193" name="parallelThreads" index="1wNuhh" />
        <property id="4297162197621031140" name="inplace" index="1wOHq$" />
        <property id="6535001758416941941" name="createStaticRefs" index="3Ej$Sc" />
      </concept>
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
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA">
        <property id="269707337715731330" name="sourcesKind" index="aoJFB" />
      </concept>
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
    <property role="TrG5h" value="org.modelix" />
    <property role="2DA0ip" value="../../build/org.modelix" />
    <node concept="10PD9b" id="7gF2HTviNP9" role="10PD9s" />
    <node concept="3b7kt6" id="7gF2HTviNPa" role="10PD9s" />
    <node concept="398rNT" id="7gF2HTvk5zJ" role="1l3spd">
      <property role="TrG5h" value="modelix.home" />
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
        <ref role="398BVh" node="7gF2HTvk5zJ" resolve="modelix.home" />
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
        <ref role="398BVh" node="7gF2HTvk5zJ" resolve="modelix.home" />
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
      <property role="TrG5h" value="modelix.modules" />
      <node concept="398BVA" id="3$7Kuaihl6U" role="398pKh">
        <ref role="398BVh" node="7gF2HTvk5zJ" resolve="modelix.home" />
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
      <node concept="398223" id="5feEXm67LKZ" role="39821P">
        <node concept="3_J27D" id="5feEXm67LL1" role="Nbhlr">
          <node concept="3Mxwew" id="5feEXm67M6t" role="3MwsjC">
            <property role="3MwjfP" value=".ignore-me" />
          </node>
        </node>
        <node concept="2HvfSZ" id="5feEXm67M6v" role="39821P">
          <node concept="398BVA" id="5feEXm67Mra" role="2HvfZ0">
            <ref role="398BVh" node="7gF2HTviNPb" resolve="mps.home" />
            <node concept="2Ry0Ak" id="5feEXm67MJR" role="iGT6I">
              <property role="2Ry0Am" value="plugins" />
              <node concept="2Ry0Ak" id="5feEXm67MJW" role="2Ry0An">
                <property role="2Ry0Am" value="git4idea" />
                <node concept="2Ry0Ak" id="5feEXm67MK1" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1TblL5" id="5sZaTPjhk26" role="39821P">
          <node concept="3_J27D" id="5sZaTPjhk28" role="1TblL3">
            <node concept="3Mxwew" id="5sZaTPjhkmb" role="3MwsjC">
              <property role="3MwjfP" value=".mpsbuild-ignore" />
            </node>
          </node>
        </node>
      </node>
      <node concept="398223" id="29etMtbiOct" role="39821P">
        <node concept="3_J27D" id="29etMtbiOcv" role="Nbhlr">
          <node concept="3Mxwew" id="29etMtbiOx6" role="3MwsjC">
            <property role="3MwjfP" value="plugins" />
          </node>
        </node>
        <node concept="m$_wl" id="7gF2HTvk5ef" role="39821P">
          <ref role="m_rDy" node="7gF2HTvj4WE" resolve="org.modelix.common" />
          <node concept="pUk6x" id="7gF2HTvk5gF" role="pUk7w" />
        </node>
        <node concept="398223" id="3sFor715L$S" role="39821P">
          <node concept="3_J27D" id="3sFor715L$U" role="Nbhlr">
            <node concept="3Mxwew" id="3sFor715LTy" role="3MwsjC">
              <property role="3MwjfP" value="org.modelix.common" />
            </node>
          </node>
          <node concept="398223" id="7gF2HTvk5p8" role="39821P">
            <node concept="3_J27D" id="7gF2HTvk5p9" role="Nbhlr">
              <node concept="3Mxwew" id="7gF2HTvk5qm" role="3MwsjC">
                <property role="3MwjfP" value="lib" />
              </node>
            </node>
            <node concept="2HvfSZ" id="7gF2HTvk5xk" role="39821P">
              <node concept="398BVA" id="7gF2HTvk5JG" role="2HvfZ0">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
                <node concept="2Ry0Ak" id="7gF2HTvk5M8" role="iGT6I">
                  <property role="2Ry0Am" value="org.modelix.lib" />
                  <node concept="2Ry0Ak" id="7gF2HTvk5Mb" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2HvfSZ" id="5Sw$pxbSuza" role="39821P">
              <node concept="398BVA" id="5Sw$pxbSuPT" role="2HvfZ0">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
                <node concept="2Ry0Ak" id="5Sw$pxbSv8$" role="iGT6I">
                  <property role="2Ry0Am" value="org.modelix.jetty" />
                  <node concept="2Ry0Ak" id="5Sw$pxbSv8D" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2HvfSZ" id="5a2LedGLbYb" role="39821P">
              <node concept="398BVA" id="5a2LedGLbYc" role="2HvfZ0">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
                <node concept="2Ry0Ak" id="5a2LedGLbYd" role="iGT6I">
                  <property role="2Ry0Am" value="org.modelix.jersey" />
                  <node concept="2Ry0Ak" id="5a2LedGLbYe" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="m$_wl" id="7gF2HTvk5j6" role="39821P">
          <ref role="m_rDy" node="7gF2HTvj4Cd" resolve="org.modelix.ui" />
          <node concept="pUk6x" id="7gF2HTvk5ly" role="pUk7w" />
        </node>
        <node concept="m$_wl" id="7gF2HTviNQb" role="39821P">
          <ref role="m_rDy" node="7gF2HTviNPW" resolve="org.modelix.model" />
          <node concept="pUk6x" id="7gF2HTviNQc" role="pUk7w" />
          <node concept="398223" id="7gF2HTvmh$r" role="39821P">
            <node concept="3_J27D" id="7gF2HTvmh$s" role="Nbhlr">
              <node concept="3Mxwew" id="7gF2HTvmhAP" role="3MwsjC">
                <property role="3MwjfP" value="lib" />
              </node>
            </node>
            <node concept="2HvfSZ" id="7gF2HTvmhAQ" role="39821P">
              <node concept="398BVA" id="7gF2HTvmhDg" role="2HvfZ0">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
                <node concept="2Ry0Ak" id="7gF2HTvmhFG" role="iGT6I">
                  <property role="2Ry0Am" value="org.modelix.model.client" />
                  <node concept="2Ry0Ak" id="7gF2HTvmhFJ" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2HvfSZ" id="7VLV6fKvbAa" role="39821P">
              <node concept="398BVA" id="7VLV6fKvc4v" role="2HvfZ0">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
                <node concept="2Ry0Ak" id="7VLV6fKvcyK" role="iGT6I">
                  <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                  <node concept="2Ry0Ak" id="7VLV6fKvcyP" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="m$_wl" id="6HlxtAUTmjF" role="39821P">
          <ref role="m_rDy" node="6HlxtAUTj2a" resolve="org.modelix.langdev" />
          <node concept="pUk6x" id="6HlxtAUTmjG" role="pUk7w" />
        </node>
        <node concept="m$_wl" id="NHxLR6KMRn" role="39821P">
          <ref role="m_rDy" node="NHxLR6KH43" resolve="org.modelix.build" />
          <node concept="pUk6x" id="NHxLR6KNvS" role="pUk7w" />
        </node>
        <node concept="m$_wl" id="3k6wK$MXaGy" role="39821P">
          <ref role="m_rDy" node="3k6wK$MX461" resolve="org.modelix.ui.server" />
          <node concept="pUk6x" id="3k6wK$MXaGz" role="pUk7w" />
          <node concept="398223" id="3k6wK$NgfIP" role="39821P">
            <node concept="2HvfSZ" id="62v7nyvXU45" role="39821P">
              <node concept="398BVA" id="62v7nyvXU46" role="2HvfZ0">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
                <node concept="2Ry0Ak" id="62v7nyvXU47" role="iGT6I">
                  <property role="2Ry0Am" value="org.modelix.ui.server" />
                  <node concept="2Ry0Ak" id="62v7nyvXU48" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3_J27D" id="3k6wK$NgfIQ" role="Nbhlr">
              <node concept="3Mxwew" id="3k6wK$Ngg2W" role="3MwsjC">
                <property role="3MwjfP" value="lib" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="7gF2HTvj4WE" role="3989C9">
      <property role="m$_wk" value="org.modelix.common" />
      <node concept="3_J27D" id="7gF2HTvj4WG" role="m$_yQ">
        <node concept="3Mxwew" id="7gF2HTvj51y" role="3MwsjC">
          <property role="3MwjfP" value="org.modelix.common" />
        </node>
      </node>
      <node concept="3_J27D" id="7gF2HTvj4WI" role="m_cZH">
        <node concept="3Mxwew" id="7gF2HTvj51z" role="3MwsjC">
          <property role="3MwjfP" value="org.modelix.common" />
        </node>
      </node>
      <node concept="3_J27D" id="7gF2HTvj4WK" role="m$_w8">
        <node concept="3Mxwey" id="7MZ_dOGOv0N" role="3MwsjC">
          <ref role="3Mxwex" node="7MZ_dOGOqeB" resolve="modelixVersion" />
        </node>
      </node>
      <node concept="m$f5U" id="7gF2HTvj5b8" role="m$_yh">
        <ref role="m$f5T" node="7gF2HTvj55a" resolve="org.modelix.common" />
      </node>
      <node concept="m$_yC" id="7gF2HTvj5cl" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="5MA9wbc6Ktd" role="m$_yJ">
        <ref role="m$_y1" to="90a9:4iIKqJTZ5I8" resolve="de.q60.shadowmodels" />
      </node>
    </node>
    <node concept="m$_wf" id="7gF2HTvj4Cd" role="3989C9">
      <property role="m$_wk" value="org.modelix.ui" />
      <node concept="3_J27D" id="7gF2HTvj4Cf" role="m$_yQ">
        <node concept="3Mxwew" id="7gF2HTvj4Od" role="3MwsjC">
          <property role="3MwjfP" value="org.modelix.ui" />
        </node>
      </node>
      <node concept="3_J27D" id="7gF2HTvj4Ch" role="m_cZH">
        <node concept="3Mxwew" id="7gF2HTvj4Oe" role="3MwsjC">
          <property role="3MwjfP" value="org.modelix.ui" />
        </node>
      </node>
      <node concept="3_J27D" id="7gF2HTvj4Cj" role="m$_w8">
        <node concept="3Mxwey" id="7MZ_dOGOvkI" role="3MwsjC">
          <ref role="3Mxwex" node="7MZ_dOGOqeB" resolve="modelixVersion" />
        </node>
      </node>
      <node concept="m$f5U" id="7gF2HTvj4QC" role="m$_yh">
        <ref role="m$f5T" node="7gF2HTvj46U" resolve="org.modelix.ui" />
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
        <ref role="m$_y1" node="7gF2HTvj4WE" resolve="org.modelix.common" />
      </node>
      <node concept="m$_yC" id="5a2LedGLgE6" role="m$_yJ">
        <ref role="m$_y1" node="7gF2HTviNPW" resolve="org.modelix.model" />
      </node>
      <node concept="m$_yC" id="27MnIrahGja" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:RJsmGEieyQ" resolve="jetbrains.mps.vcs" />
      </node>
      <node concept="m$_yC" id="7MZ_dOGM_WR" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:ymnOULATpW" resolve="jetbrains.mps.testing" />
      </node>
      <node concept="m$_yC" id="7KeeG8vthoq" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:6EN03E8oSte" resolve="jetbrains.mps.ide.make" />
      </node>
    </node>
    <node concept="m$_wf" id="7gF2HTviNPW" role="3989C9">
      <property role="m$_wk" value="org.modelix.model" />
      <node concept="m$_yC" id="3MAI_GnQTnG" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:5xhjlkpPhJu" resolve="jetbrains.mps.ide.httpsupport" />
      </node>
      <node concept="3_J27D" id="7gF2HTviNPX" role="m$_yQ">
        <node concept="3Mxwew" id="7gF2HTviNPY" role="3MwsjC">
          <property role="3MwjfP" value="org.modelix.model" />
        </node>
      </node>
      <node concept="3_J27D" id="7gF2HTviNPZ" role="m$_w8">
        <node concept="3Mxwey" id="7MZ_dOGOvCD" role="3MwsjC">
          <ref role="3Mxwex" node="7MZ_dOGOqeB" resolve="modelixVersion" />
        </node>
      </node>
      <node concept="m$f5U" id="7gF2HTviNQ1" role="m$_yh">
        <ref role="m$f5T" node="7gF2HTviNPV" resolve="org.modelix.model" />
      </node>
      <node concept="m$_yC" id="7gF2HTviNQ2" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="7gF2HTvj5kI" role="m$_yJ">
        <ref role="m$_y1" node="7gF2HTvj4WE" resolve="org.modelix.common" />
      </node>
      <node concept="m$_yC" id="5MA9wbc4qh3" role="m$_yJ">
        <ref role="m$_y1" to="90a9:4p3FRivDLPy" resolve="org.apache.commons" />
      </node>
      <node concept="3_J27D" id="7gF2HTviNQ3" role="m_cZH">
        <node concept="3Mxwew" id="7gF2HTviNQ4" role="3MwsjC">
          <property role="3MwjfP" value="org.modelix.model" />
        </node>
      </node>
      <node concept="m$_yC" id="7MZ_dOGMA$S" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:ymnOULATpW" resolve="jetbrains.mps.testing" />
      </node>
      <node concept="m$_yC" id="1WL5L9NoGLz" role="m$_yJ">
        <ref role="m$_y1" to="90a9:5U8hsWC762L" resolve="org.modelix.model.api" />
      </node>
      <node concept="m$_yC" id="7KeeG8vti0M" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:6EN03E8oSte" resolve="jetbrains.mps.ide.make" />
      </node>
      <node concept="m$_yC" id="1C3$AqAUae_" role="m$_yJ">
        <ref role="m$_y1" to="90a9:2Xjt3l57iTJ" resolve="de.slisson.mps.hacks" />
      </node>
      <node concept="m$_yC" id="7hmV_3bkqhJ" role="m$_yJ">
        <ref role="m$_y1" to="90a9:hCVXosGNJH" resolve="com.mbeddr.mpsutil.modellisteners" />
      </node>
    </node>
    <node concept="m$_wf" id="6HlxtAUTj2a" role="3989C9">
      <property role="m$_wk" value="org.modelix.langdev" />
      <node concept="m$_yC" id="3MAI_GnQS7d" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:5xhjlkpPhJu" resolve="jetbrains.mps.ide.httpsupport" />
      </node>
      <node concept="3_J27D" id="6HlxtAUTj2b" role="m$_yQ">
        <node concept="3Mxwew" id="6HlxtAUTj2c" role="3MwsjC">
          <property role="3MwjfP" value="org.modelix.langdev" />
        </node>
      </node>
      <node concept="3_J27D" id="6HlxtAUTj2d" role="m$_w8">
        <node concept="3Mxwey" id="7MZ_dOGOvW$" role="3MwsjC">
          <ref role="3Mxwex" node="7MZ_dOGOqeB" resolve="modelixVersion" />
        </node>
      </node>
      <node concept="m$f5U" id="6HlxtAUTjYD" role="m$_yh">
        <ref role="m$f5T" node="6HlxtAUSD7b" resolve="org.modelix.langdev" />
      </node>
      <node concept="m$_yC" id="6HlxtAUTj2g" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="6HlxtAUTj2i" role="m$_yJ">
        <ref role="m$_y1" node="7gF2HTvj4WE" resolve="org.modelix.common" />
      </node>
      <node concept="m$_yC" id="6HlxtAUTlYm" role="m$_yJ">
        <ref role="m$_y1" node="7gF2HTviNPW" resolve="org.modelix.model" />
      </node>
      <node concept="m$_yC" id="3ljvbPN7ict" role="m$_yJ">
        <ref role="m$_y1" node="7gF2HTvj4Cd" resolve="org.modelix.ui" />
      </node>
      <node concept="m$_yC" id="TSXTNiO0Dw" role="m$_yJ">
        <ref role="m$_y1" to="90a9:6SVXTgIe8wD" resolve="de.itemis.mps.celllayout" />
      </node>
      <node concept="3_J27D" id="6HlxtAUTj2j" role="m_cZH">
        <node concept="3Mxwew" id="6HlxtAUTj2k" role="3MwsjC">
          <property role="3MwjfP" value="org.modelix.langdev" />
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="NHxLR6KH43" role="3989C9">
      <property role="m$_wk" value="org.modelix.build" />
      <node concept="m$_yC" id="NHxLR6KK1S" role="m$_yJ">
        <ref role="m$_y1" to="90a9:4hvHh3QW$Eh" resolve="de.itemis.mps.extensions.build" />
      </node>
      <node concept="3_J27D" id="NHxLR6KH44" role="m$_yQ">
        <node concept="3Mxwew" id="NHxLR6KH45" role="3MwsjC">
          <property role="3MwjfP" value="org.modelix.build" />
        </node>
      </node>
      <node concept="3_J27D" id="NHxLR6KH46" role="m$_w8">
        <node concept="3Mxwey" id="7MZ_dOGOwgv" role="3MwsjC">
          <ref role="3Mxwex" node="7MZ_dOGOqeB" resolve="modelixVersion" />
        </node>
      </node>
      <node concept="m$f5U" id="NHxLR6KIIw" role="m$_yh">
        <ref role="m$f5T" node="NHxLR6K$Cp" resolve="org.modelix.build" />
      </node>
      <node concept="3_J27D" id="NHxLR6KH4e" role="m_cZH">
        <node concept="3Mxwew" id="NHxLR6KH4f" role="3MwsjC">
          <property role="3MwjfP" value="org.modelix.build" />
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="3k6wK$MX461" role="3989C9">
      <property role="m$_wk" value="org.modelix.ui.server" />
      <node concept="m$_yC" id="3MAI_GnQRuW" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:5xhjlkpPhJu" resolve="jetbrains.mps.ide.httpsupport" />
      </node>
      <node concept="3_J27D" id="3k6wK$MX463" role="m$_yQ">
        <node concept="3Mxwew" id="3k6wK$MX65Z" role="3MwsjC">
          <property role="3MwjfP" value="org.modelix.ui.server" />
        </node>
      </node>
      <node concept="3_J27D" id="3k6wK$MX465" role="m_cZH">
        <node concept="3Mxwew" id="3k6wK$MX661" role="3MwsjC">
          <property role="3MwjfP" value="org.modelix.ui.server" />
        </node>
      </node>
      <node concept="3_J27D" id="3k6wK$MX467" role="m$_w8">
        <node concept="3Mxwey" id="3k6wK$MX6q6" role="3MwsjC">
          <ref role="3Mxwex" node="7MZ_dOGOqeB" resolve="modelixVersion" />
        </node>
      </node>
      <node concept="m$f5U" id="3k6wK$MXa4o" role="m$_yh">
        <ref role="m$f5T" node="3k6wK$MX7XN" resolve="org.modelix.ui.server" />
      </node>
      <node concept="m$_yC" id="3k6wK$MXaot" role="m$_yJ">
        <ref role="m$_y1" node="7gF2HTvj4Cd" resolve="org.modelix.ui" />
      </node>
    </node>
    <node concept="2G$12M" id="NHxLR6K$Cp" role="3989C9">
      <property role="TrG5h" value="org.modelix.build" />
      <node concept="1E1JtA" id="NHxLR6KATu" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.build" />
        <property role="3LESm3" value="79531264-5c70-4f13-ad1b-5c32ef78c6f6" />
        <node concept="398BVA" id="NHxLR6KBdr" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="NHxLR6KBPj" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.build" />
            <node concept="2Ry0Ak" id="NHxLR6KCta" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.build.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="NHxLR6KCL5" role="3bR37C">
          <node concept="3bR9La" id="NHxLR6KCL6" role="1SiIV1">
            <ref role="3bR37D" to="90a9:PE3B26VOkn" resolve="de.itemis.mps.extensions.build" />
          </node>
        </node>
        <node concept="1SiIV0" id="NHxLR6KCL7" role="3bR37C">
          <node concept="3bR9La" id="NHxLR6KCL8" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:78GwwOvB3tw" resolve="jetbrains.mps.ide.build" />
          </node>
        </node>
        <node concept="1BupzO" id="NHxLR6KCLg" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="NHxLR6KCLh" role="1HemKq">
            <node concept="398BVA" id="NHxLR6KCL9" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="NHxLR6KCLa" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.build" />
                <node concept="2Ry0Ak" id="NHxLR6KCLb" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="NHxLR6KCLi" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7gF2HTvj55a" role="3989C9">
      <property role="TrG5h" value="org.modelix.common" />
      <node concept="1E1JtA" id="5MA9wbc6HlL" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.common" />
        <property role="3LESm3" value="acf6d2e2-4f00-4425-b7e9-fbf011feddf1" />
        <node concept="398BVA" id="5MA9wbc6HIp" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="5MA9wbc6Iq7" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.common" />
            <node concept="2Ry0Ak" id="5MA9wbc6J5O" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.common.msd" />
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
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
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
          <node concept="3LXTmp" id="4tfK3zZNTbS" role="1HemKq">
            <node concept="398BVA" id="4tfK3zZNTbL" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTbM" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.common" />
                <node concept="2Ry0Ak" id="4tfK3zZNTbN" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4tfK3zZNTbT" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5wsTsVezsMJ" role="3bR37C">
          <node concept="3bR9La" id="5wsTsVezsMK" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7gF2HTviNPP" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.lib" />
        <property role="3LESm3" value="87f4b21e-a3a5-459e-a54b-408fd9eb7350" />
        <node concept="398BVA" id="3$7KuaihldX" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="3$7Kuaihle1" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.lib" />
            <node concept="2Ry0Ak" id="2ANCVnFcI7i" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.lib.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviNSn" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviNSo" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1BupzO" id="7sZTyNS9$rJ" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$rK" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$rC" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
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
          <node concept="3LXTmp" id="4tfK3zZNTdp" role="1HemKq">
            <node concept="398BVA" id="4tfK3zZNTdi" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTdj" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.lib" />
                <node concept="2Ry0Ak" id="4tfK3zZNTdk" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4tfK3zZNTdq" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTc3" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTc4" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTbU" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTbV" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.lib" />
                <node concept="2Ry0Ak" id="4tfK3zZNTbW" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTbX" role="2Ry0An">
                    <property role="2Ry0Am" value="java_websocket.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTce" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTcf" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTc5" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTc6" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.lib" />
                <node concept="2Ry0Ak" id="4tfK3zZNTc7" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTc8" role="2Ry0An">
                    <property role="2Ry0Am" value="json-20160810.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTcp" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTcq" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTcg" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTch" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.lib" />
                <node concept="2Ry0Ak" id="4tfK3zZNTci" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTcj" role="2Ry0An">
                    <property role="2Ry0Am" value="gson-extras-2.8.5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTc$" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTc_" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTcr" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTcs" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.lib" />
                <node concept="2Ry0Ak" id="4tfK3zZNTct" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTcu" role="2Ry0An">
                    <property role="2Ry0Am" value="gson-2.8.6.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTcJ" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTcK" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTcA" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTcB" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.lib" />
                <node concept="2Ry0Ak" id="4tfK3zZNTcC" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTcD" role="2Ry0An">
                    <property role="2Ry0Am" value="kryo-5.0.0-RC4.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTcU" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTcV" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTcL" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTcM" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.lib" />
                <node concept="2Ry0Ak" id="4tfK3zZNTcN" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTcO" role="2Ry0An">
                    <property role="2Ry0Am" value="minlog-1.3.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTd5" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTd6" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTcW" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTcX" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.lib" />
                <node concept="2Ry0Ak" id="4tfK3zZNTcY" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTcZ" role="2Ry0An">
                    <property role="2Ry0Am" value="objenesis-2.6.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTdg" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTdh" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTd7" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTd8" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.lib" />
                <node concept="2Ry0Ak" id="4tfK3zZNTd9" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTda" role="2Ry0An">
                    <property role="2Ry0Am" value="reflectasm-1.11.6.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3uw$nPCKGOo" role="3bR37C">
          <node concept="1BurEX" id="3uw$nPCKGOp" role="1SiIV1">
            <node concept="398BVA" id="3uw$nPCKGOf" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="3uw$nPCKGOg" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.lib" />
                <node concept="2Ry0Ak" id="3uw$nPCKGOh" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3uw$nPCKGOi" role="2Ry0An">
                    <property role="2Ry0Am" value="trove4j-3.0.3.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2MeL55lnqZ9" role="3bR37C">
          <node concept="1BurEX" id="2MeL55lnqZa" role="1SiIV1">
            <node concept="398BVA" id="2MeL55lnqZ0" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="2MeL55lnqZ1" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.lib" />
                <node concept="2Ry0Ak" id="2MeL55lnqZ2" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="2MeL55lnqZ3" role="2Ry0An">
                    <property role="2Ry0Am" value="commons-codec-1.10.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5a2LedGL7Zb" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.jersey" />
        <property role="3LESm3" value="c740997f-28c0-47e8-9b5a-e87dfdb17a21" />
        <property role="2GAjPV" value="true" />
        <node concept="398BVA" id="5a2LedGL7Zc" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="5a2LedGL7Zd" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.jersey" />
            <node concept="2Ry0Ak" id="5a2LedGLa4q" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.jersey.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGL7Zf" role="3bR37C">
          <node concept="3bR9La" id="5a2LedGL7Zg" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTd$" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTd_" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTdr" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTds" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jersey" />
                <node concept="2Ry0Ak" id="4tfK3zZNTdt" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTdu" role="2Ry0An">
                    <property role="2Ry0Am" value="jakarta.activation-1.2.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTdJ" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTdK" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTdA" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTdB" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jersey" />
                <node concept="2Ry0Ak" id="4tfK3zZNTdC" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTdD" role="2Ry0An">
                    <property role="2Ry0Am" value="jakarta.activation-api-1.2.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTdU" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTdV" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTdL" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTdM" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jersey" />
                <node concept="2Ry0Ak" id="4tfK3zZNTdN" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTdO" role="2Ry0An">
                    <property role="2Ry0Am" value="jakarta.annotation-api-1.3.5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTe5" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTe6" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTdW" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTdX" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jersey" />
                <node concept="2Ry0Ak" id="4tfK3zZNTdY" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTdZ" role="2Ry0An">
                    <property role="2Ry0Am" value="jakarta.inject-2.6.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTeg" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTeh" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTe7" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTe8" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jersey" />
                <node concept="2Ry0Ak" id="4tfK3zZNTe9" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTea" role="2Ry0An">
                    <property role="2Ry0Am" value="jakarta.validation-api-2.0.2.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTer" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTes" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTei" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTej" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jersey" />
                <node concept="2Ry0Ak" id="4tfK3zZNTek" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTel" role="2Ry0An">
                    <property role="2Ry0Am" value="jakarta.ws.rs-api-2.1.6.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTeA" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTeB" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTet" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTeu" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jersey" />
                <node concept="2Ry0Ak" id="4tfK3zZNTev" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTew" role="2Ry0An">
                    <property role="2Ry0Am" value="jakarta.xml.bind-api-2.3.2.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTeL" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTeM" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTeC" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTeD" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jersey" />
                <node concept="2Ry0Ak" id="4tfK3zZNTeE" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTeF" role="2Ry0An">
                    <property role="2Ry0Am" value="jersey-client-2.29.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTeW" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTeX" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTeN" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTeO" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jersey" />
                <node concept="2Ry0Ak" id="4tfK3zZNTeP" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTeQ" role="2Ry0An">
                    <property role="2Ry0Am" value="jersey-common-2.29.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTf7" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTf8" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTeY" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTeZ" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jersey" />
                <node concept="2Ry0Ak" id="4tfK3zZNTf0" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTf1" role="2Ry0An">
                    <property role="2Ry0Am" value="jersey-media-jaxb-2.29.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTfi" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTfj" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTf9" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTfa" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jersey" />
                <node concept="2Ry0Ak" id="4tfK3zZNTfb" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTfc" role="2Ry0An">
                    <property role="2Ry0Am" value="jersey-media-sse-2.29.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTft" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTfu" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTfk" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTfl" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jersey" />
                <node concept="2Ry0Ak" id="4tfK3zZNTfm" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTfn" role="2Ry0An">
                    <property role="2Ry0Am" value="jersey-server-2.29.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTfC" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTfD" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTfv" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTfw" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jersey" />
                <node concept="2Ry0Ak" id="4tfK3zZNTfx" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTfy" role="2Ry0An">
                    <property role="2Ry0Am" value="osgi-resource-locator-1.0.3.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTfN" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTfO" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTfE" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTfF" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jersey" />
                <node concept="2Ry0Ak" id="4tfK3zZNTfG" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTfH" role="2Ry0An">
                    <property role="2Ry0Am" value="aopalliance-repackaged-2.6.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTfY" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTfZ" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTfP" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTfQ" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jersey" />
                <node concept="2Ry0Ak" id="4tfK3zZNTfR" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTfS" role="2Ry0An">
                    <property role="2Ry0Am" value="hk2-api-2.6.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTg9" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTga" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTg0" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTg1" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jersey" />
                <node concept="2Ry0Ak" id="4tfK3zZNTg2" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTg3" role="2Ry0An">
                    <property role="2Ry0Am" value="hk2-locator-2.6.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTgk" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTgl" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTgb" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTgc" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jersey" />
                <node concept="2Ry0Ak" id="4tfK3zZNTgd" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTge" role="2Ry0An">
                    <property role="2Ry0Am" value="hk2-utils-2.6.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTgv" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTgw" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTgm" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTgn" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jersey" />
                <node concept="2Ry0Ak" id="4tfK3zZNTgo" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTgp" role="2Ry0An">
                    <property role="2Ry0Am" value="javassist-3.22.0-CR2.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTgE" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTgF" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTgx" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTgy" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jersey" />
                <node concept="2Ry0Ak" id="4tfK3zZNTgz" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTg$" role="2Ry0An">
                    <property role="2Ry0Am" value="jersey-hk2-2.29.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7gF2HTvj46U" role="3989C9">
      <property role="TrG5h" value="org.modelix.ui" />
      <node concept="1E1JtA" id="5npwda7lJQ3" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.ui.common" />
        <property role="3LESm3" value="da981293-1ec2-4df0-95e4-df162984154c" />
        <node concept="398BVA" id="5npwda7lKnH" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="5npwda7lL3r" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.ui.common" />
            <node concept="2Ry0Ak" id="5npwda7lLJ8" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.ui.common.msd" />
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
            <ref role="3bR37D" node="7gF2HTviNPP" resolve="org.modelix.lib" />
          </node>
        </node>
        <node concept="1BupzO" id="7sZTyNS9$uI" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$uJ" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$uB" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
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
          <node concept="3LXTmp" id="4tfK3zZNTgW" role="1HemKq">
            <node concept="398BVA" id="4tfK3zZNTgP" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTgQ" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.ui.common" />
                <node concept="2Ry0Ak" id="4tfK3zZNTgR" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4tfK3zZNTgX" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="NHxLR6J_XP" role="3bR37C">
          <node concept="3bR9La" id="NHxLR6J_XQ" role="1SiIV1">
            <ref role="3bR37D" to="90a9:7q24334ZDUp" resolve="de.q60.mps.util" />
          </node>
        </node>
        <node concept="1SiIV0" id="5U8hsWC7e1F" role="3bR37C">
          <node concept="3bR9La" id="5U8hsWC7e1G" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5U8hsWC71Xh" resolve="org.modelix.model.mpsadapters" />
          </node>
        </node>
        <node concept="1SiIV0" id="3W8k_dZVXOK" role="3bR37C">
          <node concept="3bR9La" id="3W8k_dZVXOL" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPs" resolve="org.modelix.model.mpsplugin" />
          </node>
        </node>
        <node concept="1SiIV0" id="60wywuiy74A" role="3bR37C">
          <node concept="3bR9La" id="60wywuiy74B" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="60wywuiy74C" role="3bR37C">
          <node concept="3bR9La" id="60wywuiy74D" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="60wywuiy74E" role="3bR37C">
          <node concept="3bR9La" id="60wywuiy74F" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7Hbm57D_FL9" resolve="org.modelix.model.client" />
          </node>
        </node>
        <node concept="1SiIV0" id="60wywuiy74G" role="3bR37C">
          <node concept="3bR9La" id="60wywuiy74H" role="1SiIV1">
            <ref role="3bR37D" node="eACOy0gz1M" resolve="org.modelix.ui.state" />
          </node>
        </node>
        <node concept="1SiIV0" id="1uzsBUr_vBm" role="3bR37C">
          <node concept="3bR9La" id="1uzsBUr_vBn" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5U8hsWC73Be" resolve="org.modelix.model.repositoryconcepts" />
          </node>
        </node>
        <node concept="1SiIV0" id="3k6wK$MX1lH" role="3bR37C">
          <node concept="3bR9La" id="3k6wK$MX1lI" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPU" resolve="org.modelix.ui.sm.server" />
          </node>
        </node>
        <node concept="1SiIV0" id="3k6wK$MX1lJ" role="3bR37C">
          <node concept="3bR9La" id="3k6wK$MX1lK" role="1SiIV1">
            <ref role="3bR37D" node="5Sw$pxbQPmv" resolve="org.modelix.jetty" />
          </node>
        </node>
        <node concept="1SiIV0" id="3k6wK$MX1lL" role="3bR37C">
          <node concept="3bR9La" id="3k6wK$MX1lM" role="1SiIV1">
            <ref role="3bR37D" node="1_iojA26Pac" resolve="org.modelix.ui.svg" />
          </node>
        </node>
        <node concept="1SiIV0" id="5wsTsVezsR4" role="3bR37C">
          <node concept="3bR9La" id="5wsTsVezsR5" role="1SiIV1">
            <ref role="3bR37D" node="5MA9wbc6HlL" resolve="org.modelix.common" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="7gF2HTviNPn" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.ui.sm" />
        <property role="3LESm3" value="78874af2-5dd2-42a7-a21d-42fab3737d1d" />
        <node concept="398BVA" id="3$7KuaihleN" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="3$7KuaihleR" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.ui.sm" />
            <node concept="2Ry0Ak" id="6GOzicS77UP" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.ui.sm.mpl" />
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
          <property role="TrG5h" value="org.modelix.ui.sm#01" />
          <property role="3LESm3" value="10ecc1c8-9e76-4395-886d-b8a9d626629f" />
          <node concept="1BupzO" id="7sZTyNS9$v4" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="7sZTyNS9$v5" role="1HemKq">
              <node concept="398BVA" id="7sZTyNS9$uV" role="3LXTmr">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
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
            <node concept="3LXTmp" id="4tfK3zZNThg" role="1HemKq">
              <node concept="398BVA" id="4tfK3zZNTh7" role="3LXTmr">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
                <node concept="2Ry0Ak" id="4tfK3zZNTh8" role="iGT6I">
                  <property role="2Ry0Am" value="org.modelix.ui.sm" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTh9" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTha" role="2Ry0An">
                      <property role="2Ry0Am" value="template" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="4tfK3zZNThh" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviO9k" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviO9l" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPx" resolve="org.modelix.ui.sm.json" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviO9m" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviO9n" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPF" resolve="org.modelix.ui.sm.dom" />
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
        <node concept="1SiIV0" id="5npwda835T1" role="3bR37C">
          <node concept="3bR9La" id="5npwda835T2" role="1SiIV1">
            <ref role="3bR37D" node="5npwda7lJQ3" resolve="org.modelix.ui.common" />
          </node>
        </node>
        <node concept="1BupzO" id="7sZTyNS9$uS" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$uT" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$uL" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
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
          <node concept="3LXTmp" id="4tfK3zZNTh5" role="1HemKq">
            <node concept="398BVA" id="4tfK3zZNTgY" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTgZ" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.ui.sm" />
                <node concept="2Ry0Ak" id="4tfK3zZNTh0" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4tfK3zZNTh6" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5X1StJEGkq5" role="3bR37C">
          <node concept="3bR9La" id="5X1StJEGkq6" role="1SiIV1">
            <ref role="3bR37D" node="5Sw$pxbQPmv" resolve="org.modelix.jetty" />
          </node>
        </node>
        <node concept="1SiIV0" id="5X1StJEGkq9" role="3bR37C">
          <node concept="3bR9La" id="5X1StJEGkqa" role="1SiIV1">
            <ref role="3bR37D" to="90a9:6fQhGuklPrV" resolve="de.q60.mps.incremental.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="6u4pZj_urO9" role="3bR37C">
          <node concept="3bR9La" id="6u4pZj_urOa" role="1SiIV1">
            <ref role="3bR37D" to="90a9:6fQhGuklQWU" resolve="de.q60.mps.libs" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BujJjZfwQI" role="3bR37C">
          <node concept="3bR9La" id="7BujJjZfwQJ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:3MI1gu0QouH" resolve="jetbrains.mps.editor.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7BujJjZfwQK" role="3bR37C">
          <node concept="3bR9La" id="7BujJjZfwQL" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="3rtmxn" id="1yReInH2Rk" role="3bR31x">
          <node concept="3LXTmp" id="1yReInH2Rl" role="3rtmxm">
            <node concept="398BVA" id="1yReInH2Rm" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1yReInH2Rn" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.ui.sm" />
              </node>
            </node>
            <node concept="3qWCbU" id="1yReInH2Rp" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7CLCLrd9sls" role="3bR37C">
          <node concept="3bR9La" id="7CLCLrd9slt" role="1SiIV1">
            <ref role="3bR37D" node="eACOy0gz1M" resolve="org.modelix.ui.state" />
          </node>
        </node>
        <node concept="1SiIV0" id="5U8hsWC7e1O" role="3bR37C">
          <node concept="3bR9La" id="5U8hsWC7e1P" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5U8hsWC71Xh" resolve="org.modelix.model.mpsadapters" />
          </node>
        </node>
        <node concept="1SiIV0" id="2Slsp6mPjrk" role="3bR37C">
          <node concept="3bR9La" id="2Slsp6mPjrl" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5U8hsWC73Be" resolve="org.modelix.model.repositoryconcepts" />
          </node>
        </node>
        <node concept="1SiIV0" id="3W8k_dZVXOT" role="3bR37C">
          <node concept="3bR9La" id="3W8k_dZVXOU" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPs" resolve="org.modelix.model.mpsplugin" />
          </node>
        </node>
        <node concept="1SiIV0" id="7d_Du487HL" role="3bR37C">
          <node concept="3bR9La" id="7d_Du487HM" role="1SiIV1">
            <ref role="3bR37D" to="90a9:4iIKqJTZ5H4" resolve="de.q60.mps.polymorphicfunctions.runtime" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="7gF2HTviNPx" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.ui.sm.json" />
        <property role="3LESm3" value="0f2359af-040e-43bb-b438-cf024da41518" />
        <node concept="398BVA" id="3$7KuaihlfD" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="3$7KuaihlfH" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.ui.sm.json" />
            <node concept="2Ry0Ak" id="6GOzicS777L" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.ui.sm.json.mpl" />
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="7gF2HTviNQE" role="1TViLv">
          <property role="TrG5h" value="org.modelix.ui.sm.json#01" />
          <property role="3LESm3" value="7111509f-e08e-4fa2-bc4e-046235ec2a86" />
          <node concept="1BupzO" id="7sZTyNS9$vq" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="7sZTyNS9$vr" role="1HemKq">
              <node concept="398BVA" id="7sZTyNS9$vh" role="3LXTmr">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
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
            <node concept="3LXTmp" id="4tfK3zZNTh$" role="1HemKq">
              <node concept="398BVA" id="4tfK3zZNThr" role="3LXTmr">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
                <node concept="2Ry0Ak" id="4tfK3zZNThs" role="iGT6I">
                  <property role="2Ry0Am" value="org.modelix.ui.sm.json" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTht" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="4tfK3zZNThu" role="2Ry0An">
                      <property role="2Ry0Am" value="template" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="4tfK3zZNTh_" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviO9s" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviO9t" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPP" resolve="org.modelix.lib" />
          </node>
        </node>
        <node concept="1BupzO" id="7sZTyNS9$ve" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$vf" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$v7" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
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
          <node concept="3LXTmp" id="4tfK3zZNThp" role="1HemKq">
            <node concept="398BVA" id="4tfK3zZNThi" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNThj" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.ui.sm.json" />
                <node concept="2Ry0Ak" id="4tfK3zZNThk" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4tfK3zZNThq" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="1yReInH3aX" role="3bR31x">
          <node concept="3LXTmp" id="1yReInH3aY" role="3rtmxm">
            <node concept="398BVA" id="1yReInH3aZ" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1yReInH3b0" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.ui.sm.json" />
              </node>
            </node>
            <node concept="3qWCbU" id="1yReInH3b2" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="7gF2HTviNPF" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.ui.sm.dom" />
        <property role="3LESm3" value="6f6906a4-f244-4806-a98b-0bc781cef2a8" />
        <node concept="398BVA" id="3$7Kuaihlgv" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="3$7Kuaihlgz" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.ui.sm.dom" />
            <node concept="2Ry0Ak" id="6GOzicS76kH" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.ui.sm.dom.mpl" />
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="7gF2HTviNQI" role="1TViLv">
          <property role="TrG5h" value="org.modelix.ui.sm.dom#01" />
          <property role="3LESm3" value="8eeab8ed-d51a-4f98-8dd9-0a43d1a66dd7" />
          <node concept="1BupzO" id="7sZTyNS9$vK" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="7sZTyNS9$vL" role="1HemKq">
              <node concept="398BVA" id="7sZTyNS9$vB" role="3LXTmr">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
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
            <node concept="3LXTmp" id="4tfK3zZNThS" role="1HemKq">
              <node concept="398BVA" id="4tfK3zZNThJ" role="3LXTmr">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
                <node concept="2Ry0Ak" id="4tfK3zZNThK" role="iGT6I">
                  <property role="2Ry0Am" value="org.modelix.ui.sm.dom" />
                  <node concept="2Ry0Ak" id="4tfK3zZNThL" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="4tfK3zZNThM" role="2Ry0An">
                      <property role="2Ry0Am" value="template" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="4tfK3zZNThT" role="3LXTna">
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
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
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
          <node concept="3LXTmp" id="4tfK3zZNThH" role="1HemKq">
            <node concept="398BVA" id="4tfK3zZNThA" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNThB" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.ui.sm.dom" />
                <node concept="2Ry0Ak" id="4tfK3zZNThC" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4tfK3zZNThI" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="1yReInH3uA" role="3bR31x">
          <node concept="3LXTmp" id="1yReInH3uB" role="3rtmxm">
            <node concept="398BVA" id="1yReInH3uC" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1yReInH3uD" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.ui.sm.dom" />
              </node>
            </node>
            <node concept="3qWCbU" id="1yReInH3uF" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7gF2HTviNPU" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.ui.sm.server" />
        <property role="3LESm3" value="eb8d1040-bff5-4126-8949-fdd95ef4c502" />
        <node concept="398BVA" id="3$7Kuaihlhl" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="3$7Kuaihlhp" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.ui.sm.server" />
            <node concept="2Ry0Ak" id="2ANCVnFcOL5" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.ui.sm.server.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviOaK" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviOaL" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPn" resolve="org.modelix.ui.sm" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviOaM" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviOaN" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPx" resolve="org.modelix.ui.sm.json" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviOaO" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviOaP" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPP" resolve="org.modelix.lib" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviOaQ" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviOaR" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPF" resolve="org.modelix.ui.sm.dom" />
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
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="5Sw$pxbQPmv" resolve="org.modelix.jetty" />
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda835T5" role="3bR37C">
          <node concept="3bR9La" id="5npwda835T6" role="1SiIV1">
            <ref role="3bR37D" node="5npwda7lJQ3" resolve="org.modelix.ui.common" />
          </node>
        </node>
        <node concept="1BupzO" id="7sZTyNS9$vU" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$vV" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$vN" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
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
          <node concept="3LXTmp" id="4tfK3zZNTi1" role="1HemKq">
            <node concept="398BVA" id="4tfK3zZNThU" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNThV" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.ui.sm.server" />
                <node concept="2Ry0Ak" id="4tfK3zZNThW" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4tfK3zZNTi2" role="3LXTna">
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
        <node concept="1SiIV0" id="2jBAMx3Br6o" role="3bR37C">
          <node concept="3bR9La" id="2jBAMx3Br6p" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5wnrAmUmAQt" resolve="de.q60.mps.shadowmodels.debugview" />
          </node>
        </node>
        <node concept="1SiIV0" id="NHxLR6J_YI" role="3bR37C">
          <node concept="3bR9La" id="NHxLR6J_YJ" role="1SiIV1">
            <ref role="3bR37D" to="90a9:7q24334ZAZ6" resolve="de.q60.mps.explorer" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CLCLrd9sme" role="3bR37C">
          <node concept="3bR9La" id="7CLCLrd9smf" role="1SiIV1">
            <ref role="3bR37D" node="1_iojA26Pac" resolve="org.modelix.ui.svg" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CLCLrd9smi" role="3bR37C">
          <node concept="3bR9La" id="7CLCLrd9smj" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPs" resolve="org.modelix.model.mpsplugin" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CLCLrd9smk" role="3bR37C">
          <node concept="3bR9La" id="7CLCLrd9sml" role="1SiIV1">
            <ref role="3bR37D" node="7Hbm57D_FL9" resolve="org.modelix.model.client" />
          </node>
        </node>
        <node concept="1SiIV0" id="7CLCLrd9smm" role="3bR37C">
          <node concept="3bR9La" id="7CLCLrd9smn" role="1SiIV1">
            <ref role="3bR37D" node="eACOy0gz1M" resolve="org.modelix.ui.state" />
          </node>
        </node>
        <node concept="1SiIV0" id="5U8hsWC7e2A" role="3bR37C">
          <node concept="3bR9La" id="5U8hsWC7e2B" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5U8hsWC71Xh" resolve="org.modelix.model.mpsadapters" />
          </node>
        </node>
        <node concept="1SiIV0" id="1hyexJLlFIw" role="3bR37C">
          <node concept="3bR9La" id="1hyexJLlFIx" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5U8hsWC70jw" resolve="org.modelix.model.api" />
          </node>
        </node>
        <node concept="1SiIV0" id="4z6TrYVLynS" role="3bR37C">
          <node concept="3bR9La" id="4z6TrYVLynT" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5U8hsWC73Be" resolve="org.modelix.model.repositoryconcepts" />
          </node>
        </node>
        <node concept="1SiIV0" id="4z6TrYVLynU" role="3bR37C">
          <node concept="3bR9La" id="4z6TrYVLynV" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1SiIV0" id="HDkqoU1TR2" role="3bR37C">
          <node concept="3bR9La" id="HDkqoU1TR3" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="1XZcQWU79OJ" role="3bR37C">
          <node concept="3bR9La" id="1XZcQWU79OK" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="1_iojA26Pac" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.ui.svg" />
        <property role="3LESm3" value="cceec75f-de6e-4ee7-bd91-29a3a99bfede" />
        <node concept="398BVA" id="3$7Kuaihlib" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="3$7Kuaihlif" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.ui.svg" />
            <node concept="2Ry0Ak" id="3$7Kuaihlig" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.ui.svg.msd" />
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
        <node concept="1SiIV0" id="6GOzicSgelT" role="3bR37C">
          <node concept="3bR9La" id="6GOzicSgelU" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPP" resolve="org.modelix.lib" />
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLbav" role="3bR37C">
          <node concept="3bR9La" id="5a2LedGLbaw" role="1SiIV1">
            <ref role="3bR37D" node="5Sw$pxbQPmv" resolve="org.modelix.jetty" />
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda7lMPr" role="3bR37C">
          <node concept="3bR9La" id="5npwda7lMPs" role="1SiIV1">
            <ref role="3bR37D" node="5npwda7lJQ3" resolve="org.modelix.ui.common" />
          </node>
        </node>
        <node concept="1SiIV0" id="5npwda835T7" role="3bR37C">
          <node concept="3bR9La" id="5npwda835T8" role="1SiIV1">
            <ref role="3bR37D" to="90a9:4iIKqJTZ5Hm" resolve="de.q60.mps.shadowmodels.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="1W$kLfSZfU9" role="3bR37C">
          <node concept="3bR9La" id="1W$kLfSZfUa" role="1SiIV1">
            <ref role="3bR37D" node="5MA9wbc6HlL" resolve="org.modelix.common" />
          </node>
        </node>
        <node concept="1SiIV0" id="Cck3bmGIJv" role="3bR37C">
          <node concept="3bR9La" id="Cck3bmGIJw" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPs" resolve="org.modelix.model.mpsplugin" />
          </node>
        </node>
        <node concept="1BupzO" id="7sZTyNS9$_w" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$_x" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$_p" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
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
          <node concept="3LXTmp" id="4tfK3zZNTil" role="1HemKq">
            <node concept="398BVA" id="4tfK3zZNTie" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTif" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.ui.svg" />
                <node concept="2Ry0Ak" id="4tfK3zZNTig" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4tfK3zZNTim" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="eACOy0gwjl" role="3bR37C">
          <node concept="3bR9La" id="eACOy0gwjm" role="1SiIV1">
            <ref role="3bR37D" node="7Hbm57D_FL9" resolve="org.modelix.model.client" />
          </node>
        </node>
        <node concept="1SiIV0" id="eACOy0g_VC" role="3bR37C">
          <node concept="3bR9La" id="eACOy0g_VD" role="1SiIV1">
            <ref role="3bR37D" node="eACOy0gz1M" resolve="org.modelix.ui.state" />
          </node>
        </node>
        <node concept="1SiIV0" id="5U8hsWC7e2J" role="3bR37C">
          <node concept="3bR9La" id="5U8hsWC7e2K" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5U8hsWC71Xh" resolve="org.modelix.model.mpsadapters" />
          </node>
        </node>
        <node concept="1SiIV0" id="60wywuiy75G" role="3bR37C">
          <node concept="3bR9La" id="60wywuiy75H" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5U8hsWC70jw" resolve="org.modelix.model.api" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5Sw$pxbQPmv" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.jetty" />
        <property role="3LESm3" value="fc3c2aa8-0d4b-463f-a774-40d450aa04a0" />
        <property role="2GAjPV" value="true" />
        <node concept="398BVA" id="5Sw$pxbQPzK" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="5Sw$pxbQPOm" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.jetty" />
            <node concept="2Ry0Ak" id="5Sw$pxbQQ4V" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.jetty.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQj4" role="3bR37C">
          <node concept="3bR9La" id="5Sw$pxbQQj5" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTiw" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTix" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTin" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTio" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTip" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTiq" role="2Ry0An">
                    <property role="2Ry0Am" value="infinispan-common-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTiF" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTiG" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTiy" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTiz" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTi$" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTi_" role="2Ry0An">
                    <property role="2Ry0Am" value="infinispan-embedded-query-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTiQ" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTiR" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTiH" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTiI" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTiJ" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTiK" role="2Ry0An">
                    <property role="2Ry0Am" value="infinispan-remote-query-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTj1" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTj2" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTiS" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTiT" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTiU" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTiV" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-alpn-conscrypt-server-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTjc" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTjd" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTj3" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTj4" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTj5" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTj6" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-alpn-java-server-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTjn" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTjo" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTje" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTjf" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTjg" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTjh" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-alpn-openjdk8-server-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTjy" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTjz" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTjp" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTjq" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTjr" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTjs" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-alpn-server-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTjH" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTjI" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTj$" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTj_" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTjA" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTjB" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-annotations-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTjS" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTjT" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTjJ" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTjK" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTjL" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTjM" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-cdi-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTk3" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTk4" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTjU" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTjV" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTjW" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTjX" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-client-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTke" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTkf" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTk5" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTk6" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTk7" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTk8" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-continuation-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTkp" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTkq" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTkg" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTkh" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTki" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTkj" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-deploy-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTk$" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTk_" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTkr" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTks" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTkt" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTku" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-gcloud-session-manager-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTkJ" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTkK" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTkA" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTkB" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTkC" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTkD" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-hazelcast-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTkU" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTkV" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTkL" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTkM" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTkN" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTkO" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-http-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTl5" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTl6" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTkW" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTkX" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTkY" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTkZ" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-io-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTlg" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTlh" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTl7" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTl8" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTl9" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTla" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-jaas-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTlr" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTls" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTli" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTlj" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTlk" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTll" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-jaspi-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTlA" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTlB" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTlt" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTlu" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTlv" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTlw" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-jmx-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTlL" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTlM" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTlC" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTlD" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTlE" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTlF" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-jndi-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTlW" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTlX" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTlN" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTlO" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTlP" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTlQ" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-memcached-sessions-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTm7" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTm8" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTlY" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTlZ" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTm0" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTm1" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-nosql-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTmi" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTmj" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTm9" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTma" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTmb" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTmc" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-plus-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTmt" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTmu" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTmk" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTml" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTmm" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTmn" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-proxy-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTmC" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTmD" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTmv" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTmw" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTmx" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTmy" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-quickstart-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTmN" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTmO" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTmE" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTmF" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTmG" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTmH" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-rewrite-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTmY" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTmZ" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTmP" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTmQ" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTmR" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTmS" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-security-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTn9" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTna" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTn0" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTn1" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTn2" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTn3" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-server-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTnk" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTnl" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTnb" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTnc" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTnd" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTne" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-servlet-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTnv" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTnw" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTnm" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTnn" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTno" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTnp" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-servlets-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTnE" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTnF" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTnx" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTny" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTnz" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTn$" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-unixsocket-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTnP" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTnQ" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTnG" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTnH" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTnI" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTnJ" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-util-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTo0" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTo1" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTnR" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTnS" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTnT" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTnU" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-webapp-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTob" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNToc" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTo2" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTo3" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTo4" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTo5" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-xml-9.4.20.v20190813.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTom" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTon" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTod" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNToe" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTof" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTog" role="2Ry0An">
                    <property role="2Ry0Am" value="alpn-api-1.1.3.v20160715.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNToz" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTo$" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNToo" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTop" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNToq" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTor" role="2Ry0An">
                    <property role="2Ry0Am" value="annotations" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTos" role="2Ry0An">
                      <property role="2Ry0Am" value="asm-7.1.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNToK" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNToL" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTo_" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNToA" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNToB" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNToC" role="2Ry0An">
                    <property role="2Ry0Am" value="annotations" />
                    <node concept="2Ry0Ak" id="4tfK3zZNToD" role="2Ry0An">
                      <property role="2Ry0Am" value="asm-analysis-7.1.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNToX" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNToY" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNToM" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNToN" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNToO" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNToP" role="2Ry0An">
                    <property role="2Ry0Am" value="annotations" />
                    <node concept="2Ry0Ak" id="4tfK3zZNToQ" role="2Ry0An">
                      <property role="2Ry0Am" value="asm-commons-7.1.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTpa" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTpb" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNToZ" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTp0" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTp1" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTp2" role="2Ry0An">
                    <property role="2Ry0Am" value="annotations" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTp3" role="2Ry0An">
                      <property role="2Ry0Am" value="asm-tree-7.1.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTpn" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTpo" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTpc" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTpd" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTpe" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTpf" role="2Ry0An">
                    <property role="2Ry0Am" value="annotations" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTpg" role="2Ry0An">
                      <property role="2Ry0Am" value="javax.annotation-api-1.3.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTp$" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTp_" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTpp" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTpq" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTpr" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTps" role="2Ry0An">
                    <property role="2Ry0Am" value="apache-jsp" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTpt" role="2Ry0An">
                      <property role="2Ry0Am" value="org.eclipse.jetty.apache-jsp-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTpL" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTpM" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTpA" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTpB" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTpC" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTpD" role="2Ry0An">
                    <property role="2Ry0Am" value="apache-jsp" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTpE" role="2Ry0An">
                      <property role="2Ry0Am" value="org.eclipse.jdt.ecj-3.17.0.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTpY" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTpZ" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTpN" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTpO" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTpP" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTpQ" role="2Ry0An">
                    <property role="2Ry0Am" value="apache-jsp" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTpR" role="2Ry0An">
                      <property role="2Ry0Am" value="org.mortbay.jasper.apache-el-8.5.40.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTqb" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTqc" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTq0" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTq1" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTq2" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTq3" role="2Ry0An">
                    <property role="2Ry0Am" value="apache-jsp" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTq4" role="2Ry0An">
                      <property role="2Ry0Am" value="org.mortbay.jasper.apache-jsp-8.5.40.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTqo" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTqp" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTqd" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTqe" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTqf" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTqg" role="2Ry0An">
                    <property role="2Ry0Am" value="apache-jstl" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTqh" role="2Ry0An">
                      <property role="2Ry0Am" value="org.apache.taglibs.taglibs-standard-impl-1.2.5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTq_" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTqA" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTqq" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTqr" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTqs" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTqt" role="2Ry0An">
                    <property role="2Ry0Am" value="apache-jstl" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTqu" role="2Ry0An">
                      <property role="2Ry0Am" value="org.apache.taglibs.taglibs-standard-spec-1.2.5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTqM" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTqN" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTqB" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTqC" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTqD" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTqE" role="2Ry0An">
                    <property role="2Ry0Am" value="fcgi" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTqF" role="2Ry0An">
                      <property role="2Ry0Am" value="fcgi-client-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTqZ" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTr0" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTqO" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTqP" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTqQ" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTqR" role="2Ry0An">
                    <property role="2Ry0Am" value="fcgi" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTqS" role="2Ry0An">
                      <property role="2Ry0Am" value="fcgi-server-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTrc" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTrd" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTr1" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTr2" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTr3" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTr4" role="2Ry0An">
                    <property role="2Ry0Am" value="http2" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTr5" role="2Ry0An">
                      <property role="2Ry0Am" value="http2-common-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTrp" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTrq" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTre" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTrf" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTrg" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTrh" role="2Ry0An">
                    <property role="2Ry0Am" value="http2" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTri" role="2Ry0An">
                      <property role="2Ry0Am" value="http2-hpack-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTrA" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTrB" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTrr" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTrs" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTrt" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTru" role="2Ry0An">
                    <property role="2Ry0Am" value="http2" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTrv" role="2Ry0An">
                      <property role="2Ry0Am" value="http2-server-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTrN" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTrO" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTrC" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTrD" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTrE" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTrF" role="2Ry0An">
                    <property role="2Ry0Am" value="jaspi" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTrG" role="2Ry0An">
                      <property role="2Ry0Am" value="javax.security.auth.message-1.0.0.v201108011116.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTrY" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTrZ" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTrP" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTrQ" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTrR" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTrS" role="2Ry0An">
                    <property role="2Ry0Am" value="jetty-schemas-3.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTsb" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTsc" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTs0" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTs1" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTs2" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTs3" role="2Ry0An">
                    <property role="2Ry0Am" value="mail" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTs4" role="2Ry0An">
                      <property role="2Ry0Am" value="javax.mail.glassfish-1.4.1.v201005082020.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTsm" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTsn" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTsd" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTse" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTsf" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTsg" role="2Ry0An">
                    <property role="2Ry0Am" value="servlet-api-3.1.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTsz" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTs$" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTso" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTsp" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTsq" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTsr" role="2Ry0An">
                    <property role="2Ry0Am" value="setuid" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTss" role="2Ry0An">
                      <property role="2Ry0Am" value="jetty-setuid-java-1.0.3.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTsK" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTsL" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTs_" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTsA" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTsB" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTsC" role="2Ry0An">
                    <property role="2Ry0Am" value="spring" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTsD" role="2Ry0An">
                      <property role="2Ry0Am" value="jetty-spring-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTsX" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTsY" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTsM" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTsN" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTsO" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTsP" role="2Ry0An">
                    <property role="2Ry0Am" value="transactions" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTsQ" role="2Ry0An">
                      <property role="2Ry0Am" value="javax.transaction-api-1.3.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTta" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTtb" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTsZ" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTt0" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTt1" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTt2" role="2Ry0An">
                    <property role="2Ry0Am" value="websocket" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTt3" role="2Ry0An">
                      <property role="2Ry0Am" value="javax-websocket-client-impl-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTtn" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTto" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTtc" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTtd" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTte" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTtf" role="2Ry0An">
                    <property role="2Ry0Am" value="websocket" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTtg" role="2Ry0An">
                      <property role="2Ry0Am" value="javax-websocket-server-impl-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTt$" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTt_" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTtp" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTtq" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTtr" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTts" role="2Ry0An">
                    <property role="2Ry0Am" value="websocket" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTtt" role="2Ry0An">
                      <property role="2Ry0Am" value="websocket-api-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTtL" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTtM" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTtA" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTtB" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTtC" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTtD" role="2Ry0An">
                    <property role="2Ry0Am" value="websocket" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTtE" role="2Ry0An">
                      <property role="2Ry0Am" value="websocket-client-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTtY" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTtZ" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTtN" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTtO" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTtP" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTtQ" role="2Ry0An">
                    <property role="2Ry0Am" value="websocket" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTtR" role="2Ry0An">
                      <property role="2Ry0Am" value="websocket-common-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTub" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTuc" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTu0" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTu1" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTu2" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTu3" role="2Ry0An">
                    <property role="2Ry0Am" value="websocket" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTu4" role="2Ry0An">
                      <property role="2Ry0Am" value="websocket-server-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTuo" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTup" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTud" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTue" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTuf" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTug" role="2Ry0An">
                    <property role="2Ry0Am" value="websocket" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTuh" role="2Ry0An">
                      <property role="2Ry0Am" value="websocket-servlet-9.4.20.v20190813.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4tfK3zZNTu_" role="3bR37C">
          <node concept="1BurEX" id="4tfK3zZNTuA" role="1SiIV1">
            <node concept="398BVA" id="4tfK3zZNTuq" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTur" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.jetty" />
                <node concept="2Ry0Ak" id="4tfK3zZNTus" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTut" role="2Ry0An">
                    <property role="2Ry0Am" value="websocket" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTuu" role="2Ry0An">
                      <property role="2Ry0Am" value="javax.websocket-api-1.0.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="27MnIrahxUD" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.ui.diff" />
        <property role="3LESm3" value="25f5c7b1-6312-4074-a012-654b813b8083" />
        <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
        <node concept="398BVA" id="27MnIrahymz" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="27MnIrahyRF" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.ui.diff" />
            <node concept="2Ry0Ak" id="27MnIrahzoM" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.ui.diff.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="27MnIrahzTe" role="3bR37C">
          <node concept="3bR9La" id="27MnIrahzTf" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="27MnIrahzTg" role="3bR37C">
          <node concept="3bR9La" id="27MnIrahzTh" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="27MnIrahzTi" role="3bR37C">
          <node concept="3bR9La" id="27MnIrahzTj" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:39HJr_hyEzS" resolve="jetbrains.mps.ide.vcs.platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="27MnIrahzTm" role="3bR37C">
          <node concept="3bR9La" id="27MnIrahzTn" role="1SiIV1">
            <ref role="3bR37D" node="5Sw$pxbQPmv" resolve="org.modelix.jetty" />
          </node>
        </node>
        <node concept="1BupzO" id="27MnIrahzTx" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="27MnIrahzTy" role="1HemKq">
            <node concept="398BVA" id="27MnIrahzTq" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="27MnIrahzTr" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.ui.diff" />
                <node concept="2Ry0Ak" id="27MnIrahzTs" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="27MnIrahzTz" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7jrnksKCsxX" role="3bR37C">
          <node concept="3bR9La" id="7jrnksKCsxY" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="4VOkv45Vt0i" role="3bR37C">
          <node concept="3bR9La" id="4VOkv45Vt0j" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="5qbHjZpHGPe" role="3bR37C">
          <node concept="3bR9La" id="5qbHjZpHGPf" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:4wxeloVufXp" resolve="jetbrains.mps.git4idea.stubs" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="eACOy0gz1M" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.ui.state" />
        <property role="3LESm3" value="db058d09-86d2-48ce-b33c-595801a97e6c" />
        <node concept="398BVA" id="eACOy0gzyD" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="eACOy0g$b_" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.ui.state" />
            <node concept="2Ry0Ak" id="eACOy0g$Ow" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.ui.state.mpl" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="eACOy0g_pk" role="3bR37C">
          <node concept="3bR9La" id="eACOy0g_pl" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="eACOy0g_pm" role="3bR37C">
          <node concept="3bR9La" id="eACOy0g_pn" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="eACOy0g_po" role="3bR37C">
          <node concept="3bR9La" id="eACOy0g_pp" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="eACOy0g_pq" role="3bR37C">
          <node concept="3bR9La" id="eACOy0g_pr" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1BupzO" id="eACOy0g_pz" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="eACOy0g_p$" role="1HemKq">
            <node concept="398BVA" id="eACOy0g_ps" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="eACOy0g_pt" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.ui.state" />
                <node concept="2Ry0Ak" id="eACOy0g_pu" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="eACOy0g_p_" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="eACOy0g_pA" role="1TViLv">
          <property role="TrG5h" value="org.modelix.ui.state#01" />
          <property role="3LESm3" value="f01a0407-23ec-4ba1-a539-754663bca2a8" />
          <node concept="1BupzO" id="eACOy0g_pK" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="eACOy0g_pL" role="1HemKq">
              <node concept="398BVA" id="eACOy0g_pB" role="3LXTmr">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
                <node concept="2Ry0Ak" id="eACOy0g_pC" role="iGT6I">
                  <property role="2Ry0Am" value="org.modelix.ui.state" />
                  <node concept="2Ry0Ak" id="eACOy0g_pD" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="eACOy0g_pE" role="2Ry0An">
                      <property role="2Ry0Am" value="templates" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="eACOy0g_pM" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="eACOy0gA_v" role="3bR31x">
          <node concept="3LXTmp" id="eACOy0gA_w" role="3rtmxm">
            <node concept="398BVA" id="eACOy0gA_x" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="eACOy0gA_y" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.ui.state" />
              </node>
            </node>
            <node concept="3qWCbU" id="eACOy0gA_$" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6gw1ikeUv3B" role="3bR37C">
          <node concept="3bR9La" id="6gw1ikeUv3C" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPn" resolve="org.modelix.ui.sm" />
          </node>
        </node>
        <node concept="1SiIV0" id="3Bn_Eeaow_U" role="3bR37C">
          <node concept="3bR9La" id="3Bn_Eeaow_V" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5U8hsWC71Xh" resolve="org.modelix.model.mpsadapters" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7gF2HTviNPV" role="3989C9">
      <property role="TrG5h" value="org.modelix.model" />
      <node concept="1E1JtD" id="$zd_cMRR11" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.model.runtimelang" />
        <property role="3LESm3" value="b6980ebd-f01d-459d-a952-38740f6313b4" />
        <node concept="398BVA" id="$zd_cMRRoN" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="$zd_cMRS3p" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.model.runtimelang" />
            <node concept="2Ry0Ak" id="$zd_cMRSHY" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.model.runtimelang.mpl" />
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="$zd_cMRTHW" role="1TViLv">
          <property role="TrG5h" value="org.modelix.model.runtimelang#01" />
          <property role="3LESm3" value="1a41ca2b-5b2e-48b4-8ce0-c6444fdfc6ba" />
          <node concept="1BupzO" id="7sZTyNS9$Kv" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="7sZTyNS9$Kw" role="1HemKq">
              <node concept="398BVA" id="7sZTyNS9$Km" role="3LXTmr">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
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
            <node concept="3LXTmp" id="4tfK3zZNTvm" role="1HemKq">
              <node concept="398BVA" id="4tfK3zZNTvd" role="3LXTmr">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
                <node concept="2Ry0Ak" id="4tfK3zZNTve" role="iGT6I">
                  <property role="2Ry0Am" value="org.modelix.model.runtimelang" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTvf" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTvg" role="2Ry0An">
                      <property role="2Ry0Am" value="template" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="4tfK3zZNTvn" role="3LXTna">
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
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
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
          <node concept="3LXTmp" id="4tfK3zZNTvb" role="1HemKq">
            <node concept="398BVA" id="4tfK3zZNTv4" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTv5" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.runtimelang" />
                <node concept="2Ry0Ak" id="4tfK3zZNTv6" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4tfK3zZNTvc" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="7Hbm57D_J23" role="3bR31x">
          <node concept="3LXTmp" id="7Hbm57D_J24" role="3rtmxm">
            <node concept="398BVA" id="7Hbm57D_J25" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7Hbm57D_J26" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.runtimelang" />
              </node>
            </node>
            <node concept="3qWCbU" id="7Hbm57D_J28" role="3LXTna">
              <property role="3qWCbO" value="icons/**" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5U8hsWC7eeH" role="3bR37C">
          <node concept="3bR9La" id="5U8hsWC7eeI" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5U8hsWC73Be" resolve="org.modelix.model.repositoryconcepts" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="2Oai67vI4eg" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.model.metametamodel" />
        <property role="3LESm3" value="bffdf123-0d7b-471b-a52b-fa3d3a024664" />
        <node concept="398BVA" id="2Oai67vI4Bw" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="2Oai67vI5fG" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.model.metametamodel" />
            <node concept="2Ry0Ak" id="2Oai67vI5RR" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.model.metametamodel.mpl" />
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="2Oai67vI6ts" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="2Oai67vI6tt" role="1HemKq">
            <node concept="398BVA" id="2Oai67vI6tl" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="2Oai67vI6tm" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.metametamodel" />
                <node concept="2Ry0Ak" id="2Oai67vI6tn" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2Oai67vI6tu" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="2Oai67vI6tv" role="1TViLv">
          <property role="TrG5h" value="org.modelix.model.metametamodel.generator" />
          <property role="3LESm3" value="676dd2a5-fa16-458f-b1c8-58257f6dbcb3" />
          <node concept="1BupzO" id="2Oai67vI6tD" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="2Oai67vI6tE" role="1HemKq">
              <node concept="398BVA" id="2Oai67vI6tw" role="3LXTmr">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
                <node concept="2Ry0Ak" id="2Oai67vI6tx" role="iGT6I">
                  <property role="2Ry0Am" value="org.modelix.model.metametamodel" />
                  <node concept="2Ry0Ak" id="2Oai67vI6ty" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="2Oai67vI6tz" role="2Ry0An">
                      <property role="2Ry0Am" value="templates" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="2Oai67vI6tF" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="2Oai67vI7_s" role="3bR31x">
          <node concept="3LXTmp" id="2Oai67vI7_t" role="3rtmxm">
            <node concept="398BVA" id="2Oai67vI7_u" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="2Oai67vI7_v" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.metametamodel" />
              </node>
            </node>
            <node concept="3qWCbU" id="2Oai67vI7_x" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7Hbm57D_FL9" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.model.client" />
        <property role="3LESm3" value="0a2651ab-f212-45c2-a2f0-343e76cbc26b" />
        <node concept="398BVA" id="7Hbm57D_G2N" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="7Hbm57D_GVX" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.model.client" />
            <node concept="2Ry0Ak" id="7Hbm57D_Ho$" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.model.client.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Hbm57D_HRm" role="3bR37C">
          <node concept="3bR9La" id="7Hbm57D_HRn" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1BupzO" id="7Hbm57D_HXF" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7Hbm57D_HXG" role="1HemKq">
            <node concept="398BVA" id="7Hbm57D_HX$" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7Hbm57D_HX_" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="7Hbm57D_HXA" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7Hbm57D_HXH" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1yReInSBLn" role="3bR37C">
          <node concept="3bR9La" id="1yReInSBLo" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHoT" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHoU" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHoK" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHoL" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHoM" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHoN" role="2Ry0An">
                    <property role="2Ry0Am" value="aopalliance-repackaged.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHp4" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHp5" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHoV" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHoW" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHoX" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHoY" role="2Ry0An">
                    <property role="2Ry0Am" value="checker-qual.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHpf" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHpg" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHp6" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHp7" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHp8" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHp9" role="2Ry0An">
                    <property role="2Ry0Am" value="commons-collections4.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHpq" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHpr" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHph" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHpi" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHpj" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHpk" role="2Ry0An">
                    <property role="2Ry0Am" value="commons-io.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHp_" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHpA" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHps" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHpt" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHpu" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHpv" role="2Ry0An">
                    <property role="2Ry0Am" value="commons-lang3.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHpK" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHpL" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHpB" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHpC" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHpD" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHpE" role="2Ry0An">
                    <property role="2Ry0Am" value="error_prone_annotations.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHpV" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHpW" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHpM" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHpN" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHpO" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHpP" role="2Ry0An">
                    <property role="2Ry0Am" value="failureaccess.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHqh" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHqi" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHq8" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHq9" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHqa" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHqb" role="2Ry0An">
                    <property role="2Ry0Am" value="hk2-api.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHqs" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHqt" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHqj" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHqk" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHql" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHqm" role="2Ry0An">
                    <property role="2Ry0Am" value="hk2-locator.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHqB" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHqC" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHqu" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHqv" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHqw" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHqx" role="2Ry0An">
                    <property role="2Ry0Am" value="hk2-utils.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHqM" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHqN" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHqD" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHqE" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHqF" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHqG" role="2Ry0An">
                    <property role="2Ry0Am" value="j2objc-annotations.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHqX" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHqY" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHqO" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHqP" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHqQ" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHqR" role="2Ry0An">
                    <property role="2Ry0Am" value="jakarta.annotation-api.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHr8" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHr9" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHqZ" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHr0" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHr1" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHr2" role="2Ry0An">
                    <property role="2Ry0Am" value="jakarta.inject.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHrj" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHrk" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHra" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHrb" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHrc" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHrd" role="2Ry0An">
                    <property role="2Ry0Am" value="jakarta.validation-api.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHru" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHrv" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHrl" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHrm" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHrn" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHro" role="2Ry0An">
                    <property role="2Ry0Am" value="jakarta.ws.rs-api.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHrO" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHrP" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHrF" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHrG" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHrH" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHrI" role="2Ry0An">
                    <property role="2Ry0Am" value="javax.activation-api.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHrZ" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHs0" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHrQ" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHrR" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHrS" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHrT" role="2Ry0An">
                    <property role="2Ry0Am" value="jaxb-api.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHsa" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHsb" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHs1" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHs2" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHs3" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHs4" role="2Ry0An">
                    <property role="2Ry0Am" value="jersey-client.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHsl" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHsm" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHsc" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHsd" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHse" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHsf" role="2Ry0An">
                    <property role="2Ry0Am" value="jersey-common.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHsw" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHsx" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHsn" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHso" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHsp" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHsq" role="2Ry0An">
                    <property role="2Ry0Am" value="jersey-hk2.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHsF" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHsG" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHsy" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHsz" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHs$" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHs_" role="2Ry0An">
                    <property role="2Ry0Am" value="jersey-media-jaxb.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHsQ" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHsR" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHsH" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHsI" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHsJ" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHsK" role="2Ry0An">
                    <property role="2Ry0Am" value="jersey-media-sse.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHt1" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHt2" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHsS" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHsT" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHsU" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHsV" role="2Ry0An">
                    <property role="2Ry0Am" value="jersey-server.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHtc" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHtd" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHt3" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHt4" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHt5" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHt6" role="2Ry0An">
                    <property role="2Ry0Am" value="json.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHtn" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHto" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHte" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHtf" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHtg" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHth" role="2Ry0An">
                    <property role="2Ry0Am" value="jsr305.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHv5" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHv6" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHuW" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHuX" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHuY" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHuZ" role="2Ry0An">
                    <property role="2Ry0Am" value="osgi-resource-locator.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHvg" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHvh" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHv7" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHv8" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHv9" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHva" role="2Ry0An">
                    <property role="2Ry0Am" value="trove4j.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHvr" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHvs" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHvi" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHvj" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHvk" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHvl" role="2Ry0An">
                    <property role="2Ry0Am" value="vavr-match.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1KzYa3AlHvA" role="3bR37C">
          <node concept="1BurEX" id="1KzYa3AlHvB" role="1SiIV1">
            <node concept="398BVA" id="1KzYa3AlHvt" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1KzYa3AlHvu" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="1KzYa3AlHvv" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1KzYa3AlHvw" role="2Ry0An">
                    <property role="2Ry0Am" value="vavr.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5U8hsWC7eeZ" role="3bR37C">
          <node concept="3bR9La" id="5U8hsWC7ef0" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="90a9:5U8hsWC70jw" resolve="org.modelix.model.api" />
          </node>
        </node>
        <node concept="1SiIV0" id="1WL5L9NoFYw" role="3bR37C">
          <node concept="3bR9La" id="1WL5L9NoFYx" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="1WL5L9NoFYy" role="3bR37C">
          <node concept="3bR9La" id="1WL5L9NoFYz" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="1WL5L9NoFY$" role="3bR37C">
          <node concept="3bR9La" id="1WL5L9NoFY_" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5U8hsWC71Xh" resolve="org.modelix.model.mpsadapters" />
          </node>
        </node>
        <node concept="1SiIV0" id="1ipiwLNqvT6" role="3bR37C">
          <node concept="3bR9La" id="1ipiwLNqvT7" role="1SiIV1">
            <ref role="3bR37D" to="90a9:6fQhGuklQWU" resolve="de.q60.mps.libs" />
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhJY" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhJZ" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhJP" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhJQ" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhJR" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhJS" role="2Ry0An">
                    <property role="2Ry0Am" value="commons-codec.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhK$" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhK_" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhKr" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhKs" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhKt" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhKu" role="2Ry0An">
                    <property role="2Ry0Am" value="commons-logging.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhL1" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhL2" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhKS" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhKT" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhKU" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhKV" role="2Ry0An">
                    <property role="2Ry0Am" value="google-http-client-gson.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhLc" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhLd" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhL3" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhL4" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhL5" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhL6" role="2Ry0An">
                    <property role="2Ry0Am" value="google-http-client.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhLn" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhLo" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhLe" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhLf" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhLg" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhLh" role="2Ry0An">
                    <property role="2Ry0Am" value="google-oauth-client-java6.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhLy" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhLz" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhLp" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhLq" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhLr" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhLs" role="2Ry0An">
                    <property role="2Ry0Am" value="google-oauth-client-jetty.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhLH" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhLI" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhL$" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhL_" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhLA" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhLB" role="2Ry0An">
                    <property role="2Ry0Am" value="google-oauth-client.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhLS" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhLT" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhLJ" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhLK" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhLL" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhLM" role="2Ry0An">
                    <property role="2Ry0Am" value="grpc-context.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhM3" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhM4" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhLU" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhLV" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhLW" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhLX" role="2Ry0An">
                    <property role="2Ry0Am" value="gson.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhMO" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhMP" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhMF" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhMG" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhMH" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhMI" role="2Ry0An">
                    <property role="2Ry0Am" value="httpclient.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhMZ" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhN0" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhMQ" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhMR" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhMS" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhMT" role="2Ry0An">
                    <property role="2Ry0Am" value="httpcore.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhPq" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhPr" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhPh" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhPi" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhPj" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhPk" role="2Ry0An">
                    <property role="2Ry0Am" value="kotlinx-collections-immutable-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhP_" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhPA" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhPs" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhPt" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhPu" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhPv" role="2Ry0An">
                    <property role="2Ry0Am" value="kotlinx-coroutines-core-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhPK" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhPL" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhPB" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhPC" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhPD" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhPE" role="2Ry0An">
                    <property role="2Ry0Am" value="kotlinx-coroutines-jdk8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhPV" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhPW" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhPM" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhPN" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhPO" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhPP" role="2Ry0An">
                    <property role="2Ry0Am" value="kotlinx-coroutines-slf4j.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhQs" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhQt" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhQj" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhQk" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhQl" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhQm" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-client-auth-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhQB" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhQC" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhQu" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhQv" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhQw" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhQx" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-client-cio-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhQM" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhQN" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhQD" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhQE" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhQF" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhQG" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-client-content-negotiation-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhQX" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhQY" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhQO" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhQP" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhQQ" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhQR" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-client-core-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhR8" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhR9" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhQZ" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhR0" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhR1" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhR2" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-events-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhRj" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhRk" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhRa" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhRb" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhRc" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhRd" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-http-cio-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhRu" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhRv" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhRl" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhRm" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhRn" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhRo" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-http-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhRD" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhRE" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhRw" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhRx" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhRy" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhRz" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-io-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhRO" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhRP" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhRF" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhRG" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhRH" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhRI" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-network-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhRZ" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhS0" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhRQ" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhRR" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhRS" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhRT" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-network-tls-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhSa" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhSb" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhS1" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhS2" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhS3" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhS4" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-serialization-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhSl" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhSm" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhSc" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhSd" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhSe" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhSf" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-serialization-kotlinx-json-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhSw" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhSx" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhSn" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhSo" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhSp" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhSq" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-serialization-kotlinx-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhSF" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhSG" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhSy" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhSz" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhS$" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhS_" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-utils-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhSQ" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhSR" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhSH" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhSI" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhSJ" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhSK" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-websocket-serialization-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhT1" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhT2" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhSS" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhST" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhSU" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhSV" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-websockets-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhUb" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhUc" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhU2" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhU3" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhU4" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhU5" role="2Ry0An">
                    <property role="2Ry0Am" value="opencensus-api.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="51AkiRkUhUm" role="3bR37C">
          <node concept="1BurEX" id="51AkiRkUhUn" role="1SiIV1">
            <node concept="398BVA" id="51AkiRkUhUd" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="51AkiRkUhUe" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="51AkiRkUhUf" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="51AkiRkUhUg" role="2Ry0An">
                    <property role="2Ry0Am" value="opencensus-contrib-http-util.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3cfNRjMvkmj" role="3bR37C">
          <node concept="1BurEX" id="3cfNRjMvkmk" role="1SiIV1">
            <node concept="398BVA" id="3cfNRjMvkma" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="3cfNRjMvkmb" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="3cfNRjMvkmc" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3cfNRjMvkmd" role="2Ry0An">
                    <property role="2Ry0Am" value="guava.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3cfNRjMvknS" role="3bR37C">
          <node concept="1BurEX" id="3cfNRjMvknT" role="1SiIV1">
            <node concept="398BVA" id="3cfNRjMvknJ" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="3cfNRjMvknK" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="3cfNRjMvknL" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3cfNRjMvknM" role="2Ry0An">
                    <property role="2Ry0Am" value="javassist.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3cfNRjMvksz" role="3bR37C">
          <node concept="1BurEX" id="3cfNRjMvks$" role="1SiIV1">
            <node concept="398BVA" id="3cfNRjMvksq" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="3cfNRjMvksr" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="3cfNRjMvkss" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3cfNRjMvkst" role="2Ry0An">
                    <property role="2Ry0Am" value="listenablefuture.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="2lHmTxi0myu" role="3bR37C">
          <node concept="1BurEX" id="2lHmTxi0myv" role="1SiIV1">
            <node concept="398BVA" id="2lHmTxi0myl" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="2lHmTxi0mym" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.client" />
                <node concept="2Ry0Ak" id="2lHmTxi0myn" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="2lHmTxi0myo" role="2Ry0An">
                    <property role="2Ry0Am" value="model-client-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7gF2HTviNPs" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.model.mpsplugin" />
        <property role="3LESm3" value="c5e5433e-201f-43e2-ad14-a6cba8c80cd6" />
        <node concept="398BVA" id="3$7KuaihlCg" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="3$7KuaihlCk" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.model.mpsplugin" />
            <node concept="2Ry0Ak" id="3$7KuaihlCl" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.model.mpsplugin.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviNQm" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviNQn" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviNQo" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviNQp" role="1SiIV1">
            <property role="3bR36h" value="true" />
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
        <node concept="1SiIV0" id="7gF2HTviO9q" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviO9r" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7gF2HTviNPP" resolve="org.modelix.lib" />
          </node>
        </node>
        <node concept="1SiIV0" id="$zd_cMRUrg" role="3bR37C">
          <node concept="3bR9La" id="$zd_cMRUrh" role="1SiIV1">
            <ref role="3bR37D" node="$zd_cMRR11" resolve="org.modelix.model.runtimelang" />
          </node>
        </node>
        <node concept="1SiIV0" id="1W$kLfT1eWC" role="3bR37C">
          <node concept="3bR9La" id="1W$kLfT1eWD" role="1SiIV1">
            <ref role="3bR37D" node="5MA9wbc6HlL" resolve="org.modelix.common" />
          </node>
        </node>
        <node concept="1BupzO" id="7sZTyNS9$N3" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$N4" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$MW" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
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
          <node concept="3LXTmp" id="4tfK3zZNTyo" role="1HemKq">
            <node concept="398BVA" id="4tfK3zZNTyh" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTyi" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.mpsplugin" />
                <node concept="2Ry0Ak" id="4tfK3zZNTyj" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4tfK3zZNTyp" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7Hbm57D_IGC" role="3bR37C">
          <node concept="3bR9La" id="7Hbm57D_IGD" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7Hbm57D_FL9" resolve="org.modelix.model.client" />
          </node>
        </node>
        <node concept="1SiIV0" id="2hbxkgeQVRi" role="3bR37C">
          <node concept="3bR9La" id="2hbxkgeQVRj" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:5cCcm$KATVz" resolve="jetbrains.mps.lang.migration.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="2hbxkgeQVRk" role="3bR37C">
          <node concept="3bR9La" id="2hbxkgeQVRl" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:2eDSGe9d1qi" resolve="jetbrains.mps.ide" />
          </node>
        </node>
        <node concept="1SiIV0" id="2hbxkgeQVRm" role="3bR37C">
          <node concept="3bR9La" id="2hbxkgeQVRn" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lg8" resolve="jetbrains.mps.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="NHxLR6JAfR" role="3bR37C">
          <node concept="3bR9La" id="NHxLR6JAfS" role="1SiIV1">
            <ref role="3bR37D" to="90a9:7q24334ZDUp" resolve="de.q60.mps.util" />
          </node>
        </node>
        <node concept="1SiIV0" id="5U8hsWC7ekc" role="3bR37C">
          <node concept="3bR9La" id="5U8hsWC7ekd" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5U8hsWC73Be" resolve="org.modelix.model.repositoryconcepts" />
          </node>
        </node>
        <node concept="1SiIV0" id="5U8hsWC7eke" role="3bR37C">
          <node concept="3bR9La" id="5U8hsWC7ekf" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5U8hsWC71Xh" resolve="org.modelix.model.mpsadapters" />
          </node>
        </node>
        <node concept="1SiIV0" id="3W8k_dZVY77" role="3bR37C">
          <node concept="3bR9La" id="3W8k_dZVY78" role="1SiIV1">
            <ref role="3bR37D" to="90a9:4iIKqJTZ5Hm" resolve="de.q60.mps.shadowmodels.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="3W8k_dZVY79" role="3bR37C">
          <node concept="3bR9La" id="3W8k_dZVY7a" role="1SiIV1">
            <ref role="3bR37D" to="90a9:6fQhGuklPrV" resolve="de.q60.mps.incremental.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="2Oai67vI7fz" role="3bR37C">
          <node concept="3bR9La" id="2Oai67vI7f$" role="1SiIV1">
            <ref role="3bR37D" node="2Oai67vI4eg" resolve="org.modelix.model.metametamodel" />
          </node>
        </node>
        <node concept="1SiIV0" id="3MAI_GnQQOy" role="3bR37C">
          <node concept="3bR9La" id="3MAI_GnQQOz" role="1SiIV1">
            <ref role="3bR37D" node="3MAI_GnQBVB" resolve="org.modelix.authentication" />
          </node>
        </node>
        <node concept="1SiIV0" id="25JjLrsFjoQ" role="3bR37C">
          <node concept="3bR9La" id="25JjLrsFjoR" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lg2" resolve="jetbrains.mps.smodel.resources" />
          </node>
        </node>
        <node concept="1SiIV0" id="25JjLrsFjoS" role="3bR37C">
          <node concept="3bR9La" id="25JjLrsFjoT" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:71aLKqdKvPp" resolve="jetbrains.mps.ide.make" />
          </node>
        </node>
        <node concept="1SiIV0" id="25JjLrsFjoU" role="3bR37C">
          <node concept="3bR9La" id="25JjLrsFjoV" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LgV" resolve="jetbrains.mps.make.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="1C3$AqAU8BG" role="3bR37C">
          <node concept="3bR9La" id="1C3$AqAU8BH" role="1SiIV1">
            <ref role="3bR37D" to="90a9:2Xjt3l57hht" resolve="de.slisson.mps.reflection.runtime" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="3MAI_GnQBVB" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.authentication" />
        <property role="3LESm3" value="154f6b0f-97b3-40c8-9754-ebf11391299b" />
        <node concept="398BVA" id="3MAI_GnQClg" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="3MAI_GnQOcq" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.authentication" />
            <node concept="2Ry0Ak" id="3ljvbPN7tNA" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.authentication.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3MAI_GnQQ7n" role="3bR37C">
          <node concept="3bR9La" id="3MAI_GnQQ7o" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="3MAI_GnQQ7p" role="3bR37C">
          <node concept="3bR9La" id="3MAI_GnQQ7q" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1SiIV0" id="3MAI_GnQQ7v" role="3bR37C">
          <node concept="3bR9La" id="3MAI_GnQQ7w" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="3MAI_GnQQ7x" role="3bR37C">
          <node concept="3bR9La" id="3MAI_GnQQ7y" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPP" resolve="org.modelix.lib" />
          </node>
        </node>
        <node concept="1SiIV0" id="3MAI_GnQQ7_" role="3bR37C">
          <node concept="3bR9La" id="3MAI_GnQQ7A" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="3MAI_GnQQ7B" role="3bR37C">
          <node concept="3bR9La" id="3MAI_GnQQ7C" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:6pse5qHNhL7" resolve="jetbrains.mps.ide.httpsupport.manager" />
          </node>
        </node>
        <node concept="1BupzO" id="3MAI_GnQQ7O" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="3MAI_GnQQ7P" role="1HemKq">
            <node concept="398BVA" id="3MAI_GnQQ7F" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="3MAI_GnQQ7G" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3MAI_GnQQ7H" role="2Ry0An">
                  <property role="2Ry0Am" value="org.modelix.authentication" />
                  <node concept="2Ry0Ak" id="3MAI_GnQQ7I" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3MAI_GnQQ7Q" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
          <node concept="3LXTmp" id="2MeL55lnrkc" role="1HemKq">
            <node concept="398BVA" id="2MeL55lnrk5" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="2MeL55lnrk6" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.authentication" />
                <node concept="2Ry0Ak" id="2MeL55lnrk7" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2MeL55lnrkd" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7VLV6fKuTHr" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.model.server.mpsplugin" />
        <property role="3LESm3" value="d5d0bab3-0d1d-4161-b322-a85b0528a69a" />
        <node concept="398BVA" id="7VLV6fKuUfC" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="7VLV6fKuV1o" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
            <node concept="2Ry0Ak" id="7VLV6fKuVN7" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWt0" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWt1" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWsR" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWsS" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWsT" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWsU" role="2Ry0An">
                    <property role="2Ry0Am" value="alpn-api.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWtb" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWtc" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWt2" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWt3" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWt4" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWt5" role="2Ry0An">
                    <property role="2Ry0Am" value="config.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWtm" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWtn" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWtd" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWte" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWtf" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWtg" role="2Ry0An">
                    <property role="2Ry0Am" value="jansi.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWtx" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWty" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWto" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWtp" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWtq" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWtr" role="2Ry0An">
                    <property role="2Ry0Am" value="kotlin-reflect.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWtG" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWtH" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWtz" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWt$" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWt_" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWtA" role="2Ry0An">
                    <property role="2Ry0Am" value="kotlinx-coroutines-core-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWtR" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWtS" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWtI" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWtJ" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWtK" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWtL" role="2Ry0An">
                    <property role="2Ry0Am" value="kotlinx-coroutines-jdk8.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWuo" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWup" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWuf" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWug" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWuh" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWui" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-events-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWuz" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWu$" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWuq" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWur" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWus" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWut" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-http-cio-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWuI" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWuJ" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWu_" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWuA" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWuB" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWuC" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-http-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWuT" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWuU" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWuK" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWuL" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWuM" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWuN" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-io-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWv4" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWv5" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWuV" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWuW" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWuX" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWuY" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-network-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWvf" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWvg" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWv6" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWv7" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWv8" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWv9" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-serialization-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWvq" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWvr" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWvh" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWvi" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWvj" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWvk" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-server-core-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWv_" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWvA" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWvs" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWvt" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWvu" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWvv" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-server-cors-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWvK" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWvL" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWvB" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWvC" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWvD" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWvE" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-server-host-common-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWvV" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWvW" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWvM" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWvN" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWvO" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWvP" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-server-netty-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWw6" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWw7" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWvX" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWvY" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWvZ" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWw0" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-server-websockets-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWwh" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWwi" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWw8" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWw9" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWwa" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWwb" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-utils-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWws" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWwt" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWwj" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWwk" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWwl" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWwm" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-websocket-serialization-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWwB" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWwC" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWwu" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWwv" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWww" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWwx" role="2Ry0An">
                    <property role="2Ry0Am" value="ktor-websockets-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWwM" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWwN" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWwD" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWwE" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWwF" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWwG" role="2Ry0An">
                    <property role="2Ry0Am" value="light-model-server.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWwX" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWwY" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWwO" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWwP" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWwQ" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWwR" role="2Ry0An">
                    <property role="2Ry0Am" value="model-server-api-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWx8" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWx9" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWwZ" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWx0" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWx1" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWx2" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-buffer.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWxj" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWxk" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWxa" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWxb" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWxc" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWxd" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-codec-http.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWxu" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWxv" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWxl" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWxm" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWxn" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWxo" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-codec-http2.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWxD" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWxE" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWxw" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWxx" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWxy" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWxz" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-codec.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWxO" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWxP" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWxF" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWxG" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWxH" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWxI" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-common.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWxZ" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWy0" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWxQ" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWxR" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWxS" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWxT" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-handler.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWya" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWyb" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWy1" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWy2" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWy3" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWy4" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-resolver.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWyl" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWym" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWyc" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWyd" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWye" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWyf" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-transport-classes-epoll.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWyw" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWyx" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWyn" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWyo" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWyp" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWyq" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-transport-classes-kqueue.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWyF" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWyG" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWyy" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWyz" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWy$" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWy_" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-transport-native-epoll.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWyQ" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWyR" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWyH" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWyI" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWyJ" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWyK" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-transport-native-kqueue.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWz1" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWz2" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWyS" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWyT" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWyU" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWyV" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-transport-native-unix-common.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7VLV6fKuWzc" role="3bR37C">
          <node concept="1BurEX" id="7VLV6fKuWzd" role="1SiIV1">
            <node concept="398BVA" id="7VLV6fKuWz3" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWz4" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWz5" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7VLV6fKuWz6" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-transport.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="7VLV6fKuWzw" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7VLV6fKuWzx" role="1HemKq">
            <node concept="398BVA" id="7VLV6fKuWzp" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7VLV6fKuWzq" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="7VLV6fKuWzr" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7VLV6fKuWzy" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1$oc9OB69Lr" role="3bR37C">
          <node concept="3bR9La" id="1$oc9OB69Ls" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="1$oc9OB69Lt" role="3bR37C">
          <node concept="3bR9La" id="1$oc9OB69Lu" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1SiIV0" id="1$oc9OB69Lv" role="3bR37C">
          <node concept="3bR9La" id="1$oc9OB69Lw" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="1$oc9OB69Lx" role="3bR37C">
          <node concept="3bR9La" id="1$oc9OB69Ly" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5U8hsWC70jw" resolve="org.modelix.model.api" />
          </node>
        </node>
        <node concept="1SiIV0" id="1$oc9OB69Lz" role="3bR37C">
          <node concept="3bR9La" id="1$oc9OB69L$" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="1$oc9OB69L_" role="3bR37C">
          <node concept="3bR9La" id="1$oc9OB69LA" role="1SiIV1">
            <ref role="3bR37D" to="90a9:52ZF9D3gLhJ" resolve="com.mbeddr.mpsutil.modellisteners.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="1$oc9OB69LB" role="3bR37C">
          <node concept="3bR9La" id="1$oc9OB69LC" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5U8hsWC71Xh" resolve="org.modelix.model.mpsadapters" />
          </node>
        </node>
        <node concept="1SiIV0" id="6g9f21tEqCM" role="3bR37C">
          <node concept="1BurEX" id="6g9f21tEqCN" role="1SiIV1">
            <node concept="398BVA" id="6g9f21tEqCD" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="6g9f21tEqCE" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="6g9f21tEqCF" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="6g9f21tEqCG" role="2Ry0An">
                    <property role="2Ry0Am" value="kotlinx-coroutines-swing.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="DaZ5m4KFkq" role="3bR37C">
          <node concept="1BurEX" id="DaZ5m4KFkr" role="1SiIV1">
            <node concept="398BVA" id="DaZ5m4KFkh" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="DaZ5m4KFki" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="DaZ5m4KFkj" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="DaZ5m4KFkk" role="2Ry0An">
                    <property role="2Ry0Am" value="incremental-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="DaZ5m4KFkR" role="3bR37C">
          <node concept="1BurEX" id="DaZ5m4KFkS" role="1SiIV1">
            <node concept="398BVA" id="DaZ5m4KFkI" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="DaZ5m4KFkJ" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.model.server.mpsplugin" />
                <node concept="2Ry0Ak" id="DaZ5m4KFkK" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="DaZ5m4KFkL" role="2Ry0An">
                    <property role="2Ry0Am" value="kotlinx-benchmark-runtime-jvm.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="6HlxtAUSD7b" role="3989C9">
      <property role="TrG5h" value="org.modelix.langdev" />
      <node concept="1E1JtA" id="7kXB$VTBVow" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.aspect.runtime" />
        <property role="3LESm3" value="2f21df6f-a66f-4e3b-9314-ca64c09b2e6c" />
        <node concept="398BVA" id="7kXB$VTBVKv" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="7kXB$VTBWoF" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.aspect.runtime" />
            <node concept="2Ry0Ak" id="7kXB$VTBX0Q" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.aspect.runtime.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7kXB$VTBXF$" role="3bR37C">
          <node concept="3bR9La" id="7kXB$VTBXF_" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPn" resolve="org.modelix.ui.sm" />
          </node>
        </node>
        <node concept="1SiIV0" id="7kXB$VTBXFC" role="3bR37C">
          <node concept="3bR9La" id="7kXB$VTBXFD" role="1SiIV1">
            <ref role="3bR37D" to="90a9:4iIKqJTZ5Hm" resolve="de.q60.mps.shadowmodels.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="7kXB$VTBXFI" role="3bR37C">
          <node concept="3bR9La" id="7kXB$VTBXFJ" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5U8hsWC71Xh" resolve="org.modelix.model.mpsadapters" />
          </node>
        </node>
        <node concept="1SiIV0" id="7kXB$VTBXFQ" role="3bR37C">
          <node concept="3bR9La" id="7kXB$VTBXFR" role="1SiIV1">
            <ref role="3bR37D" to="90a9:BRK1N8p1Qt" resolve="de.q60.mps.shadowmodels.target.text" />
          </node>
        </node>
        <node concept="1SiIV0" id="7kXB$VTBXFS" role="3bR37C">
          <node concept="3bR9La" id="7kXB$VTBXFT" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7kXB$VTBXG6" role="3bR37C">
          <node concept="3bR9La" id="7kXB$VTBXG7" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPF" resolve="org.modelix.ui.sm.dom" />
          </node>
        </node>
        <node concept="1BupzO" id="7kXB$VTBXGf" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7kXB$VTBXGg" role="1HemKq">
            <node concept="398BVA" id="7kXB$VTBXG8" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="7kXB$VTBXG9" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.aspect.runtime" />
                <node concept="2Ry0Ak" id="7kXB$VTBXGa" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="7kXB$VTBXGh" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="6HlxtAUSLXf" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.aspect" />
        <property role="3LESm3" value="375af171-bd4b-4bfb-bc9f-418fb996740b" />
        <node concept="398BVA" id="6HlxtAUSMiE" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="6HlxtAUSMXg" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.aspect" />
            <node concept="2Ry0Ak" id="6HlxtAUSNBP" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.aspect.mpl" />
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
            <ref role="3bR37D" node="5a2LedGL7Zb" resolve="org.modelix.jersey" />
          </node>
        </node>
        <node concept="1SiIV0" id="6HlxtAUSOiz" role="3bR37C">
          <node concept="1Busua" id="6HlxtAUSOi$" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1yeLz9" id="6HlxtAUSOi_" role="1TViLv">
          <property role="TrG5h" value="org.modelix.aspect#01" />
          <property role="3LESm3" value="be246e10-5276-4b2b-a05e-7a68bd87894d" />
          <node concept="1SiIV0" id="6HlxtAUSOiA" role="3bR37C">
            <node concept="3bR9La" id="6HlxtAUSOiB" role="1SiIV1">
              <ref role="3bR37D" node="7gF2HTviNPs" resolve="org.modelix.model.mpsplugin" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ya3eUXRG2X" role="3bR37C">
            <node concept="3bR9La" id="7Ya3eUXRG2Y" role="1SiIV1">
              <ref role="3bR37D" node="7gF2HTviNPn" resolve="org.modelix.ui.sm" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ya3eUXRG2Z" role="3bR37C">
            <node concept="3bR9La" id="7Ya3eUXRG30" role="1SiIV1">
              <ref role="3bR37D" node="7gF2HTviNPU" resolve="org.modelix.ui.sm.server" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ya3eUXRG31" role="3bR37C">
            <node concept="3bR9La" id="7Ya3eUXRG32" role="1SiIV1">
              <ref role="3bR37D" node="5Sw$pxbQPmv" resolve="org.modelix.jetty" />
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
              <ref role="3bR37D" node="5npwda7lJQ3" resolve="org.modelix.ui.common" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ya3eUXRG3j" role="3bR37C">
            <node concept="3bR9La" id="7Ya3eUXRG3k" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6L2F" resolve="jetbrains.mps.baseLanguage.tuples" />
            </node>
          </node>
          <node concept="1SiIV0" id="7Ya3eUXRG3l" role="3bR37C">
            <node concept="3bR9La" id="7Ya3eUXRG3m" role="1SiIV1">
              <ref role="3bR37D" node="7gF2HTviNPF" resolve="org.modelix.ui.sm.dom" />
            </node>
          </node>
          <node concept="1BupzO" id="7sZTyNS9$Np" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="7sZTyNS9$Nq" role="1HemKq">
              <node concept="398BVA" id="7sZTyNS9$Ng" role="3LXTmr">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
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
            <node concept="3LXTmp" id="4tfK3zZNTyG" role="1HemKq">
              <node concept="398BVA" id="4tfK3zZNTyz" role="3LXTmr">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
                <node concept="2Ry0Ak" id="4tfK3zZNTy$" role="iGT6I">
                  <property role="2Ry0Am" value="org.modelix.aspect" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTy_" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTyA" role="2Ry0An">
                      <property role="2Ry0Am" value="template" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="4tfK3zZNTyH" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
          <node concept="1SiIV0" id="5U8hsWC7ekw" role="3bR37C">
            <node concept="3bR9La" id="5U8hsWC7ekx" role="1SiIV1">
              <ref role="3bR37D" to="90a9:5U8hsWC71Xh" resolve="org.modelix.model.mpsadapters" />
            </node>
          </node>
          <node concept="1SiIV0" id="7kXB$VTBYpB" role="3bR37C">
            <node concept="3bR9La" id="7kXB$VTBYpC" role="1SiIV1">
              <ref role="3bR37D" node="7kXB$VTBVow" resolve="org.modelix.aspect.runtime" />
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
          <ref role="1E0d5P" node="5npwda7lJQ3" resolve="org.modelix.ui.common" />
        </node>
        <node concept="1SiIV0" id="1BXGyXtBV1Z" role="3bR37C">
          <node concept="3bR9La" id="1BXGyXtBV20" role="1SiIV1">
            <ref role="3bR37D" to="90a9:4iIKqJTZ5HI" resolve="de.q60.mps.shadowmodels.runtimelang" />
          </node>
        </node>
        <node concept="1SiIV0" id="1BXGyXtBV21" role="3bR37C">
          <node concept="3bR9La" id="1BXGyXtBV22" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPF" resolve="org.modelix.ui.sm.dom" />
          </node>
        </node>
        <node concept="1E0d5M" id="1BXGyXtBV23" role="1E1XAP">
          <ref role="1E0d5P" node="7gF2HTviNPs" resolve="org.modelix.model.mpsplugin" />
        </node>
        <node concept="1BupzO" id="7sZTyNS9$Nd" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$Ne" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$N6" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
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
          <node concept="3LXTmp" id="4tfK3zZNTyx" role="1HemKq">
            <node concept="398BVA" id="4tfK3zZNTyq" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTyr" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.aspect" />
                <node concept="2Ry0Ak" id="4tfK3zZNTys" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4tfK3zZNTyy" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="1yReInH45S" role="3bR31x">
          <node concept="3LXTmp" id="1yReInH45T" role="3rtmxm">
            <node concept="398BVA" id="1yReInH45U" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1yReInH45V" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.aspect" />
              </node>
            </node>
            <node concept="3qWCbU" id="1yReInH45X" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1E0d5M" id="5U8hsWC7eku" role="1E1XAP">
          <ref role="1E0d5P" to="90a9:5U8hsWC70jw" resolve="org.modelix.model.api" />
        </node>
        <node concept="1E0d5M" id="5U8hsWC7ekv" role="1E1XAP">
          <ref role="1E0d5P" to="90a9:5U8hsWC71Xh" resolve="org.modelix.model.mpsadapters" />
        </node>
        <node concept="1SiIV0" id="2Slsp6mPjHD" role="3bR37C">
          <node concept="3bR9La" id="2Slsp6mPjHE" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5U8hsWC73Be" resolve="org.modelix.model.repositoryconcepts" />
          </node>
        </node>
        <node concept="1E0d5M" id="7kXB$VShO_v" role="1E1XAP">
          <ref role="1E0d5P" node="5Sw$pxbQPmv" resolve="org.modelix.jetty" />
        </node>
        <node concept="1E0d5M" id="7kXB$VTBYpA" role="1E1XAP">
          <ref role="1E0d5P" node="7kXB$VTBVow" resolve="org.modelix.aspect.runtime" />
        </node>
      </node>
      <node concept="1E1JtA" id="6HlxtAUSOXT" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.aspect.genplan" />
        <property role="3LESm3" value="a35af0cf-8051-4b27-9686-59193edda5fc" />
        <node concept="398BVA" id="6HlxtAUSPjD" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="6HlxtAUTZMq" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.aspect.genplan" />
            <node concept="2Ry0Ak" id="6HlxtAUU0sZ" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.aspect.genplan.msd" />
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
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
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
          <node concept="3LXTmp" id="4tfK3zZNTyP" role="1HemKq">
            <node concept="398BVA" id="4tfK3zZNTyI" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTyJ" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.aspect.genplan" />
                <node concept="2Ry0Ak" id="4tfK3zZNTyK" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4tfK3zZNTyQ" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="TSXTNiNWKE" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.notation" />
        <property role="3LESm3" value="25fcb6ab-d05a-4950-8cdf-251526bdf513" />
        <node concept="398BVA" id="TSXTNiNX7X" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="TSXTNiNXNF" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.notation" />
            <node concept="2Ry0Ak" id="TSXTNiNYvo" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.notation.mpl" />
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
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
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
          <node concept="3LXTmp" id="4tfK3zZNTyY" role="1HemKq">
            <node concept="398BVA" id="4tfK3zZNTyR" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTyS" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.notation" />
                <node concept="2Ry0Ak" id="4tfK3zZNTyT" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4tfK3zZNTyZ" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="TSXTNiNZdL" role="1TViLv">
          <property role="TrG5h" value="org.modelix.notation#01" />
          <property role="3LESm3" value="e05c7284-56e4-4441-895d-d653ff88f7da" />
          <node concept="1SiIV0" id="TSXTNiNZdM" role="3bR37C">
            <node concept="3bR9La" id="TSXTNiNZdN" role="1SiIV1">
              <ref role="3bR37D" node="7gF2HTviNPn" resolve="org.modelix.ui.sm" />
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
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
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
            <node concept="3LXTmp" id="4tfK3zZNTz9" role="1HemKq">
              <node concept="398BVA" id="4tfK3zZNTz0" role="3LXTmr">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
                <node concept="2Ry0Ak" id="4tfK3zZNTz1" role="iGT6I">
                  <property role="2Ry0Am" value="org.modelix.notation" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTz2" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTz3" role="2Ry0An">
                      <property role="2Ry0Am" value="templates" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="4tfK3zZNTza" role="3LXTna">
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
          <node concept="1SiIV0" id="5U8hsWC7ekT" role="3bR37C">
            <node concept="3bR9La" id="5U8hsWC7ekU" role="1SiIV1">
              <ref role="3bR37D" to="90a9:5U8hsWC71Xh" resolve="org.modelix.model.mpsadapters" />
            </node>
          </node>
          <node concept="1SiIV0" id="7kXB$VTBYq1" role="3bR37C">
            <node concept="3bR9La" id="7kXB$VTBYq2" role="1SiIV1">
              <ref role="3bR37D" node="7kXB$VTBVow" resolve="org.modelix.aspect.runtime" />
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
        <node concept="1SiIV0" id="54CQ1_kE73h" role="3bR37C">
          <node concept="3bR9La" id="54CQ1_kE73i" role="1SiIV1">
            <ref role="3bR37D" node="5npwda7lJQ3" resolve="org.modelix.ui.common" />
          </node>
        </node>
        <node concept="1SiIV0" id="54CQ1_kE73j" role="3bR37C">
          <node concept="3bR9La" id="54CQ1_kE73k" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPP" resolve="org.modelix.lib" />
          </node>
        </node>
        <node concept="3rtmxn" id="1yReInH3Mf" role="3bR31x">
          <node concept="3LXTmp" id="1yReInH3Mg" role="3rtmxm">
            <node concept="398BVA" id="1yReInH3Mh" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1yReInH3Mi" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.notation" />
              </node>
            </node>
            <node concept="3qWCbU" id="1yReInH3Mk" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1E0d5M" id="7kXB$VTBYq0" role="1E1XAP">
          <ref role="1E0d5P" node="7kXB$VTBVow" resolve="org.modelix.aspect.runtime" />
        </node>
      </node>
      <node concept="3LEwk6" id="6HlxtAUSHCt" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.aspect.devkit" />
        <property role="3LESm3" value="df4512e0-2de7-456b-8e87-16e2011a3e91" />
        <node concept="398BVA" id="6HlxtAUSICk" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="6HlxtAUSJXv" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.aspect.devkit" />
            <node concept="2Ry0Ak" id="4tfK3zZNTbJ" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.aspect.devkit.devkit" />
            </node>
          </node>
        </node>
        <node concept="3LEDTy" id="7sZTyNS9$NA" role="3LEDUa">
          <ref role="3LEDTV" node="6HlxtAUSLXf" resolve="org.modelix.aspect" />
        </node>
        <node concept="3LEDTM" id="7sZTyNS9$NB" role="3LEDUa">
          <ref role="3LEDTN" node="6HlxtAUSOXT" resolve="org.modelix.aspect.genplan" />
        </node>
        <node concept="3LEDTy" id="TSXTNiNZXI" role="3LEDUa">
          <ref role="3LEDTV" node="TSXTNiNWKE" resolve="org.modelix.notation" />
        </node>
        <node concept="3LEDTy" id="7BujJjYSJ9v" role="3LEDUa">
          <ref role="3LEDTV" node="7gF2HTviNPn" resolve="org.modelix.ui.sm" />
        </node>
        <node concept="3LEDTy" id="DaZ5m4KFqe" role="3LEDUa">
          <ref role="3LEDTV" to="ffeo:7Kfy9QB6L9c" resolve="jetbrains.mps.lang.quotation" />
        </node>
        <node concept="3LEDTy" id="DaZ5m4KFqf" role="3LEDUa">
          <ref role="3LEDTV" to="ffeo:7Kfy9QB6KZc" resolve="jetbrains.mps.baseLanguage.checkedDots" />
        </node>
        <node concept="3LEDTy" id="DaZ5m4KFqg" role="3LEDUa">
          <ref role="3LEDTV" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
        </node>
      </node>
      <node concept="1E1JtD" id="7BujJjXYVmv" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.notation.impl.baseLanguage" />
        <property role="3LESm3" value="2db6cf34-1ef5-4ea9-ab56-6511aab61960" />
        <node concept="398BVA" id="7BujJjXYVIz" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="7BujJjXYWK5" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.notation.impl.baseLanguage" />
            <node concept="2Ry0Ak" id="7BujJjXYXrM" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.notation.impl.baseLanguage.mpl" />
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
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
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
          <node concept="3LXTmp" id="4tfK3zZNTzw" role="1HemKq">
            <node concept="398BVA" id="4tfK3zZNTzp" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTzq" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.notation.impl.baseLanguage" />
                <node concept="2Ry0Ak" id="4tfK3zZNTzr" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4tfK3zZNTzx" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="7BujJjXYYa7" role="1TViLv">
          <property role="TrG5h" value="org.modelix.notation.impl.baseLanguage#01" />
          <property role="3LESm3" value="dbfa7ed5-30aa-4ea4-849d-5271e2dbda9b" />
          <node concept="1BupzO" id="7BujJjXYYah" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="7BujJjXYYai" role="1HemKq">
              <node concept="398BVA" id="7BujJjXYYa8" role="3LXTmr">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
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
            <node concept="3LXTmp" id="4tfK3zZNTzF" role="1HemKq">
              <node concept="398BVA" id="4tfK3zZNTzy" role="3LXTmr">
                <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
                <node concept="2Ry0Ak" id="4tfK3zZNTzz" role="iGT6I">
                  <property role="2Ry0Am" value="org.modelix.notation.impl.baseLanguage" />
                  <node concept="2Ry0Ak" id="4tfK3zZNTz$" role="2Ry0An">
                    <property role="2Ry0Am" value="generator" />
                    <node concept="2Ry0Ak" id="4tfK3zZNTz_" role="2Ry0An">
                      <property role="2Ry0Am" value="templates" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="4tfK3zZNTzG" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7BujJjYSJ9y" role="3bR37C">
          <node concept="3bR9La" id="7BujJjYSJ9z" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPn" resolve="org.modelix.ui.sm" />
          </node>
        </node>
        <node concept="1SiIV0" id="54CQ1_kE73B" role="3bR37C">
          <node concept="3bR9La" id="54CQ1_kE73C" role="1SiIV1">
            <ref role="3bR37D" to="90a9:BRK1N8p1Qt" resolve="de.q60.mps.shadowmodels.target.text" />
          </node>
        </node>
        <node concept="1SiIV0" id="54CQ1_kE73D" role="3bR37C">
          <node concept="3bR9La" id="54CQ1_kE73E" role="1SiIV1">
            <ref role="3bR37D" node="5Sw$pxbQPmv" resolve="org.modelix.jetty" />
          </node>
        </node>
        <node concept="1SiIV0" id="54CQ1_kE73F" role="3bR37C">
          <node concept="3bR9La" id="54CQ1_kE73G" role="1SiIV1">
            <ref role="3bR37D" node="5npwda7lJQ3" resolve="org.modelix.ui.common" />
          </node>
        </node>
        <node concept="1SiIV0" id="54CQ1_kE73H" role="3bR37C">
          <node concept="3bR9La" id="54CQ1_kE73I" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPP" resolve="org.modelix.lib" />
          </node>
        </node>
        <node concept="1SiIV0" id="54CQ1_kE73J" role="3bR37C">
          <node concept="3bR9La" id="54CQ1_kE73K" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPF" resolve="org.modelix.ui.sm.dom" />
          </node>
        </node>
        <node concept="3rtmxn" id="1yReInH4px" role="3bR31x">
          <node concept="3LXTmp" id="1yReInH4py" role="3rtmxm">
            <node concept="398BVA" id="1yReInH4pz" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="1yReInH4p$" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.notation.impl.baseLanguage" />
              </node>
            </node>
            <node concept="3qWCbU" id="1yReInH4pA" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7d_Du4880J" role="3bR37C">
          <node concept="3bR9La" id="7d_Du4880K" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPU" resolve="org.modelix.ui.sm.server" />
          </node>
        </node>
        <node concept="1SiIV0" id="7d_Du4880L" role="3bR37C">
          <node concept="3bR9La" id="7d_Du4880M" role="1SiIV1">
            <ref role="3bR37D" node="eACOy0gz1M" resolve="org.modelix.ui.state" />
          </node>
        </node>
        <node concept="1SiIV0" id="1uzsBUr_vUB" role="3bR37C">
          <node concept="3bR9La" id="1uzsBUr_vUC" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5U8hsWC73Be" resolve="org.modelix.model.repositoryconcepts" />
          </node>
        </node>
        <node concept="1SiIV0" id="3DfUugC0QD6" role="3bR37C">
          <node concept="3bR9La" id="3DfUugC0QD7" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="3DfUugC0QD8" role="3bR37C">
          <node concept="3bR9La" id="3DfUugC0QD9" role="1SiIV1">
            <ref role="3bR37D" to="90a9:6fQhGuklPrV" resolve="de.q60.mps.incremental.runtime" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="3k6wK$MX7XN" role="3989C9">
      <property role="TrG5h" value="org.modelix.ui.server" />
      <node concept="1E1JtA" id="6GOzicSiraw" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.modelix.ui.server" />
        <property role="3LESm3" value="39aab22b-473f-4e44-b037-0c602964897d" />
        <node concept="398BVA" id="6GOzicSirIi" role="3LF7KH">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="6GOzicSirZc" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.ui.server" />
            <node concept="2Ry0Ak" id="6GOzicSisg5" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.ui.server.msd" />
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
        <node concept="1SiIV0" id="5Sw$pxbQQvm" role="3bR37C">
          <node concept="3bR9La" id="5Sw$pxbQQvn" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPU" resolve="org.modelix.ui.sm.server" />
          </node>
        </node>
        <node concept="1SiIV0" id="5Sw$pxbQQvo" role="3bR37C">
          <node concept="3bR9La" id="5Sw$pxbQQvp" role="1SiIV1">
            <ref role="3bR37D" node="1_iojA26Pac" resolve="org.modelix.ui.svg" />
          </node>
        </node>
        <node concept="1SiIV0" id="2TMlwYi2QnU" role="3bR37C">
          <node concept="3bR9La" id="2TMlwYi2QnV" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="2TMlwYi2QnW" role="3bR37C">
          <node concept="3bR9La" id="2TMlwYi2QnX" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPs" resolve="org.modelix.model.mpsplugin" />
          </node>
        </node>
        <node concept="1SiIV0" id="5a2LedGLbsO" role="3bR37C">
          <node concept="3bR9La" id="5a2LedGLbsP" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="5Sw$pxbQPmv" resolve="org.modelix.jetty" />
          </node>
        </node>
        <node concept="1BupzO" id="7sZTyNS9$K9" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="7sZTyNS9$Ka" role="1HemKq">
            <node concept="398BVA" id="7sZTyNS9$K2" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
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
          <node concept="3LXTmp" id="4tfK3zZNTv2" role="1HemKq">
            <node concept="398BVA" id="4tfK3zZNTuV" role="3LXTmr">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4tfK3zZNTuW" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.ui.server" />
                <node concept="2Ry0Ak" id="4tfK3zZNTuX" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4tfK3zZNTv3" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5X1StJEGkEU" role="3bR37C">
          <node concept="3bR9La" id="5X1StJEGkEV" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPn" resolve="org.modelix.ui.sm" />
          </node>
        </node>
        <node concept="1SiIV0" id="27MnIrah$tQ" role="3bR37C">
          <node concept="3bR9La" id="27MnIrah$tR" role="1SiIV1">
            <ref role="3bR37D" node="27MnIrahxUD" resolve="org.modelix.ui.diff" />
          </node>
        </node>
        <node concept="1SiIV0" id="4X4wcwjBXqj" role="3bR37C">
          <node concept="1BurEX" id="4X4wcwjBXqk" role="1SiIV1">
            <node concept="398BVA" id="4X4wcwjBXqa" role="1BurEY">
              <ref role="398BVh" node="3$7Kuaihl5X" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="4X4wcwjBXqb" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.ui.server" />
                <node concept="2Ry0Ak" id="4X4wcwjBXqc" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4X4wcwjBXqd" role="2Ry0An">
                    <property role="2Ry0Am" value="ui-client.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3k6wK$MX1xd" role="3bR37C">
          <node concept="3bR9La" id="3k6wK$MX1xe" role="1SiIV1">
            <ref role="3bR37D" node="5npwda7lJQ3" resolve="org.modelix.ui.common" />
          </node>
        </node>
        <node concept="1SiIV0" id="3ldDl3LXg68" role="3bR37C">
          <node concept="3bR9La" id="3ldDl3LXg69" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ZViq9oppal" resolve="jetbrains.mps.make.facets" />
          </node>
        </node>
        <node concept="1SiIV0" id="3ldDl3LXg6a" role="3bR37C">
          <node concept="3bR9La" id="3ldDl3LXg6b" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lg2" resolve="jetbrains.mps.smodel.resources" />
          </node>
        </node>
        <node concept="1SiIV0" id="3ldDl3LXg6c" role="3bR37C">
          <node concept="3bR9La" id="3ldDl3LXg6d" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1SiIV0" id="3ldDl3LXg6e" role="3bR37C">
          <node concept="3bR9La" id="3ldDl3LXg6f" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="3ldDl3LXg6g" role="3bR37C">
          <node concept="3bR9La" id="3ldDl3LXg6h" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LgO" resolve="jetbrains.mps.make" />
          </node>
        </node>
        <node concept="1SiIV0" id="3ldDl3LXg6i" role="3bR37C">
          <node concept="3bR9La" id="3ldDl3LXg6j" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LgV" resolve="jetbrains.mps.make.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="3ldDl3LXg6k" role="3bR37C">
          <node concept="3bR9La" id="3ldDl3LXg6l" role="1SiIV1">
            <ref role="3bR37D" to="90a9:PE3B26QCrP" resolve="org.apache.commons" />
          </node>
        </node>
        <node concept="1SiIV0" id="30bYtbcpKTl" role="3bR37C">
          <node concept="3bR9La" id="30bYtbcpKTm" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5U8hsWC71Xh" resolve="org.modelix.model.mpsadapters" />
          </node>
        </node>
        <node concept="1SiIV0" id="30bYtbcpKTn" role="3bR37C">
          <node concept="3bR9La" id="30bYtbcpKTo" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5U8hsWC70jw" resolve="org.modelix.model.api" />
          </node>
        </node>
        <node concept="1SiIV0" id="30bYtbcpKTp" role="3bR37C">
          <node concept="3bR9La" id="30bYtbcpKTq" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="3PyXc8TKhFk" role="3bR37C">
          <node concept="3bR9La" id="3PyXc8TKhFl" role="1SiIV1">
            <ref role="3bR37D" node="5MA9wbc6HlL" resolve="org.modelix.common" />
          </node>
        </node>
        <node concept="1SiIV0" id="3PyXc8TKhFm" role="3bR37C">
          <node concept="3bR9La" id="3PyXc8TKhFn" role="1SiIV1">
            <ref role="3bR37D" node="7Hbm57D_FL9" resolve="org.modelix.model.client" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2_Ic$z" id="7BujJjXgSfB" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="2_Ic$B" value="true" />
      <property role="TZNOO" value="11" />
    </node>
    <node concept="1wNqPr" id="7BujJjXgTCz" role="3989C9" />
    <node concept="2igEWh" id="7BujJjXgXsI" role="1hWBAP">
      <property role="3UIfUI" value="1024" />
    </node>
    <node concept="2kB4xC" id="7MZ_dOGOqeB" role="1l3spd">
      <property role="TrG5h" value="modelixVersion" />
      <node concept="aVJcg" id="7MZ_dOGOqh5" role="aVJcv">
        <node concept="NbPM2" id="7MZ_dOGOqh4" role="aVJcq">
          <node concept="3Mxwew" id="7MZ_dOGOqh3" role="3MwsjC">
            <property role="3MwjfP" value="0.0.0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13uUGR" id="3sFor718Bau" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="3sFor718Bv3" role="13uUGP">
        <ref role="398BVh" node="7gF2HTviNPb" resolve="mps.home" />
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="1yReInD20V">
    <property role="2DA0ip" value="../../build/test.org.modelix" />
    <property role="TrG5h" value="test.org.modelix" />
    <property role="turDy" value="build-tests.xml" />
    <node concept="2_Ic$z" id="1yReInD222" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="TZNOO" value="11" />
    </node>
    <node concept="1wNqPr" id="1yReInD228" role="3989C9" />
    <node concept="1E1JtA" id="6w3CrGw0wk6" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="test.org.modelix.model.mpsplugin" />
      <property role="3LESm3" value="ab3bc120-1b9c-4002-88fa-2617354a0d00" />
      <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
      <node concept="398BVA" id="6w3CrGw0wkd" role="3LF7KH">
        <ref role="398BVh" node="1yReInD21e" resolve="modelix.modules" />
        <node concept="2Ry0Ak" id="6w3CrGw0wkj" role="iGT6I">
          <property role="2Ry0Am" value="test.org.modelix.model.mpsplugin" />
          <node concept="2Ry0Ak" id="6w3CrGw0wko" role="2Ry0An">
            <property role="2Ry0Am" value="test.org.modelix.model.mpsplugin.msd" />
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="6w3CrGw0wkq" role="3bR37C">
        <node concept="3bR9La" id="6w3CrGw0wkr" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
        </node>
      </node>
      <node concept="1SiIV0" id="6w3CrGw0wks" role="3bR37C">
        <node concept="3bR9La" id="6w3CrGw0wkt" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
        </node>
      </node>
      <node concept="1SiIV0" id="6w3CrGw0wku" role="3bR37C">
        <node concept="3bR9La" id="6w3CrGw0wkv" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
        </node>
      </node>
      <node concept="1SiIV0" id="6w3CrGw0wkw" role="3bR37C">
        <node concept="3bR9La" id="6w3CrGw0wkx" role="1SiIV1">
          <ref role="3bR37D" node="7Hbm57D_FL9" resolve="org.modelix.model.client" />
        </node>
      </node>
      <node concept="1SiIV0" id="6w3CrGw0wky" role="3bR37C">
        <node concept="3bR9La" id="6w3CrGw0wkz" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
        </node>
      </node>
      <node concept="1SiIV0" id="6w3CrGw0wk$" role="3bR37C">
        <node concept="3bR9La" id="6w3CrGw0wk_" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
        </node>
      </node>
      <node concept="1SiIV0" id="6w3CrGw0wkC" role="3bR37C">
        <node concept="3bR9La" id="6w3CrGw0wkD" role="1SiIV1">
          <ref role="3bR37D" node="7gF2HTviNPs" resolve="org.modelix.model.mpsplugin" />
        </node>
      </node>
      <node concept="1SiIV0" id="6w3CrGw0wkE" role="3bR37C">
        <node concept="3bR9La" id="6w3CrGw0wkF" role="1SiIV1">
          <property role="3bR36h" value="true" />
          <ref role="3bR37D" to="ffeo:6aIAM_Qd5ki" resolve="jetbrains.mps.lang.test.matcher" />
        </node>
      </node>
      <node concept="1BupzO" id="6w3CrGw0wkN" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="6w3CrGw0wkO" role="1HemKq">
          <node concept="398BVA" id="6w3CrGw0wkG" role="3LXTmr">
            <ref role="398BVh" node="1yReInD21e" resolve="modelix.modules" />
            <node concept="2Ry0Ak" id="6w3CrGw0wkH" role="iGT6I">
              <property role="2Ry0Am" value="test.org.modelix.model.mpsplugin" />
              <node concept="2Ry0Ak" id="6w3CrGw0wkI" role="2Ry0An">
                <property role="2Ry0Am" value="models" />
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="6w3CrGw0wkP" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="1WL5L9NoI0X" role="3bR37C">
        <node concept="3bR9La" id="1WL5L9NoI0Y" role="1SiIV1">
          <ref role="3bR37D" to="90a9:5U8hsWC71Xh" resolve="org.modelix.model.mpsadapters" />
        </node>
      </node>
      <node concept="1SiIV0" id="6hBdEE_ImwW" role="3bR37C">
        <node concept="3bR9La" id="6hBdEE_ImwX" role="1SiIV1">
          <ref role="3bR37D" to="90a9:5U8hsWC73Be" resolve="org.modelix.model.repositoryconcepts" />
        </node>
      </node>
      <node concept="1SiIV0" id="2QHBUeOiXcA" role="3bR37C">
        <node concept="3bR9La" id="2QHBUeOiXcB" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="6w3CrGw0I_A" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="test.org.modelix.ui.common" />
      <property role="3LESm3" value="eb5b2a8f-6709-4407-9391-5e34e6ed7fce" />
      <property role="aoJFB" value="eYcmk9QOlj/sources_and_tests" />
      <node concept="398BVA" id="6w3CrGw0IA9" role="3LF7KH">
        <ref role="398BVh" node="1yReInD21e" resolve="modelix.modules" />
        <node concept="2Ry0Ak" id="6w3CrGw0IAf" role="iGT6I">
          <property role="2Ry0Am" value="test.org.modelix.ui.common" />
          <node concept="2Ry0Ak" id="6w3CrGw0IAk" role="2Ry0An">
            <property role="2Ry0Am" value="test.org.modelix.ui.common.msd" />
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="6w3CrGw0IAt" role="3bR37C">
        <node concept="3bR9La" id="6w3CrGw0IAu" role="1SiIV1">
          <ref role="3bR37D" node="5npwda7lJQ3" resolve="org.modelix.ui.common" />
        </node>
      </node>
      <node concept="1BupzO" id="6w3CrGw0IAA" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="6w3CrGw0IAB" role="1HemKq">
          <node concept="398BVA" id="6w3CrGw0IAv" role="3LXTmr">
            <ref role="398BVh" node="1yReInD21e" resolve="modelix.modules" />
            <node concept="2Ry0Ak" id="6w3CrGw0IAw" role="iGT6I">
              <property role="2Ry0Am" value="test.org.modelix.ui.common" />
              <node concept="2Ry0Ak" id="6w3CrGw0IAx" role="2Ry0An">
                <property role="2Ry0Am" value="models" />
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="6w3CrGw0IAC" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="1yReInD21N" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="1yReInD2if" role="2JcizS">
        <ref role="398BVh" node="1yReInD212" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="1yReInD21T" role="1l3spa">
      <ref role="1l3spb" to="ffeo:ymnOULAEsd" resolve="mpsTesting" />
      <node concept="398BVA" id="1yReInD2ih" role="2JcizS">
        <ref role="398BVh" node="1yReInD212" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="1yReInD22L" role="1l3spa">
      <ref role="1l3spb" node="7gF2HTviNP8" resolve="org.modelix" />
      <node concept="398BVA" id="1yReInD6Av" role="2JcizS">
        <ref role="398BVh" node="1yReInD21e" resolve="modelix.modules" />
        <node concept="2Ry0Ak" id="1yReInD6A_" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="1yReInD6AE" role="2Ry0An">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="1yReInD6AJ" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix" />
              <node concept="2Ry0Ak" id="1yReInD7r0" role="2Ry0An">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="1yReInD7r5" role="2Ry0An">
                  <property role="2Ry0Am" value="artifacts" />
                  <node concept="2Ry0Ak" id="1yReInD8fo" role="2Ry0An">
                    <property role="2Ry0Am" value="org.modelix" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="1yReInD9a_" role="1l3spa">
      <ref role="1l3spb" to="90a9:2Xjt3l56m0V" resolve="de.itemis.mps.extensions" />
      <node concept="398BVA" id="1yReInD9aA" role="2JcizS">
        <ref role="398BVh" node="1yReInD21b" resolve="extensions.artifacts" />
      </node>
    </node>
    <node concept="398rNT" id="1yReInD20Y" role="1l3spd">
      <property role="TrG5h" value="modelix.home" />
      <node concept="55IIr" id="1yReInD20Z" role="398pKh">
        <node concept="2Ry0Ak" id="1yReInD210" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="1yReInD211" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="1yReInD212" role="1l3spd">
      <property role="TrG5h" value="mps.home" />
      <node concept="398BVA" id="1yReInD213" role="398pKh">
        <ref role="398BVh" node="1yReInD20Y" resolve="modelix.home" />
        <node concept="2Ry0Ak" id="1yReInD214" role="iGT6I">
          <property role="2Ry0Am" value="artifacts" />
          <node concept="2Ry0Ak" id="1yReInD215" role="2Ry0An">
            <property role="2Ry0Am" value="mps" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="1yReInD216" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="398BVA" id="1yReInD217" role="398pKh">
        <ref role="398BVh" node="1yReInD212" resolve="mps.home" />
      </node>
    </node>
    <node concept="398rNT" id="1yReInD218" role="1l3spd">
      <property role="TrG5h" value="artifacts.root" />
      <node concept="398BVA" id="1yReInD219" role="398pKh">
        <ref role="398BVh" node="1yReInD20Y" resolve="modelix.home" />
        <node concept="2Ry0Ak" id="1yReInD21a" role="iGT6I">
          <property role="2Ry0Am" value="artifacts" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="1yReInD21b" role="1l3spd">
      <property role="TrG5h" value="extensions.artifacts" />
      <node concept="398BVA" id="1yReInD21c" role="398pKh">
        <ref role="398BVh" node="1yReInD218" resolve="artifacts.root" />
        <node concept="2Ry0Ak" id="1yReInD21d" role="iGT6I">
          <property role="2Ry0Am" value="de.itemis.mps.extensions" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="1yReInD21e" role="1l3spd">
      <property role="TrG5h" value="modelix.modules" />
      <node concept="398BVA" id="1yReInD21f" role="398pKh">
        <ref role="398BVh" node="1yReInD20Y" resolve="modelix.home" />
        <node concept="2Ry0Ak" id="1yReInD21g" role="iGT6I">
          <property role="2Ry0Am" value="mps" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="2_VYLT0eqku" role="1l3spd">
      <property role="TrG5h" value="mps.macro.modelix.home" />
      <node concept="398BVA" id="2_VYLT0eqkO" role="398pKh">
        <ref role="398BVh" node="1yReInD20Y" resolve="modelix.home" />
      </node>
    </node>
    <node concept="55IIr" id="1yReInD20W" role="auvoZ" />
    <node concept="1l3spV" id="1yReInD20X" role="1l3spN">
      <node concept="L2wRC" id="6w3CrGw0IBg" role="39821P">
        <ref role="L2wRA" node="6w3CrGw0wk6" resolve="test.org.modelix.model.mpsplugin" />
      </node>
      <node concept="L2wRC" id="6w3CrGw0IBl" role="39821P">
        <ref role="L2wRA" node="6w3CrGw0I_A" resolve="test.org.modelix.ui.common" />
      </node>
    </node>
    <node concept="10PD9b" id="1yReInD21$" role="10PD9s" />
    <node concept="3b7kt6" id="1yReInD21D" role="10PD9s" />
    <node concept="1gjT0q" id="6$6tsX_CKLI" role="10PD9s" />
    <node concept="22LTRH" id="1yReInD22F" role="1hWBAP">
      <property role="TrG5h" value="all" />
      <node concept="22LTRM" id="6w3CrGw0IAY" role="22LTRK">
        <ref role="22LTRN" node="6w3CrGw0wk6" resolve="test.org.modelix.model.mpsplugin" />
      </node>
      <node concept="22LTRM" id="6w3CrGw0IB8" role="22LTRK">
        <ref role="22LTRN" node="6w3CrGw0I_A" resolve="test.org.modelix.ui.common" />
      </node>
      <node concept="22LTRM" id="5qbHjZpNHt8" role="22LTRK">
        <ref role="22LTRN" node="27MnIrahxUD" resolve="org.modelix.ui.diff" />
      </node>
      <node concept="24cAiW" id="1yReInEzbz" role="24cAkG">
        <node concept="NbPM2" id="5qbHjZpP3MW" role="24c_eh">
          <node concept="3Mxwew" id="5qbHjZpP3MV" role="3MwsjC">
            <property role="3MwjfP" value="true" />
          </node>
        </node>
        <node concept="NbPM2" id="2_VYLT0rwsA" role="1psgkv">
          <node concept="3Mxwew" id="2_VYLT0rws_" role="3MwsjC">
            <property role="3MwjfP" value="-Xss2048k -Xmx2024m" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="2p2ql82Ml$V">
    <property role="2DA0ip" value="../../build/integrationtests.org.modelix" />
    <property role="TrG5h" value="integrationtests.org.modelix" />
    <property role="turDy" value="build-integrationtests.xml" />
    <node concept="_awnq" id="2p2ql82Ml$W" role="1hWBAP">
      <ref role="30Vec$" node="5yNJPA6sbWi" resolve="org.modelix.integrationtests" />
    </node>
    <node concept="1wNqPr" id="2p2ql82Ml$X" role="3989C9">
      <property role="1wNuhe" value="true" />
      <property role="1wNuhh" value="8" />
      <property role="1wOHq$" value="true" />
      <property role="3Ej$Sc" value="true" />
    </node>
    <node concept="2_Ic$z" id="2p2ql82Ml$Y" role="3989C9">
      <property role="2_Ic$$" value="true" />
      <property role="TZNOO" value="11" />
    </node>
    <node concept="m$_wf" id="2p2ql82Ml$Z" role="3989C9">
      <property role="m$_wk" value="ModelixIntegrationTests.launcher.plugin" />
      <node concept="3_J27D" id="2p2ql82Ml_0" role="m$_yQ">
        <node concept="3Mxwew" id="2p2ql82Ml_1" role="3MwsjC">
          <property role="3MwjfP" value="MPSServer" />
        </node>
      </node>
      <node concept="3_J27D" id="2p2ql82Ml_2" role="m$_w8">
        <node concept="3Mxwew" id="5yNJPA6chiu" role="3MwsjC">
          <property role="3MwjfP" value="1.0.0" />
        </node>
      </node>
      <node concept="m$f5U" id="2p2ql82Ml_4" role="m$_yh">
        <ref role="m$f5T" node="2p2ql82Ml_9" resolve="ModelixIntegrationTests" />
      </node>
      <node concept="m$_yC" id="5yNJPA6chAP" role="m$_yJ">
        <ref role="m$_y1" node="7gF2HTvj4WE" resolve="org.modelix.common" />
      </node>
      <node concept="m$_yC" id="5yNJPA6chB3" role="m$_yJ">
        <ref role="m$_y1" node="7gF2HTviNPW" resolve="org.modelix.model" />
      </node>
      <node concept="m$_yC" id="2p2ql82Ml_5" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="3_J27D" id="2p2ql82Ml_6" role="m_cZH">
        <node concept="3Mxwew" id="2p2ql82Ml_7" role="3MwsjC">
          <property role="3MwjfP" value="MPSServer" />
        </node>
      </node>
      <node concept="m$_yC" id="2p2ql82Ml_8" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:5HVSRHdVm9a" resolve="jetbrains.mps.build" />
      </node>
      <node concept="m$_yC" id="4NnQddZ$qdy" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:RJsmGEieyQ" resolve="jetbrains.mps.vcs" />
      </node>
      <node concept="m$_yC" id="4NnQddZ$MIJ" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:5xhjlkpPhJu" resolve="jetbrains.mps.ide.httpsupport" />
      </node>
    </node>
    <node concept="2G$12M" id="2p2ql82Ml_9" role="3989C9">
      <property role="TrG5h" value="ModelixIntegrationTests" />
      <node concept="1E1JtA" id="5yNJPA6sbWi" role="2G$12L">
        <property role="TrG5h" value="org.modelix.integrationtests" />
        <property role="3LESm3" value="46ee2897-c65d-4c6b-b2dd-5e898e2920e0" />
        <property role="BnDLt" value="true" />
        <node concept="398BVA" id="5yNJPA6sbWQ" role="3LF7KH">
          <ref role="398BVh" node="5yNJPA6sbnk" resolve="modelix.modules" />
          <node concept="2Ry0Ak" id="6V2G5GpUUh7" role="iGT6I">
            <property role="2Ry0Am" value="org.modelix.integrationtests" />
            <node concept="2Ry0Ak" id="6V2G5GpUUhc" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix.integrationtests.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5yNJPA6sbX3" role="3bR37C">
          <node concept="3bR9La" id="5yNJPA6sbX4" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5yNJPA6sbX5" role="3bR37C">
          <node concept="3bR9La" id="5yNJPA6sbX6" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:3zjMY$95UAa" resolve="jetbrains.mps.core.tool.environment" />
          </node>
        </node>
        <node concept="1SiIV0" id="5yNJPA6sbX7" role="3bR37C">
          <node concept="3bR9La" id="5yNJPA6sbX8" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1BupzO" id="5yNJPA6sbXi" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="5yNJPA6sbXj" role="1HemKq">
            <node concept="398BVA" id="5yNJPA6sbX9" role="3LXTmr">
              <ref role="398BVh" node="5yNJPA6sbnk" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="5yNJPA6sbXa" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5yNJPA6sbXb" role="2Ry0An">
                  <property role="2Ry0Am" value="org.modelix.integrationtests" />
                  <node concept="2Ry0Ak" id="5yNJPA6sbXc" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="5yNJPA6sbXk" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
          <node concept="3LXTmp" id="6V2G5GpUUhl" role="1HemKq">
            <node concept="398BVA" id="6V2G5GpUUhe" role="3LXTmr">
              <ref role="398BVh" node="5yNJPA6sbnk" resolve="modelix.modules" />
              <node concept="2Ry0Ak" id="6V2G5GpUUhf" role="iGT6I">
                <property role="2Ry0Am" value="org.modelix.integrationtests" />
                <node concept="2Ry0Ak" id="6V2G5GpUUhg" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6V2G5GpUUhm" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="11vVX88rZNc" role="3bR37C">
          <node concept="3bR9La" id="11vVX88rZNd" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPs" resolve="org.modelix.model.mpsplugin" />
          </node>
        </node>
        <node concept="1SiIV0" id="5i$4SBK2L_h" role="3bR37C">
          <node concept="3bR9La" id="5i$4SBK2L_i" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="5i$4SBK2L_j" role="3bR37C">
          <node concept="3bR9La" id="5i$4SBK2L_k" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="KjelMl9IIs" role="3bR37C">
          <node concept="3bR9La" id="KjelMl9IIt" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="2FX9uaKQXng" role="3bR37C">
          <node concept="3bR9La" id="2FX9uaKQXnh" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="2FX9uaKQXni" role="3bR37C">
          <node concept="3bR9La" id="2FX9uaKQXnj" role="1SiIV1">
            <ref role="3bR37D" node="$zd_cMRR11" resolve="org.modelix.model.runtimelang" />
          </node>
        </node>
        <node concept="1SiIV0" id="1WL5L9NoI0s" role="3bR37C">
          <node concept="3bR9La" id="1WL5L9NoI0t" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5U8hsWC73Be" resolve="org.modelix.model.repositoryconcepts" />
          </node>
        </node>
        <node concept="1SiIV0" id="1WL5L9NoI0u" role="3bR37C">
          <node concept="3bR9La" id="1WL5L9NoI0v" role="1SiIV1">
            <ref role="3bR37D" to="90a9:5U8hsWC71Xh" resolve="org.modelix.model.mpsadapters" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="5yNJPA6sbmP" role="1l3spd">
      <property role="TrG5h" value="modelix.home" />
      <node concept="55IIr" id="5yNJPA6sbmQ" role="398pKh">
        <node concept="2Ry0Ak" id="5yNJPA6sbmR" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="5yNJPA6sbmS" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="5yNJPA6sbmT" role="1l3spd">
      <property role="TrG5h" value="mps.home" />
      <node concept="398BVA" id="5yNJPA6sbmU" role="398pKh">
        <ref role="398BVh" node="5yNJPA6sbmP" resolve="modelix.home" />
        <node concept="2Ry0Ak" id="5yNJPA6sbmV" role="iGT6I">
          <property role="2Ry0Am" value="artifacts" />
          <node concept="2Ry0Ak" id="5yNJPA6sbmW" role="2Ry0An">
            <property role="2Ry0Am" value="mps" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="5yNJPA6sbmX" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="398BVA" id="5yNJPA6sbmY" role="398pKh">
        <ref role="398BVh" node="5yNJPA6sbmT" resolve="mps.home" />
      </node>
    </node>
    <node concept="398rNT" id="5yNJPA6sbne" role="1l3spd">
      <property role="TrG5h" value="artifacts.root" />
      <node concept="398BVA" id="5yNJPA6sbnf" role="398pKh">
        <ref role="398BVh" node="5yNJPA6sbmP" resolve="modelix.home" />
        <node concept="2Ry0Ak" id="5yNJPA6sbng" role="iGT6I">
          <property role="2Ry0Am" value="artifacts" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="5yNJPA6sbnh" role="1l3spd">
      <property role="TrG5h" value="extensions.artifacts" />
      <node concept="398BVA" id="5yNJPA6sbni" role="398pKh">
        <ref role="398BVh" node="5yNJPA6sbne" resolve="artifacts.root" />
        <node concept="2Ry0Ak" id="5yNJPA6sbnj" role="iGT6I">
          <property role="2Ry0Am" value="de.itemis.mps.extensions" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="5yNJPA6sbnk" role="1l3spd">
      <property role="TrG5h" value="modelix.modules" />
      <node concept="398BVA" id="5yNJPA6sbnl" role="398pKh">
        <ref role="398BVh" node="5yNJPA6sbmP" resolve="modelix.home" />
        <node concept="2Ry0Ak" id="5yNJPA6sbnm" role="iGT6I">
          <property role="2Ry0Am" value="mps" />
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="nkanBur$Mk" role="1l3spd">
      <property role="TrG5h" value="modelix.executionMode" />
      <node concept="aVJcg" id="nkanBur$MG" role="aVJcv">
        <node concept="NbPM2" id="nkanBur$MF" role="aVJcq">
          <node concept="3Mxwew" id="5Le8ZRJgfyi" role="3MwsjC">
            <property role="3MwjfP" value="INTEGRATION_TESTS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="nkanBur$MK" role="1l3spd">
      <property role="TrG5h" value="mps.macro.modelix.executionMode" />
      <node concept="aVJcg" id="nkanBur$ML" role="aVJcv">
        <node concept="NbPM2" id="nkanBur$MM" role="aVJcq">
          <node concept="3Mxwew" id="nkanBur$MN" role="3MwsjC">
            <property role="3MwjfP" value="INTEGRATION_TESTS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="2p2ql82Ml_V" role="10PD9s" />
    <node concept="3b7kt6" id="2p2ql82Ml_W" role="10PD9s" />
    <node concept="_l39y" id="2p2ql82Ml_X" role="10PD9s" />
    <node concept="55IIr" id="2p2ql82Ml_Y" role="auvoZ" />
    <node concept="1l3spV" id="2p2ql82Ml_Z" role="1l3spN">
      <node concept="L2wRC" id="2p2ql82MlH$" role="39821P">
        <ref role="L2wRA" node="5yNJPA6sbWi" resolve="org.modelix.integrationtests" />
      </node>
    </node>
    <node concept="2sgV4H" id="2p2ql82MlAg" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="2p2ql82MlAh" role="2JcizS">
        <ref role="398BVh" node="5yNJPA6sbmT" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="2p2ql82MlAi" role="1l3spa">
      <ref role="1l3spb" to="ffeo:1diLdO26mQ6" resolve="mpsStandalone" />
      <node concept="398BVA" id="2p2ql82MlAj" role="2JcizS">
        <ref role="398BVh" node="5yNJPA6sbmT" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="2p2ql82MlAk" role="1l3spa">
      <ref role="1l3spb" to="ffeo:5yMuYWFN8P1" resolve="mpsPlugins" />
      <node concept="398BVA" id="2p2ql82MlAl" role="2JcizS">
        <ref role="398BVh" node="5yNJPA6sbmT" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="2p2ql82MlAm" role="1l3spa">
      <ref role="1l3spb" to="ffeo:5D1dJ7xWer5" resolve="mpsCore" />
      <node concept="398BVA" id="2p2ql82MlAn" role="2JcizS">
        <ref role="398BVh" node="5yNJPA6sbmT" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="2p2ql82MlAo" role="1l3spa">
      <ref role="1l3spb" to="ffeo:2eDSGe9d1ot" resolve="mpsWorkbench" />
      <node concept="398BVA" id="2p2ql82MlAp" role="2JcizS">
        <ref role="398BVh" node="5yNJPA6sbmT" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="2p2ql82MlAq" role="1l3spa">
      <ref role="1l3spb" to="ffeo:6qT2v0qOlpw" resolve="mpsJavaPlatform" />
      <node concept="398BVA" id="2p2ql82MlAr" role="2JcizS">
        <ref role="398BVh" node="5yNJPA6sbmT" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="2p2ql82MlAs" role="1l3spa">
      <ref role="1l3spb" to="ffeo:6WtY9M1bDN0" resolve="mpsJava" />
      <node concept="398BVA" id="2p2ql82MlAt" role="2JcizS">
        <ref role="398BVh" node="5yNJPA6sbmT" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="2p2ql82MlAu" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZnIjX" resolve="mpsDistribution" />
      <node concept="398BVA" id="2p2ql82MlAv" role="2JcizS">
        <ref role="398BVh" node="5yNJPA6sbmT" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="4NnQddZ$qco" role="1l3spa">
      <ref role="1l3spb" to="ffeo:1lMM4owFq4Y" resolve="mpsVcs" />
      <node concept="398BVA" id="4NnQddZ$qdo" role="2JcizS">
        <ref role="398BVh" node="5yNJPA6sbmT" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="4NnQddZ$qd2" role="1l3spa">
      <ref role="1l3spb" to="ffeo:6ifcnI8$2iR" resolve="mpsVcsPlatform" />
      <node concept="398BVA" id="4NnQddZ$qdq" role="2JcizS">
        <ref role="398BVh" node="5yNJPA6sbmT" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="5yNJPA6sbnE" role="1l3spa">
      <ref role="1l3spb" node="7gF2HTviNP8" resolve="org.modelix" />
      <node concept="398BVA" id="5yNJPA6sbnF" role="2JcizS">
        <ref role="398BVh" node="5yNJPA6sbnk" resolve="modelix.modules" />
        <node concept="2Ry0Ak" id="5yNJPA6sbnG" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="5yNJPA6sbnH" role="2Ry0An">
            <property role="2Ry0Am" value="build" />
            <node concept="2Ry0Ak" id="5yNJPA6sbnI" role="2Ry0An">
              <property role="2Ry0Am" value="org.modelix" />
              <node concept="2Ry0Ak" id="5yNJPA6sbnJ" role="2Ry0An">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="5yNJPA6sbnK" role="2Ry0An">
                  <property role="2Ry0Am" value="artifacts" />
                  <node concept="2Ry0Ak" id="5yNJPA6sbnL" role="2Ry0An">
                    <property role="2Ry0Am" value="org.modelix" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="5yNJPA6sbnM" role="1l3spa">
      <ref role="1l3spb" to="90a9:2Xjt3l56m0V" resolve="de.itemis.mps.extensions" />
      <node concept="398BVA" id="5yNJPA6sbnN" role="2JcizS">
        <ref role="398BVh" node="5yNJPA6sbnh" resolve="extensions.artifacts" />
      </node>
    </node>
  </node>
</model>

