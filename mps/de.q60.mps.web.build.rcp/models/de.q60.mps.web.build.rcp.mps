<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:19f75a63-e05a-44a0-9419-af50a2e398e3(de.q60.mps.web.build.rcp)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
    <use id="d5033cee-f632-44b6-b308-89d4fbde34ff" name="jetbrains.mps.build.startup" version="0" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="indb" ref="r:af9443ad-0981-45a3-a5fa-cc9a9d65725b(de.q60.mps.web.build)" />
    <import index="90a9" ref="r:fb24ac52-5985-4947-bba9-25be6fd32c1a(de.itemis.mps.extensions.build)" />
  </imports>
  <registry>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="9126048691955220717" name="jetbrains.mps.build.structure.BuildLayout_File" flags="ng" index="28jJK3">
        <property id="9126048691955221291" name="filemode" index="28jJZ5" />
        <child id="9126048691955220774" name="parameters" index="28jJR8" />
        <child id="9126048691955220762" name="path" index="28jJRO" />
      </concept>
      <concept id="9126048691954557131" name="jetbrains.mps.build.structure.BuildLayout_Comment" flags="ng" index="28u9K_">
        <property id="9126048691954700811" name="text" index="28hIV_" />
      </concept>
      <concept id="2755237150521975431" name="jetbrains.mps.build.structure.BuildVariableMacroInitWithString" flags="ng" index="aVJcg">
        <child id="2755237150521975437" name="value" index="aVJcq" />
      </concept>
      <concept id="244868996532454372" name="jetbrains.mps.build.structure.BuildVariableMacroInitWithDate" flags="ng" index="hHN3E">
        <property id="244868996532454384" name="pattern" index="hHN3Y" />
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
      <concept id="7801138212747054656" name="jetbrains.mps.build.structure.BuildLayout_Filemode" flags="ng" index="yKbIv">
        <property id="7801138212747054660" name="filemode" index="yKbIr" />
      </concept>
      <concept id="3970102152660702410" name="jetbrains.mps.build.structure.BuildLayout_CopyGlobMapper" flags="ng" index="2$gBol">
        <property id="3970102152660874508" name="from" index="2$htvj" />
        <child id="3970102152660874509" name="to" index="2$htvi" />
      </concept>
      <concept id="3970102152660876447" name="jetbrains.mps.build.structure.BuildLayout_CopyRegexMapper" flags="ng" index="2$htT0">
        <property id="3970102152660876449" name="replace" index="2$htTY" />
        <property id="3970102152660876448" name="pattern" index="2$htTZ" />
      </concept>
      <concept id="2750015747481074431" name="jetbrains.mps.build.structure.BuildLayout_Files" flags="ng" index="2HvfSZ">
        <child id="2750015747481074432" name="path" index="2HvfZ0" />
        <child id="2750015747481074433" name="parameters" index="2HvfZ1" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="9184644532457106504" name="jetbrains.mps.build.structure.BuildLayout_CopyFilterReplaceRegex" flags="ng" index="1688n2">
        <property id="9184644532457106505" name="pattern" index="1688n3" />
        <property id="9184644532457106508" name="flags" index="1688n6" />
        <child id="9184644532457106506" name="value" index="1688n0" />
      </concept>
      <concept id="7389400916848050074" name="jetbrains.mps.build.structure.BuildLayout_Jar" flags="ng" index="3981dx" />
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
      <concept id="4198392933254416812" name="jetbrains.mps.build.structure.BuildLayout_CopyFilterFixCRLF" flags="ng" index="3co7Ac">
        <property id="4198392933254416822" name="eol" index="3co7Am" />
        <property id="4198392933254551900" name="removeEOF" index="3cpA_W" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="4915877860348071612" name="fileName" index="turDy" />
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="8577651205286814211" name="jetbrains.mps.build.structure.BuildLayout_Tar" flags="ng" index="1tmT9g">
        <property id="1979010778009209128" name="compression" index="AB_bT" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="5610619299013057363" name="jetbrains.mps.build.structure.BuildLayout_ImportContent" flags="ng" index="3ygNvl">
        <reference id="5610619299013057365" name="target" index="3ygNvj" />
        <child id="6789562173791401562" name="selectors" index="1juEy9" />
      </concept>
      <concept id="7753544965996647428" name="jetbrains.mps.build.structure.BuildLayout_FilesOf" flags="ng" index="1zDrgl">
        <reference id="7753544965996647430" name="element" index="1zDrgn" />
      </concept>
      <concept id="841011766565753074" name="jetbrains.mps.build.structure.BuildLayout_Import" flags="ng" index="3_I8Xc">
        <reference id="841011766565753076" name="target" index="3_I8Xa" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="5248329904288051111" name="jetbrains.mps.build.structure.BuildFileExcludeSelector" flags="ng" index="3LWZYq">
        <property id="5248329904288051112" name="pattern" index="3LWZYl" />
      </concept>
      <concept id="5248329904288051100" name="jetbrains.mps.build.structure.BuildFileIncludeSelector" flags="ng" index="3LWZYx">
        <property id="5248329904288051101" name="pattern" index="3LWZYw" />
      </concept>
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
      </concept>
      <concept id="4903714810883702017" name="jetbrains.mps.build.structure.BuildVarRefStringPart" flags="ng" index="3Mxwey">
        <reference id="4903714810883702018" name="macro" index="3Mxwex" />
      </concept>
      <concept id="202934866059043946" name="jetbrains.mps.build.structure.BuildLayout_EchoProperties" flags="ng" index="1TblL5">
        <child id="202934866059043948" name="fileName" index="1TblL3" />
        <child id="202934866059043962" name="entries" index="1TblLl" />
      </concept>
      <concept id="202934866059043959" name="jetbrains.mps.build.structure.BuildLayout_EchoPropertyEntry" flags="ng" index="1TblLo">
        <property id="202934866059043960" name="key" index="1TblLn" />
        <child id="202934866059043961" name="value" index="1TblLm" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="d5033cee-f632-44b6-b308-89d4fbde34ff" name="jetbrains.mps.build.startup">
      <concept id="3885435385580582153" name="jetbrains.mps.build.startup.structure.ClassPathItem" flags="ng" index="26EafG">
        <property id="3885435385580582154" name="path" index="26EafJ" />
      </concept>
      <concept id="3885435385580582152" name="jetbrains.mps.build.startup.structure.MpsStartupScript" flags="ng" index="26EafH">
        <property id="3885435385580582155" name="startupFolder" index="26EafI" />
        <property id="3885435385580631186" name="startupClass" index="26FY9R" />
        <reference id="3505522814897007561" name="branding" index="1_kbm$" />
        <child id="3885435385580582696" name="bootClasspath" index="26Ea7d" />
      </concept>
      <concept id="1731640411964205218" name="jetbrains.mps.build.startup.structure.TextLine" flags="ng" index="2DRAP_">
        <property id="1731640411964798937" name="text" index="2DPR8u" />
      </concept>
      <concept id="1731640411964205180" name="jetbrains.mps.build.startup.structure.TextFile" flags="ng" index="2DRAQV">
        <child id="1731640411964205233" name="lines" index="2DRAPQ" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="6818892319992984815" name="jetbrains.mps.build.mps.structure.BuildMps_TipsPackage" flags="ng" index="20sUq0">
        <reference id="7323166234190549907" name="tips" index="21GgXK" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="8174907532631382425" name="jetbrains.mps.build.mps.structure.BuildMps_TipsMps" flags="ng" index="3jmSaf" />
      <concept id="8174907532628842428" name="jetbrains.mps.build.mps.structure.BuildMps_Tips" flags="ng" index="3jsGME">
        <child id="8174907532631382423" name="imports" index="3jmSa1" />
      </concept>
      <concept id="7753544965996377997" name="jetbrains.mps.build.mps.structure.BuildMps_Branding" flags="ng" index="1zClus">
        <property id="3497141547781541445" name="minor" index="2OjLBK" />
        <property id="3497141547781541444" name="major" index="2OjLBL" />
        <child id="6845119683729294884" name="progressColor" index="27hGoL" />
        <child id="922958177840117051" name="script" index="2gvbiD" />
        <child id="6108265972537182997" name="aboutScreen" index="2EqU2s" />
        <child id="6108265972537182996" name="splashScreen" index="2EqU2t" />
        <child id="6108265972537229337" name="buildNumber" index="2EteIg" />
        <child id="6108265972537229339" name="icon16" index="2EteIi" />
        <child id="6108265972537229338" name="icon32" index="2EteIj" />
        <child id="6108265972537372847" name="product" index="2EtHGA" />
        <child id="6108265972537372848" name="fullName" index="2EtHGT" />
        <child id="8795525031433238889" name="textColor" index="HFo83" />
        <child id="1462305029084462472" name="buildDate" index="R$TG_" />
        <child id="772379520210716142" name="welcomeLogo" index="3vi$VU" />
        <child id="1084163669516664629" name="copyrightForeground" index="3KTKoD" />
        <child id="1084163669516639223" name="foreground" index="3KTYbF" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="1_iojA26H1u">
    <property role="TrG5h" value="de.q60.mps.webBranding" />
    <property role="2DA0ip" value="../../build/de.q60.mps.web.rcp" />
    <property role="turDy" value="build-branding.xml" />
    <node concept="10PD9b" id="1_iojA26H1v" role="10PD9s" />
    <node concept="3b7kt6" id="1_iojA26H1w" role="10PD9s" />
    <node concept="1zClus" id="1_iojA26H1K" role="3989C9">
      <property role="2OjLBK" value="0" />
      <property role="TrG5h" value="MPS" />
      <property role="2OjLBL" value="1" />
      <node concept="3_J27D" id="1_iojA26H1O" role="2EteIg">
        <node concept="3Mxwey" id="1_iojA26H1P" role="3MwsjC">
          <ref role="3Mxwex" node="1_iojA26H1z" resolve="build.number" />
        </node>
      </node>
      <node concept="3_J27D" id="1_iojA26H1T" role="2EtHGA">
        <node concept="3Mxwew" id="1_iojA26H1U" role="3MwsjC">
          <property role="3MwjfP" value="de.q60.mps.web" />
        </node>
      </node>
      <node concept="3_J27D" id="1_iojA26H1V" role="2EtHGT">
        <node concept="3Mxwew" id="1_iojA26H1W" role="3MwsjC">
          <property role="3MwjfP" value="de.q60.mps.web" />
        </node>
      </node>
      <node concept="3_J27D" id="1_iojA26H20" role="R$TG_">
        <node concept="3Mxwey" id="1_iojA26H21" role="3MwsjC">
          <ref role="3Mxwex" node="1_iojA26H1x" resolve="date" />
        </node>
      </node>
      <node concept="398BVA" id="3$7KuaihGMp" role="2EqU2t">
        <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
        <node concept="2Ry0Ak" id="3$7KuaihGMt" role="iGT6I">
          <property role="2Ry0Am" value="de.q60.mps.web.build.rcp" />
          <node concept="2Ry0Ak" id="3$7KuaihGNG" role="2Ry0An">
            <property role="2Ry0Am" value="icons" />
            <node concept="2Ry0Ak" id="3$7KuaihGNL" role="2Ry0An">
              <property role="2Ry0Am" value="splash.png" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3_J27D" id="1_iojA26H28" role="2gvbiD">
        <node concept="3Mxwew" id="1_iojA26H29" role="3MwsjC">
          <property role="3MwjfP" value="de.q60.mps.web" />
        </node>
      </node>
      <node concept="3_J27D" id="1_iojA26H2a" role="HFo83">
        <node concept="3Mxwew" id="1_iojA26H2b" role="3MwsjC">
          <property role="3MwjfP" value="FFFFFF" />
        </node>
      </node>
      <node concept="3_J27D" id="1_iojA26H2c" role="3KTKoD">
        <node concept="3Mxwew" id="1_iojA26H2d" role="3MwsjC">
          <property role="3MwjfP" value="FFFFFF" />
        </node>
      </node>
      <node concept="3_J27D" id="1_iojA26H2e" role="3KTYbF">
        <node concept="3Mxwew" id="1_iojA26H2f" role="3MwsjC">
          <property role="3MwjfP" value="FFFFFF" />
        </node>
      </node>
      <node concept="NbPM2" id="1_iojA26H2g" role="27hGoL">
        <node concept="3Mxwew" id="1_iojA26H2h" role="3MwsjC">
          <property role="3MwjfP" value="FFFFFF" />
        </node>
      </node>
      <node concept="398BVA" id="3$7KuaihGNW" role="2EqU2s">
        <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
        <node concept="2Ry0Ak" id="3$7KuaihGNX" role="iGT6I">
          <property role="2Ry0Am" value="de.q60.mps.web.build.rcp" />
          <node concept="2Ry0Ak" id="3$7KuaihGNY" role="2Ry0An">
            <property role="2Ry0Am" value="icons" />
            <node concept="2Ry0Ak" id="3$7KuaihGO4" role="2Ry0An">
              <property role="2Ry0Am" value="about.png" />
            </node>
          </node>
        </node>
      </node>
      <node concept="398BVA" id="3$7KuaihGOf" role="2EteIi">
        <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
        <node concept="2Ry0Ak" id="3$7KuaihGOg" role="iGT6I">
          <property role="2Ry0Am" value="de.q60.mps.web.build.rcp" />
          <node concept="2Ry0Ak" id="3$7KuaihGOh" role="2Ry0An">
            <property role="2Ry0Am" value="icons" />
            <node concept="2Ry0Ak" id="3$7KuaihGOn" role="2Ry0An">
              <property role="2Ry0Am" value="MPS16.png" />
            </node>
          </node>
        </node>
      </node>
      <node concept="398BVA" id="3$7KuaihGOy" role="2EteIj">
        <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
        <node concept="2Ry0Ak" id="3$7KuaihGOz" role="iGT6I">
          <property role="2Ry0Am" value="de.q60.mps.web.build.rcp" />
          <node concept="2Ry0Ak" id="3$7KuaihGO$" role="2Ry0An">
            <property role="2Ry0Am" value="icons" />
            <node concept="2Ry0Ak" id="3$7KuaihGOE" role="2Ry0An">
              <property role="2Ry0Am" value="MPS32.png" />
            </node>
          </node>
        </node>
      </node>
      <node concept="398BVA" id="3$7KuaihGOP" role="3vi$VU">
        <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
        <node concept="2Ry0Ak" id="3$7KuaihGOQ" role="iGT6I">
          <property role="2Ry0Am" value="de.q60.mps.web.build.rcp" />
          <node concept="2Ry0Ak" id="3$7KuaihGOR" role="2Ry0An">
            <property role="2Ry0Am" value="icons" />
            <node concept="2Ry0Ak" id="3$7KuaihGOX" role="2Ry0An">
              <property role="2Ry0Am" value="logo.png" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="1_iojA26H1x" role="1l3spd">
      <property role="TrG5h" value="date" />
      <node concept="hHN3E" id="1_iojA26H1y" role="aVJcv">
        <property role="hHN3Y" value="yyyyMMdd" />
      </node>
    </node>
    <node concept="2kB4xC" id="1_iojA26H1z" role="1l3spd">
      <property role="TrG5h" value="build.number" />
      <node concept="aVJcg" id="1_iojA26H1$" role="aVJcv">
        <node concept="NbPM2" id="1_iojA26H1_" role="aVJcq">
          <node concept="3Mxwew" id="1_iojA26H1A" role="3MwsjC">
            <property role="3MwjfP" value="191.1593" />
          </node>
        </node>
      </node>
    </node>
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
    <node concept="398rNT" id="3$7KuaihoCs" role="1l3spd">
      <property role="TrG5h" value="artifacts.root" />
      <node concept="398BVA" id="3$7KuaihlaD" role="398pKh">
        <ref role="398BVh" node="7gF2HTvk5zJ" resolve="webmps.home" />
        <node concept="2Ry0Ak" id="3$7Kuaihldc" role="iGT6I">
          <property role="2Ry0Am" value="artifacts" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="3$7KuaihoCt" role="1l3spd">
      <property role="TrG5h" value="extensions.artifacts" />
      <node concept="398BVA" id="3$7KuaihoCu" role="398pKh">
        <ref role="398BVh" node="3$7KuaihoCs" resolve="artifacts.root" />
        <node concept="2Ry0Ak" id="3$7KuaihoCv" role="iGT6I">
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
    <node concept="2sgV4H" id="1lQWLrCHUfS" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="1lQWLrCHUg6" role="2JcizS">
        <ref role="398BVh" node="7gF2HTviNPb" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="1_iojA26H1C" role="1l3spa">
      <ref role="1l3spb" to="ffeo:1diLdO26mQ6" resolve="mpsStandalone" />
      <node concept="398BVA" id="1_iojA26H1D" role="2JcizS">
        <ref role="398BVh" node="7gF2HTviNPb" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="1_iojA26H1E" role="1l3spa">
      <ref role="1l3spb" to="ffeo:5rNMDvYzelV" resolve="mpsMakePlugin" />
      <node concept="398BVA" id="1_iojA26H1F" role="2JcizS">
        <ref role="398BVh" node="7gF2HTviNPb" resolve="mps.home" />
        <node concept="2Ry0Ak" id="1_iojA26H1G" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="1_iojA26H1H" role="1l3spa">
      <ref role="1l3spb" to="ffeo:1lMM4owFq4Y" resolve="mpsVcs" />
      <node concept="398BVA" id="1_iojA26H1I" role="2JcizS">
        <ref role="398BVh" node="7gF2HTviNPb" resolve="mps.home" />
        <node concept="2Ry0Ak" id="1_iojA26H1J" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="7gF2HTvj1Qi" role="1l3spa">
      <ref role="1l3spb" to="90a9:2Xjt3l56m0V" resolve="de.itemis.mps.extensions" />
      <node concept="398BVA" id="4jf43pv7KWU" role="2JcizS">
        <ref role="398BVh" node="3$7KuaihoCt" resolve="extensions.artifacts" />
      </node>
    </node>
    <node concept="2sgV4H" id="1_iojA27s_8" role="1l3spa">
      <ref role="1l3spb" to="indb:7gF2HTviNP8" resolve="de.q60.mps.web" />
    </node>
    <node concept="3jsGME" id="1_iojA26H3k" role="3989C9">
      <property role="TrG5h" value="mps-tips" />
      <node concept="3jmSaf" id="1_iojA26H3l" role="3jmSa1" />
    </node>
    <node concept="1l3spV" id="1_iojA26H3m" role="1l3spN">
      <node concept="3_I8Xc" id="1_iojA26H3u" role="39821P">
        <ref role="3_I8Xa" to="ffeo:1diLdO26H79" resolve="languages" />
      </node>
      <node concept="3_I8Xc" id="1_iojA26H3v" role="39821P">
        <ref role="3_I8Xa" to="ffeo:1aRUp2KiMC$" resolve="license" />
      </node>
      <node concept="398223" id="1_iojA26H3w" role="39821P">
        <node concept="3_J27D" id="1_iojA26H3x" role="Nbhlr">
          <node concept="3Mxwew" id="1_iojA26H3y" role="3MwsjC">
            <property role="3MwjfP" value="bin" />
          </node>
        </node>
        <node concept="3ygNvl" id="1_iojA26H3z" role="39821P">
          <ref role="3ygNvj" to="ffeo:3cxBkkDa4_O" resolve="bin" />
          <node concept="3LWZYx" id="1_iojA26H3$" role="1juEy9">
            <property role="3LWZYw" value="log.xml" />
          </node>
          <node concept="3LWZYx" id="1_iojA26H3_" role="1juEy9">
            <property role="3LWZYw" value="log4j.dtd" />
          </node>
        </node>
        <node concept="28jJK3" id="1_iojA26H3A" role="39821P">
          <node concept="1688n2" id="1_iojA26H3B" role="28jJR8">
            <property role="1688n6" value="g" />
            <property role="1688n3" value="\.MPS(\w+)" />
            <node concept="NbPM2" id="1_iojA26H3C" role="1688n0">
              <node concept="3Mxwew" id="1_iojA26H3D" role="3MwsjC">
                <property role="3MwjfP" value="\." />
              </node>
              <node concept="3Mxwey" id="1_iojA26H3E" role="3MwsjC">
                <ref role="3Mxwex" node="1_iojA26H1z" resolve="build.number" />
              </node>
            </node>
          </node>
          <node concept="398BVA" id="1_iojA26H3q" role="28jJRO">
            <ref role="398BVh" node="7gF2HTviNPb" resolve="mps.home" />
            <node concept="2Ry0Ak" id="1_iojA26H3r" role="iGT6I">
              <property role="2Ry0Am" value="bin" />
              <node concept="2Ry0Ak" id="1_iojA26H3s" role="2Ry0An">
                <property role="2Ry0Am" value="idea.properties" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="398223" id="1_iojA26H3F" role="39821P">
        <node concept="3_J27D" id="1_iojA26H3G" role="Nbhlr">
          <node concept="3Mxwew" id="1_iojA26H3H" role="3MwsjC">
            <property role="3MwjfP" value="lib" />
          </node>
        </node>
        <node concept="3ygNvl" id="1_iojA26H3I" role="39821P">
          <ref role="3ygNvj" to="ffeo:1diLdO26H7f" resolve="lib" />
          <node concept="3LWZYq" id="1_iojA26H3J" role="1juEy9">
            <property role="3LWZYl" value="MPS-src.zip" />
          </node>
          <node concept="3LWZYq" id="1_iojA26H3K" role="1juEy9">
            <property role="3LWZYl" value="branding.jar" />
          </node>
          <node concept="3LWZYq" id="1_iojA26H3L" role="1juEy9">
            <property role="3LWZYl" value="mps-tips.jar" />
          </node>
        </node>
        <node concept="20sUq0" id="1_iojA26H3M" role="39821P">
          <property role="TrG5h" value="mps-tips.jar" />
          <ref role="21GgXK" node="1_iojA26H3k" resolve="mps-tips" />
        </node>
        <node concept="3981dx" id="1_iojA26H3N" role="39821P">
          <node concept="3_J27D" id="1_iojA26H3O" role="Nbhlr">
            <node concept="3Mxwew" id="1_iojA26H3P" role="3MwsjC">
              <property role="3MwjfP" value="branding.jar" />
            </node>
          </node>
          <node concept="1zDrgl" id="1_iojA26H3Q" role="39821P">
            <ref role="1zDrgn" node="1_iojA26H1K" resolve="de.q60.mps.web 1.0" />
          </node>
        </node>
      </node>
      <node concept="398223" id="1_iojA26H3R" role="39821P">
        <node concept="3ygNvl" id="1lQWLrCHUfw" role="39821P">
          <ref role="3ygNvj" to="ffeo:3IKDaVZn4nh" resolve="plugins" />
        </node>
        <node concept="3ygNvl" id="1_iojA28EI8" role="39821P">
          <ref role="3ygNvj" to="indb:7gF2HTviNQ8" resolve="de.q60.mps.web.zip" />
        </node>
        <node concept="3_I8Xc" id="7z7Ac3BGAFv" role="39821P">
          <ref role="3_I8Xa" to="90a9:2Xjt3l57guk" resolve="de.slisson.mps.hacks" />
        </node>
        <node concept="3_I8Xc" id="7z7Ac3BGAFJ" role="39821P">
          <ref role="3_I8Xa" to="90a9:1RCZH7X6nCV" resolve="de.q60.shadowmodels" />
        </node>
        <node concept="3_I8Xc" id="7z7Ac3BGAMY" role="39821P">
          <ref role="3_I8Xa" to="90a9:31bAEZ0ssNL" resolve="mps-apache-commons" />
        </node>
        <node concept="3_J27D" id="1_iojA26H3Y" role="Nbhlr">
          <node concept="3Mxwew" id="1_iojA26H3Z" role="3MwsjC">
            <property role="3MwjfP" value="plugins" />
          </node>
        </node>
      </node>
      <node concept="28jJK3" id="1lQWLrCMd8_" role="39821P">
        <node concept="1688n2" id="1lQWLrCMg6m" role="28jJR8">
          <property role="1688n3" value="buildnumber" />
          <node concept="NbPM2" id="1lQWLrCMg6o" role="1688n0">
            <node concept="3Mxwey" id="1lQWLrCMg6v" role="3MwsjC">
              <ref role="3Mxwex" node="1_iojA26H1z" resolve="build.number" />
            </node>
          </node>
        </node>
        <node concept="398BVA" id="3$7KuaihJPy" role="28jJRO">
          <ref role="398BVh" node="3$7Kuaihl5X" resolve="webmps.modules" />
          <node concept="2Ry0Ak" id="3$7KuaihJPH" role="iGT6I">
            <property role="2Ry0Am" value="de.q60.mps.web.build.rcp" />
            <node concept="2Ry0Ak" id="3$7KuaihJPI" role="2Ry0An">
              <property role="2Ry0Am" value="source_gen" />
              <node concept="2Ry0Ak" id="3$7KuaihJPJ" role="2Ry0An">
                <property role="2Ry0Am" value="de" />
                <node concept="2Ry0Ak" id="3$7KuaihJPK" role="2Ry0An">
                  <property role="2Ry0Am" value="q60" />
                  <node concept="2Ry0Ak" id="3$7KuaihJPL" role="2Ry0An">
                    <property role="2Ry0Am" value="mps" />
                    <node concept="2Ry0Ak" id="3$7KuaihJPM" role="2Ry0An">
                      <property role="2Ry0Am" value="web" />
                      <node concept="2Ry0Ak" id="3$7KuaihJPN" role="2Ry0An">
                        <property role="2Ry0Am" value="build" />
                        <node concept="2Ry0Ak" id="3$7KuaihJPO" role="2Ry0An">
                          <property role="2Ry0Am" value="rcp" />
                          <node concept="2Ry0Ak" id="3$7KuaihJPP" role="2Ry0An">
                            <property role="2Ry0Am" value="build.txt" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1TblL5" id="1_iojA26H40" role="39821P">
        <node concept="3_J27D" id="1_iojA26H41" role="1TblL3">
          <node concept="3Mxwew" id="1_iojA26H42" role="3MwsjC">
            <property role="3MwjfP" value="build.number" />
          </node>
        </node>
        <node concept="1TblLo" id="1_iojA26H43" role="1TblLl">
          <property role="1TblLn" value="build.number" />
          <node concept="NbPM2" id="1_iojA26H44" role="1TblLm">
            <node concept="3Mxwey" id="1_iojA26H45" role="3MwsjC">
              <ref role="3Mxwex" node="1_iojA26H1z" resolve="build.number" />
            </node>
          </node>
        </node>
        <node concept="1TblLo" id="1_iojA26H46" role="1TblLl">
          <property role="1TblLn" value="date" />
          <node concept="NbPM2" id="1_iojA26H47" role="1TblLm">
            <node concept="3Mxwey" id="1_iojA26H48" role="3MwsjC">
              <ref role="3Mxwex" node="1_iojA26H1x" resolve="date" />
            </node>
          </node>
        </node>
        <node concept="1TblLo" id="1_iojA26H49" role="1TblLl">
          <property role="1TblLn" value="version" />
          <node concept="NbPM2" id="1_iojA26H4a" role="1TblLm">
            <node concept="3Mxwew" id="1_iojA26H4b" role="3MwsjC">
              <property role="3MwjfP" value="1.0" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="1_iojA26HaC">
    <property role="TrG5h" value="de.q60.mps.webDistribution" />
    <property role="turDy" value="build-distribution.xml" />
    <property role="2DA0ip" value="../../build/de.q60.mps.web.rcp" />
    <node concept="2sgV4H" id="1_iojA26HaD" role="1l3spa">
      <ref role="1l3spb" node="1_iojA26H1u" resolve="de.q60.mps.webBranding" />
    </node>
    <node concept="1l3spV" id="1_iojA26HaE" role="1l3spN">
      <node concept="1tmT9g" id="1_iojA26HbN" role="39821P">
        <property role="AB_bT" value="gzip" />
        <node concept="3ygNvl" id="1_iojA26HbO" role="39821P">
          <ref role="3ygNvj" node="1_iojA26H3m" />
        </node>
        <node concept="398223" id="1_iojA26HbP" role="39821P">
          <node concept="3_J27D" id="1_iojA26HbQ" role="Nbhlr">
            <node concept="3Mxwew" id="1_iojA26HbR" role="3MwsjC">
              <property role="3MwjfP" value="bin" />
            </node>
          </node>
          <node concept="28u9K_" id="1_iojA26HbS" role="39821P">
            <property role="28hIV_" value="Linux executable files and fsnotifier" />
          </node>
          <node concept="yKbIv" id="1_iojA26HbT" role="39821P">
            <property role="yKbIr" value="755" />
            <node concept="2HvfSZ" id="1_iojA26HbU" role="39821P">
              <node concept="398BVA" id="1_iojA26HbK" role="2HvfZ0">
                <ref role="398BVh" node="3$7KuaihoE8" resolve="mps.home" />
                <node concept="2Ry0Ak" id="1_iojA26HbL" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="1_iojA26HbM" role="2Ry0An">
                    <property role="2Ry0Am" value="linux" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28u9K_" id="1_iojA26HbV" role="39821P">
            <property role="28hIV_" value="Startup options for 32 and 64 bit systems" />
          </node>
          <node concept="28jJK3" id="1_iojA26HbW" role="39821P">
            <node concept="3co7Ac" id="1_iojA26HbX" role="28jJR8">
              <property role="3co7Am" value="lf" />
              <property role="3cpA_W" value="true" />
            </node>
            <node concept="398BVA" id="3$7KuaihMOd" role="28jJRO">
              <ref role="398BVh" node="3$7KuaihoEk" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihMOo" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.build.rcp" />
                <node concept="2Ry0Ak" id="3$7KuaihMOp" role="2Ry0An">
                  <property role="2Ry0Am" value="source_gen" />
                  <node concept="2Ry0Ak" id="3$7KuaihMOq" role="2Ry0An">
                    <property role="2Ry0Am" value="de" />
                    <node concept="2Ry0Ak" id="3$7KuaihMOr" role="2Ry0An">
                      <property role="2Ry0Am" value="q60" />
                      <node concept="2Ry0Ak" id="3$7KuaihMOs" role="2Ry0An">
                        <property role="2Ry0Am" value="mps" />
                        <node concept="2Ry0Ak" id="3$7KuaihMOt" role="2Ry0An">
                          <property role="2Ry0Am" value="web" />
                          <node concept="2Ry0Ak" id="3$7KuaihMOu" role="2Ry0An">
                            <property role="2Ry0Am" value="build" />
                            <node concept="2Ry0Ak" id="3$7KuaihMOv" role="2Ry0An">
                              <property role="2Ry0Am" value="rcp" />
                              <node concept="2Ry0Ak" id="3$7KuaihMOw" role="2Ry0An">
                                <property role="2Ry0Am" value="de.q60.mps.web.vmoptions" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="1_iojA26HbZ" role="39821P">
            <node concept="3co7Ac" id="1_iojA26Hc0" role="28jJR8">
              <property role="3co7Am" value="lf" />
              <property role="3cpA_W" value="true" />
            </node>
            <node concept="398BVA" id="3$7KuaihMP9" role="28jJRO">
              <ref role="398BVh" node="3$7KuaihoEk" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihMPk" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.build.rcp" />
                <node concept="2Ry0Ak" id="3$7KuaihMPl" role="2Ry0An">
                  <property role="2Ry0Am" value="source_gen" />
                  <node concept="2Ry0Ak" id="3$7KuaihMPm" role="2Ry0An">
                    <property role="2Ry0Am" value="de" />
                    <node concept="2Ry0Ak" id="3$7KuaihMPn" role="2Ry0An">
                      <property role="2Ry0Am" value="q60" />
                      <node concept="2Ry0Ak" id="3$7KuaihMPo" role="2Ry0An">
                        <property role="2Ry0Am" value="mps" />
                        <node concept="2Ry0Ak" id="3$7KuaihMPp" role="2Ry0An">
                          <property role="2Ry0Am" value="web" />
                          <node concept="2Ry0Ak" id="3$7KuaihMPq" role="2Ry0An">
                            <property role="2Ry0Am" value="build" />
                            <node concept="2Ry0Ak" id="3$7KuaihMPr" role="2Ry0An">
                              <property role="2Ry0Am" value="rcp" />
                              <node concept="2Ry0Ak" id="3$7KuaihMPs" role="2Ry0An">
                                <property role="2Ry0Am" value="de.q60.mps.web64.vmoptions" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28u9K_" id="1_iojA26Hc2" role="39821P">
            <property role="28hIV_" value="Linux startup script" />
          </node>
          <node concept="28jJK3" id="1_iojA26Hc3" role="39821P">
            <property role="28jJZ5" value="755" />
            <node concept="3co7Ac" id="1_iojA26Hc4" role="28jJR8">
              <property role="3co7Am" value="lf" />
              <property role="3cpA_W" value="true" />
            </node>
            <node concept="398BVA" id="3$7KuaihMUL" role="28jJRO">
              <ref role="398BVh" node="3$7KuaihoEk" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihMUW" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.build.rcp" />
                <node concept="2Ry0Ak" id="3$7KuaihMUX" role="2Ry0An">
                  <property role="2Ry0Am" value="source_gen" />
                  <node concept="2Ry0Ak" id="3$7KuaihMUY" role="2Ry0An">
                    <property role="2Ry0Am" value="de" />
                    <node concept="2Ry0Ak" id="3$7KuaihMUZ" role="2Ry0An">
                      <property role="2Ry0Am" value="q60" />
                      <node concept="2Ry0Ak" id="3$7KuaihMV0" role="2Ry0An">
                        <property role="2Ry0Am" value="mps" />
                        <node concept="2Ry0Ak" id="3$7KuaihMV1" role="2Ry0An">
                          <property role="2Ry0Am" value="web" />
                          <node concept="2Ry0Ak" id="3$7KuaihMV2" role="2Ry0An">
                            <property role="2Ry0Am" value="build" />
                            <node concept="2Ry0Ak" id="3$7KuaihMV3" role="2Ry0An">
                              <property role="2Ry0Am" value="rcp" />
                              <node concept="2Ry0Ak" id="3$7KuaihMV4" role="2Ry0An">
                                <property role="2Ry0Am" value="de.q60.mps.web.sh" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="1_iojA26Hc6" role="Nbhlr">
          <node concept="3Mxwew" id="1_iojA26Hc7" role="3MwsjC">
            <property role="3MwjfP" value="de.q60.mps.web" />
          </node>
          <node concept="3Mxwew" id="1_iojA26Hc8" role="3MwsjC">
            <property role="3MwjfP" value="-" />
          </node>
          <node concept="3Mxwey" id="1_iojA26Hc9" role="3MwsjC">
            <ref role="3Mxwex" node="1_iojA26H1z" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="1_iojA26Hca" role="3MwsjC">
            <property role="3MwjfP" value=".tar.gz" />
          </node>
        </node>
      </node>
      <node concept="3981dG" id="1_iojA26Hcn" role="39821P">
        <node concept="3ygNvl" id="1_iojA26Hco" role="39821P">
          <ref role="3ygNvj" node="1_iojA26H3m" />
        </node>
        <node concept="398223" id="1_iojA26Hcp" role="39821P">
          <node concept="28u9K_" id="1_iojA26Hcq" role="39821P">
            <property role="28hIV_" value="Startup options for 32 and 64 bit systems" />
          </node>
          <node concept="3_J27D" id="1_iojA26Hcr" role="Nbhlr">
            <node concept="3Mxwew" id="1_iojA26Hcs" role="3MwsjC">
              <property role="3MwjfP" value="bin" />
            </node>
          </node>
          <node concept="28jJK3" id="1_iojA26Hct" role="39821P">
            <node concept="2$gBol" id="1_iojA26Hcu" role="28jJR8">
              <property role="2$htvj" value="*" />
              <node concept="NbPM2" id="1_iojA26Hcv" role="2$htvi">
                <node concept="3Mxwew" id="1_iojA26Hcw" role="3MwsjC">
                  <property role="3MwjfP" value="de.q60.mps.web.exe.vmoptions" />
                </node>
              </node>
            </node>
            <node concept="3co7Ac" id="1_iojA26Hcx" role="28jJR8">
              <property role="3co7Am" value="crlf" />
            </node>
            <node concept="398BVA" id="3$7KuaihMQ5" role="28jJRO">
              <ref role="398BVh" node="3$7KuaihoEk" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihMQg" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.build.rcp" />
                <node concept="2Ry0Ak" id="3$7KuaihMQh" role="2Ry0An">
                  <property role="2Ry0Am" value="source_gen" />
                  <node concept="2Ry0Ak" id="3$7KuaihMQi" role="2Ry0An">
                    <property role="2Ry0Am" value="de" />
                    <node concept="2Ry0Ak" id="3$7KuaihMQj" role="2Ry0An">
                      <property role="2Ry0Am" value="q60" />
                      <node concept="2Ry0Ak" id="3$7KuaihMQk" role="2Ry0An">
                        <property role="2Ry0Am" value="mps" />
                        <node concept="2Ry0Ak" id="3$7KuaihMQl" role="2Ry0An">
                          <property role="2Ry0Am" value="web" />
                          <node concept="2Ry0Ak" id="3$7KuaihMQm" role="2Ry0An">
                            <property role="2Ry0Am" value="build" />
                            <node concept="2Ry0Ak" id="3$7KuaihMQn" role="2Ry0An">
                              <property role="2Ry0Am" value="rcp" />
                              <node concept="2Ry0Ak" id="3$7KuaihMQo" role="2Ry0An">
                                <property role="2Ry0Am" value="de.q60.mps.web.vmoptions" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="1_iojA26HcH" role="39821P">
            <node concept="2$gBol" id="1_iojA26HcI" role="28jJR8">
              <property role="2$htvj" value="*" />
              <node concept="NbPM2" id="1_iojA26HcJ" role="2$htvi">
                <node concept="3Mxwew" id="1_iojA26HcK" role="3MwsjC">
                  <property role="3MwjfP" value="de.q60.mps.web64.exe.vmoptions" />
                </node>
              </node>
            </node>
            <node concept="3co7Ac" id="1_iojA26HcL" role="28jJR8">
              <property role="3co7Am" value="crlf" />
            </node>
            <node concept="398BVA" id="3$7KuaihMR1" role="28jJRO">
              <ref role="398BVh" node="3$7KuaihoEk" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihMRc" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.build.rcp" />
                <node concept="2Ry0Ak" id="3$7KuaihMRd" role="2Ry0An">
                  <property role="2Ry0Am" value="source_gen" />
                  <node concept="2Ry0Ak" id="3$7KuaihMRe" role="2Ry0An">
                    <property role="2Ry0Am" value="de" />
                    <node concept="2Ry0Ak" id="3$7KuaihMRf" role="2Ry0An">
                      <property role="2Ry0Am" value="q60" />
                      <node concept="2Ry0Ak" id="3$7KuaihMRg" role="2Ry0An">
                        <property role="2Ry0Am" value="mps" />
                        <node concept="2Ry0Ak" id="3$7KuaihMRh" role="2Ry0An">
                          <property role="2Ry0Am" value="web" />
                          <node concept="2Ry0Ak" id="3$7KuaihMRi" role="2Ry0An">
                            <property role="2Ry0Am" value="build" />
                            <node concept="2Ry0Ak" id="3$7KuaihMRj" role="2Ry0An">
                              <property role="2Ry0Am" value="rcp" />
                              <node concept="2Ry0Ak" id="3$7KuaihMRk" role="2Ry0An">
                                <property role="2Ry0Am" value="de.q60.mps.web64.vmoptions" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28u9K_" id="1_iojA26HcX" role="39821P">
            <property role="28hIV_" value="Required files for execution" />
          </node>
          <node concept="2HvfSZ" id="1_iojA26HcY" role="39821P">
            <node concept="3LWZYq" id="1_iojA26HcZ" role="2HvfZ1">
              <property role="3LWZYl" value="**/*.exe" />
            </node>
            <node concept="3LWZYq" id="1_iojA26Hd0" role="2HvfZ1">
              <property role="3LWZYl" value="**/*.bat" />
            </node>
            <node concept="398BVA" id="1_iojA26Hce" role="2HvfZ0">
              <ref role="398BVh" node="3$7KuaihoE8" resolve="mps.home" />
              <node concept="2Ry0Ak" id="1_iojA26Hcf" role="iGT6I">
                <property role="2Ry0Am" value="bin" />
                <node concept="2Ry0Ak" id="1_iojA26Hcg" role="2Ry0An">
                  <property role="2Ry0Am" value="win" />
                </node>
              </node>
            </node>
          </node>
          <node concept="28u9K_" id="1_iojA26Hd1" role="39821P">
            <property role="28hIV_" value="Windows executable files and fsnotifier" />
          </node>
          <node concept="yKbIv" id="1_iojA26Hd2" role="39821P">
            <property role="yKbIr" value="755" />
            <node concept="2HvfSZ" id="1_iojA26Hd3" role="39821P">
              <node concept="3LWZYx" id="1_iojA26Hd4" role="2HvfZ1">
                <property role="3LWZYw" value="**/*.exe" />
              </node>
              <node concept="3LWZYx" id="1_iojA26Hd5" role="2HvfZ1">
                <property role="3LWZYw" value="**/append.bat" />
              </node>
              <node concept="398BVA" id="1_iojA26Hck" role="2HvfZ0">
                <ref role="398BVh" node="3$7KuaihoE8" resolve="mps.home" />
                <node concept="2Ry0Ak" id="1_iojA26Hcl" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="1_iojA26Hcm" role="2Ry0An">
                    <property role="2Ry0Am" value="win" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28u9K_" id="1_iojA26Hd6" role="39821P">
            <property role="28hIV_" value="Startup .bat file" />
          </node>
          <node concept="28jJK3" id="1_iojA26Hd7" role="39821P">
            <property role="28jJZ5" value="755" />
            <node concept="3co7Ac" id="1_iojA26Hd8" role="28jJR8">
              <property role="3co7Am" value="crlf" />
            </node>
            <node concept="398BVA" id="3$7KuaihMTP" role="28jJRO">
              <ref role="398BVh" node="3$7KuaihoEk" resolve="webmps.modules" />
              <node concept="2Ry0Ak" id="3$7KuaihMU0" role="iGT6I">
                <property role="2Ry0Am" value="de.q60.mps.web.build.rcp" />
                <node concept="2Ry0Ak" id="3$7KuaihMU1" role="2Ry0An">
                  <property role="2Ry0Am" value="source_gen" />
                  <node concept="2Ry0Ak" id="3$7KuaihMU2" role="2Ry0An">
                    <property role="2Ry0Am" value="de" />
                    <node concept="2Ry0Ak" id="3$7KuaihMU3" role="2Ry0An">
                      <property role="2Ry0Am" value="q60" />
                      <node concept="2Ry0Ak" id="3$7KuaihMU4" role="2Ry0An">
                        <property role="2Ry0Am" value="mps" />
                        <node concept="2Ry0Ak" id="3$7KuaihMU5" role="2Ry0An">
                          <property role="2Ry0Am" value="web" />
                          <node concept="2Ry0Ak" id="3$7KuaihMU6" role="2Ry0An">
                            <property role="2Ry0Am" value="build" />
                            <node concept="2Ry0Ak" id="3$7KuaihMU7" role="2Ry0An">
                              <property role="2Ry0Am" value="rcp" />
                              <node concept="2Ry0Ak" id="3$7KuaihMU8" role="2Ry0An">
                                <property role="2Ry0Am" value="de.q60.mps.web.bat" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="1_iojA26Hda" role="Nbhlr">
          <node concept="3Mxwew" id="1_iojA26Hdb" role="3MwsjC">
            <property role="3MwjfP" value="de.q60.mps.web" />
          </node>
          <node concept="3Mxwew" id="1_iojA26Hdc" role="3MwsjC">
            <property role="3MwjfP" value="-" />
          </node>
          <node concept="3Mxwey" id="1_iojA26Hdd" role="3MwsjC">
            <ref role="3Mxwex" node="1_iojA26H1z" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="1_iojA26Hde" role="3MwsjC">
            <property role="3MwjfP" value=".win.zip" />
          </node>
        </node>
      </node>
      <node concept="3981dG" id="1_iojA26HdT" role="39821P">
        <node concept="3_J27D" id="1_iojA26HdU" role="Nbhlr">
          <node concept="3Mxwew" id="1_iojA26HdV" role="3MwsjC">
            <property role="3MwjfP" value="de.q60.mps.web" />
          </node>
          <node concept="3Mxwew" id="1_iojA26HdW" role="3MwsjC">
            <property role="3MwjfP" value="-" />
          </node>
          <node concept="3Mxwey" id="1_iojA26HdX" role="3MwsjC">
            <ref role="3Mxwex" node="1_iojA26H1z" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="1_iojA26HdY" role="3MwsjC">
            <property role="3MwjfP" value=".macos.zip" />
          </node>
        </node>
        <node concept="398223" id="1_iojA26HdZ" role="39821P">
          <node concept="398223" id="1_iojA26He0" role="39821P">
            <node concept="3ygNvl" id="1_iojA26He1" role="39821P">
              <ref role="3ygNvj" node="1_iojA26H3m" />
            </node>
            <node concept="3_J27D" id="1_iojA26He2" role="Nbhlr">
              <node concept="3Mxwew" id="1_iojA26He3" role="3MwsjC">
                <property role="3MwjfP" value="Contents" />
              </node>
            </node>
            <node concept="398223" id="1_iojA26He4" role="39821P">
              <node concept="3_J27D" id="1_iojA26He5" role="Nbhlr">
                <node concept="3Mxwew" id="1_iojA26He6" role="3MwsjC">
                  <property role="3MwjfP" value="Resources" />
                </node>
              </node>
              <node concept="28u9K_" id="1_iojA26He7" role="39821P">
                <property role="28hIV_" value="TODO: replace with product icon" />
              </node>
              <node concept="28jJK3" id="1_iojA26He8" role="39821P">
                <node concept="398BVA" id="1_iojA26Hdl" role="28jJRO">
                  <ref role="398BVh" node="3$7KuaihoE8" resolve="mps.home" />
                  <node concept="2Ry0Ak" id="1_iojA26Hdm" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="1_iojA26Hdn" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="1_iojA26Hdo" role="2Ry0An">
                        <property role="2Ry0Am" value="Contents" />
                        <node concept="2Ry0Ak" id="1_iojA26Hdp" role="2Ry0An">
                          <property role="2Ry0Am" value="Resources" />
                          <node concept="2Ry0Ak" id="1_iojA26Hdq" role="2Ry0An">
                            <property role="2Ry0Am" value="mps.icns" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="28u9K_" id="1_iojA26He9" role="39821P">
              <property role="28hIV_" value="MacOSX executable to run application" />
            </node>
            <node concept="398223" id="1_iojA26Hea" role="39821P">
              <node concept="28jJK3" id="1_iojA26Heb" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="1_iojA26Hdx" role="28jJRO">
                  <ref role="398BVh" node="3$7KuaihoE8" resolve="mps.home" />
                  <node concept="2Ry0Ak" id="1_iojA26Hdy" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="1_iojA26Hdz" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="1_iojA26Hd$" role="2Ry0An">
                        <property role="2Ry0Am" value="Contents" />
                        <node concept="2Ry0Ak" id="1_iojA26Hd_" role="2Ry0An">
                          <property role="2Ry0Am" value="MacOS" />
                          <node concept="2Ry0Ak" id="1_iojA26HdA" role="2Ry0An">
                            <property role="2Ry0Am" value="mps" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2$gBol" id="1_iojA26Hec" role="28jJR8">
                  <property role="2$htvj" value="*" />
                  <node concept="NbPM2" id="1_iojA26Hed" role="2$htvi">
                    <node concept="3Mxwew" id="1_iojA26Hee" role="3MwsjC">
                      <property role="3MwjfP" value="de.q60.mps.web" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3_J27D" id="1_iojA26Hef" role="Nbhlr">
                <node concept="3Mxwew" id="1_iojA26Heg" role="3MwsjC">
                  <property role="3MwjfP" value="MacOS" />
                </node>
              </node>
            </node>
            <node concept="28u9K_" id="1_iojA26Heh" role="39821P">
              <property role="28hIV_" value="Fill Info.plist with current build version and number" />
            </node>
            <node concept="28jJK3" id="1_iojA26Hei" role="39821P">
              <node concept="398BVA" id="3$7KuaihMST" role="28jJRO">
                <ref role="398BVh" node="3$7KuaihoEk" resolve="webmps.modules" />
                <node concept="2Ry0Ak" id="3$7KuaihMT4" role="iGT6I">
                  <property role="2Ry0Am" value="de.q60.mps.web.build.rcp" />
                  <node concept="2Ry0Ak" id="3$7KuaihMT5" role="2Ry0An">
                    <property role="2Ry0Am" value="source_gen" />
                    <node concept="2Ry0Ak" id="3$7KuaihMT6" role="2Ry0An">
                      <property role="2Ry0Am" value="de" />
                      <node concept="2Ry0Ak" id="3$7KuaihMT7" role="2Ry0An">
                        <property role="2Ry0Am" value="q60" />
                        <node concept="2Ry0Ak" id="3$7KuaihMT8" role="2Ry0An">
                          <property role="2Ry0Am" value="mps" />
                          <node concept="2Ry0Ak" id="3$7KuaihMT9" role="2Ry0An">
                            <property role="2Ry0Am" value="web" />
                            <node concept="2Ry0Ak" id="3$7KuaihMTa" role="2Ry0An">
                              <property role="2Ry0Am" value="build" />
                              <node concept="2Ry0Ak" id="3$7KuaihMTb" role="2Ry0An">
                                <property role="2Ry0Am" value="rcp" />
                                <node concept="2Ry0Ak" id="3$7KuaihMTc" role="2Ry0An">
                                  <property role="2Ry0Am" value="Info.plist.xml" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2$gBol" id="1_iojA26Hek" role="28jJR8">
                <property role="2$htvj" value="*" />
                <node concept="NbPM2" id="1_iojA26Hel" role="2$htvi">
                  <node concept="3Mxwew" id="1_iojA26Hem" role="3MwsjC">
                    <property role="3MwjfP" value="Info.plist" />
                  </node>
                </node>
              </node>
              <node concept="1688n2" id="1_iojA26Hen" role="28jJR8">
                <property role="1688n3" value="\$version\$" />
                <node concept="NbPM2" id="1_iojA26Heo" role="1688n0">
                  <node concept="3Mxwey" id="1_iojA26Hep" role="3MwsjC">
                    <ref role="3Mxwex" node="1_iojA26HaG" resolve="version" />
                  </node>
                </node>
              </node>
              <node concept="1688n2" id="1_iojA26Heq" role="28jJR8">
                <property role="1688n3" value="\$build\$" />
                <node concept="NbPM2" id="1_iojA26Her" role="1688n0">
                  <node concept="3Mxwey" id="1_iojA26Hes" role="3MwsjC">
                    <ref role="3Mxwex" node="1_iojA26H1z" resolve="build.number" />
                  </node>
                </node>
              </node>
              <node concept="3co7Ac" id="1_iojA26Het" role="28jJR8">
                <property role="3co7Am" value="lf" />
                <property role="3cpA_W" value="true" />
              </node>
            </node>
            <node concept="398223" id="1_iojA26Heu" role="39821P">
              <node concept="3_J27D" id="1_iojA26Hev" role="Nbhlr">
                <node concept="3Mxwew" id="1_iojA26Hew" role="3MwsjC">
                  <property role="3MwjfP" value="bin" />
                </node>
              </node>
              <node concept="28u9K_" id="1_iojA26Hex" role="39821P">
                <property role="28hIV_" value="Executable files and fsnotifier" />
              </node>
              <node concept="yKbIv" id="1_iojA26Hey" role="39821P">
                <property role="yKbIr" value="755" />
                <node concept="2HvfSZ" id="1_iojA26Hez" role="39821P">
                  <node concept="3LWZYq" id="1_iojA26He$" role="2HvfZ1">
                    <property role="3LWZYl" value="**/*.dylib" />
                  </node>
                  <node concept="3LWZYq" id="1_iojA26He_" role="2HvfZ1">
                    <property role="3LWZYl" value="**/*.py" />
                  </node>
                  <node concept="398BVA" id="1_iojA26HdE" role="2HvfZ0">
                    <ref role="398BVh" node="3$7KuaihoE8" resolve="mps.home" />
                    <node concept="2Ry0Ak" id="1_iojA26HdF" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="1_iojA26HdG" role="2Ry0An">
                        <property role="2Ry0Am" value="mac" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28u9K_" id="1_iojA26HeA" role="39821P">
                <property role="28hIV_" value="Python script with updated end of line" />
              </node>
              <node concept="yKbIv" id="1_iojA26HeB" role="39821P">
                <property role="yKbIr" value="755" />
                <node concept="2HvfSZ" id="1_iojA26HeC" role="39821P">
                  <node concept="3LWZYx" id="1_iojA26HeD" role="2HvfZ1">
                    <property role="3LWZYw" value="**/*.py" />
                  </node>
                  <node concept="3co7Ac" id="1_iojA26HeE" role="2HvfZ1">
                    <property role="3co7Am" value="lf" />
                    <property role="3cpA_W" value="true" />
                  </node>
                  <node concept="398BVA" id="1_iojA26HdK" role="2HvfZ0">
                    <ref role="398BVh" node="3$7KuaihoE8" resolve="mps.home" />
                    <node concept="2Ry0Ak" id="1_iojA26HdL" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="1_iojA26HdM" role="2Ry0An">
                        <property role="2Ry0Am" value="mac" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28u9K_" id="1_iojA26HeF" role="39821P">
                <property role="28hIV_" value="Required libraries" />
              </node>
              <node concept="yKbIv" id="1_iojA26HeG" role="39821P">
                <node concept="2HvfSZ" id="1_iojA26HeH" role="39821P">
                  <node concept="3LWZYx" id="1_iojA26HeI" role="2HvfZ1">
                    <property role="3LWZYw" value="**/*.dylib" />
                  </node>
                  <node concept="398BVA" id="1_iojA26HdQ" role="2HvfZ0">
                    <ref role="398BVh" node="3$7KuaihoE8" resolve="mps.home" />
                    <node concept="2Ry0Ak" id="1_iojA26HdR" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="1_iojA26HdS" role="2Ry0An">
                        <property role="2Ry0Am" value="mac" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28u9K_" id="1_iojA26HeJ" role="39821P">
                <property role="28hIV_" value="MacOSX distribution should always use 64 bit startup options" />
              </node>
              <node concept="28jJK3" id="1_iojA26HeK" role="39821P">
                <node concept="3co7Ac" id="1_iojA26HeL" role="28jJR8">
                  <property role="3co7Am" value="lf" />
                  <property role="3cpA_W" value="true" />
                </node>
                <node concept="398BVA" id="3$7KuaihMRX" role="28jJRO">
                  <ref role="398BVh" node="3$7KuaihoEk" resolve="webmps.modules" />
                  <node concept="2Ry0Ak" id="3$7KuaihMS8" role="iGT6I">
                    <property role="2Ry0Am" value="de.q60.mps.web.build.rcp" />
                    <node concept="2Ry0Ak" id="3$7KuaihMS9" role="2Ry0An">
                      <property role="2Ry0Am" value="source_gen" />
                      <node concept="2Ry0Ak" id="3$7KuaihMSa" role="2Ry0An">
                        <property role="2Ry0Am" value="de" />
                        <node concept="2Ry0Ak" id="3$7KuaihMSb" role="2Ry0An">
                          <property role="2Ry0Am" value="q60" />
                          <node concept="2Ry0Ak" id="3$7KuaihMSc" role="2Ry0An">
                            <property role="2Ry0Am" value="mps" />
                            <node concept="2Ry0Ak" id="3$7KuaihMSd" role="2Ry0An">
                              <property role="2Ry0Am" value="web" />
                              <node concept="2Ry0Ak" id="3$7KuaihMSe" role="2Ry0An">
                                <property role="2Ry0Am" value="build" />
                                <node concept="2Ry0Ak" id="3$7KuaihMSf" role="2Ry0An">
                                  <property role="2Ry0Am" value="rcp" />
                                  <node concept="2Ry0Ak" id="3$7KuaihMSg" role="2Ry0An">
                                    <property role="2Ry0Am" value="de.q60.mps.web64.vmoptions" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2$htT0" id="1_iojA26HeX" role="28jJR8">
                  <property role="2$htTZ" value="de.q60.mps.web64.vmoptions" />
                  <property role="2$htTY" value="de.q60.mps.web.vmoptions" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="1_iojA26HeY" role="Nbhlr">
            <node concept="3Mxwew" id="1_iojA26HeZ" role="3MwsjC">
              <property role="3MwjfP" value="de.q60.mps.web " />
            </node>
            <node concept="3Mxwey" id="1_iojA26Hf0" role="3MwsjC">
              <ref role="3Mxwex" node="1_iojA26HaG" resolve="version" />
            </node>
            <node concept="3Mxwew" id="1_iojA26Hf1" role="3MwsjC">
              <property role="3MwjfP" value=".app" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="1_iojA26HaG" role="1l3spd">
      <property role="TrG5h" value="version" />
      <node concept="aVJcg" id="1_iojA26HaH" role="aVJcv">
        <node concept="NbPM2" id="1_iojA26HaI" role="aVJcq">
          <node concept="3Mxwew" id="1_iojA26HaJ" role="3MwsjC">
            <property role="3MwjfP" value="1.0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="3$7KuaihoE4" role="1l3spd">
      <property role="TrG5h" value="webmps.home" />
      <node concept="55IIr" id="3$7KuaihoE5" role="398pKh">
        <node concept="2Ry0Ak" id="3$7KuaihoE6" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="3$7KuaihoE7" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="3$7KuaihoE8" role="1l3spd">
      <property role="TrG5h" value="mps.home" />
      <node concept="398BVA" id="3$7KuaihoE9" role="398pKh">
        <ref role="398BVh" node="3$7KuaihoE4" resolve="webmps.home" />
        <node concept="2Ry0Ak" id="3$7KuaihoEa" role="iGT6I">
          <property role="2Ry0Am" value="artifacts" />
          <node concept="2Ry0Ak" id="3$7KuaihoEb" role="2Ry0An">
            <property role="2Ry0Am" value="mps" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="3$7KuaihoEc" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="398BVA" id="3$7KuaihoEd" role="398pKh">
        <ref role="398BVh" node="3$7KuaihoE8" resolve="mps.home" />
      </node>
    </node>
    <node concept="398rNT" id="3$7KuaihoEe" role="1l3spd">
      <property role="TrG5h" value="artifacts.root" />
      <node concept="398BVA" id="3$7KuaihoEf" role="398pKh">
        <ref role="398BVh" node="3$7KuaihoE4" resolve="webmps.home" />
        <node concept="2Ry0Ak" id="3$7KuaihoEg" role="iGT6I">
          <property role="2Ry0Am" value="artifacts" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="3$7KuaihoEk" role="1l3spd">
      <property role="TrG5h" value="webmps.modules" />
      <node concept="398BVA" id="3$7KuaihoEl" role="398pKh">
        <ref role="398BVh" node="3$7KuaihoE4" resolve="webmps.home" />
        <node concept="2Ry0Ak" id="3$7KuaihoEm" role="iGT6I">
          <property role="2Ry0Am" value="mps" />
        </node>
      </node>
    </node>
  </node>
  <node concept="26EafH" id="1_iojA26Hf2">
    <property role="26EafI" value="-" />
    <property role="26FY9R" value="jetbrains.mps.Launcher" />
    <property role="TrG5h" value="de.q60.mps.webScripts" />
    <ref role="1_kbm$" node="1_iojA26H1K" resolve="de.q60.mps.web 1.0" />
    <node concept="26EafG" id="1_iojA26Hf3" role="26Ea7d">
      <property role="26EafJ" value="lib/branding.jar" />
    </node>
    <node concept="26EafG" id="1_iojA26Hf4" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-boot.jar" />
    </node>
    <node concept="26EafG" id="1_iojA26Hf5" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-boot-util.jar" />
    </node>
    <node concept="26EafG" id="1_iojA26Hf6" role="26Ea7d">
      <property role="26EafJ" value="lib/bootstrap.jar" />
    </node>
    <node concept="26EafG" id="1_iojA26Hf7" role="26Ea7d">
      <property role="26EafJ" value="lib/extensions.jar" />
    </node>
    <node concept="26EafG" id="1_iojA26Hf8" role="26Ea7d">
      <property role="26EafJ" value="lib/util.jar" />
    </node>
    <node concept="26EafG" id="1_iojA26Hf9" role="26Ea7d">
      <property role="26EafJ" value="lib/jdom.jar" />
    </node>
    <node concept="26EafG" id="1_iojA26Hfa" role="26Ea7d">
      <property role="26EafJ" value="lib/log4j.jar" />
    </node>
    <node concept="26EafG" id="1_iojA26Hfb" role="26Ea7d">
      <property role="26EafJ" value="lib/trove4j.jar" />
    </node>
    <node concept="26EafG" id="1_iojA26Hfc" role="26Ea7d">
      <property role="26EafJ" value="lib/jna.jar" />
    </node>
  </node>
  <node concept="2DRAQV" id="1lQWLrCMafq">
    <property role="TrG5h" value="build.txt" />
    <node concept="2DRAP_" id="1lQWLrCMafr" role="2DRAPQ">
      <property role="2DPR8u" value="buildnumber" />
    </node>
  </node>
</model>

