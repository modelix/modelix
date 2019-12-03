<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:39a0a32d-2998-4707-ad0b-56cb161ac7ea(main@generator)">
  <persistence version="9" />
  <languages>
    <use id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal" version="0" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="79yt" ref="r:ded575ba-957a-4f7f-89f0-d9fc02ad1b0c(de.q60.mps.web.aspect.structure)" />
    <import index="csg2" ref="r:b0cc4f86-cf49-4ffc-b138-1f9973329ce1(de.q60.mps.web.model.mpsplugin)" />
    <import index="37q1" ref="r:4ee1d66b-2b61-404e-8b2c-dbe476c81318(de.q60.mps.web.model.mpsplugin.api)" />
    <import index="4dhu" ref="r:17a7af0b-7a93-4688-b13e-195872d8e289(de.q60.mps.web.aspect.behavior)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1173995204289" name="jetbrains.mps.baseLanguageInternal.structure.InternalStaticFieldReference" flags="nn" index="1n$iZg">
        <property id="1173995448817" name="fqClassName" index="1n_ezw" />
        <property id="1173995466678" name="fieldName" index="1n_iUB" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="wa_gCmoNEp">
    <property role="TrG5h" value="main" />
    <node concept="3aamgX" id="wa_gCmq0Wz" role="3acgRq">
      <ref role="30HIoZ" to="79yt:wa_gCmpVKR" resolve="CloudModelExpression" />
      <node concept="gft3U" id="wa_gCmqsuR" role="1lVwrX">
        <node concept="2YIFZM" id="wa_gCmqswR" role="gfFT$">
          <ref role="1Pybhc" to="37q1:wa_gCmq11d" resolve="CloudModels" />
          <ref role="37wK5l" to="37q1:wa_gCmqse_" resolve="resolve" />
          <node concept="1n$iZg" id="wa_gCmquii" role="37wK5m">
            <property role="1n_iUB" value="ID" />
            <property role="1n_ezw" value="C" />
            <node concept="17Uvod" id="wa_gCmqum2" role="lGtFl">
              <property role="2qtEX9" value="fqClassName" />
              <property role="P4ACc" value="df345b11-b8c7-4213-ac66-48d2a9b75d88/1173995204289/1173995448817" />
              <node concept="3zFVjK" id="wa_gCmqum3" role="3zH0cK">
                <node concept="3clFbS" id="wa_gCmqum4" role="2VODD2">
                  <node concept="3clFbF" id="wa_gCmquqS" role="3cqZAp">
                    <node concept="2OqwBi" id="wa_gCmqvb3" role="3clFbG">
                      <node concept="2OqwBi" id="wa_gCmquBY" role="2Oq$k0">
                        <node concept="30H73N" id="wa_gCmquqR" role="2Oq$k0" />
                        <node concept="3TrEf2" id="wa_gCmquME" role="2OqNvi">
                          <ref role="3Tt5mk" to="79yt:wa_gCmpVNW" resolve="definition" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="wa_gCmqvoZ" role="2OqNvi">
                        <ref role="37wK5l" to="4dhu:wa_gCmpXAy" resolve="generatedFqClassName" />
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
    <node concept="3lhOvk" id="wa_gCmpWoz" role="3lj3bC">
      <ref role="30HIoZ" to="79yt:wa_gCmoW26" resolve="CloudModelDefinition" />
      <ref role="3lhOvi" node="wa_gCmpWo_" resolve="map_CloudModelDefinition" />
    </node>
  </node>
  <node concept="312cEu" id="wa_gCmpWo_">
    <property role="TrG5h" value="map_CloudModelDefinition" />
    <node concept="Wx3nA" id="wa_gCmpZVB" role="jymVt">
      <property role="TrG5h" value="NAME" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="wa_gCmpZGc" role="1tU5fm" />
      <node concept="3Tm1VV" id="wa_gCmpZTz" role="1B3o_S" />
      <node concept="Xl_RD" id="wa_gCmpZTh" role="33vP2m">
        <property role="Xl_RC" value="" />
        <node concept="17Uvod" id="wa_gCmq08$" role="lGtFl">
          <property role="2qtEX9" value="value" />
          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
          <node concept="3zFVjK" id="wa_gCmq08_" role="3zH0cK">
            <node concept="3clFbS" id="wa_gCmq08A" role="2VODD2">
              <node concept="3clFbF" id="wa_gCmq09i" role="3cqZAp">
                <node concept="2OqwBi" id="wa_gCmq0mo" role="3clFbG">
                  <node concept="30H73N" id="wa_gCmq09h" role="2Oq$k0" />
                  <node concept="3TrcHB" id="6HlxtAUVFdA" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="wa_gCmq05h" role="jymVt">
      <property role="TrG5h" value="ID" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="wa_gCmpZSe" role="1tU5fm" />
      <node concept="3Tm1VV" id="wa_gCmpZVl" role="1B3o_S" />
      <node concept="Xl_RD" id="wa_gCmpZSN" role="33vP2m">
        <property role="Xl_RC" value="" />
        <node concept="17Uvod" id="wa_gCmq0FD" role="lGtFl">
          <property role="2qtEX9" value="value" />
          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
          <node concept="3zFVjK" id="wa_gCmq0FE" role="3zH0cK">
            <node concept="3clFbS" id="wa_gCmq0FF" role="2VODD2">
              <node concept="3clFbF" id="wa_gCmq0Gn" role="3cqZAp">
                <node concept="2OqwBi" id="wa_gCmq0GQ" role="3clFbG">
                  <node concept="30H73N" id="wa_gCmq0Gm" role="2Oq$k0" />
                  <node concept="2qgKlT" id="wa_gCmq0HR" role="2OqNvi">
                    <ref role="37wK5l" to="4dhu:wa_gCmppOO" resolve="getCloudModelId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="wa_gCmpWoA" role="1B3o_S" />
    <node concept="n94m4" id="wa_gCmpWoB" role="lGtFl">
      <ref role="n9lRv" to="79yt:wa_gCmoW26" resolve="CloudModelDefinition" />
    </node>
    <node concept="17Uvod" id="wa_gCmpZ47" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="wa_gCmpZ48" role="3zH0cK">
        <node concept="3clFbS" id="wa_gCmpZ49" role="2VODD2">
          <node concept="3clFbF" id="wa_gCmpZau" role="3cqZAp">
            <node concept="2OqwBi" id="wa_gCmpZn$" role="3clFbG">
              <node concept="30H73N" id="wa_gCmpZat" role="2Oq$k0" />
              <node concept="2qgKlT" id="wa_gCmpZAt" role="2OqNvi">
                <ref role="37wK5l" to="4dhu:wa_gCmpWYT" resolve="generatedClassName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

