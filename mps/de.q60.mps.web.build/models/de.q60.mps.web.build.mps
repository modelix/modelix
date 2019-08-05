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
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
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
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <property id="5253498789149547713" name="reexport" index="3bR36h" />
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="5507251971038816436" name="jetbrains.mps.build.mps.structure.BuildMps_Generator" flags="ng" index="1yeLz9" />
      <concept id="4278635856200826393" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyJar" flags="ng" index="1BurEX">
        <child id="4278635856200826394" name="path" index="1BurEY" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
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
  <node concept="1l3spW" id="7gF2HTviNP8">
    <property role="TrG5h" value="de.q60.mps.web" />
    <property role="2DA0ip" value="../" />
    <node concept="10PD9b" id="7gF2HTviNP9" role="10PD9s" />
    <node concept="3b7kt6" id="7gF2HTviNPa" role="10PD9s" />
    <node concept="398rNT" id="7gF2HTviNPb" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="398rNT" id="7gF2HTviNPg" role="1l3spd">
      <property role="TrG5h" value="extensions.home" />
    </node>
    <node concept="398rNT" id="7gF2HTvk5zJ" role="1l3spd">
      <property role="TrG5h" value="webmps.home" />
      <node concept="55IIr" id="7gF2HTvk5ET" role="398pKh">
        <node concept="2Ry0Ak" id="7gF2HTvk5Hj" role="iGT6I">
          <property role="2Ry0Am" value="" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="7gF2HTviNPc" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="7gF2HTviNPd" role="2JcizS">
        <ref role="398BVh" node="7gF2HTviNPb" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="7gF2HTvj1Qi" role="1l3spa">
      <ref role="1l3spb" to="90a9:2Xjt3l56m0V" resolve="de.itemis.mps.extensions" />
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
                <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
                <node concept="2Ry0Ak" id="7gF2HTvk5M8" role="iGT6I">
                  <property role="2Ry0Am" value="de.q60.mps.shadowmodels.web.lib" />
                  <node concept="2Ry0Ak" id="7gF2HTvk5Mb" role="2Ry0An">
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
                <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
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
      <node concept="m$_yC" id="7gF2HTvj4RP" role="m$_yJ">
        <ref role="m$_y1" to="90a9:4iIKqJTZ5I8" resolve="de.q60.shadowmodels" />
      </node>
      <node concept="m$_yC" id="7gF2HTvj4Uf" role="m$_yJ">
        <ref role="m$_y1" to="90a9:4p3FRivDLPy" resolve="org.apache.commons" />
      </node>
      <node concept="m$_yC" id="7gF2HTvj5eJ" role="m$_yJ">
        <ref role="m$_y1" node="7gF2HTvj4WE" resolve="de.q60.mps.web.common" />
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
      <node concept="3_J27D" id="7gF2HTviNQ3" role="m_cZH">
        <node concept="3Mxwew" id="7gF2HTviNQ4" role="3MwsjC">
          <property role="3MwjfP" value="de.q60.mps.web.model" />
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7gF2HTvj55a" role="3989C9">
      <property role="TrG5h" value="de.q60.mps.web.common" />
      <node concept="1E1JtA" id="7gF2HTviNPP" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.shadowmodels.web.lib" />
        <property role="3LESm3" value="87f4b21e-a3a5-459e-a54b-408fd9eb7350" />
        <node concept="55IIr" id="7gF2HTviNPL" role="3LF7KH">
          <node concept="2Ry0Ak" id="7gF2HTviNPM" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.shadowmodels.web.lib" />
            <node concept="2Ry0Ak" id="7gF2HTviNPN" role="2Ry0An">
              <property role="2Ry0Am" value="de.q60.mps.shadowmodels.web.lib.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviNSn" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviNSo" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvk5Mw" role="3bR37C">
          <node concept="1BurEX" id="7gF2HTvk5Mx" role="1SiIV1">
            <node concept="398BVA" id="7gF2HTvk5Mo" role="1BurEY">
              <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
              <node concept="2Ry0Ak" id="7gF2HTvk5Mp" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.shadowmodels.web.lib" />
                <node concept="2Ry0Ak" id="7gF2HTvk5Mq" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7gF2HTvk5Mr" role="2Ry0An">
                    <property role="2Ry0Am" value="java_websocket.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvk5ME" role="3bR37C">
          <node concept="1BurEX" id="7gF2HTvk5MF" role="1SiIV1">
            <node concept="398BVA" id="7gF2HTvk5My" role="1BurEY">
              <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
              <node concept="2Ry0Ak" id="7gF2HTvk5Mz" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.shadowmodels.web.lib" />
                <node concept="2Ry0Ak" id="7gF2HTvk5M$" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7gF2HTvk5M_" role="2Ry0An">
                    <property role="2Ry0Am" value="json-20160810.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6TdxBJ4ihV5" role="3bR37C">
          <node concept="1BurEX" id="6TdxBJ4ihV6" role="1SiIV1">
            <node concept="398BVA" id="6TdxBJ4ihUX" role="1BurEY">
              <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
              <node concept="2Ry0Ak" id="6TdxBJ4ihUY" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.shadowmodels.web.lib" />
                <node concept="2Ry0Ak" id="6TdxBJ4ihUZ" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="6TdxBJ4ihV0" role="2Ry0An">
                    <property role="2Ry0Am" value="gson-2.8.5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6TdxBJ4ihVf" role="3bR37C">
          <node concept="1BurEX" id="6TdxBJ4ihVg" role="1SiIV1">
            <node concept="398BVA" id="6TdxBJ4ihV7" role="1BurEY">
              <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
              <node concept="2Ry0Ak" id="6TdxBJ4ihV8" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.shadowmodels.web.lib" />
                <node concept="2Ry0Ak" id="6TdxBJ4ihV9" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="6TdxBJ4ihVa" role="2Ry0An">
                    <property role="2Ry0Am" value="gson-extras-2.8.5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7gF2HTvj46U" role="3989C9">
      <property role="TrG5h" value="de.q60.mps.web.ui" />
      <node concept="1E1JtD" id="7gF2HTviNPn" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.shadowmodels.web" />
        <property role="3LESm3" value="78874af2-5dd2-42a7-a21d-42fab3737d1d" />
        <node concept="55IIr" id="7gF2HTviNPj" role="3LF7KH">
          <node concept="2Ry0Ak" id="7gF2HTviNPk" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.shadowmodels.web" />
            <node concept="2Ry0Ak" id="7gF2HTviNPl" role="2Ry0An">
              <property role="2Ry0Am" value="de.q60.mps.shadowmodels.web.mpl" />
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
          <property role="TrG5h" value="de.q60.mps.shadowmodels.web#01" />
          <property role="3LESm3" value="10ecc1c8-9e76-4395-886d-b8a9d626629f" />
        </node>
        <node concept="1SiIV0" id="7gF2HTviO9k" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviO9l" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPx" resolve="de.q60.mps.shadowmodels.web.json" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviO9m" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviO9n" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPF" resolve="de.q60.mps.shadowmodels.web.dom" />
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
      </node>
      <node concept="1E1JtD" id="7gF2HTviNPx" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.shadowmodels.web.json" />
        <property role="3LESm3" value="0f2359af-040e-43bb-b438-cf024da41518" />
        <node concept="55IIr" id="7gF2HTviNPt" role="3LF7KH">
          <node concept="2Ry0Ak" id="7gF2HTviNPu" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.shadowmodels.web.json" />
            <node concept="2Ry0Ak" id="7gF2HTviNPv" role="2Ry0An">
              <property role="2Ry0Am" value="de.q60.mps.shadowmodels.web.json.mpl" />
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="7gF2HTviNQE" role="1TViLv">
          <property role="TrG5h" value="de.q60.mps.shadowmodels.web.json#01" />
          <property role="3LESm3" value="7111509f-e08e-4fa2-bc4e-046235ec2a86" />
        </node>
        <node concept="1SiIV0" id="7gF2HTviO9s" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviO9t" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPP" resolve="de.q60.mps.shadowmodels.web.lib" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="7gF2HTviNPF" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.shadowmodels.web.dom" />
        <property role="3LESm3" value="6f6906a4-f244-4806-a98b-0bc781cef2a8" />
        <node concept="55IIr" id="7gF2HTviNPB" role="3LF7KH">
          <node concept="2Ry0Ak" id="7gF2HTviNPC" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.shadowmodels.web.dom" />
            <node concept="2Ry0Ak" id="7gF2HTviNPD" role="2Ry0An">
              <property role="2Ry0Am" value="de.q60.mps.shadowmodels.web.dom.mpl" />
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="7gF2HTviNQI" role="1TViLv">
          <property role="TrG5h" value="de.q60.mps.shadowmodels.web.dom#01" />
          <property role="3LESm3" value="8eeab8ed-d51a-4f98-8dd9-0a43d1a66dd7" />
        </node>
      </node>
      <node concept="1E1JtA" id="7gF2HTviNPU" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.shadowmodels.web.server" />
        <property role="3LESm3" value="eb8d1040-bff5-4126-8949-fdd95ef4c502" />
        <node concept="55IIr" id="7gF2HTviNPQ" role="3LF7KH">
          <node concept="2Ry0Ak" id="7gF2HTviNPR" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.shadowmodels.web.server" />
            <node concept="2Ry0Ak" id="7gF2HTviNPS" role="2Ry0An">
              <property role="2Ry0Am" value="de.q60.mps.shadowmodels.web.server.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviOaK" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviOaL" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPn" resolve="de.q60.mps.shadowmodels.web" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviOaM" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviOaN" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPx" resolve="de.q60.mps.shadowmodels.web.json" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviOaO" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviOaP" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPP" resolve="de.q60.mps.shadowmodels.web.lib" />
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTviOaQ" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviOaR" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPF" resolve="de.q60.mps.shadowmodels.web.dom" />
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
        <node concept="1SiIV0" id="7gF2HTvj1T8" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTvj1T9" role="1SiIV1">
            <ref role="3bR37D" to="90a9:PE3B26QCrP" resolve="org.apache.commons" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7gF2HTviNPV" role="3989C9">
      <property role="TrG5h" value="de.q60.mps.web.model" />
      <node concept="1E1JtA" id="7gF2HTviNPK" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.web.model" />
        <property role="3LESm3" value="5622e615-959d-4843-9df6-ef04ee578c18" />
        <node concept="55IIr" id="7gF2HTviNPG" role="3LF7KH">
          <node concept="2Ry0Ak" id="7gF2HTviNPH" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.web.model" />
            <node concept="2Ry0Ak" id="7gF2HTviNPI" role="2Ry0An">
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
        <node concept="1SiIV0" id="7gF2HTviO9y" role="3bR37C">
          <node concept="3bR9La" id="7gF2HTviO9z" role="1SiIV1">
            <ref role="3bR37D" node="7gF2HTviNPP" resolve="de.q60.mps.shadowmodels.web.lib" />
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
        <node concept="1SiIV0" id="7gF2HTvk5MO" role="3bR37C">
          <node concept="1BurEX" id="7gF2HTvk5MP" role="1SiIV1">
            <node concept="398BVA" id="7gF2HTvk5MG" role="1BurEY">
              <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
              <node concept="2Ry0Ak" id="7gF2HTvk5MH" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="7gF2HTvk5MI" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7gF2HTvk5MJ" role="2Ry0An">
                    <property role="2Ry0Am" value="commons-pool2-2.6.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvk5MY" role="3bR37C">
          <node concept="1BurEX" id="7gF2HTvk5MZ" role="1SiIV1">
            <node concept="398BVA" id="7gF2HTvk5MQ" role="1BurEY">
              <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
              <node concept="2Ry0Ak" id="7gF2HTvk5MR" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="7gF2HTvk5MS" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7gF2HTvk5MT" role="2Ry0An">
                    <property role="2Ry0Am" value="HdrHistogram-2.1.11.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvk5N8" role="3bR37C">
          <node concept="1BurEX" id="7gF2HTvk5N9" role="1SiIV1">
            <node concept="398BVA" id="7gF2HTvk5N0" role="1BurEY">
              <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
              <node concept="2Ry0Ak" id="7gF2HTvk5N1" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="7gF2HTvk5N2" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7gF2HTvk5N3" role="2Ry0An">
                    <property role="2Ry0Am" value="LatencyUtils-2.0.3.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvk5Ni" role="3bR37C">
          <node concept="1BurEX" id="7gF2HTvk5Nj" role="1SiIV1">
            <node concept="398BVA" id="7gF2HTvk5Na" role="1BurEY">
              <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
              <node concept="2Ry0Ak" id="7gF2HTvk5Nb" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="7gF2HTvk5Nc" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7gF2HTvk5Nd" role="2Ry0An">
                    <property role="2Ry0Am" value="lettuce-core-5.1.7.RELEASE.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvk5Ns" role="3bR37C">
          <node concept="1BurEX" id="7gF2HTvk5Nt" role="1SiIV1">
            <node concept="398BVA" id="7gF2HTvk5Nk" role="1BurEY">
              <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
              <node concept="2Ry0Ak" id="7gF2HTvk5Nl" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="7gF2HTvk5Nm" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7gF2HTvk5Nn" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-buffer-4.1.36.Final.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvk5NA" role="3bR37C">
          <node concept="1BurEX" id="7gF2HTvk5NB" role="1SiIV1">
            <node concept="398BVA" id="7gF2HTvk5Nu" role="1BurEY">
              <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
              <node concept="2Ry0Ak" id="7gF2HTvk5Nv" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="7gF2HTvk5Nw" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7gF2HTvk5Nx" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-codec-4.1.36.Final.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvk5NK" role="3bR37C">
          <node concept="1BurEX" id="7gF2HTvk5NL" role="1SiIV1">
            <node concept="398BVA" id="7gF2HTvk5NC" role="1BurEY">
              <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
              <node concept="2Ry0Ak" id="7gF2HTvk5ND" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="7gF2HTvk5NE" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7gF2HTvk5NF" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-common-4.1.36.Final.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvk5NU" role="3bR37C">
          <node concept="1BurEX" id="7gF2HTvk5NV" role="1SiIV1">
            <node concept="398BVA" id="7gF2HTvk5NM" role="1BurEY">
              <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
              <node concept="2Ry0Ak" id="7gF2HTvk5NN" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="7gF2HTvk5NO" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7gF2HTvk5NP" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-handler-4.1.36.Final.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvk5O4" role="3bR37C">
          <node concept="1BurEX" id="7gF2HTvk5O5" role="1SiIV1">
            <node concept="398BVA" id="7gF2HTvk5NW" role="1BurEY">
              <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
              <node concept="2Ry0Ak" id="7gF2HTvk5NX" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="7gF2HTvk5NY" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7gF2HTvk5NZ" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-resolver-4.1.36.Final.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvk5Oe" role="3bR37C">
          <node concept="1BurEX" id="7gF2HTvk5Of" role="1SiIV1">
            <node concept="398BVA" id="7gF2HTvk5O6" role="1BurEY">
              <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
              <node concept="2Ry0Ak" id="7gF2HTvk5O7" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="7gF2HTvk5O8" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7gF2HTvk5O9" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-tcnative-1.1.33.Fork26-osx-x86_64.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvk5Oo" role="3bR37C">
          <node concept="1BurEX" id="7gF2HTvk5Op" role="1SiIV1">
            <node concept="398BVA" id="7gF2HTvk5Og" role="1BurEY">
              <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
              <node concept="2Ry0Ak" id="7gF2HTvk5Oh" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="7gF2HTvk5Oi" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7gF2HTvk5Oj" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-transport-4.1.36.Final.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvk5Oy" role="3bR37C">
          <node concept="1BurEX" id="7gF2HTvk5Oz" role="1SiIV1">
            <node concept="398BVA" id="7gF2HTvk5Oq" role="1BurEY">
              <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
              <node concept="2Ry0Ak" id="7gF2HTvk5Or" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="7gF2HTvk5Os" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7gF2HTvk5Ot" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-transport-native-epoll-4.1.36.Final-linux-x86_64.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvk5OG" role="3bR37C">
          <node concept="1BurEX" id="7gF2HTvk5OH" role="1SiIV1">
            <node concept="398BVA" id="7gF2HTvk5O$" role="1BurEY">
              <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
              <node concept="2Ry0Ak" id="7gF2HTvk5O_" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="7gF2HTvk5OA" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7gF2HTvk5OB" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-transport-native-kqueue-4.1.36.Final-osx-x86_64.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvk5OQ" role="3bR37C">
          <node concept="1BurEX" id="7gF2HTvk5OR" role="1SiIV1">
            <node concept="398BVA" id="7gF2HTvk5OI" role="1BurEY">
              <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
              <node concept="2Ry0Ak" id="7gF2HTvk5OJ" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="7gF2HTvk5OK" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7gF2HTvk5OL" role="2Ry0An">
                    <property role="2Ry0Am" value="netty-transport-native-unix-common-4.1.36.Final.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvk5P0" role="3bR37C">
          <node concept="1BurEX" id="7gF2HTvk5P1" role="1SiIV1">
            <node concept="398BVA" id="7gF2HTvk5OS" role="1BurEY">
              <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
              <node concept="2Ry0Ak" id="7gF2HTvk5OT" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="7gF2HTvk5OU" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7gF2HTvk5OV" role="2Ry0An">
                    <property role="2Ry0Am" value="reactive-streams-1.0.2.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7gF2HTvk5Pa" role="3bR37C">
          <node concept="1BurEX" id="7gF2HTvk5Pb" role="1SiIV1">
            <node concept="398BVA" id="7gF2HTvk5P2" role="1BurEY">
              <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
              <node concept="2Ry0Ak" id="7gF2HTvk5P3" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.model" />
                <node concept="2Ry0Ak" id="7gF2HTvk5P4" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="7gF2HTvk5P5" role="2Ry0An">
                    <property role="2Ry0Am" value="reactor-core-3.2.8.RELEASE.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="6TdxBJ4ihVh" role="3bR37C">
          <node concept="3bR9La" id="6TdxBJ4ihVi" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7gF2HTviNPs" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="de.q60.mps.web.model.mpsplugin" />
        <property role="3LESm3" value="c5e5433e-201f-43e2-ad14-a6cba8c80cd6" />
        <node concept="55IIr" id="7gF2HTviNPo" role="3LF7KH">
          <node concept="2Ry0Ak" id="7gF2HTviNPp" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.web.model.mpsplugin" />
            <node concept="2Ry0Ak" id="7gF2HTviNPq" role="2Ry0An">
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
            <ref role="3bR37D" node="7gF2HTviNPP" resolve="de.q60.mps.shadowmodels.web.lib" />
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
      </node>
    </node>
  </node>
</model>

