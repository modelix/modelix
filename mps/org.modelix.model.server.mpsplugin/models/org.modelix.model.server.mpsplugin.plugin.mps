<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e0ebb201-ffb5-414c-a096-5b55f0486d38(org.modelix.model.server.mpsplugin.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="rdww" ref="d5d0bab3-0d1d-4161-b322-a85b0528a69a/java:org.modelix.model.server.light(org.modelix.model.server.mpsplugin/)" />
    <import index="xxte" ref="r:a79f28f8-6055-40c6-bc5e-47a42a3b97e8(org.modelix.model.mpsadapters.mps)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="slod" ref="r:0fac2319-607e-4342-a163-7b982bbd957e(com.mbeddr.mpsutil.modellisteners.runtime)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="cmfw" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.event(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="jks5" ref="cc99dce1-49f3-4392-8dbf-e22ca47bd0af/java:org.modelix.model.api(org.modelix.model.api/)" />
  </imports>
  <registry>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
        <child id="481983775135178844" name="fieldDeclaration" index="2uRRBG" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
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
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp">
        <reference id="1218736638915" name="classifier" index="32nkFo" />
      </concept>
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261755" name="throwable" index="RRSow" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2uRRBC" id="7VLV6fKtcVb">
    <property role="TrG5h" value="ApplicationPlugin" />
    <node concept="2BZ0e9" id="7VLV6fKCk6O" role="2uRRBG">
      <property role="TrG5h" value="server" />
      <node concept="3Tm6S6" id="7VLV6fKCk6P" role="1B3o_S" />
      <node concept="3uibUv" id="7VLV6fKCkdk" role="1tU5fm">
        <ref role="3uigEE" to="rdww:~LightModelServer" resolve="LightModelServer" />
      </node>
    </node>
    <node concept="2BZ0e9" id="7VLV6fKCkUp" role="2uRRBG">
      <property role="TrG5h" value="globalModelListener" />
      <node concept="3Tm6S6" id="7VLV6fKCkUq" role="1B3o_S" />
      <node concept="3uibUv" id="7VLV6fKCldO" role="1tU5fm">
        <ref role="3uigEE" to="slod:ncHX0ORFPi" resolve="GlobalModelListener" />
      </node>
    </node>
    <node concept="2uRRBj" id="7VLV6fKzt_9" role="2uRRBE">
      <node concept="3clFbS" id="7VLV6fKzt_a" role="2VODD2">
        <node concept="3J1_TO" id="6U2HndrTcQF" role="3cqZAp">
          <node concept="3uVAMA" id="6U2HndrTd7z" role="1zxBo5">
            <node concept="XOnhg" id="6U2HndrTd7$" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="6U2HndrTd7_" role="1tU5fm">
                <node concept="3uibUv" id="6U2HndrTdgG" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="6U2HndrTd7A" role="1zc67A">
              <node concept="RRSsy" id="6U2HndrTiJN" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="6U2HndrTiJP" role="RRSoy">
                  <property role="Xl_RC" value="light model server failed to start" />
                </node>
                <node concept="37vLTw" id="6U2HndrTlbA" role="RRSow">
                  <ref role="3cqZAo" node="6U2HndrTd7$" resolve="ex" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6U2HndrTcQH" role="1zxBo7">
            <node concept="3cpWs8" id="7VLV6fKD9$D" role="3cqZAp">
              <node concept="3cpWsn" id="7VLV6fKD9$E" role="3cpWs9">
                <property role="TrG5h" value="repository" />
                <node concept="3uibUv" id="7VLV6fKD9q6" role="1tU5fm">
                  <ref role="3uigEE" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                </node>
                <node concept="2YIFZM" id="7VLV6fKD9$F" role="33vP2m">
                  <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7VLV6fKCkd_" role="3cqZAp">
              <node concept="37vLTI" id="7VLV6fKCkdB" role="3clFbG">
                <node concept="2ShNRf" id="7VLV6fKCh0_" role="37vLTx">
                  <node concept="1pGfFk" id="7VLV6fKCh0A" role="2ShVmc">
                    <ref role="37wK5l" to="rdww:~LightModelServer.&lt;init&gt;(int,org.modelix.model.api.INode)" resolve="LightModelServer" />
                    <node concept="3cmrfG" id="7VLV6fKCh0B" role="37wK5m">
                      <property role="3cmrfH" value="48302" />
                    </node>
                    <node concept="2ShNRf" id="7VLV6fKCh0C" role="37wK5m">
                      <node concept="1pGfFk" id="7VLV6fKCh0D" role="2ShVmc">
                        <ref role="37wK5l" to="xxte:qmkA5fOYD8" resolve="SRepositoryAsNode" />
                        <node concept="37vLTw" id="7VLV6fKD9$G" role="37wK5m">
                          <ref role="3cqZAo" node="7VLV6fKD9$E" resolve="repository" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7VLV6fKCkq$" role="37vLTJ">
                  <node concept="2WthIp" id="7VLV6fKCkqB" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="7VLV6fKCkqD" role="2OqNvi">
                    <ref role="2WH_rO" node="7VLV6fKCk6O" resolve="server" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7VLV6fKDcRv" role="3cqZAp">
              <node concept="3cpWsn" id="7VLV6fKDcRw" role="3cpWs9">
                <property role="TrG5h" value="changeListener" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="7VLV6fKDcRu" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNodeChangeListener" resolve="SNodeChangeListener" />
                </node>
                <node concept="2ShNRf" id="7VLV6fKDcRx" role="33vP2m">
                  <node concept="YeOm9" id="7VLV6fKDcRy" role="2ShVmc">
                    <node concept="1Y3b0j" id="7VLV6fKDcRz" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="mhbf:~SNodeChangeListener" resolve="SNodeChangeListener" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3clFb_" id="69z78Kg3O11" role="jymVt">
                        <property role="TrG5h" value="notifyChange" />
                        <node concept="37vLTG" id="69z78Kg3Ome" role="3clF46">
                          <property role="TrG5h" value="node" />
                          <node concept="3uibUv" id="69z78Kg3OAR" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                          <node concept="2AHcQZ" id="69z78Kg3OJ8" role="2AJF6D">
                            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                          </node>
                        </node>
                        <node concept="3cqZAl" id="69z78Kg3O13" role="3clF45" />
                        <node concept="3Tm1VV" id="69z78Kg3O14" role="1B3o_S" />
                        <node concept="3clFbS" id="69z78Kg3O15" role="3clF47">
                          <node concept="3clFbJ" id="69z78Kg3OPg" role="3cqZAp">
                            <node concept="3clFbC" id="69z78Kg3P6M" role="3clFbw">
                              <node concept="10Nm6u" id="69z78Kg3PbY" role="3uHU7w" />
                              <node concept="37vLTw" id="69z78Kg3OQ_" role="3uHU7B">
                                <ref role="3cqZAo" node="69z78Kg3Ome" resolve="node" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="69z78Kg3OPi" role="3clFbx">
                              <node concept="3cpWs6" id="69z78Kg3Pgw" role="3cqZAp" />
                            </node>
                          </node>
                          <node concept="3clFbF" id="69z78Kg3PiG" role="3cqZAp">
                            <node concept="2OqwBi" id="69z78Kg3PiH" role="3clFbG">
                              <node concept="2OqwBi" id="69z78Kg3PiI" role="2Oq$k0">
                                <node concept="2WthIp" id="69z78Kg3PiJ" role="2Oq$k0">
                                  <ref role="32nkFo" node="7VLV6fKtcVb" resolve="ApplicationPlugin" />
                                </node>
                                <node concept="2BZ7hE" id="69z78Kg3PiK" role="2OqNvi">
                                  <ref role="2WH_rO" node="7VLV6fKCk6O" resolve="server" />
                                </node>
                              </node>
                              <node concept="liA8E" id="69z78Kg3PiL" role="2OqNvi">
                                <ref role="37wK5l" to="rdww:~LightModelServer.nodeChanged(org.modelix.model.api.INode)" resolve="nodeChanged" />
                                <node concept="2YIFZM" id="69z78Kg3PiM" role="37wK5m">
                                  <ref role="37wK5l" to="xxte:5gTrVpGyMwR" resolve="wrap" />
                                  <ref role="1Pybhc" to="xxte:5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                                  <node concept="37vLTw" id="69z78Kg3P_P" role="37wK5m">
                                    <ref role="3cqZAo" node="69z78Kg3Ome" resolve="node" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="7VLV6fKDcR$" role="1B3o_S" />
                      <node concept="3clFb_" id="7VLV6fKDcR_" role="jymVt">
                        <property role="TrG5h" value="propertyChanged" />
                        <node concept="3Tm1VV" id="7VLV6fKDcRA" role="1B3o_S" />
                        <node concept="3cqZAl" id="7VLV6fKDcRB" role="3clF45" />
                        <node concept="37vLTG" id="7VLV6fKDcRC" role="3clF46">
                          <property role="TrG5h" value="e" />
                          <node concept="3uibUv" id="7VLV6fKDcRD" role="1tU5fm">
                            <ref role="3uigEE" to="cmfw:~SPropertyChangeEvent" resolve="SPropertyChangeEvent" />
                          </node>
                          <node concept="2AHcQZ" id="7VLV6fKDcRE" role="2AJF6D">
                            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="7VLV6fKDcRF" role="3clF47">
                          <node concept="3J1_TO" id="7VLV6fKDTgv" role="3cqZAp">
                            <node concept="3uVAMA" id="7VLV6fKDTie" role="1zxBo5">
                              <node concept="XOnhg" id="7VLV6fKDTif" role="1zc67B">
                                <property role="TrG5h" value="ex" />
                                <node concept="nSUau" id="7VLV6fKDTig" role="1tU5fm">
                                  <node concept="3uibUv" id="7VLV6fKDTqi" role="nSUat">
                                    <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="7VLV6fKDTih" role="1zc67A">
                                <node concept="RRSsy" id="7VLV6fKDTzo" role="3cqZAp">
                                  <property role="RRSoG" value="gZ5fh_4/error" />
                                  <node concept="Xl_RD" id="7VLV6fKDTzq" role="RRSoy" />
                                  <node concept="37vLTw" id="7VLV6fKDT$t" role="RRSow">
                                    <ref role="3cqZAo" node="7VLV6fKDTif" resolve="ex" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="7VLV6fKDTgx" role="1zxBo7">
                              <node concept="3clFbF" id="7VLV6fKDiPQ" role="3cqZAp">
                                <node concept="1rXfSq" id="69z78Kg3PXj" role="3clFbG">
                                  <ref role="37wK5l" node="69z78Kg3O11" resolve="notifyChange" />
                                  <node concept="2OqwBi" id="7VLV6fKDj$Y" role="37wK5m">
                                    <node concept="37vLTw" id="7VLV6fKDjpv" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7VLV6fKDcRC" resolve="e" />
                                    </node>
                                    <node concept="liA8E" id="7VLV6fKDjT0" role="2OqNvi">
                                      <ref role="37wK5l" to="cmfw:~SPropertyChangeEvent.getNode()" resolve="getNode" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="7VLV6fKDcRG" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="2tJIrI" id="7VLV6fKDcRH" role="jymVt" />
                      <node concept="3clFb_" id="7VLV6fKDcRI" role="jymVt">
                        <property role="TrG5h" value="referenceChanged" />
                        <node concept="3Tm1VV" id="7VLV6fKDcRJ" role="1B3o_S" />
                        <node concept="3cqZAl" id="7VLV6fKDcRK" role="3clF45" />
                        <node concept="37vLTG" id="7VLV6fKDcRL" role="3clF46">
                          <property role="TrG5h" value="e" />
                          <node concept="3uibUv" id="7VLV6fKDcRM" role="1tU5fm">
                            <ref role="3uigEE" to="cmfw:~SReferenceChangeEvent" resolve="SReferenceChangeEvent" />
                          </node>
                          <node concept="2AHcQZ" id="7VLV6fKDcRN" role="2AJF6D">
                            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="7VLV6fKDcRO" role="3clF47">
                          <node concept="3J1_TO" id="7VLV6fKDU0Q" role="3cqZAp">
                            <node concept="3uVAMA" id="7VLV6fKDU0R" role="1zxBo5">
                              <node concept="XOnhg" id="7VLV6fKDU0S" role="1zc67B">
                                <property role="TrG5h" value="ex" />
                                <node concept="nSUau" id="7VLV6fKDU0T" role="1tU5fm">
                                  <node concept="3uibUv" id="7VLV6fKDU0U" role="nSUat">
                                    <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="7VLV6fKDU0V" role="1zc67A">
                                <node concept="RRSsy" id="7VLV6fKDU0W" role="3cqZAp">
                                  <property role="RRSoG" value="gZ5fh_4/error" />
                                  <node concept="Xl_RD" id="7VLV6fKDU0X" role="RRSoy" />
                                  <node concept="37vLTw" id="7VLV6fKDU0Y" role="RRSow">
                                    <ref role="3cqZAo" node="7VLV6fKDU0S" resolve="ex" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="7VLV6fKDU0Z" role="1zxBo7">
                              <node concept="3clFbF" id="7VLV6fKDkcP" role="3cqZAp">
                                <node concept="1rXfSq" id="69z78Kg3Qqz" role="3clFbG">
                                  <ref role="37wK5l" node="69z78Kg3O11" resolve="notifyChange" />
                                  <node concept="2OqwBi" id="7VLV6fKDkcX" role="37wK5m">
                                    <node concept="37vLTw" id="7VLV6fKDkcY" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7VLV6fKDcRL" resolve="e" />
                                    </node>
                                    <node concept="liA8E" id="7VLV6fKDkcZ" role="2OqNvi">
                                      <ref role="37wK5l" to="cmfw:~SReferenceChangeEvent.getNode()" resolve="getNode" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="7VLV6fKDcRP" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="2tJIrI" id="7VLV6fKDcRQ" role="jymVt" />
                      <node concept="3clFb_" id="7VLV6fKDcRR" role="jymVt">
                        <property role="TrG5h" value="nodeAdded" />
                        <node concept="3Tm1VV" id="7VLV6fKDcRS" role="1B3o_S" />
                        <node concept="3cqZAl" id="7VLV6fKDcRT" role="3clF45" />
                        <node concept="37vLTG" id="7VLV6fKDcRU" role="3clF46">
                          <property role="TrG5h" value="e" />
                          <node concept="3uibUv" id="7VLV6fKDcRV" role="1tU5fm">
                            <ref role="3uigEE" to="cmfw:~SNodeAddEvent" resolve="SNodeAddEvent" />
                          </node>
                          <node concept="2AHcQZ" id="7VLV6fKDcRW" role="2AJF6D">
                            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="7VLV6fKDcRX" role="3clF47">
                          <node concept="3J1_TO" id="7VLV6fKDUp$" role="3cqZAp">
                            <node concept="3uVAMA" id="7VLV6fKDUp_" role="1zxBo5">
                              <node concept="XOnhg" id="7VLV6fKDUpA" role="1zc67B">
                                <property role="TrG5h" value="ex" />
                                <node concept="nSUau" id="7VLV6fKDUpB" role="1tU5fm">
                                  <node concept="3uibUv" id="7VLV6fKDUpC" role="nSUat">
                                    <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="7VLV6fKDUpD" role="1zc67A">
                                <node concept="RRSsy" id="7VLV6fKDUpE" role="3cqZAp">
                                  <property role="RRSoG" value="gZ5fh_4/error" />
                                  <node concept="Xl_RD" id="7VLV6fKDUpF" role="RRSoy" />
                                  <node concept="37vLTw" id="7VLV6fKDUpG" role="RRSow">
                                    <ref role="3cqZAo" node="7VLV6fKDUpA" resolve="ex" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="7VLV6fKDUpH" role="1zxBo7">
                              <node concept="3clFbF" id="7VLV6fKDkEE" role="3cqZAp">
                                <node concept="1rXfSq" id="69z78Kg3QJR" role="3clFbG">
                                  <ref role="37wK5l" node="69z78Kg3O11" resolve="notifyChange" />
                                  <node concept="2OqwBi" id="7VLV6fKDkEM" role="37wK5m">
                                    <node concept="37vLTw" id="7VLV6fKDkEN" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7VLV6fKDcRU" resolve="e" />
                                    </node>
                                    <node concept="liA8E" id="7VLV6fKDkEO" role="2OqNvi">
                                      <ref role="37wK5l" to="cmfw:~SNodeAddEvent.getParent()" resolve="getParent" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="7VLV6fKDljV" role="3cqZAp">
                                <node concept="1rXfSq" id="69z78Kg3R5F" role="3clFbG">
                                  <ref role="37wK5l" node="69z78Kg3O11" resolve="notifyChange" />
                                  <node concept="2OqwBi" id="7VLV6fKDlk2" role="37wK5m">
                                    <node concept="37vLTw" id="7VLV6fKDlk3" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7VLV6fKDcRU" resolve="e" />
                                    </node>
                                    <node concept="liA8E" id="7VLV6fKDlk4" role="2OqNvi">
                                      <ref role="37wK5l" to="cmfw:~SNodeAddEvent.getChild()" resolve="getChild" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="7VLV6fKDcRY" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="2tJIrI" id="7VLV6fKDcRZ" role="jymVt" />
                      <node concept="3clFb_" id="7VLV6fKDcS0" role="jymVt">
                        <property role="TrG5h" value="nodeRemoved" />
                        <node concept="3Tm1VV" id="7VLV6fKDcS1" role="1B3o_S" />
                        <node concept="3cqZAl" id="7VLV6fKDcS2" role="3clF45" />
                        <node concept="37vLTG" id="7VLV6fKDcS3" role="3clF46">
                          <property role="TrG5h" value="e" />
                          <node concept="3uibUv" id="7VLV6fKDcS4" role="1tU5fm">
                            <ref role="3uigEE" to="cmfw:~SNodeRemoveEvent" resolve="SNodeRemoveEvent" />
                          </node>
                          <node concept="2AHcQZ" id="7VLV6fKDcS5" role="2AJF6D">
                            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="7VLV6fKDcS6" role="3clF47">
                          <node concept="3J1_TO" id="7VLV6fKDUJh" role="3cqZAp">
                            <node concept="3uVAMA" id="7VLV6fKDUJi" role="1zxBo5">
                              <node concept="XOnhg" id="7VLV6fKDUJj" role="1zc67B">
                                <property role="TrG5h" value="ex" />
                                <node concept="nSUau" id="7VLV6fKDUJk" role="1tU5fm">
                                  <node concept="3uibUv" id="7VLV6fKDUJl" role="nSUat">
                                    <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="7VLV6fKDUJm" role="1zc67A">
                                <node concept="RRSsy" id="7VLV6fKDUJn" role="3cqZAp">
                                  <property role="RRSoG" value="gZ5fh_4/error" />
                                  <node concept="Xl_RD" id="7VLV6fKDUJo" role="RRSoy" />
                                  <node concept="37vLTw" id="7VLV6fKDUJp" role="RRSow">
                                    <ref role="3cqZAo" node="7VLV6fKDUJj" resolve="ex" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="7VLV6fKDUJq" role="1zxBo7">
                              <node concept="3clFbF" id="7VLV6fKDlAr" role="3cqZAp">
                                <node concept="1rXfSq" id="69z78Kg3Rss" role="3clFbG">
                                  <ref role="37wK5l" node="69z78Kg3O11" resolve="notifyChange" />
                                  <node concept="2OqwBi" id="7VLV6fKDlAy" role="37wK5m">
                                    <node concept="37vLTw" id="7VLV6fKDlAz" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7VLV6fKDcS3" resolve="e" />
                                    </node>
                                    <node concept="liA8E" id="7VLV6fKDm4D" role="2OqNvi">
                                      <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.getParent()" resolve="getParent" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="7VLV6fKDm6r" role="3cqZAp">
                                <node concept="1rXfSq" id="69z78Kg3RLW" role="3clFbG">
                                  <ref role="37wK5l" node="69z78Kg3O11" resolve="notifyChange" />
                                  <node concept="2OqwBi" id="7VLV6fKDm6y" role="37wK5m">
                                    <node concept="37vLTw" id="7VLV6fKDm6z" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7VLV6fKDcS3" resolve="e" />
                                    </node>
                                    <node concept="liA8E" id="7VLV6fKDmnB" role="2OqNvi">
                                      <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.getChild()" resolve="getChild" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="7VLV6fKDcS7" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7VLV6fKCpJi" role="3cqZAp">
              <node concept="37vLTI" id="7VLV6fKCqdy" role="3clFbG">
                <node concept="2ShNRf" id="7VLV6fKCqeQ" role="37vLTx">
                  <node concept="YeOm9" id="7VLV6fKCL5f" role="2ShVmc">
                    <node concept="1Y3b0j" id="7VLV6fKCL5i" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="37wK5l" to="slod:ncHX0OS6Q3" resolve="GlobalModelListener" />
                      <ref role="1Y3XeK" to="slod:ncHX0ORFPi" resolve="GlobalModelListener" />
                      <node concept="3Tm1VV" id="7VLV6fKCL5j" role="1B3o_S" />
                      <node concept="3clFb_" id="7VLV6fKCWrV" role="jymVt">
                        <property role="TrG5h" value="addListener" />
                        <node concept="37vLTG" id="7VLV6fKCWrW" role="3clF46">
                          <property role="TrG5h" value="model" />
                          <node concept="3uibUv" id="7VLV6fKCWrX" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                          </node>
                        </node>
                        <node concept="3cqZAl" id="7VLV6fKCWrY" role="3clF45" />
                        <node concept="3Tmbuc" id="7VLV6fKCWrZ" role="1B3o_S" />
                        <node concept="3clFbS" id="7VLV6fKCWs2" role="3clF47">
                          <node concept="3clFbF" id="7VLV6fKDbLw" role="3cqZAp">
                            <node concept="2OqwBi" id="7VLV6fKDbYQ" role="3clFbG">
                              <node concept="37vLTw" id="7VLV6fKDbLv" role="2Oq$k0">
                                <ref role="3cqZAo" node="7VLV6fKCWrW" resolve="model" />
                              </node>
                              <node concept="liA8E" id="7VLV6fKDcle" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.addChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="addChangeListener" />
                                <node concept="37vLTw" id="7VLV6fKDh_q" role="37wK5m">
                                  <ref role="3cqZAo" node="7VLV6fKDcRw" resolve="changeListener" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="7VLV6fKCWs3" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="3clFb_" id="7VLV6fKCWs4" role="jymVt">
                        <property role="TrG5h" value="removeListener" />
                        <node concept="37vLTG" id="7VLV6fKCWs5" role="3clF46">
                          <property role="TrG5h" value="model" />
                          <node concept="3uibUv" id="7VLV6fKCWs6" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                          </node>
                        </node>
                        <node concept="3cqZAl" id="7VLV6fKCWs7" role="3clF45" />
                        <node concept="3Tmbuc" id="7VLV6fKCWs8" role="1B3o_S" />
                        <node concept="3clFbS" id="7VLV6fKCWsb" role="3clF47">
                          <node concept="3clFbF" id="7VLV6fKDhPb" role="3cqZAp">
                            <node concept="2OqwBi" id="7VLV6fKDhXP" role="3clFbG">
                              <node concept="37vLTw" id="7VLV6fKDhPa" role="2Oq$k0">
                                <ref role="3cqZAo" node="7VLV6fKCWs5" resolve="model" />
                              </node>
                              <node concept="liA8E" id="7VLV6fKDi8t" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.removeChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="removeChangeListener" />
                                <node concept="37vLTw" id="7VLV6fKDia9" role="37wK5m">
                                  <ref role="3cqZAo" node="7VLV6fKDcRw" resolve="changeListener" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="7VLV6fKCWsc" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7VLV6fKCpXJ" role="37vLTJ">
                  <node concept="2WthIp" id="7VLV6fKCpJg" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="7VLV6fKCq72" role="2OqNvi">
                    <ref role="2WH_rO" node="7VLV6fKCkUp" resolve="globalModelListener" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7VLV6fKD97a" role="3cqZAp">
              <node concept="2OqwBi" id="7VLV6fKD9oR" role="3clFbG">
                <node concept="2OqwBi" id="7VLV6fKD974" role="2Oq$k0">
                  <node concept="2WthIp" id="7VLV6fKD977" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="7VLV6fKD979" role="2OqNvi">
                    <ref role="2WH_rO" node="7VLV6fKCkUp" resolve="globalModelListener" />
                  </node>
                </node>
                <node concept="liA8E" id="7VLV6fKD9x$" role="2OqNvi">
                  <ref role="37wK5l" to="slod:ncHX0OS6Ab" resolve="start" />
                  <node concept="37vLTw" id="7VLV6fKD9Ld" role="37wK5m">
                    <ref role="3cqZAo" node="7VLV6fKD9$E" resolve="repository" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7VLV6fKztCC" role="3cqZAp">
              <node concept="2OqwBi" id="7VLV6fKCiZk" role="3clFbG">
                <node concept="2OqwBi" id="7VLV6fKCkxs" role="2Oq$k0">
                  <node concept="2WthIp" id="7VLV6fKCkxv" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="7VLV6fKCkxx" role="2OqNvi">
                    <ref role="2WH_rO" node="7VLV6fKCk6O" resolve="server" />
                  </node>
                </node>
                <node concept="liA8E" id="7VLV6fKCjWp" role="2OqNvi">
                  <ref role="37wK5l" to="rdww:~LightModelServer.start()" resolve="start" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="7VLV6fKCjWZ" role="2uRRBF">
      <node concept="3clFbS" id="7VLV6fKCjX0" role="2VODD2">
        <node concept="3clFbF" id="7VLV6fKDil7" role="3cqZAp">
          <node concept="2OqwBi" id="7VLV6fKDiyT" role="3clFbG">
            <node concept="2OqwBi" id="7VLV6fKDil1" role="2Oq$k0">
              <node concept="2WthIp" id="7VLV6fKDil4" role="2Oq$k0" />
              <node concept="2BZ7hE" id="7VLV6fKDil6" role="2OqNvi">
                <ref role="2WH_rO" node="7VLV6fKCkUp" resolve="globalModelListener" />
              </node>
            </node>
            <node concept="liA8E" id="7VLV6fKDiEU" role="2OqNvi">
              <ref role="37wK5l" to="slod:5m02zYhGCVO" resolve="stop" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7VLV6fKCk$M" role="3cqZAp">
          <node concept="2OqwBi" id="7VLV6fKCkND" role="3clFbG">
            <node concept="2OqwBi" id="7VLV6fKCk$G" role="2Oq$k0">
              <node concept="2WthIp" id="7VLV6fKCk$J" role="2Oq$k0" />
              <node concept="2BZ7hE" id="7VLV6fKCk$L" role="2OqNvi">
                <ref role="2WH_rO" node="7VLV6fKCk6O" resolve="server" />
              </node>
            </node>
            <node concept="liA8E" id="7VLV6fKCkTI" role="2OqNvi">
              <ref role="37wK5l" to="rdww:~LightModelServer.stop()" resolve="stop" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2DaZZR" id="7VLV6fKtcVc" />
</model>

