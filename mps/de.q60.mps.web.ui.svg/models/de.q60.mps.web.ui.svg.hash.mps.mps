<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:67f01827-db32-4a68-a879-d86303d650e8(de.q60.mps.web.ui.svg.hash.mps)">
  <persistence version="9" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="bz9l" ref="r:85de55b5-84d0-4cc5-8673-25addf93c394(de.q60.mps.lazywebmps.runtime.hash)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
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
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="2AThsNtKWyX">
    <property role="TrG5h" value="MPSHashCache" />
    <node concept="Wx3nA" id="2AThsNtL9IY" role="jymVt">
      <property role="TrG5h" value="KEY" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="2AThsNtL8sR" role="1tU5fm" />
      <node concept="3Tm6S6" id="2AThsNtL8pJ" role="1B3o_S" />
      <node concept="2OqwBi" id="2AThsNtL9fZ" role="33vP2m">
        <node concept="3VsKOn" id="2AThsNtL8Ph" role="2Oq$k0">
          <ref role="3VsUkX" node="2AThsNtKWyX" resolve="MPSHashCache" />
        </node>
        <node concept="liA8E" id="2AThsNtL9D9" role="2OqNvi">
          <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNtKW$z" role="jymVt" />
    <node concept="3clFb_" id="2AThsNtKW$N" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="set" />
      <node concept="37vLTG" id="2AThsNtKW$O" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="1_iojA249cs" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="2AThsNtKW$Q" role="3clF46">
        <property role="TrG5h" value="hash" />
        <node concept="17QB3L" id="2AThsNtKW$R" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="2AThsNtKW$S" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNtKW$T" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNtKW$V" role="3clF47">
        <node concept="3clFbF" id="2AThsNtKWJx" role="3cqZAp">
          <node concept="2OqwBi" id="2AThsNtL8d8" role="3clFbG">
            <node concept="37vLTw" id="1_iojA249i6" role="2Oq$k0">
              <ref role="3cqZAo" node="2AThsNtKW$O" resolve="node" />
            </node>
            <node concept="liA8E" id="2AThsNtL8oa" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.putUserObject(java.lang.Object,java.lang.Object)" resolve="putUserObject" />
              <node concept="37vLTw" id="2AThsNtL9UU" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNtL9IY" resolve="KEY" />
              </node>
              <node concept="37vLTw" id="2AThsNtLa3I" role="37wK5m">
                <ref role="3cqZAo" node="2AThsNtKW$Q" resolve="hash" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNtKW$W" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNtKWCF" role="jymVt" />
    <node concept="3clFb_" id="2AThsNtKW$X" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="get" />
      <node concept="37vLTG" id="2AThsNtKW$Y" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="1_iojA249wY" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="17QB3L" id="2AThsNtKW_0" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNtKW_1" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNtKW_3" role="3clF47">
        <node concept="3cpWs8" id="2AThsNtLbfX" role="3cqZAp">
          <node concept="3cpWsn" id="2AThsNtLbfY" role="3cpWs9">
            <property role="TrG5h" value="hash" />
            <node concept="17QB3L" id="2AThsNtLbpH" role="1tU5fm" />
            <node concept="0kSF2" id="2AThsNtLbfZ" role="33vP2m">
              <node concept="3uibUv" id="2AThsNtLbg0" role="0kSFW">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="2OqwBi" id="2AThsNtLbg1" role="0kSFX">
                <node concept="37vLTw" id="1_iojA249AT" role="2Oq$k0">
                  <ref role="3cqZAo" node="2AThsNtKW$Y" resolve="node" />
                </node>
                <node concept="liA8E" id="2AThsNtLbg8" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getUserObject(java.lang.Object)" resolve="getUserObject" />
                  <node concept="37vLTw" id="2AThsNtLbg9" role="37wK5m">
                    <ref role="3cqZAo" node="2AThsNtL9IY" resolve="KEY" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2AThsNtLb$P" role="3cqZAp">
          <node concept="3clFbS" id="2AThsNtLb$R" role="3clFbx">
            <node concept="3clFbF" id="2AThsNtLc58" role="3cqZAp">
              <node concept="37vLTI" id="2AThsNtLcMc" role="3clFbG">
                <node concept="2OqwBi" id="2AThsNtLdRW" role="37vLTx">
                  <node concept="2OqwBi" id="2AThsNtLdsi" role="2Oq$k0">
                    <node concept="2ShNRf" id="2AThsNtLd4m" role="2Oq$k0">
                      <node concept="1pGfFk" id="2AThsNtLdiA" role="2ShVmc">
                        <ref role="37wK5l" to="bz9l:48Vb4Zfp$Ks" resolve="HashCalculator" />
                        <node concept="Xjq3P" id="2AThsNtLdk_" role="37wK5m" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2AThsNtLdB5" role="2OqNvi">
                      <ref role="37wK5l" to="bz9l:48Vb4Zfp_RN" resolve="append" />
                      <node concept="37vLTw" id="2AThsNtLdFB" role="37wK5m">
                        <ref role="3cqZAo" node="2AThsNtKW$Y" resolve="node" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="2AThsNtLe9X" role="2OqNvi">
                    <ref role="37wK5l" to="bz9l:48Vb4ZfpAH9" resolve="getHash" />
                  </node>
                </node>
                <node concept="37vLTw" id="2AThsNtLc56" role="37vLTJ">
                  <ref role="3cqZAo" node="2AThsNtLbfY" resolve="hash" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2AThsNtLfgA" role="3cqZAp">
              <node concept="1rXfSq" id="2AThsNtLfg$" role="3clFbG">
                <ref role="37wK5l" node="2AThsNtKW$N" resolve="set" />
                <node concept="37vLTw" id="2AThsNtLfmM" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNtKW$Y" resolve="node" />
                </node>
                <node concept="37vLTw" id="2AThsNtLfAT" role="37wK5m">
                  <ref role="3cqZAo" node="2AThsNtLbfY" resolve="hash" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2AThsNtLcmy" role="3clFbw">
            <node concept="10Nm6u" id="2AThsNtLcwH" role="3uHU7w" />
            <node concept="37vLTw" id="2AThsNtLbBv" role="3uHU7B">
              <ref role="3cqZAo" node="2AThsNtLbfY" resolve="hash" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2AThsNtLa9p" role="3cqZAp">
          <node concept="37vLTw" id="2AThsNtLbga" role="3clFbG">
            <ref role="3cqZAo" node="2AThsNtLbfY" resolve="hash" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2AThsNtKW_4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2AThsNtKWzS" role="jymVt" />
    <node concept="3Tm1VV" id="2AThsNtKWyY" role="1B3o_S" />
    <node concept="3uibUv" id="2AThsNtKWzy" role="EKbjA">
      <ref role="3uigEE" to="bz9l:2AThsNtKejZ" resolve="IHashCache" />
    </node>
  </node>
</model>

