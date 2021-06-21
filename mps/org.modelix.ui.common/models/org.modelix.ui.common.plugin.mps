<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cf2b3857-0988-4769-848c-82acdf397d77(org.modelix.ui.common.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="xkhl" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.lazy(org.modelix.model.client/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="jks5" ref="cc99dce1-49f3-4392-8dbf-e22ca47bd0af/java:org.modelix.model.api(org.modelix.model.api/)" />
    <import index="nv3w" ref="r:18e93978-2322-49a8-aaab-61c6faf67e2a(de.q60.mps.shadowmodels.runtime.engine)" />
    <import index="qsto" ref="r:6f19a603-f6b1-4c78-aaa5-6c24c7fbc333(org.modelix.ui.common)" />
    <import index="xxte" ref="r:a79f28f8-6055-40c6-bc5e-47a42a3b97e8(org.modelix.model.mpsadapters.mps)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="csg2" ref="r:b0cc4f86-cf49-4ffc-b138-1f9973329ce1(org.modelix.model.mpsplugin)" />
    <import index="qvpu" ref="cc99dce1-49f3-4392-8dbf-e22ca47bd0af/java:org.modelix.model.area(org.modelix.model.api/)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
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
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
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
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2DaZZR" id="3jJD6EACqvv" />
  <node concept="2uRRBC" id="3jJD6EACqvw">
    <property role="TrG5h" value="ApplicationPlugin" />
    <node concept="2uRRBj" id="3jJD6EACB_n" role="2uRRBE">
      <node concept="3clFbS" id="3jJD6EACB_o" role="2VODD2">
        <node concept="3clFbF" id="3QWa2a1DX6L" role="3cqZAp">
          <node concept="2OqwBi" id="3QWa2a1DXnM" role="3clFbG">
            <node concept="10M0yZ" id="3QWa2a1DXi7" role="2Oq$k0">
              <ref role="1PxDUh" to="xkhl:~INodeReferenceSerializer" resolve="INodeReferenceSerializer" />
              <ref role="3cqZAo" to="xkhl:~INodeReferenceSerializer.Companion" resolve="Companion" />
            </node>
            <node concept="liA8E" id="3QWa2a1DXxd" role="2OqNvi">
              <ref role="37wK5l" to="xkhl:~INodeReferenceSerializer$Companion.register(org.modelix.model.lazy.INodeReferenceSerializer)" resolve="register" />
              <node concept="10M0yZ" id="3jJD6EACBEv" role="37wK5m">
                <ref role="3cqZAo" node="3ofF9dt435K" resolve="INSTANCE" />
                <ref role="1PxDUh" node="3ofF9dt3Y$Y" resolve="ShadowModelsReferenceSerializer" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="3jJD6EACBHx" role="2uRRBF">
      <node concept="3clFbS" id="3jJD6EACBHy" role="2VODD2">
        <node concept="3clFbF" id="3jJD6EACBHT" role="3cqZAp">
          <node concept="2OqwBi" id="3jJD6EACBHU" role="3clFbG">
            <node concept="10M0yZ" id="3jJD6EACBHV" role="2Oq$k0">
              <ref role="1PxDUh" to="xkhl:~INodeReferenceSerializer" resolve="INodeReferenceSerializer" />
              <ref role="3cqZAo" to="xkhl:~INodeReferenceSerializer.Companion" resolve="Companion" />
            </node>
            <node concept="liA8E" id="3jJD6EACBHW" role="2OqNvi">
              <ref role="37wK5l" to="xkhl:~INodeReferenceSerializer$Companion.unregister(org.modelix.model.lazy.INodeReferenceSerializer)" resolve="unregister" />
              <node concept="10M0yZ" id="3jJD6EACBHX" role="37wK5m">
                <ref role="1PxDUh" node="3ofF9dt3Y$Y" resolve="ShadowModelsReferenceSerializer" />
                <ref role="3cqZAo" node="3ofF9dt435K" resolve="INSTANCE" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3ofF9dt3Y$Y">
    <property role="TrG5h" value="ShadowModelsReferenceSerializer" />
    <node concept="2tJIrI" id="3ofF9dt40Ch" role="jymVt" />
    <node concept="Wx3nA" id="3ofF9dt435K" role="jymVt">
      <property role="TrG5h" value="INSTANCE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3ofF9dt43hd" role="1tU5fm">
        <ref role="3uigEE" node="3ofF9dt3Y$Y" resolve="ShadowModelsReferenceSerializer" />
      </node>
      <node concept="3Tm1VV" id="3ofF9dt435M" role="1B3o_S" />
      <node concept="2ShNRf" id="3ofF9dt435N" role="33vP2m">
        <node concept="HV5vD" id="3ofF9dt435O" role="2ShVmc">
          <ref role="HV5vE" node="3ofF9dt3Y$Y" resolve="ShadowModelsReferenceSerializer" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3ofF9dt40NK" role="jymVt" />
    <node concept="3clFb_" id="2lTt2KMwrwY" role="jymVt">
      <property role="TrG5h" value="serialize" />
      <node concept="3Tm1VV" id="2lTt2KMwrwZ" role="1B3o_S" />
      <node concept="2AHcQZ" id="2lTt2KMwrx0" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="17QB3L" id="2lTt2KMwrx1" role="3clF45" />
      <node concept="37vLTG" id="2lTt2KMwrx2" role="3clF46">
        <property role="TrG5h" value="ref" />
        <node concept="3uibUv" id="2lTt2KMwrx3" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
        </node>
        <node concept="2AHcQZ" id="2lTt2KMwrx4" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2lTt2KMwrx5" role="3clF47">
        <node concept="3clFbJ" id="1oTFGJpAjN6" role="3cqZAp">
          <node concept="3clFbS" id="1oTFGJpAjN8" role="3clFbx">
            <node concept="3clFbF" id="1oTFGJpAkqh" role="3cqZAp">
              <node concept="37vLTI" id="1oTFGJpAk$s" role="3clFbG">
                <node concept="2OqwBi" id="1oTFGJpAkRi" role="37vLTx">
                  <node concept="1eOMI4" id="1oTFGJpAkDw" role="2Oq$k0">
                    <node concept="10QFUN" id="1oTFGJpAkDt" role="1eOMHV">
                      <node concept="3uibUv" id="1oTFGJpAkDy" role="10QFUM">
                        <ref role="3uigEE" to="nv3w:4apiesXeJq6" resolve="DependencyTrackingNode.NodeReference" />
                      </node>
                      <node concept="37vLTw" id="1oTFGJpAkDz" role="10QFUP">
                        <ref role="3cqZAo" node="2lTt2KMwrx2" resolve="ref" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1oTFGJpAlPo" role="2OqNvi">
                    <ref role="37wK5l" to="nv3w:4apiesXfmjw" resolve="getWrappedNodeRef" />
                  </node>
                </node>
                <node concept="37vLTw" id="1oTFGJpAkqf" role="37vLTJ">
                  <ref role="3cqZAo" node="2lTt2KMwrx2" resolve="ref" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="1oTFGJpAk9Z" role="3clFbw">
            <node concept="3uibUv" id="1oTFGJpAkmz" role="2ZW6by">
              <ref role="3uigEE" to="nv3w:4apiesXeJq6" resolve="DependencyTrackingNode.NodeReference" />
            </node>
            <node concept="37vLTw" id="1oTFGJpAjT4" role="2ZW6bz">
              <ref role="3cqZAo" node="2lTt2KMwrx2" resolve="ref" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2lTt2KMwrx6" role="3cqZAp">
          <node concept="3clFbS" id="2lTt2KMwrx7" role="3clFbx">
            <node concept="3cpWs6" id="60wywuiy2PD" role="3cqZAp">
              <node concept="2OqwBi" id="60wywuiy2PF" role="3cqZAk">
                <node concept="2OqwBi" id="60wywuiy2PG" role="2Oq$k0">
                  <node concept="2YIFZM" id="60wywuiy2PH" role="2Oq$k0">
                    <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                    <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                  </node>
                  <node concept="liA8E" id="60wywuiy2PI" role="2OqNvi">
                    <ref role="37wK5l" to="csg2:1SyMXWjsQoH" resolve="getArea" />
                  </node>
                </node>
                <node concept="liA8E" id="60wywuiy2PJ" role="2OqNvi">
                  <ref role="37wK5l" to="qvpu:~IArea.executeRead(kotlin.jvm.functions.Function0)" resolve="executeRead" />
                  <node concept="1bVj0M" id="60wywuiy2PK" role="37wK5m">
                    <property role="3yWfEV" value="true" />
                    <node concept="3clFbS" id="60wywuiy2PL" role="1bW5cS">
                      <node concept="3cpWs6" id="60wywuiy2PM" role="3cqZAp">
                        <node concept="3cpWs3" id="60wywuiy2PN" role="3cqZAk">
                          <node concept="Xl_RD" id="60wywuiy2PO" role="3uHU7B">
                            <property role="Xl_RC" value="sm." />
                          </node>
                          <node concept="2YIFZM" id="60wywuiy2PP" role="3uHU7w">
                            <ref role="1Pybhc" to="qsto:5T6M7ON4Si7" resolve="NodeReferenceSerializer" />
                            <ref role="37wK5l" to="qsto:5T6M7OO0vKo" resolve="serialize" />
                            <node concept="2YIFZM" id="60wywuiy2PQ" role="37wK5m">
                              <ref role="37wK5l" to="xxte:4EhVFrZ6z9$" resolve="wrap" />
                              <ref role="1Pybhc" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                              <node concept="10QFUN" id="60wywuiy2PR" role="37wK5m">
                                <node concept="37vLTw" id="60wywuiy2PS" role="10QFUP">
                                  <ref role="3cqZAo" node="2lTt2KMwrx2" resolve="ref" />
                                </node>
                                <node concept="3uibUv" id="60wywuiy2PT" role="10QFUM">
                                  <ref role="3uigEE" to="nv3w:5$YruQr6z2g" resolve="OutputNodeReferenceAsNode" />
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
          <node concept="2ZW3vV" id="2lTt2KMwrxg" role="3clFbw">
            <node concept="3uibUv" id="3jJD6EACw45" role="2ZW6by">
              <ref role="3uigEE" to="nv3w:5$YruQr6z2g" resolve="OutputNodeReferenceAsNode" />
            </node>
            <node concept="37vLTw" id="2lTt2KMwrxi" role="2ZW6bz">
              <ref role="3cqZAo" node="2lTt2KMwrx2" resolve="ref" />
            </node>
          </node>
          <node concept="9aQIb" id="2lTt2KMwrxj" role="9aQIa">
            <node concept="3clFbS" id="2lTt2KMwrxk" role="9aQI4">
              <node concept="3cpWs6" id="2lTt2KMwrxl" role="3cqZAp">
                <node concept="10Nm6u" id="2lTt2KMwrxm" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2lTt2KMwrxn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2lTt2KMwrxo" role="jymVt" />
    <node concept="3clFb_" id="2lTt2KMwrxp" role="jymVt">
      <property role="TrG5h" value="deserialize" />
      <node concept="3Tm1VV" id="2lTt2KMwrxq" role="1B3o_S" />
      <node concept="2AHcQZ" id="2lTt2KMwrxr" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="2lTt2KMwrxs" role="3clF45">
        <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
      </node>
      <node concept="37vLTG" id="2lTt2KMwrxt" role="3clF46">
        <property role="TrG5h" value="serialized" />
        <node concept="17QB3L" id="2lTt2KMwrxu" role="1tU5fm" />
        <node concept="2AHcQZ" id="2lTt2KMwrxv" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2lTt2KMwrxw" role="3clF47">
        <node concept="3clFbJ" id="7jxW5PGCO6o" role="3cqZAp">
          <node concept="3clFbS" id="7jxW5PGCO6q" role="3clFbx">
            <node concept="3cpWs6" id="2lTt2KMwrxJ" role="3cqZAp">
              <node concept="2YIFZM" id="7$7_4Zic2kt" role="3cqZAk">
                <ref role="1Pybhc" to="qsto:5T6M7ON4Si7" resolve="NodeReferenceSerializer" />
                <ref role="37wK5l" to="qsto:5npwda7ZW_A" resolve="deserialize" />
                <node concept="2OqwBi" id="7$7_4Zic2ku" role="37wK5m">
                  <node concept="37vLTw" id="7$7_4Zic2kv" role="2Oq$k0">
                    <ref role="3cqZAo" node="2lTt2KMwrxt" resolve="serialized" />
                  </node>
                  <node concept="liA8E" id="7$7_4Zic2kw" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                    <node concept="3cmrfG" id="7$7_4Zic2kx" role="37wK5m">
                      <property role="3cmrfH" value="3" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7jxW5PGCO$4" role="3clFbw">
            <node concept="37vLTw" id="7jxW5PGCOb1" role="2Oq$k0">
              <ref role="3cqZAo" node="2lTt2KMwrxt" resolve="serialized" />
            </node>
            <node concept="liA8E" id="7jxW5PGCOZR" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
              <node concept="Xl_RD" id="7jxW5PGCP1h" role="37wK5m">
                <property role="Xl_RC" value="sm." />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7AjmLChYAzH" role="3cqZAp">
          <node concept="10Nm6u" id="7AjmLChYD8N" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2lTt2KMwrxO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3ofF9dt3YAD" role="jymVt" />
    <node concept="3Tm1VV" id="3ofF9dt3Y$Z" role="1B3o_S" />
    <node concept="3uibUv" id="3ofF9dt3YAo" role="EKbjA">
      <ref role="3uigEE" to="xkhl:~INodeReferenceSerializer" resolve="INodeReferenceSerializer" />
    </node>
  </node>
</model>

