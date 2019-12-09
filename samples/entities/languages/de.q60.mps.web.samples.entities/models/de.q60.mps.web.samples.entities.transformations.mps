<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:16d0e306-4bc6-48dd-aa85-1b139faa6274(de.q60.mps.web.samples.entities.transformations)">
  <persistence version="9" />
  <languages>
    <use id="94b64715-a263-4c36-a138-8da14705ffa7" name="de.q60.mps.shadowmodels.transformation" version="1" />
    <devkit ref="a2812d5e-a72e-4739-ab3f-d01ec647c5de(de.q60.mps.shadowmodels.devkit)" />
  </languages>
  <imports>
    <import index="m3vg" ref="r:9bcdcf0c-f978-4630-9b17-a35339e80a73(de.q60.mps.web.ui.sm.transformations)" />
    <import index="dj5d" ref="r:8bca245c-17c6-44f4-9367-ad6ce25cabf5(de.q60.mps.shadowmodels.runtimelang.structure)" />
    <import index="70w2" ref="r:59e1f3dd-5dad-4bbd-ad65-fef01059d9d2(de.q60.mps.web.ui.sm.dom.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="l6bp" ref="r:97875f9c-321e-405e-a344-6d3deab2bdba(de.q60.mps.shadowmodels.runtime.smodel)" />
    <import index="nv3w" ref="r:18e93978-2322-49a8-aaab-61c6faf67e2a(de.q60.mps.shadowmodels.runtime.engine)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="yt15" ref="r:3b455125-c65e-4548-95e9-cf82a7781996(de.q60.mps.web.lib)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="qsto" ref="r:6f19a603-f6b1-4c78-aaa5-6c24c7fbc333(de.q60.mps.web.ui.common)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="walh" ref="r:7db70d3d-4d8f-421d-b146-7ea793314222(de.q60.mps.web.samples.entities.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
    <language id="94b64715-a263-4c36-a138-8da14705ffa7" name="de.q60.mps.shadowmodels.transformation">
      <concept id="7335687028107245072" name="de.q60.mps.shadowmodels.transformation.structure.TransformationOutput" flags="ng" index="026TG">
        <child id="7335687028107245075" name="output" index="026TJ" />
      </concept>
      <concept id="7335687028107243116" name="de.q60.mps.shadowmodels.transformation.structure.NodeBuilder" flags="ng" index="027og">
        <reference id="7335687028107281650" name="concept" index="02LMe" />
        <child id="7335687028107281653" name="content" index="02LM9" />
      </concept>
      <concept id="7335687028107243117" name="de.q60.mps.shadowmodels.transformation.structure.PropertyBuilder" flags="ng" index="027oh">
        <reference id="7335687028107243119" name="property" index="027oj" />
        <child id="7335687028107243123" name="value" index="027of" />
      </concept>
      <concept id="7335687028107243169" name="de.q60.mps.shadowmodels.transformation.structure.ChildBuilder" flags="ng" index="027rt">
        <reference id="7335687028107243171" name="link" index="027rv" />
        <child id="7335687028107243173" name="child" index="027rp" />
      </concept>
      <concept id="7335687028107243170" name="de.q60.mps.shadowmodels.transformation.structure.ReferenceBuilder" flags="ng" index="027ru">
        <reference id="7335687028107243182" name="link" index="027ri" />
        <child id="7335687028107243185" name="target" index="027rd" />
      </concept>
      <concept id="7335687028107163797" name="de.q60.mps.shadowmodels.transformation.structure.TConceptType" flags="ig" index="02i3D">
        <reference id="7335687028107163800" name="concept" index="02i3$" />
      </concept>
      <concept id="7335687028107163788" name="de.q60.mps.shadowmodels.transformation.structure.TransformationParameter" flags="ng" index="02i3K">
        <child id="7335687028107163867" name="type" index="02i2B" />
      </concept>
      <concept id="7335687028107144200" name="de.q60.mps.shadowmodels.transformation.structure.TransformationsNamespace" flags="ng" index="02vhO">
        <child id="7335687028107145383" name="content" index="02uzr" />
      </concept>
      <concept id="7335687028107144742" name="de.q60.mps.shadowmodels.transformation.structure.Transformation" flags="ng" index="02vpq">
        <reference id="6198477943066252929" name="base" index="1YyVLo" />
        <child id="7335687028107245068" name="output" index="026TK" />
        <child id="7335687028107163827" name="input" index="02i3f" />
      </concept>
      <concept id="9170566427534778463" name="de.q60.mps.shadowmodels.transformation.structure.TransformationCall" flags="ng" index="214gnc">
        <reference id="6198477943068350028" name="transformation" index="1YEVMl" />
        <child id="9170566427534794950" name="parameterValues" index="214sll" />
      </concept>
      <concept id="9170566427534812277" name="de.q60.mps.shadowmodels.transformation.structure.ContextNodeExpression" flags="ng" index="214o7A" />
      <concept id="4453020072187560329" name="de.q60.mps.shadowmodels.transformation.structure.ForkParameter" flags="ng" index="2xCcYw">
        <child id="4453020072187560468" name="type" index="2xCcKX" />
      </concept>
      <concept id="4453020072187565222" name="de.q60.mps.shadowmodels.transformation.structure.ForkParameterRef" flags="ng" index="2xCdEf">
        <reference id="4453020072187565304" name="decl" index="2xCdFh" />
      </concept>
      <concept id="3824754023342693980" name="de.q60.mps.shadowmodels.transformation.structure.ForkCall" flags="ng" index="BwxZp">
        <reference id="4453020072188806440" name="decl" index="2xGWG1" />
        <child id="4453020072188806447" name="parameterValues" index="2xGWG6" />
      </concept>
      <concept id="5373338300158985562" name="de.q60.mps.shadowmodels.transformation.structure.LocalLabel" flags="ng" index="2OqUJG">
        <child id="5373338300158985572" name="node" index="2OqUJi" />
      </concept>
      <concept id="5373338300159158247" name="de.q60.mps.shadowmodels.transformation.structure.LocalLabelReference" flags="ng" index="2Org_h">
        <reference id="5373338300159158248" name="label" index="2Org_u" />
      </concept>
      <concept id="5373338300159315830" name="de.q60.mps.shadowmodels.transformation.structure.EmptyLine" flags="ng" index="2OrE70" />
      <concept id="5373338300165862249" name="de.q60.mps.shadowmodels.transformation.structure.MapMacro" flags="ng" index="2PWHRv">
        <child id="5373338300165862254" name="call" index="2PWHRo" />
        <child id="5373338300165862252" name="input" index="2PWHRq" />
      </concept>
      <concept id="4225291329826005067" name="de.q60.mps.shadowmodels.transformation.structure.TStringType" flags="ig" index="38sA1o" />
      <concept id="7316581361273087769" name="de.q60.mps.shadowmodels.transformation.structure.ForkDeclaration" flags="ng" index="3lp93y">
        <child id="4453020072187189211" name="parameters" index="2xEDBM" />
        <child id="7316581361273089326" name="rootCall" index="3lp9Fl" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="02vhO" id="lpnKkY043f">
    <property role="TrG5h" value="EntityToJava" />
    <node concept="02vpq" id="lpnKkY043g" role="02uzr">
      <property role="TrG5h" value="entity2class" />
      <node concept="026TG" id="lpnKkY043I" role="026TK">
        <node concept="027og" id="lpnKkY043S" role="026TJ">
          <ref role="02LMe" to="tpee:fz12cDA" resolve="ClassConcept" />
          <node concept="027oh" id="lpnKkY044b" role="02LM9">
            <ref role="027oj" to="tpck:h0TrG11" resolve="name" />
            <node concept="2OqwBi" id="lpnKkY04db" role="027of">
              <node concept="214o7A" id="lpnKkY044u" role="2Oq$k0" />
              <node concept="3TrcHB" id="lpnKkY04oH" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="027rt" id="5npwda7DyjB" role="02LM9">
            <ref role="027rv" to="tpee:h9B3oxE" resolve="visibility" />
            <node concept="027og" id="5npwda7DyyN" role="027rp">
              <ref role="02LMe" to="tpee:gFTm1ZL" resolve="PublicVisibility" />
            </node>
          </node>
          <node concept="027rt" id="lpnKkY04rg" role="02LM9">
            <ref role="027rv" to="tpee:4EqhHTp4Mw3" resolve="member" />
            <node concept="2PWHRv" id="lpnKkY04R3" role="027rp">
              <node concept="2OqwBi" id="lpnKkY051W" role="2PWHRq">
                <node concept="214o7A" id="lpnKkY04Rj" role="2Oq$k0" />
                <node concept="3Tsc0h" id="lpnKkY05cl" role="2OqNvi">
                  <ref role="3TtcxE" to="walh:6Emz9elPXVm" resolve="properties" />
                </node>
              </node>
              <node concept="214gnc" id="lpnKkY05e$" role="2PWHRo">
                <ref role="1YEVMl" node="lpnKkY04uK" resolve="property2field" />
                <node concept="214o7A" id="lpnKkY05iJ" role="214sll" />
              </node>
            </node>
          </node>
          <node concept="027rt" id="lpnKkY0aGe" role="02LM9">
            <ref role="027rv" to="tpee:4EqhHTp4Mw3" resolve="member" />
            <node concept="2PWHRv" id="lpnKkY0aHS" role="027rp">
              <node concept="2OqwBi" id="lpnKkY0aQR" role="2PWHRq">
                <node concept="214o7A" id="lpnKkY0aI8" role="2Oq$k0" />
                <node concept="3Tsc0h" id="lpnKkY0bcp" role="2OqNvi">
                  <ref role="3TtcxE" to="walh:6Emz9elPXVm" resolve="properties" />
                </node>
              </node>
              <node concept="214gnc" id="lpnKkY0beC" role="2PWHRo">
                <ref role="1YEVMl" node="lpnKkY05ok" resolve="property2getter" />
                <node concept="214o7A" id="lpnKkY0bf9" role="214sll" />
              </node>
            </node>
          </node>
          <node concept="027rt" id="5npwda7FX5V" role="02LM9">
            <ref role="027rv" to="tpee:4EqhHTp4Mw3" resolve="member" />
            <node concept="2PWHRv" id="5npwda7FX5W" role="027rp">
              <node concept="2OqwBi" id="5npwda7FX5X" role="2PWHRq">
                <node concept="214o7A" id="5npwda7FX5Y" role="2Oq$k0" />
                <node concept="3Tsc0h" id="5npwda7FX5Z" role="2OqNvi">
                  <ref role="3TtcxE" to="walh:6Emz9elPXVm" resolve="properties" />
                </node>
              </node>
              <node concept="214gnc" id="5npwda7FX60" role="2PWHRo">
                <ref role="1YEVMl" node="5npwda7DuyR" resolve="property2setter" />
                <node concept="214o7A" id="5npwda7FX61" role="214sll" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="02i3K" id="lpnKkY043r" role="02i3f">
        <node concept="02i3D" id="lpnKkY043A" role="02i2B">
          <ref role="02i3$" to="walh:6Emz9elPWGY" resolve="Entity" />
        </node>
      </node>
    </node>
    <node concept="2OrE70" id="lpnKkY04s1" role="02uzr" />
    <node concept="02vpq" id="lpnKkY04uK" role="02uzr">
      <property role="TrG5h" value="property2field" />
      <node concept="026TG" id="lpnKkY04vN" role="026TK">
        <node concept="027og" id="lpnKkY04vX" role="026TJ">
          <ref role="02LMe" to="tpee:fz12cDC" resolve="FieldDeclaration" />
          <node concept="027oh" id="lpnKkY04wg" role="02LM9">
            <ref role="027oj" to="tpck:h0TrG11" resolve="name" />
            <node concept="2OqwBi" id="lpnKkY04Dg" role="027of">
              <node concept="214o7A" id="lpnKkY04wz" role="2Oq$k0" />
              <node concept="3TrcHB" id="lpnKkY04OM" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="027rt" id="5npwda7Dtxt" role="02LM9">
            <ref role="027rv" to="tpee:4VkOLwjf83e" resolve="type" />
            <node concept="BwxZp" id="5npwda7Dtyy" role="027rp">
              <ref role="2xGWG1" node="lpnKkY08$t" resolve="typeFork" />
              <node concept="2OqwBi" id="5npwda7DtOB" role="2xGWG6">
                <node concept="214o7A" id="5npwda7DtyC" role="2Oq$k0" />
                <node concept="3TrEf2" id="5npwda7DuaM" role="2OqNvi">
                  <ref role="3Tt5mk" to="walh:wa_gCmoqws" resolve="type" />
                </node>
              </node>
              <node concept="Xl_RD" id="5npwda7DumP" role="2xGWG6">
                <property role="Xl_RC" value="field" />
              </node>
            </node>
          </node>
          <node concept="027rt" id="5npwda7DxZJ" role="02LM9">
            <ref role="027rv" to="tpee:h9B3oxE" resolve="visibility" />
            <node concept="027og" id="5npwda7DyeN" role="027rp">
              <ref role="02LMe" to="tpee:gFTm6Wc" resolve="PrivateVisibility" />
            </node>
          </node>
        </node>
      </node>
      <node concept="02i3K" id="lpnKkY04vw" role="02i3f">
        <node concept="02i3D" id="lpnKkY04vF" role="02i2B">
          <ref role="02i3$" to="walh:6Emz9elPXSG" resolve="Property" />
        </node>
      </node>
    </node>
    <node concept="2OrE70" id="lpnKkY05lz" role="02uzr" />
    <node concept="02vpq" id="lpnKkY05ok" role="02uzr">
      <property role="TrG5h" value="property2getter" />
      <node concept="026TG" id="lpnKkY05qm" role="026TK">
        <node concept="027og" id="lpnKkY05qw" role="026TJ">
          <ref role="02LMe" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
          <node concept="027oh" id="lpnKkY05qN" role="02LM9">
            <ref role="027oj" to="tpck:h0TrG11" resolve="name" />
            <node concept="2YIFZM" id="lpnKkY05t8" role="027of">
              <ref role="37wK5l" to="18ew:~NameUtil.getGetterName(java.lang.String)" resolve="getGetterName" />
              <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
              <node concept="2OqwBi" id="lpnKkY05C4" role="37wK5m">
                <node concept="214o7A" id="lpnKkY05to" role="2Oq$k0" />
                <node concept="3TrcHB" id="lpnKkY05NA" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="027rt" id="5npwda7DxFP" role="02LM9">
            <ref role="027rv" to="tpee:h9B3oxE" resolve="visibility" />
            <node concept="027og" id="5npwda7DxV3" role="027rp">
              <ref role="02LMe" to="tpee:gFTm1ZL" resolve="PublicVisibility" />
            </node>
          </node>
          <node concept="027rt" id="lpnKkY05Qw" role="02LM9">
            <ref role="027rv" to="tpee:fzclF7X" resolve="returnType" />
            <node concept="BwxZp" id="lpnKkY093o" role="027rp">
              <ref role="2xGWG1" node="lpnKkY08$t" resolve="typeFork" />
              <node concept="2OqwBi" id="lpnKkY09xQ" role="2xGWG6">
                <node concept="214o7A" id="lpnKkY09l2" role="2Oq$k0" />
                <node concept="3TrEf2" id="lpnKkY09TH" role="2OqNvi">
                  <ref role="3Tt5mk" to="walh:wa_gCmoqws" resolve="type" />
                </node>
              </node>
              <node concept="Xl_RD" id="lpnKkY0a58" role="2xGWG6">
                <property role="Xl_RC" value="getter" />
              </node>
            </node>
          </node>
          <node concept="027rt" id="lpnKkY0apb" role="02LM9">
            <ref role="027rv" to="tpee:fzclF7Z" resolve="body" />
            <node concept="027og" id="lpnKkY0ay_" role="027rp">
              <ref role="02LMe" to="tpee:fzclF80" resolve="StatementList" />
              <node concept="027rt" id="lpnKkY0ayK" role="02LM9">
                <ref role="027rv" to="tpee:fzcqZ_x" resolve="statement" />
                <node concept="027og" id="lpnKkY0ayS" role="027rp">
                  <ref role="02LMe" to="tpee:fzcpWvY" resolve="ReturnStatement" />
                  <node concept="027rt" id="lpnKkY0az3" role="02LM9">
                    <ref role="027rv" to="tpee:fzcqZ_G" resolve="expression" />
                    <node concept="027og" id="lpnKkY0azb" role="027rp">
                      <ref role="02LMe" to="tpee:fz7vLUo" resolve="VariableReference" />
                      <node concept="027ru" id="lpnKkY0azm" role="02LM9">
                        <ref role="027ri" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
                        <node concept="214gnc" id="lpnKkY0azu" role="027rd">
                          <ref role="1YEVMl" node="lpnKkY04uK" resolve="property2field" />
                          <node concept="214o7A" id="lpnKkY0az$" role="214sll" />
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
      <node concept="02i3K" id="lpnKkY05q3" role="02i3f">
        <node concept="02i3D" id="lpnKkY05qe" role="02i2B">
          <ref role="02i3$" to="walh:6Emz9elPXSG" resolve="Property" />
        </node>
      </node>
    </node>
    <node concept="2OrE70" id="5npwda7DuOM" role="02uzr" />
    <node concept="02vpq" id="5npwda7DuyR" role="02uzr">
      <property role="TrG5h" value="property2setter" />
      <node concept="026TG" id="5npwda7DuyS" role="026TK">
        <node concept="027og" id="5npwda7DuyT" role="026TJ">
          <ref role="02LMe" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
          <node concept="027oh" id="5npwda7DuyU" role="02LM9">
            <ref role="027oj" to="tpck:h0TrG11" resolve="name" />
            <node concept="2YIFZM" id="5npwda7GMpC" role="027of">
              <ref role="37wK5l" to="18ew:~NameUtil.getSetterName(java.lang.String)" resolve="getSetterName" />
              <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
              <node concept="2OqwBi" id="5npwda7GMpD" role="37wK5m">
                <node concept="214o7A" id="5npwda7GMpE" role="2Oq$k0" />
                <node concept="3TrcHB" id="5npwda7GMpF" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="027rt" id="5npwda7DvrQ" role="02LM9">
            <ref role="027rv" to="tpee:fzclF7Y" resolve="parameter" />
            <node concept="2OqUJG" id="5npwda7DvxO" role="027rp">
              <property role="TrG5h" value="param" />
              <node concept="027og" id="5npwda7Dvx1" role="2OqUJi">
                <ref role="02LMe" to="tpee:fz7vLUk" resolve="ParameterDeclaration" />
                <node concept="027oh" id="5npwda7Dvxc" role="02LM9">
                  <ref role="027oj" to="tpck:h0TrG11" resolve="name" />
                  <node concept="Xl_RD" id="5npwda7Dvxr" role="027of">
                    <property role="Xl_RC" value="newValue" />
                  </node>
                </node>
                <node concept="027rt" id="5npwda7Dvyu" role="02LM9">
                  <ref role="027rv" to="tpee:4VkOLwjf83e" resolve="type" />
                  <node concept="BwxZp" id="5npwda7DvyE" role="027rp">
                    <ref role="2xGWG1" node="lpnKkY08$t" resolve="typeFork" />
                    <node concept="2OqwBi" id="5npwda7DvyF" role="2xGWG6">
                      <node concept="214o7A" id="5npwda7DvyG" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5npwda7DvyH" role="2OqNvi">
                        <ref role="3Tt5mk" to="walh:wa_gCmoqws" resolve="type" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="5npwda7DvyI" role="2xGWG6">
                      <property role="Xl_RC" value="setter" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="027rt" id="5npwda7Dxnc" role="02LM9">
            <ref role="027rv" to="tpee:h9B3oxE" resolve="visibility" />
            <node concept="027og" id="5npwda7Dxs$" role="027rp">
              <ref role="02LMe" to="tpee:gFTm1ZL" resolve="PublicVisibility" />
            </node>
          </node>
          <node concept="027rt" id="5npwda7Dx20" role="02LM9">
            <ref role="027rv" to="tpee:fzclF7X" resolve="returnType" />
            <node concept="027og" id="5npwda7DxdU" role="027rp">
              <ref role="02LMe" to="tpee:fzcqZ_H" resolve="VoidType" />
            </node>
          </node>
          <node concept="027rt" id="5npwda7Duz5" role="02LM9">
            <ref role="027rv" to="tpee:fzclF7Z" resolve="body" />
            <node concept="027og" id="5npwda7Duz6" role="027rp">
              <ref role="02LMe" to="tpee:fzclF80" resolve="StatementList" />
              <node concept="027rt" id="5npwda7Duz7" role="02LM9">
                <ref role="027rv" to="tpee:fzcqZ_x" resolve="statement" />
                <node concept="027og" id="5npwda7Dw3I" role="027rp">
                  <ref role="02LMe" to="tpee:fzclF8j" resolve="ExpressionStatement" />
                  <node concept="027rt" id="5npwda7Dwat" role="02LM9">
                    <ref role="027rv" to="tpee:fzclF8k" resolve="expression" />
                    <node concept="027og" id="5npwda7Dwa_" role="027rp">
                      <ref role="02LMe" to="tpee:fz7vLUm" resolve="AssignmentExpression" />
                      <node concept="027rt" id="5npwda7DwaK" role="02LM9">
                        <ref role="027rv" to="tpee:fz7vLUn" resolve="lValue" />
                        <node concept="027og" id="5npwda7Duza" role="027rp">
                          <ref role="02LMe" to="tpee:fz7vLUo" resolve="VariableReference" />
                          <node concept="027ru" id="5npwda7Duzb" role="02LM9">
                            <ref role="027ri" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
                            <node concept="214gnc" id="5npwda7Duzc" role="027rd">
                              <ref role="1YEVMl" node="lpnKkY04uK" resolve="property2field" />
                              <node concept="214o7A" id="5npwda7Duzd" role="214sll" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="027rt" id="5npwda7Dwq5" role="02LM9">
                        <ref role="027rv" to="tpee:fz7vLUp" resolve="rValue" />
                        <node concept="027og" id="5npwda7DwuG" role="027rp">
                          <ref role="02LMe" to="tpee:fz7vLUo" resolve="VariableReference" />
                          <node concept="027ru" id="5npwda7DwuH" role="02LM9">
                            <ref role="027ri" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
                            <node concept="2Org_h" id="5npwda7DwHP" role="027rd">
                              <ref role="2Org_u" node="5npwda7DvxO" resolve="param" />
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
      <node concept="02i3K" id="5npwda7Duze" role="02i3f">
        <node concept="02i3D" id="5npwda7Duzf" role="02i2B">
          <ref role="02i3$" to="walh:6Emz9elPXSG" resolve="Property" />
        </node>
      </node>
    </node>
    <node concept="2OrE70" id="lpnKkY05T4" role="02uzr" />
    <node concept="3lp93y" id="lpnKkY08$t" role="02uzr">
      <property role="TrG5h" value="typeFork" />
      <node concept="2xCcYw" id="lpnKkY08Cc" role="2xEDBM">
        <property role="TrG5h" value="type" />
        <node concept="02i3D" id="lpnKkY08CW" role="2xCcKX">
          <ref role="02i3$" to="walh:wa_gCmoqm6" resolve="Type" />
        </node>
      </node>
      <node concept="2xCcYw" id="lpnKkY08D4" role="2xEDBM">
        <property role="TrG5h" value="location" />
        <node concept="38sA1o" id="lpnKkY08PZ" role="2xCcKX" />
      </node>
      <node concept="214gnc" id="lpnKkY08CO" role="3lp9Fl">
        <ref role="1YEVMl" node="lpnKkY05YO" resolve="type" />
        <node concept="2xCdEf" id="lpnKkY08Qw" role="214sll">
          <ref role="2xCdFh" node="lpnKkY08Cc" resolve="type" />
        </node>
      </node>
    </node>
    <node concept="2OrE70" id="lpnKkY08qG" role="02uzr" />
    <node concept="02vpq" id="lpnKkY05YO" role="02uzr">
      <property role="TrG5h" value="type" />
      <node concept="026TG" id="lpnKkY0618" role="026TK">
        <node concept="027og" id="lpnKkY061i" role="026TJ">
          <ref role="02LMe" to="tpee:fz3vP1H" resolve="Type" />
        </node>
      </node>
      <node concept="02i3K" id="lpnKkY060P" role="02i3f">
        <node concept="02i3D" id="lpnKkY0610" role="02i2B">
          <ref role="02i3$" to="walh:wa_gCmoqm6" resolve="Type" />
        </node>
      </node>
    </node>
    <node concept="2OrE70" id="lpnKkY061E" role="02uzr" />
    <node concept="02vpq" id="lpnKkY069D" role="02uzr">
      <ref role="1YyVLo" node="lpnKkY05YO" resolve="type" />
      <node concept="02i3K" id="lpnKkY06bE" role="02i3f">
        <node concept="02i3D" id="lpnKkY06dl" role="02i2B">
          <ref role="02i3$" to="walh:wa_gCmoqpv" resolve="StringType" />
        </node>
      </node>
      <node concept="026TG" id="lpnKkY06bG" role="026TK">
        <node concept="027og" id="lpnKkY06eY" role="026TJ">
          <ref role="02LMe" to="tpee:hP7QB7G" resolve="StringType" />
        </node>
      </node>
    </node>
    <node concept="2OrE70" id="lpnKkY06hL" role="02uzr" />
    <node concept="02vpq" id="lpnKkY06pV" role="02uzr">
      <ref role="1YyVLo" node="lpnKkY05YO" resolve="type" />
      <node concept="02i3K" id="lpnKkY06u6" role="02i3f">
        <node concept="02i3D" id="lpnKkY06vL" role="02i2B">
          <ref role="02i3$" to="walh:wa_gCmoEdW" resolve="EntityType" />
        </node>
      </node>
      <node concept="026TG" id="lpnKkY06u8" role="026TK">
        <node concept="027og" id="lpnKkY06zU" role="026TJ">
          <ref role="02LMe" to="tpee:g7uibYu" resolve="ClassifierType" />
          <node concept="027ru" id="lpnKkY06ET" role="02LM9">
            <ref role="027ri" to="tpee:g7uigIF" resolve="classifier" />
            <node concept="214gnc" id="lpnKkY06N4" role="027rd">
              <ref role="1YEVMl" node="lpnKkY043g" resolve="entity2class" />
              <node concept="2OqwBi" id="lpnKkY072P" role="214sll">
                <node concept="214o7A" id="lpnKkY06Na" role="2Oq$k0" />
                <node concept="3TrEf2" id="lpnKkY07ej" role="2OqNvi">
                  <ref role="3Tt5mk" to="walh:wa_gCmoEhl" resolve="entity" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2OrE70" id="lpnKkY06s2" role="02uzr" />
  </node>
</model>

