<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d0783334-7096-4e48-8bbe-f220770f23d8(de.q60.mps.web.ui.sm.util)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="5b0" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.presentation(MPS.Core/)" />
    <import index="ykok" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.constraints(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1181949435690" name="jetbrains.mps.lang.smodel.structure.Concept_NewInstance" flags="nn" index="LFhST" />
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="7tcNvKIqK30">
    <property role="TrG5h" value="ConstraintsUtil" />
    <node concept="2YIFZL" id="1gQHfgGXJro" role="jymVt">
      <property role="TrG5h" value="isValidPropertyValue" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="1gQHfgGXDvf" role="3clF47">
        <node concept="3clFbF" id="7tcNvKIw_Rj" role="3cqZAp">
          <node concept="1rXfSq" id="7tcNvKIw_Ri" role="3clFbG">
            <ref role="37wK5l" node="7tcNvKIw_jB" resolve="isValidPropertyValue" />
            <node concept="37vLTw" id="7tcNvKIw_Tu" role="37wK5m">
              <ref role="3cqZAo" node="1gQHfgGXGiM" resolve="property" />
            </node>
            <node concept="2OqwBi" id="7tcNvKIwA9W" role="37wK5m">
              <node concept="37vLTw" id="7tcNvKIw_WD" role="2Oq$k0">
                <ref role="3cqZAo" node="3pFNViztWkK" resolve="concept" />
              </node>
              <node concept="LFhST" id="7tcNvKIwAnm" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="7tcNvKIwAxh" role="37wK5m">
              <ref role="3cqZAo" node="1gQHfgGXGnC" resolve="value" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1gQHfgGXGiM" role="3clF46">
        <property role="TrG5h" value="property" />
        <node concept="3uibUv" id="1gQHfgGXGmK" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
        </node>
      </node>
      <node concept="37vLTG" id="3pFNViztWkK" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="3pFNVizu0OE" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1gQHfgGXGnC" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="1gQHfgGXGrE" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="1gQHfgGXJgw" role="3clF45" />
      <node concept="3Tm1VV" id="1gQHfgGXDve" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7tcNvKIw_ro" role="jymVt" />
    <node concept="2YIFZL" id="7tcNvKIw_jB" role="jymVt">
      <property role="TrG5h" value="isValidPropertyValue" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="7tcNvKIw_jC" role="3clF47">
        <node concept="3cpWs8" id="7tcNvKIw_jD" role="3cqZAp">
          <node concept="3cpWsn" id="7tcNvKIw_jE" role="3cpWs9">
            <property role="TrG5h" value="internalValue" />
            <node concept="3uibUv" id="7tcNvKIw_jF" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
            <node concept="2OqwBi" id="7tcNvKIw_jG" role="33vP2m">
              <node concept="2YIFZM" id="7tcNvKIw_jH" role="2Oq$k0">
                <ref role="37wK5l" to="5b0:~IPropertyPresentationProvider.getPresentationProviderFor(org.jetbrains.mps.openapi.language.SProperty)" resolve="getPresentationProviderFor" />
                <ref role="1Pybhc" to="5b0:~IPropertyPresentationProvider" resolve="IPropertyPresentationProvider" />
                <node concept="37vLTw" id="7tcNvKIw_jI" role="37wK5m">
                  <ref role="3cqZAo" node="7tcNvKIw_jX" resolve="property" />
                </node>
              </node>
              <node concept="liA8E" id="7tcNvKIw_jJ" role="2OqNvi">
                <ref role="37wK5l" to="5b0:~IPropertyPresentationProvider.fromPresentation(java.lang.String)" resolve="fromPresentation" />
                <node concept="37vLTw" id="7tcNvKIw_jK" role="37wK5m">
                  <ref role="3cqZAo" node="7tcNvKIw_k1" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7tcNvKIw_jR" role="3cqZAp">
          <node concept="2YIFZM" id="7tcNvKIw_jS" role="3clFbG">
            <ref role="37wK5l" to="ykok:~ModelConstraints.validatePropertyValue(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SProperty,java.lang.Object,jetbrains.mps.smodel.runtime.CheckingNodeContext)" resolve="validatePropertyValue" />
            <ref role="1Pybhc" to="ykok:~ModelConstraints" resolve="ModelConstraints" />
            <node concept="37vLTw" id="7tcNvKIw_Kf" role="37wK5m">
              <ref role="3cqZAo" node="7tcNvKIw_jZ" resolve="node" />
            </node>
            <node concept="37vLTw" id="7tcNvKIw_jU" role="37wK5m">
              <ref role="3cqZAo" node="7tcNvKIw_jX" resolve="property" />
            </node>
            <node concept="37vLTw" id="7tcNvKIw_jV" role="37wK5m">
              <ref role="3cqZAo" node="7tcNvKIw_jE" resolve="internalValue" />
            </node>
            <node concept="10Nm6u" id="7tcNvKIw_jW" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7tcNvKIw_jX" role="3clF46">
        <property role="TrG5h" value="property" />
        <node concept="3uibUv" id="7tcNvKIw_jY" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
        </node>
      </node>
      <node concept="37vLTG" id="7tcNvKIw_jZ" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7tcNvKIw_vN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7tcNvKIw_k1" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="7tcNvKIw_k2" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="7tcNvKIw_k3" role="3clF45" />
      <node concept="3Tm1VV" id="7tcNvKIw_k4" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7tcNvKIqK3_" role="jymVt" />
    <node concept="3Tm1VV" id="7tcNvKIqK31" role="1B3o_S" />
  </node>
</model>

