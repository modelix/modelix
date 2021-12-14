<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:53d14de3-e820-4a3b-9328-a2833dcab0bd(org.modelix.common)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="3d38" ref="r:bc160b50-5a4e-4f99-ba07-a7b7116dab7a(de.q60.mps.incremental.util)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
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
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
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
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="5MA9wbc5skS">
    <property role="TrG5h" value="AuthorOverride" />
    <node concept="Wx3nA" id="5MA9wbc5sJL" role="jymVt">
      <property role="TrG5h" value="AUTHOR" />
      <node concept="3uibUv" id="5MA9wbc5sAx" role="1tU5fm">
        <ref role="3uigEE" to="3d38:7vWAzuEE15A" resolve="ContextValue" />
        <node concept="17QB3L" id="5MA9wbc5sID" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="5MA9wbc5t9f" role="1B3o_S" />
      <node concept="2ShNRf" id="5MA9wbc5t7F" role="33vP2m">
        <node concept="1pGfFk" id="5MA9wbc5sWb" role="2ShVmc">
          <ref role="37wK5l" to="3d38:32qWz0M5VME" resolve="ContextValue" />
          <node concept="17QB3L" id="5MA9wbc5sWc" role="1pMfVU" />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="3PyXc8TCEIN" role="jymVt">
      <property role="TrG5h" value="instanceOwner" />
      <node concept="17QB3L" id="3PyXc8TCDKu" role="1tU5fm" />
      <node concept="3Tm6S6" id="3PyXc8TCFHI" role="1B3o_S" />
      <node concept="10Nm6u" id="3PyXc8TCDM6" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="3PyXc8TCDIw" role="jymVt" />
    <node concept="2YIFZL" id="3PyXc8TCJbF" role="jymVt">
      <property role="TrG5h" value="setInstanceOwner" />
      <node concept="3clFbS" id="3PyXc8TCFLS" role="3clF47">
        <node concept="3clFbF" id="3PyXc8TCFUU" role="3cqZAp">
          <node concept="37vLTI" id="3PyXc8TCGdA" role="3clFbG">
            <node concept="37vLTw" id="3PyXc8TCGe4" role="37vLTx">
              <ref role="3cqZAo" node="3PyXc8TCFPf" resolve="owner" />
            </node>
            <node concept="37vLTw" id="3PyXc8TCFUT" role="37vLTJ">
              <ref role="3cqZAo" node="3PyXc8TCEIN" resolve="instanceOwner" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3PyXc8TCFPf" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="17QB3L" id="3PyXc8TCFQD" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="3PyXc8TCFLQ" role="3clF45" />
      <node concept="3Tm1VV" id="3PyXc8TCFLR" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3PyXc8TCFKv" role="jymVt" />
    <node concept="2YIFZL" id="5MA9wbc5wh4" role="jymVt">
      <property role="TrG5h" value="apply" />
      <node concept="3clFbS" id="5MA9wbc5teF" role="3clF47">
        <node concept="3cpWs8" id="5MA9wbc5uuh" role="3cqZAp">
          <node concept="3cpWsn" id="5MA9wbc5uui" role="3cpWs9">
            <property role="TrG5h" value="override" />
            <node concept="17QB3L" id="5MA9wbc5utn" role="1tU5fm" />
            <node concept="2OqwBi" id="5MA9wbc5uuj" role="33vP2m">
              <node concept="37vLTw" id="5MA9wbc5uuk" role="2Oq$k0">
                <ref role="3cqZAo" node="5MA9wbc5sJL" resolve="AUTHOR" />
              </node>
              <node concept="liA8E" id="5MA9wbc5uul" role="2OqNvi">
                <ref role="37wK5l" to="3d38:7vWAzuEE1gr" resolve="getValue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3PyXc8TCDX9" role="3cqZAp">
          <node concept="3clFbS" id="3PyXc8TCDXb" role="3clFbx">
            <node concept="3cpWs6" id="3PyXc8TCE_L" role="3cqZAp">
              <node concept="37vLTw" id="3PyXc8TCEBY" role="3cqZAk">
                <ref role="3cqZAo" node="5MA9wbc5uui" resolve="override" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3PyXc8TCElv" role="3clFbw">
            <node concept="37vLTw" id="3PyXc8TCDYX" role="2Oq$k0">
              <ref role="3cqZAo" node="5MA9wbc5uui" resolve="override" />
            </node>
            <node concept="17RvpY" id="3PyXc8TCE_e" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbJ" id="3PyXc8TCEG1" role="3cqZAp">
          <node concept="3clFbS" id="3PyXc8TCEG3" role="3clFbx">
            <node concept="3cpWs6" id="3PyXc8TCFy5" role="3cqZAp">
              <node concept="37vLTw" id="3PyXc8TCF$G" role="3cqZAk">
                <ref role="3cqZAo" node="3PyXc8TCEIN" resolve="instanceOwner" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="3PyXc8TDA8R" role="3clFbw">
            <node concept="2OqwBi" id="3PyXc8TDAhH" role="3uHU7B">
              <node concept="37vLTw" id="3PyXc8TDAbU" role="2Oq$k0">
                <ref role="3cqZAo" node="5MA9wbc5tko" resolve="author" />
              </node>
              <node concept="17RlXB" id="3PyXc8TDAli" role="2OqNvi" />
            </node>
            <node concept="2OqwBi" id="3PyXc8TCF72" role="3uHU7w">
              <node concept="37vLTw" id="3PyXc8TCEKj" role="2Oq$k0">
                <ref role="3cqZAo" node="3PyXc8TCEIN" resolve="instanceOwner" />
              </node>
              <node concept="17RvpY" id="3PyXc8TCFxn" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3PyXc8TCFBn" role="3cqZAp">
          <node concept="37vLTw" id="3PyXc8TCFFZ" role="3cqZAk">
            <ref role="3cqZAo" node="5MA9wbc5tko" resolve="author" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5MA9wbc5tko" role="3clF46">
        <property role="TrG5h" value="author" />
        <node concept="17QB3L" id="5MA9wbc5tq3" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="5MA9wbc5tw0" role="3clF45" />
      <node concept="3Tm1VV" id="5MA9wbc5teE" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="5MA9wbc5skT" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3xX$Vyo038N">
    <property role="TrG5h" value="PropertyOrEnv" />
    <node concept="2YIFZL" id="3xX$Vyo0aHz" role="jymVt">
      <property role="TrG5h" value="get" />
      <node concept="3clFbS" id="3xX$Vyo0aoz" role="3clF47">
        <node concept="3cpWs8" id="3xX$Vyo0bb$" role="3cqZAp">
          <node concept="3cpWsn" id="3xX$Vyo0bb_" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="17QB3L" id="3xX$Vyo0biD" role="1tU5fm" />
            <node concept="2YIFZM" id="3xX$Vyo0bbA" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
              <node concept="37vLTw" id="3xX$Vyo0bbB" role="37wK5m">
                <ref role="3cqZAo" node="3xX$Vyo0avZ" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3xX$Vyo0buo" role="3cqZAp">
          <node concept="3clFbS" id="3xX$Vyo0buq" role="3clFbx">
            <node concept="3clFbF" id="3xX$Vyo0dGH" role="3cqZAp">
              <node concept="37vLTI" id="3xX$Vyo0e40" role="3clFbG">
                <node concept="2YIFZM" id="3xX$Vyo0ekA" role="37vLTx">
                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                  <ref role="37wK5l" to="wyt6:~System.getenv(java.lang.String)" resolve="getenv" />
                  <node concept="37vLTw" id="3xX$Vyo0ewk" role="37wK5m">
                    <ref role="3cqZAo" node="3xX$Vyo0avZ" resolve="name" />
                  </node>
                </node>
                <node concept="37vLTw" id="3xX$Vyo0dGF" role="37vLTJ">
                  <ref role="3cqZAo" node="3xX$Vyo0bb_" resolve="value" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3xX$Vyo0ctL" role="3clFbw">
            <node concept="37vLTw" id="3xX$Vyo0b$w" role="2Oq$k0">
              <ref role="3cqZAo" node="3xX$Vyo0bb_" resolve="value" />
            </node>
            <node concept="17RlXB" id="3xX$Vyo0dyJ" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbJ" id="3xX$Vyo1n5h" role="3cqZAp">
          <node concept="3clFbS" id="3xX$Vyo1n5j" role="3clFbx">
            <node concept="3cpWs8" id="3xX$Vyo21CX" role="3cqZAp">
              <node concept="3cpWsn" id="3xX$Vyo21CY" role="3cpWs9">
                <property role="TrG5h" value="withoutDots" />
                <node concept="17QB3L" id="3xX$Vyo21Sx" role="1tU5fm" />
                <node concept="2OqwBi" id="3xX$Vyo21CZ" role="33vP2m">
                  <node concept="37vLTw" id="3xX$Vyo21D0" role="2Oq$k0">
                    <ref role="3cqZAo" node="3xX$Vyo0avZ" resolve="name" />
                  </node>
                  <node concept="liA8E" id="3xX$Vyo21D1" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.replace(char,char)" resolve="replace" />
                    <node concept="1Xhbcc" id="3xX$Vyo21D2" role="37wK5m">
                      <property role="1XhdNS" value="." />
                    </node>
                    <node concept="1Xhbcc" id="3xX$Vyo21D3" role="37wK5m">
                      <property role="1XhdNS" value="_" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3xX$Vyo20wq" role="3cqZAp">
              <node concept="37vLTI" id="3xX$Vyo21g5" role="3clFbG">
                <node concept="2YIFZM" id="3xX$Vyo21wD" role="37vLTx">
                  <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                  <node concept="37vLTw" id="3xX$Vyo226L" role="37wK5m">
                    <ref role="3cqZAo" node="3xX$Vyo21CY" resolve="withoutDots" />
                  </node>
                </node>
                <node concept="37vLTw" id="3xX$Vyo20wo" role="37vLTJ">
                  <ref role="3cqZAo" node="3xX$Vyo0bb_" resolve="value" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3xX$Vyo1YOH" role="3cqZAp">
              <node concept="3clFbS" id="3xX$Vyo1YOJ" role="3clFbx">
                <node concept="3clFbF" id="3xX$Vyo1oMm" role="3cqZAp">
                  <node concept="37vLTI" id="3xX$Vyo1peg" role="3clFbG">
                    <node concept="2YIFZM" id="3xX$Vyo1puV" role="37vLTx">
                      <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                      <ref role="37wK5l" to="wyt6:~System.getenv(java.lang.String)" resolve="getenv" />
                      <node concept="37vLTw" id="3xX$Vyo21D4" role="37wK5m">
                        <ref role="3cqZAo" node="3xX$Vyo21CY" resolve="withoutDots" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3xX$Vyo1oMk" role="37vLTJ">
                      <ref role="3cqZAo" node="3xX$Vyo0bb_" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3xX$Vyo1Zo0" role="3clFbw">
                <node concept="37vLTw" id="3xX$Vyo1YW9" role="2Oq$k0">
                  <ref role="3cqZAo" node="3xX$Vyo0bb_" resolve="value" />
                </node>
                <node concept="17RlXB" id="3xX$Vyo20my" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="3xX$Vyo1qRq" role="3clFbw">
            <node concept="2OqwBi" id="3xX$Vyo1rqz" role="3uHU7w">
              <node concept="37vLTw" id="3xX$Vyo2PF7" role="2Oq$k0">
                <ref role="3cqZAo" node="3xX$Vyo0avZ" resolve="name" />
              </node>
              <node concept="liA8E" id="3xX$Vyo1sDV" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                <node concept="Xl_RD" id="3xX$Vyo1sKQ" role="37wK5m">
                  <property role="Xl_RC" value="." />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3xX$Vyo1nDD" role="3uHU7B">
              <node concept="37vLTw" id="3xX$Vyo1ndM" role="2Oq$k0">
                <ref role="3cqZAo" node="3xX$Vyo0bb_" resolve="value" />
              </node>
              <node concept="17RlXB" id="3xX$Vyo1oCm" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3xX$Vyo0eRM" role="3cqZAp">
          <node concept="37vLTw" id="3xX$Vyo0eRO" role="3cqZAk">
            <ref role="3cqZAo" node="3xX$Vyo0bb_" resolve="value" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3xX$Vyo0avZ" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="3xX$Vyo0aDs" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="3xX$Vyo0eFH" role="3clF45" />
      <node concept="3Tm1VV" id="3xX$Vyo0aoy" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5wsTsVezp$d" role="jymVt" />
    <node concept="2YIFZL" id="5wsTsVezpRP" role="jymVt">
      <property role="TrG5h" value="getOrElse" />
      <node concept="3clFbS" id="5wsTsVezpAP" role="3clF47">
        <node concept="3cpWs8" id="5wsTsVezq1N" role="3cqZAp">
          <node concept="3cpWsn" id="5wsTsVezq1O" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="17QB3L" id="5wsTsVezq17" role="1tU5fm" />
            <node concept="1rXfSq" id="5wsTsVezq1P" role="33vP2m">
              <ref role="37wK5l" node="3xX$Vyo0aHz" resolve="get" />
              <node concept="37vLTw" id="5wsTsVezq1Q" role="37wK5m">
                <ref role="3cqZAo" node="5wsTsVezpGs" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5wsTsVezqMu" role="3cqZAp">
          <node concept="3K4zz7" id="5wsTsVezrzN" role="3clFbG">
            <node concept="37vLTw" id="5wsTsVezrPz" role="3K4E3e">
              <ref role="3cqZAo" node="5wsTsVezq1O" resolve="value" />
            </node>
            <node concept="37vLTw" id="5wsTsVezrQH" role="3K4GZi">
              <ref role="3cqZAo" node="5wsTsVezpKX" resolve="defaultValue" />
            </node>
            <node concept="2OqwBi" id="5wsTsVezr5m" role="3K4Cdx">
              <node concept="37vLTw" id="5wsTsVezqMs" role="2Oq$k0">
                <ref role="3cqZAo" node="5wsTsVezq1O" resolve="value" />
              </node>
              <node concept="17RvpY" id="5wsTsVezrOU" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5wsTsVezpGs" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="5wsTsVezpIU" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5wsTsVezpKX" role="3clF46">
        <property role="TrG5h" value="defaultValue" />
        <node concept="17QB3L" id="5wsTsVezpNx" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="5wsTsVezpQE" role="3clF45" />
      <node concept="3Tm1VV" id="5wsTsVezpAO" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="3xX$Vyo038O" role="1B3o_S" />
  </node>
</model>

