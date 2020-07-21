<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:750b73a4-e6e8-4fe6-9f78-6561ddc987ae(org.modelix.buildhacks.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="vbkb" ref="r:08f2b659-8469-4592-93bf-a6edb46ec86d(jetbrains.mps.build.behavior)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="3ior" ref="r:e9081cad-d8c3-45f2-b4ad-1dabd5ff82af(jetbrains.mps.build.structure)" />
    <import index="a4f1" ref="r:57e0ef4e-444e-409c-91ca-d4217a35bc2e(org.modelix.buildhacks.structure)" implicit="true" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
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
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="13h7C7" id="27MnIrat$Cv">
    <ref role="13h7C2" to="a4f1:27MnIratvuB" resolve="BuildLayout_Git4IdeaHack" />
    <node concept="13hLZK" id="27MnIrat$Cw" role="13h7CW">
      <node concept="3clFbS" id="27MnIrat$Cx" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="27MnIrat$CE" role="13h7CS">
      <property role="TrG5h" value="exports" />
      <ref role="13i0hy" to="vbkb:5FtnUVJQES1" resolve="exports" />
      <node concept="3Tm1VV" id="27MnIrat$CF" role="1B3o_S" />
      <node concept="3clFbS" id="27MnIrat$CM" role="3clF47">
        <node concept="3cpWs8" id="27MnIratI8o" role="3cqZAp">
          <node concept="3cpWsn" id="27MnIratI8p" role="3cpWs9">
            <property role="TrG5h" value="pathNode" />
            <node concept="3Tqbb2" id="27MnIratI7G" role="1tU5fm">
              <ref role="ehGHo" to="3ior:6qcrfIJFdKY" resolve="BuildSourcePath" />
            </node>
            <node concept="1PxgMI" id="27MnIratI8q" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="27MnIratI8r" role="3oSUPX">
                <ref role="cht4Q" to="3ior:6qcrfIJFdKY" resolve="BuildSourcePath" />
              </node>
              <node concept="0kSF2" id="27MnIratI8s" role="1m5AlR">
                <node concept="3uibUv" id="27MnIratI8t" role="0kSFW">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="37vLTw" id="27MnIratI8u" role="0kSFX">
                  <ref role="3cqZAo" node="27MnIrat$CN" resolve="artifactId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="27MnIratIAq" role="3cqZAp">
          <node concept="3clFbS" id="27MnIratIAs" role="3clFbx">
            <node concept="3cpWs8" id="27MnIratQiD" role="3cqZAp">
              <node concept="3cpWsn" id="27MnIratQiE" role="3cpWs9">
                <property role="TrG5h" value="path" />
                <node concept="17QB3L" id="27MnIratQf8" role="1tU5fm" />
                <node concept="2OqwBi" id="27MnIratQiF" role="33vP2m">
                  <node concept="37vLTw" id="27MnIratQiG" role="2Oq$k0">
                    <ref role="3cqZAo" node="27MnIratI8p" resolve="pathNode" />
                  </node>
                  <node concept="2qgKlT" id="27MnIratQiH" role="2OqNvi">
                    <ref role="37wK5l" to="vbkb:4Kip2_918YF" resolve="getRelativePath" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="27MnIratQ$S" role="3cqZAp">
              <node concept="3clFbS" id="27MnIratQ$U" role="3clFbx">
                <node concept="3clFbF" id="27MnIrat$Pr" role="3cqZAp">
                  <node concept="2OqwBi" id="27MnIrat$Po" role="3clFbG">
                    <node concept="10M0yZ" id="27MnIrat$Pp" role="2Oq$k0">
                      <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                      <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                    </node>
                    <node concept="liA8E" id="27MnIrat$Pq" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                      <node concept="3cpWs3" id="27MnIrat_sB" role="37wK5m">
                        <node concept="37vLTw" id="27MnIratQiI" role="3uHU7w">
                          <ref role="3cqZAo" node="27MnIratQiE" resolve="path" />
                        </node>
                        <node concept="Xl_RD" id="27MnIrat$Qb" role="3uHU7B">
                          <property role="Xl_RC" value="exports: " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="27MnIratRxN" role="3cqZAp">
                  <node concept="3clFbT" id="27MnIratRLy" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="27MnIratQWC" role="3clFbw">
                <node concept="37vLTw" id="27MnIratQAF" role="2Oq$k0">
                  <ref role="3cqZAo" node="27MnIratQiE" resolve="path" />
                </node>
                <node concept="liA8E" id="27MnIratRm1" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                  <node concept="Xl_RD" id="27MnIratRmx" role="37wK5m">
                    <property role="Xl_RC" value="/git4idea/" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="27MnIratIOw" role="3clFbw">
            <node concept="10Nm6u" id="27MnIratJ5e" role="3uHU7w" />
            <node concept="37vLTw" id="27MnIratIC3" role="3uHU7B">
              <ref role="3cqZAo" node="27MnIratI8p" resolve="pathNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="27MnIrat$OT" role="3cqZAp">
          <node concept="3clFbT" id="27MnIrat$OS" role="3clFbG" />
        </node>
      </node>
      <node concept="37vLTG" id="27MnIrat$CN" role="3clF46">
        <property role="TrG5h" value="artifactId" />
        <node concept="3uibUv" id="27MnIrat$CO" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="10P_77" id="27MnIrat$CP" role="3clF45" />
    </node>
  </node>
</model>

