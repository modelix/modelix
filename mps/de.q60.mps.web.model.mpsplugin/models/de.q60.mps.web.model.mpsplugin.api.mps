<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4ee1d66b-2b61-404e-8b2c-dbe476c81318(de.q60.mps.web.model.mpsplugin.api)">
  <persistence version="9" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="3hky" ref="r:bef1bfa7-20fd-413a-ae11-793b0a8ee364(de.q60.mps.shadowmodels.runtime.model.persistent)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="wa_gCmq11d">
    <property role="TrG5h" value="CloudModels" />
    <node concept="2YIFZL" id="wa_gCmqse_" role="jymVt">
      <property role="TrG5h" value="resolve" />
      <node concept="3clFbS" id="wa_gCmqs29" role="3clF47">
        <node concept="YS8fn" id="wa_gCmrmbi" role="3cqZAp">
          <node concept="2ShNRf" id="wa_gCmrmmm" role="YScLw">
            <node concept="1pGfFk" id="wa_gCmrEVa" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="wa_gCmrF6d" role="37wK5m">
                <property role="Xl_RC" value="Not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="wa_gCmqs2N" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="wa_gCmqs8k" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="wa_gCmsyCq" role="3clF45">
        <ref role="3uigEE" node="wa_gCmsywQ" resolve="ICloudModel" />
      </node>
      <node concept="3Tm1VV" id="wa_gCmqs28" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="wa_gCmq11e" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="wa_gCmsywQ">
    <property role="TrG5h" value="ICloudModel" />
    <node concept="3clFb_" id="wa_gCmsyAT" role="jymVt">
      <property role="TrG5h" value="getId" />
      <node concept="17QB3L" id="wa_gCmsyC4" role="3clF45" />
      <node concept="3Tm1VV" id="wa_gCmsyAW" role="1B3o_S" />
      <node concept="3clFbS" id="wa_gCmsyAX" role="3clF47" />
    </node>
    <node concept="3clFb_" id="wa_gCmsy_c" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="17QB3L" id="wa_gCmsyAg" role="3clF45" />
      <node concept="3Tm1VV" id="wa_gCmsy_f" role="1B3o_S" />
      <node concept="3clFbS" id="wa_gCmsy_g" role="3clF47" />
    </node>
    <node concept="3clFb_" id="wa_gCmsyyq" role="jymVt">
      <property role="TrG5h" value="getMasterBranch" />
      <node concept="3uibUv" id="wa_gCmsy$C" role="3clF45">
        <ref role="3uigEE" to="3hky:4_SQzDO0jT3" resolve="IBranch" />
      </node>
      <node concept="3Tm1VV" id="wa_gCmsyyt" role="1B3o_S" />
      <node concept="3clFbS" id="wa_gCmsyyu" role="3clF47" />
    </node>
    <node concept="3clFb_" id="wa_gCms_U$" role="jymVt">
      <property role="TrG5h" value="getBranch" />
      <node concept="37vLTG" id="wa_gCms_Vm" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="wa_gCms_VK" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="wa_gCms_U_" role="3clF45">
        <ref role="3uigEE" to="3hky:4_SQzDO0jT3" resolve="IBranch" />
      </node>
      <node concept="3Tm1VV" id="wa_gCms_UA" role="1B3o_S" />
      <node concept="3clFbS" id="wa_gCms_UB" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="wa_gCmsywR" role="1B3o_S" />
  </node>
</model>

