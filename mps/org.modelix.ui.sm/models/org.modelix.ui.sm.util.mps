<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d0783334-7096-4e48-8bbe-f220770f23d8(org.modelix.ui.sm.util)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="18" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="5b0" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.presentation(MPS.Core/)" />
    <import index="ykok" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.constraints(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="qsto" ref="r:6f19a603-f6b1-4c78-aaa5-6c24c7fbc333(org.modelix.ui.common)" />
    <import index="jks5" ref="cc99dce1-49f3-4392-8dbf-e22ca47bd0af/java:org.modelix.model.api(org.modelix.model.api/)" />
    <import index="xxte" ref="r:a79f28f8-6055-40c6-bc5e-47a42a3b97e8(org.modelix.model.mpsadapters.mps)" />
    <import index="j481" ref="r:b20089df-f3d6-4bf7-8b24-9a8e9c01d887(org.modelix.ui.sm.structure)" />
    <import index="fnup" ref="r:c0f62029-94d5-495d-b498-eb090ba537fc(org.modelix.ui.state.structure)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="nv3w" ref="r:18e93978-2322-49a8-aaab-61c6faf67e2a(de.q60.mps.shadowmodels.runtime.engine)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
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
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
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
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
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
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1181949435690" name="jetbrains.mps.lang.smodel.structure.Concept_NewInstance" flags="nn" index="LFhST" />
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
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
  <node concept="312cEu" id="3xm_oe3kiUR">
    <property role="TrG5h" value="ViewerStateUtil" />
    <node concept="2YIFZL" id="3xm_oe3kkVo" role="jymVt">
      <property role="TrG5h" value="getViewerState" />
      <node concept="3clFbS" id="3xm_oe3kj0g" role="3clF47">
        <node concept="3cpWs8" id="6nnW$cPv18v" role="3cqZAp">
          <node concept="3cpWsn" id="6nnW$cPv18w" role="3cpWs9">
            <property role="TrG5h" value="rootNodeRef" />
            <node concept="17QB3L" id="6nnW$cPv14O" role="1tU5fm" />
            <node concept="2YIFZM" id="6nnW$cPv18x" role="33vP2m">
              <ref role="1Pybhc" to="qsto:5T6M7ON4Si7" resolve="NodeReferenceSerializer" />
              <ref role="37wK5l" to="qsto:7$7_4Zibt2h" resolve="serialize" />
              <node concept="2OqwBi" id="76u1raAn4jG" role="37wK5m">
                <node concept="2YIFZM" id="76u1raAn3SI" role="2Oq$k0">
                  <ref role="37wK5l" to="jks5:~NodeUtilKt.deepUnwrapNode(org.modelix.model.api.INode)" resolve="deepUnwrapNode" />
                  <ref role="1Pybhc" to="jks5:~NodeUtilKt" resolve="NodeUtilKt" />
                  <node concept="2YIFZM" id="76u1raAn2Oh" role="37wK5m">
                    <ref role="37wK5l" to="xxte:5gTrVpGyMwR" resolve="wrap" />
                    <ref role="1Pybhc" to="xxte:5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                    <node concept="37vLTw" id="76u1raAn35S" role="37wK5m">
                      <ref role="3cqZAo" node="3xm_oe3kjcL" resolve="rootNode" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="76u1raAn4H7" role="2OqNvi">
                  <ref role="37wK5l" to="jks5:~INode.getReference()" resolve="getReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3xm_oe3kkga" role="3cqZAp">
          <node concept="3cpWsn" id="3xm_oe3kkgb" role="3cpWs9">
            <property role="TrG5h" value="viewerState" />
            <node concept="3Tqbb2" id="3xm_oe3kkgc" role="1tU5fm">
              <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
            </node>
            <node concept="2OqwBi" id="3xm_oe3kkgd" role="33vP2m">
              <node concept="2OqwBi" id="3xm_oe3kkge" role="2Oq$k0">
                <node concept="37vLTw" id="3xm_oe3kkgf" role="2Oq$k0">
                  <ref role="3cqZAo" node="3xm_oe3kj1K" resolve="session" />
                </node>
                <node concept="3Tsc0h" id="3xm_oe3kkgg" role="2OqNvi">
                  <ref role="3TtcxE" to="fnup:6gw1ikeUpjH" resolve="smViewerStates" />
                </node>
              </node>
              <node concept="1z4cxt" id="3xm_oe3kkgh" role="2OqNvi">
                <node concept="1bVj0M" id="3xm_oe3kkgi" role="23t8la">
                  <node concept="3clFbS" id="3xm_oe3kkgj" role="1bW5cS">
                    <node concept="3clFbF" id="3xm_oe3kkgk" role="3cqZAp">
                      <node concept="1Wc70l" id="3xm_oe3kkgl" role="3clFbG">
                        <node concept="17R0WA" id="3xm_oe3kkgm" role="3uHU7w">
                          <node concept="37vLTw" id="6nnW$cPv284" role="3uHU7w">
                            <ref role="3cqZAo" node="6nnW$cPv18w" resolve="rootNodeRef" />
                          </node>
                          <node concept="2OqwBi" id="3xm_oe3kkgp" role="3uHU7B">
                            <node concept="37vLTw" id="3xm_oe3kkgq" role="2Oq$k0">
                              <ref role="3cqZAo" node="3xm_oe3kkgD" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="3xm_oe3kkgr" role="2OqNvi">
                              <ref role="3TsBF5" to="j481:6rcGC6Eym_P" resolve="rootNodeRef" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="3xm_oe3kkg$" role="3uHU7B">
                          <node concept="2OqwBi" id="3xm_oe3kkg_" role="2Oq$k0">
                            <node concept="37vLTw" id="3xm_oe3kkgA" role="2Oq$k0">
                              <ref role="3cqZAo" node="3xm_oe3kkgD" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="3xm_oe3kkgB" role="2OqNvi">
                              <ref role="3TsBF5" to="j481:6rcGC6Eym_P" resolve="rootNodeRef" />
                            </node>
                          </node>
                          <node concept="17RvpY" id="3xm_oe3kkgC" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3xm_oe3kkgD" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3xm_oe3kkgE" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3xm_oe3kkgF" role="3cqZAp">
          <node concept="3clFbS" id="3xm_oe3kkgG" role="3clFbx">
            <node concept="3clFbF" id="3xm_oe3kkgH" role="3cqZAp">
              <node concept="37vLTI" id="3xm_oe3kkgI" role="3clFbG">
                <node concept="37vLTw" id="3xm_oe3kkgJ" role="37vLTJ">
                  <ref role="3cqZAo" node="3xm_oe3kkgb" resolve="viewerState" />
                </node>
                <node concept="1PxgMI" id="3xm_oe3kkgK" role="37vLTx">
                  <node concept="chp4Y" id="3xm_oe3kkgL" role="3oSUPX">
                    <ref role="cht4Q" to="j481:AkkmJBMaEy" resolve="ViewerState" />
                  </node>
                  <node concept="2YIFZM" id="3xm_oe3kkgM" role="1m5AlR">
                    <ref role="37wK5l" to="xxte:30TKBrMe2kz" resolve="addNewChild" />
                    <ref role="1Pybhc" to="xxte:30TKBrMa5zj" resolve="SNodeAPI" />
                    <node concept="37vLTw" id="3xm_oe3kkgN" role="37wK5m">
                      <ref role="3cqZAo" node="3xm_oe3kj1K" resolve="session" />
                    </node>
                    <node concept="359W_D" id="3xm_oe3kkgO" role="37wK5m">
                      <ref role="359W_E" to="fnup:4bjL$lUedD6" resolve="UserSession" />
                      <ref role="359W_F" to="fnup:6gw1ikeUpjH" resolve="smViewerStates" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3xm_oe3kkgP" role="3cqZAp">
              <node concept="37vLTI" id="3xm_oe3kkgQ" role="3clFbG">
                <node concept="37vLTw" id="3zRodHlT_5X" role="37vLTx">
                  <ref role="3cqZAo" node="6nnW$cPv18w" resolve="rootNodeRef" />
                </node>
                <node concept="2OqwBi" id="3xm_oe3kkgV" role="37vLTJ">
                  <node concept="37vLTw" id="3xm_oe3kkgW" role="2Oq$k0">
                    <ref role="3cqZAo" node="3xm_oe3kkgb" resolve="viewerState" />
                  </node>
                  <node concept="3TrcHB" id="3xm_oe3kkgX" role="2OqNvi">
                    <ref role="3TsBF5" to="j481:6rcGC6Eym_P" resolve="rootNodeRef" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="3xm_oe3lXUy" role="3clFbw">
            <node concept="37vLTw" id="3xm_oe3lY9j" role="3uHU7w">
              <ref role="3cqZAo" node="3xm_oe3lXI8" resolve="createIfMissing" />
            </node>
            <node concept="3clFbC" id="3xm_oe3kkgY" role="3uHU7B">
              <node concept="37vLTw" id="3xm_oe3kkh0" role="3uHU7B">
                <ref role="3cqZAo" node="3xm_oe3kkgb" resolve="viewerState" />
              </node>
              <node concept="10Nm6u" id="3xm_oe3kkgZ" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3xm_oe3koUC" role="3cqZAp">
          <node concept="37vLTw" id="3xm_oe3kpqI" role="3cqZAk">
            <ref role="3cqZAo" node="3xm_oe3kkgb" resolve="viewerState" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3xm_oe3lXI8" role="3clF46">
        <property role="TrG5h" value="createIfMissing" />
        <node concept="10P_77" id="3xm_oe3lXPe" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3xm_oe3kj1K" role="3clF46">
        <property role="TrG5h" value="session" />
        <node concept="3Tqbb2" id="3xm_oe3kjbq" role="1tU5fm">
          <ref role="ehGHo" to="fnup:4bjL$lUedD6" resolve="UserSession" />
        </node>
        <node concept="2AHcQZ" id="5qyKc0MdLcl" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="3xm_oe3kjcL" role="3clF46">
        <property role="TrG5h" value="rootNode" />
        <node concept="3Tqbb2" id="3xm_oe3kjmx" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3xm_oe3kmcj" role="3clF46">
        <property role="TrG5h" value="engine" />
        <node concept="3uibUv" id="3xm_oe3kmO4" role="1tU5fm">
          <ref role="3uigEE" to="nv3w:5gTrVpGiJ4w" resolve="ITransformationEngine" />
        </node>
      </node>
      <node concept="3Tqbb2" id="3xm_oe3kjx1" role="3clF45">
        <ref role="ehGHo" to="j481:AkkmJBMaEy" resolve="ViewerState" />
      </node>
      <node concept="3Tm1VV" id="3xm_oe3kj0f" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="3xm_oe3kiUS" role="1B3o_S" />
  </node>
</model>

