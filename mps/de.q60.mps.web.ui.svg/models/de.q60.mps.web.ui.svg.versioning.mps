<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:54b04a80-dd7c-49d8-9d41-3669a637f0a7(de.q60.mps.web.ui.svg.versioning)">
  <persistence version="9" />
  <languages>
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="jgjw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.security(JDK/)" />
    <import index="xlxw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.math(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="7x5y" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.charset(JDK/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="vxxo" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure.concept(MPS.Core/)" />
    <import index="e8bb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.ids(MPS.Core/)" />
    <import index="pwx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure.property(MPS.Core/)" />
    <import index="wb4m" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure.link(MPS.Core/)" />
    <import index="rzjr" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure.ref(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534604311" name="jetbrains.mps.baseLanguage.structure.ByteType" flags="in" index="10PrrI" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
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
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
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
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="ng" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="ng" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="ng" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="48Vb4Zfppr$">
    <property role="TrG5h" value="VersionCalculator" />
    <node concept="2tJIrI" id="48Vb4Zfppsm" role="jymVt" />
    <node concept="312cEg" id="48Vb4ZfppsF" role="jymVt">
      <property role="TrG5h" value="digester" />
      <node concept="3Tmbuc" id="48Vb4Zfp_Kv" role="1B3o_S" />
      <node concept="3uibUv" id="48Vb4Zfp$Ja" role="1tU5fm">
        <ref role="3uigEE" to="jgjw:~MessageDigest" resolve="MessageDigest" />
      </node>
    </node>
    <node concept="312cEg" id="48Vb4ZfpNX5" role="jymVt">
      <property role="TrG5h" value="charset" />
      <node concept="3Tm6S6" id="48Vb4ZfpNX6" role="1B3o_S" />
      <node concept="3uibUv" id="48Vb4ZfpQD2" role="1tU5fm">
        <ref role="3uigEE" to="7x5y:~Charset" resolve="Charset" />
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4Zfp$JZ" role="jymVt" />
    <node concept="3clFbW" id="48Vb4Zfp$Ks" role="jymVt">
      <node concept="3cqZAl" id="48Vb4Zfp$Ku" role="3clF45" />
      <node concept="3Tm1VV" id="48Vb4Zfp$Kv" role="1B3o_S" />
      <node concept="3clFbS" id="48Vb4Zfp$Kw" role="3clF47">
        <node concept="3J1_TO" id="48Vb4Zfp_kd" role="3cqZAp">
          <node concept="3clFbS" id="48Vb4Zfp_ke" role="1zxBo7">
            <node concept="3clFbF" id="48Vb4Zfp$L5" role="3cqZAp">
              <node concept="37vLTI" id="48Vb4Zfp$Wy" role="3clFbG">
                <node concept="2YIFZM" id="48Vb4Zfp_6X" role="37vLTx">
                  <ref role="37wK5l" to="jgjw:~MessageDigest.getInstance(java.lang.String)" resolve="getInstance" />
                  <ref role="1Pybhc" to="jgjw:~MessageDigest" resolve="MessageDigest" />
                  <node concept="Xl_RD" id="48Vb4Zfp_8V" role="37wK5m">
                    <property role="Xl_RC" value="SHA-256" />
                  </node>
                </node>
                <node concept="37vLTw" id="48Vb4Zfp$L4" role="37vLTJ">
                  <ref role="3cqZAo" node="48Vb4ZfppsF" resolve="digester" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="48Vb4Zfp_k9" role="1zxBo5">
            <node concept="XOnhg" id="48Vb4Zfp_kb" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="4fiQV6RaYLg" role="1tU5fm">
                <node concept="3uibUv" id="48Vb4Zfp_kc" role="nSUat">
                  <ref role="3uigEE" to="jgjw:~NoSuchAlgorithmException" resolve="NoSuchAlgorithmException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="48Vb4Zfp_ka" role="1zc67A">
              <node concept="YS8fn" id="48Vb4Zfp_qK" role="3cqZAp">
                <node concept="2ShNRf" id="48Vb4Zfp_rq" role="YScLw">
                  <node concept="1pGfFk" id="48Vb4Zfp_$I" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="48Vb4Zfp_Co" role="37wK5m">
                      <ref role="3cqZAo" node="48Vb4Zfp_kb" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfpREZ" role="3cqZAp">
          <node concept="37vLTI" id="48Vb4ZfpRU2" role="3clFbG">
            <node concept="37vLTw" id="48Vb4ZfpREX" role="37vLTJ">
              <ref role="3cqZAo" node="48Vb4ZfpNX5" resolve="charset" />
            </node>
            <node concept="2YIFZM" id="48Vb4ZfpRVM" role="37vLTx">
              <ref role="1Pybhc" to="7x5y:~Charset" resolve="Charset" />
              <ref role="37wK5l" to="7x5y:~Charset.forName(java.lang.String)" resolve="forName" />
              <node concept="Xl_RD" id="48Vb4ZfpRVN" role="37wK5m">
                <property role="Xl_RC" value="UTF-8" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4Zfp_ME" role="jymVt" />
    <node concept="3clFb_" id="48Vb4ZfrJUG" role="jymVt">
      <property role="TrG5h" value="append" />
      <node concept="3uibUv" id="48Vb4ZfrZY2" role="3clF45">
        <ref role="3uigEE" node="48Vb4Zfppr$" resolve="VersionCalculator" />
      </node>
      <node concept="3Tm1VV" id="48Vb4ZfrJUJ" role="1B3o_S" />
      <node concept="3clFbS" id="48Vb4ZfrJUK" role="3clF47">
        <node concept="3clFbF" id="48Vb4ZfrT5u" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfrT5t" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="Xl_RD" id="48Vb4ZfrT6A" role="37wK5m">
              <property role="Xl_RC" value="module" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfrTlb" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfrTlc" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="2EnYce" id="48Vb4ZfrTld" role="37wK5m">
              <node concept="2OqwBi" id="48Vb4ZfrTle" role="2Oq$k0">
                <node concept="37vLTw" id="48Vb4ZfrTZI" role="2Oq$k0">
                  <ref role="3cqZAo" node="48Vb4ZfrRyd" resolve="module" />
                </node>
                <node concept="liA8E" id="48Vb4ZfrTlg" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getModuleId()" resolve="getModuleId" />
                </node>
              </node>
              <node concept="liA8E" id="48Vb4ZfrTlh" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfrTli" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfrTlj" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="2OqwBi" id="48Vb4ZfrTll" role="37wK5m">
              <node concept="37vLTw" id="48Vb4ZfrUaK" role="2Oq$k0">
                <ref role="3cqZAo" node="48Vb4ZfrRyd" resolve="module" />
              </node>
              <node concept="liA8E" id="48Vb4ZfrTln" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfuQss" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfuQsq" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="Xl_RD" id="48Vb4ZfuRxX" role="37wK5m">
              <property role="Xl_RC" value="dependencies" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="48Vb4ZfuDvQ" role="3cqZAp">
          <node concept="2GrKxI" id="48Vb4ZfuDvS" role="2Gsz3X">
            <property role="TrG5h" value="dependency" />
          </node>
          <node concept="3clFbS" id="48Vb4ZfuDvW" role="2LFqv$">
            <node concept="3clFbF" id="48Vb4ZfuJLG" role="3cqZAp">
              <node concept="1rXfSq" id="48Vb4ZfuJLF" role="3clFbG">
                <ref role="37wK5l" node="48Vb4ZfuxY$" resolve="append" />
                <node concept="2GrUjf" id="48Vb4ZfuJOx" role="37wK5m">
                  <ref role="2Gs0qQ" node="48Vb4ZfuDvS" resolve="dependency" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="48Vb4ZfuFmF" role="2GsD0m">
            <node concept="37vLTw" id="48Vb4ZfuFmG" role="2Oq$k0">
              <ref role="3cqZAo" node="48Vb4ZfrRyd" resolve="module" />
            </node>
            <node concept="liA8E" id="48Vb4ZfuFmH" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~SModule.getDeclaredDependencies()" resolve="getDeclaredDependencies" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfuT6c" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfuT6a" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="Xl_RD" id="48Vb4ZfuUbZ" role="37wK5m">
              <property role="Xl_RC" value="models" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="48Vb4ZfrTlp" role="3cqZAp">
          <node concept="2GrKxI" id="48Vb4ZfrTlq" role="2Gsz3X">
            <property role="TrG5h" value="model" />
          </node>
          <node concept="2OqwBi" id="48Vb4ZfrUSA" role="2GsD0m">
            <node concept="37vLTw" id="48Vb4ZfrUFy" role="2Oq$k0">
              <ref role="3cqZAo" node="48Vb4ZfrRyd" resolve="module" />
            </node>
            <node concept="liA8E" id="48Vb4ZfrV3W" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
            </node>
          </node>
          <node concept="3clFbS" id="48Vb4ZfrTlu" role="2LFqv$">
            <node concept="3clFbF" id="48Vb4ZfrTlv" role="3cqZAp">
              <node concept="1rXfSq" id="48Vb4ZfrTlw" role="3clFbG">
                <ref role="37wK5l" node="48Vb4Zfrv63" resolve="append" />
                <node concept="2GrUjf" id="48Vb4ZfrTlx" role="37wK5m">
                  <ref role="2Gs0qQ" node="48Vb4ZfrTlq" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfrTfC" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfrTfD" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="Xl_RD" id="48Vb4ZfrTfE" role="37wK5m">
              <property role="Xl_RC" value="module end" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="48Vb4Zfs16g" role="3cqZAp">
          <node concept="Xjq3P" id="48Vb4Zfs1fq" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="48Vb4ZfrRyd" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="48Vb4ZfrRyc" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4ZfuwF_" role="jymVt" />
    <node concept="3clFb_" id="48Vb4ZfuxY$" role="jymVt">
      <property role="TrG5h" value="append" />
      <node concept="37vLTG" id="48Vb4ZfuGAk" role="3clF46">
        <property role="TrG5h" value="dep" />
        <node concept="3uibUv" id="48Vb4ZfuIrg" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SDependency" resolve="SDependency" />
        </node>
      </node>
      <node concept="3cqZAl" id="48Vb4ZfuxYA" role="3clF45" />
      <node concept="3Tm1VV" id="48Vb4ZfuxYB" role="1B3o_S" />
      <node concept="3clFbS" id="48Vb4ZfuxYC" role="3clF47">
        <node concept="3clFbF" id="48Vb4ZfuRPO" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfuRPN" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="Xl_RD" id="48Vb4ZfuRSl" role="37wK5m">
              <property role="Xl_RC" value="dependency" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfuUK0" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfuUJY" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="2EnYce" id="48Vb4ZfuWFV" role="37wK5m">
              <node concept="2OqwBi" id="48Vb4ZfuUV3" role="2Oq$k0">
                <node concept="37vLTw" id="48Vb4ZfuUV4" role="2Oq$k0">
                  <ref role="3cqZAo" node="48Vb4ZfuGAk" resolve="dep" />
                </node>
                <node concept="liA8E" id="48Vb4ZfuUV5" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SDependency.getTargetModule()" resolve="getTargetModule" />
                </node>
              </node>
              <node concept="liA8E" id="48Vb4ZfuW_T" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfuVp0" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfuVoY" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="2YIFZM" id="48Vb4ZfuW1Y" role="37wK5m">
              <ref role="37wK5l" to="wyt6:~Boolean.toString(boolean)" resolve="toString" />
              <ref role="1Pybhc" to="wyt6:~Boolean" resolve="Boolean" />
              <node concept="2OqwBi" id="48Vb4ZfuVAH" role="37wK5m">
                <node concept="37vLTw" id="48Vb4ZfuVtL" role="2Oq$k0">
                  <ref role="3cqZAo" node="48Vb4ZfuGAk" resolve="dep" />
                </node>
                <node concept="liA8E" id="48Vb4ZfuVP9" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SDependency.isReexport()" resolve="isReexport" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfuXm4" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfuXm2" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="2OqwBi" id="48Vb4ZfuYPx" role="37wK5m">
              <node concept="2OqwBi" id="48Vb4ZfuYgv" role="2Oq$k0">
                <node concept="37vLTw" id="48Vb4ZfuY3X" role="2Oq$k0">
                  <ref role="3cqZAo" node="48Vb4ZfuGAk" resolve="dep" />
                </node>
                <node concept="liA8E" id="48Vb4ZfuYuV" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SDependency.getScope()" resolve="getScope" />
                </node>
              </node>
              <node concept="liA8E" id="48Vb4Zfv2Fw" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SDependencyScope.identify()" resolve="identify" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4ZfrIVI" role="jymVt" />
    <node concept="3clFb_" id="48Vb4Zfrv63" role="jymVt">
      <property role="TrG5h" value="append" />
      <node concept="37vLTG" id="48Vb4Zfr$If" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="48Vb4ZfrA0R" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3uibUv" id="48Vb4Zfs3sS" role="3clF45">
        <ref role="3uigEE" node="48Vb4Zfppr$" resolve="VersionCalculator" />
      </node>
      <node concept="3Tm1VV" id="48Vb4Zfrv66" role="1B3o_S" />
      <node concept="3clFbS" id="48Vb4Zfrv67" role="3clF47">
        <node concept="3SKdUt" id="48Vb4ZfunCg" role="3cqZAp">
          <node concept="1PaTwC" id="xL$$tDozu0" role="1aUNEU">
            <node concept="3oM_SD" id="xL$$tDozu1" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="xL$$tDozu2" role="1PaTwD">
              <property role="3oM_SC" value="imports" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfrB3s" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfrB3r" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="Xl_RD" id="48Vb4ZfrB4y" role="37wK5m">
              <property role="Xl_RC" value="model" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfrBcJ" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfrBcH" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="2EnYce" id="48Vb4ZfrBTX" role="37wK5m">
              <node concept="2OqwBi" id="48Vb4ZfrBmv" role="2Oq$k0">
                <node concept="37vLTw" id="48Vb4ZfrBfC" role="2Oq$k0">
                  <ref role="3cqZAo" node="48Vb4Zfr$If" resolve="model" />
                </node>
                <node concept="liA8E" id="48Vb4ZfrB$D" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getModelId()" resolve="getModelId" />
                </node>
              </node>
              <node concept="liA8E" id="48Vb4ZfrBSa" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfrCaz" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfrCax" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="2EnYce" id="48Vb4ZfrGrx" role="37wK5m">
              <node concept="2OqwBi" id="48Vb4ZfrCqh" role="2Oq$k0">
                <node concept="37vLTw" id="48Vb4ZfrCi7" role="2Oq$k0">
                  <ref role="3cqZAo" node="48Vb4Zfr$If" resolve="model" />
                </node>
                <node concept="liA8E" id="48Vb4ZfrCCr" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                </node>
              </node>
              <node concept="liA8E" id="48Vb4ZfrEDg" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModelName.getValue()" resolve="getValue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="48Vb4Zfv3Sk" role="3cqZAp" />
        <node concept="2Gpval" id="48Vb4Zfvfpj" role="3cqZAp">
          <node concept="2GrKxI" id="48Vb4Zfvfpl" role="2Gsz3X">
            <property role="TrG5h" value="importedModel" />
          </node>
          <node concept="3clFbS" id="48Vb4Zfvfpp" role="2LFqv$">
            <node concept="3clFbF" id="48Vb4Zfvhko" role="3cqZAp">
              <node concept="1rXfSq" id="48Vb4Zfvhkm" role="3clFbG">
                <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                <node concept="Xl_RD" id="48Vb4Zfvhng" role="37wK5m">
                  <property role="Xl_RC" value="import" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="48Vb4Zfvhwq" role="3cqZAp">
              <node concept="1rXfSq" id="48Vb4Zfvhwo" role="3clFbG">
                <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                <node concept="2OqwBi" id="48Vb4ZfvhLR" role="37wK5m">
                  <node concept="2GrUjf" id="48Vb4ZfvhzN" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="48Vb4Zfvfpl" resolve="importedModel" />
                  </node>
                  <node concept="liA8E" id="48Vb4ZfvibS" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="48Vb4ZfvatT" role="2GsD0m">
            <node concept="2ShNRf" id="48Vb4Zfv8Fg" role="2Oq$k0">
              <node concept="1pGfFk" id="48Vb4ZfvamB" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelImports.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelImports" />
                <node concept="37vLTw" id="48Vb4Zfvan_" role="37wK5m">
                  <ref role="3cqZAo" node="48Vb4Zfr$If" resolve="model" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="48Vb4ZfvaGz" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelImports.getImportedModels()" resolve="getImportedModels" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="48Vb4ZfvrbO" role="3cqZAp">
          <node concept="2GrKxI" id="48Vb4ZfvrbQ" role="2Gsz3X">
            <property role="TrG5h" value="lang" />
          </node>
          <node concept="2OqwBi" id="48Vb4Zfvvfu" role="2GsD0m">
            <node concept="1eOMI4" id="48Vb4ZfvuMh" role="2Oq$k0">
              <node concept="10QFUN" id="48Vb4Zfvuny" role="1eOMHV">
                <node concept="2OqwBi" id="48Vb4Zfvuns" role="10QFUP">
                  <node concept="1eOMI4" id="48Vb4Zfvunt" role="2Oq$k0">
                    <node concept="10QFUN" id="48Vb4Zfvunu" role="1eOMHV">
                      <node concept="3uibUv" id="48Vb4Zfvunv" role="10QFUM">
                        <ref role="3uigEE" to="g3l6:~SModelBase" resolve="SModelBase" />
                      </node>
                      <node concept="37vLTw" id="48Vb4Zfvunw" role="10QFUP">
                        <ref role="3cqZAo" node="48Vb4Zfr$If" resolve="model" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="48Vb4Zfvunx" role="2OqNvi">
                    <ref role="37wK5l" to="g3l6:~SModelBase.getModelData()" resolve="getModelData" />
                  </node>
                </node>
                <node concept="3uibUv" id="48Vb4ZfvuAQ" role="10QFUM">
                  <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="48Vb4ZfvvEE" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~SModel.usedLanguages()" resolve="usedLanguages" />
            </node>
          </node>
          <node concept="3clFbS" id="48Vb4ZfvrbU" role="2LFqv$">
            <node concept="3clFbF" id="48Vb4ZfvvYB" role="3cqZAp">
              <node concept="1rXfSq" id="48Vb4ZfvvYA" role="3clFbG">
                <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                <node concept="Xl_RD" id="48Vb4ZfvvZW" role="37wK5m">
                  <property role="Xl_RC" value="usedLanguage" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="48Vb4Zfvw9B" role="3cqZAp">
              <node concept="1rXfSq" id="48Vb4Zfvw9_" role="3clFbG">
                <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                <node concept="2OqwBi" id="48Vb4Zfvxtx" role="37wK5m">
                  <node concept="2OqwBi" id="48Vb4Zfvwi3" role="2Oq$k0">
                    <node concept="2GrUjf" id="48Vb4Zfvwcx" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="48Vb4ZfvrbQ" resolve="lang" />
                    </node>
                    <node concept="liA8E" id="48Vb4ZfvwU4" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SLanguage.getSourceModuleReference()" resolve="getSourceModuleReference" />
                    </node>
                  </node>
                  <node concept="liA8E" id="48Vb4ZfvyD9" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="48Vb4ZfvFUf" role="3cqZAp">
          <node concept="2GrKxI" id="48Vb4ZfvFUg" role="2Gsz3X">
            <property role="TrG5h" value="lang" />
          </node>
          <node concept="2OqwBi" id="48Vb4ZfvFUh" role="2GsD0m">
            <node concept="1eOMI4" id="48Vb4ZfvFUi" role="2Oq$k0">
              <node concept="10QFUN" id="48Vb4ZfvFUj" role="1eOMHV">
                <node concept="2OqwBi" id="48Vb4ZfvFUk" role="10QFUP">
                  <node concept="1eOMI4" id="48Vb4ZfvFUl" role="2Oq$k0">
                    <node concept="10QFUN" id="48Vb4ZfvFUm" role="1eOMHV">
                      <node concept="3uibUv" id="48Vb4ZfvFUn" role="10QFUM">
                        <ref role="3uigEE" to="g3l6:~SModelBase" resolve="SModelBase" />
                      </node>
                      <node concept="37vLTw" id="48Vb4ZfvFUo" role="10QFUP">
                        <ref role="3cqZAo" node="48Vb4Zfr$If" resolve="model" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="48Vb4ZfvFUp" role="2OqNvi">
                    <ref role="37wK5l" to="g3l6:~SModelBase.getModelData()" resolve="getModelData" />
                  </node>
                </node>
                <node concept="3uibUv" id="48Vb4ZfvFUq" role="10QFUM">
                  <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="48Vb4ZfvFUr" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~SModel.getLanguagesEngagedOnGeneration()" resolve="getLanguagesEngagedOnGeneration" />
            </node>
          </node>
          <node concept="3clFbS" id="48Vb4ZfvFUs" role="2LFqv$">
            <node concept="3clFbF" id="48Vb4ZfvFUt" role="3cqZAp">
              <node concept="1rXfSq" id="48Vb4ZfvFUu" role="3clFbG">
                <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                <node concept="Xl_RD" id="48Vb4ZfvFUv" role="37wK5m">
                  <property role="Xl_RC" value="engagedLanguage" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="48Vb4ZfvFUw" role="3cqZAp">
              <node concept="1rXfSq" id="48Vb4ZfvFUx" role="3clFbG">
                <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                <node concept="2OqwBi" id="48Vb4ZfvFUy" role="37wK5m">
                  <node concept="2OqwBi" id="48Vb4ZfvFUz" role="2Oq$k0">
                    <node concept="2GrUjf" id="48Vb4ZfvFU$" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="48Vb4ZfvFUg" resolve="lang" />
                    </node>
                    <node concept="liA8E" id="48Vb4ZfvFU_" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SLanguage.getSourceModuleReference()" resolve="getSourceModuleReference" />
                    </node>
                  </node>
                  <node concept="liA8E" id="48Vb4ZfvFUA" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="48Vb4ZfvnEq" role="3cqZAp" />
        <node concept="2Gpval" id="48Vb4ZfrH84" role="3cqZAp">
          <node concept="2GrKxI" id="48Vb4ZfrH86" role="2Gsz3X">
            <property role="TrG5h" value="rootNode" />
          </node>
          <node concept="2OqwBi" id="48Vb4ZfrItQ" role="2GsD0m">
            <node concept="37vLTw" id="48Vb4ZfrIgD" role="2Oq$k0">
              <ref role="3cqZAo" node="48Vb4Zfr$If" resolve="model" />
            </node>
            <node concept="liA8E" id="48Vb4ZfrIDf" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
            </node>
          </node>
          <node concept="3clFbS" id="48Vb4ZfrH8a" role="2LFqv$">
            <node concept="3clFbF" id="48Vb4ZfrIGQ" role="3cqZAp">
              <node concept="1rXfSq" id="48Vb4ZfrIGP" role="3clFbG">
                <ref role="37wK5l" node="48Vb4Zfp_RN" resolve="append" />
                <node concept="2GrUjf" id="48Vb4ZfrIJt" role="37wK5m">
                  <ref role="2Gs0qQ" node="48Vb4ZfrH86" resolve="rootNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfrHPn" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfrHPl" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="Xl_RD" id="48Vb4ZfrHVW" role="37wK5m">
              <property role="Xl_RC" value="model end" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="48Vb4Zfs2mG" role="3cqZAp">
          <node concept="Xjq3P" id="48Vb4Zfs2w3" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4Zfrucj" role="jymVt" />
    <node concept="3clFb_" id="48Vb4Zfp_RN" role="jymVt">
      <property role="TrG5h" value="append" />
      <node concept="37vLTG" id="48Vb4ZfpAav" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="48Vb4ZfpJBC" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3uibUv" id="48Vb4Zfs4pN" role="3clF45">
        <ref role="3uigEE" node="48Vb4Zfppr$" resolve="VersionCalculator" />
      </node>
      <node concept="3Tm1VV" id="48Vb4Zfp_RQ" role="1B3o_S" />
      <node concept="3clFbS" id="48Vb4Zfp_RR" role="3clF47">
        <node concept="3clFbF" id="48Vb4Zfqe5F" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4Zfqe5D" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="Xl_RD" id="48Vb4Zfqeb8" role="37wK5m">
              <property role="Xl_RC" value="node" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfpZ8d" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfpZ8b" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="2OqwBi" id="48Vb4ZfpZbn" role="37wK5m">
              <node concept="2OqwBi" id="48Vb4ZfpZbo" role="2Oq$k0">
                <node concept="37vLTw" id="48Vb4ZfpZbp" role="2Oq$k0">
                  <ref role="3cqZAo" node="48Vb4ZfpAav" resolve="node" />
                </node>
                <node concept="liA8E" id="48Vb4ZfpZbq" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                </node>
              </node>
              <node concept="liA8E" id="48Vb4ZfpZbr" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfqeiM" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfqeiK" role="3clFbG">
            <ref role="37wK5l" node="48Vb4Zfqgjj" resolve="append" />
            <node concept="2OqwBi" id="48Vb4ZfqeTE" role="37wK5m">
              <node concept="37vLTw" id="48Vb4ZfqeMc" role="2Oq$k0">
                <ref role="3cqZAo" node="48Vb4ZfpAav" resolve="node" />
              </node>
              <node concept="liA8E" id="48Vb4Zfqf7o" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfqNKQ" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfqNKO" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfqP3v" resolve="append" />
            <node concept="2OqwBi" id="48Vb4ZfqO8o" role="37wK5m">
              <node concept="37vLTw" id="48Vb4ZfqO0U" role="2Oq$k0">
                <ref role="3cqZAo" node="48Vb4ZfpAav" resolve="node" />
              </node>
              <node concept="liA8E" id="48Vb4ZfqOh4" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="48Vb4ZfqvMI" role="3cqZAp" />
        <node concept="3clFbF" id="48Vb4Zfqvtl" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4Zfqvtj" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="Xl_RD" id="48Vb4ZfqvAU" role="37wK5m">
              <property role="Xl_RC" value="properties" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="48Vb4Zfqutp" role="3cqZAp">
          <node concept="2GrKxI" id="48Vb4Zfqutr" role="2Gsz3X">
            <property role="TrG5h" value="property" />
          </node>
          <node concept="2OqwBi" id="48Vb4Zfqv4N" role="2GsD0m">
            <node concept="37vLTw" id="48Vb4ZfquQ6" role="2Oq$k0">
              <ref role="3cqZAo" node="48Vb4ZfpAav" resolve="node" />
            </node>
            <node concept="liA8E" id="48Vb4ZfqvgK" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getProperties()" resolve="getProperties" />
            </node>
          </node>
          <node concept="3clFbS" id="48Vb4Zfqutv" role="2LFqv$">
            <node concept="3clFbF" id="48Vb4ZfqvWZ" role="3cqZAp">
              <node concept="1rXfSq" id="48Vb4ZfqvWY" role="3clFbG">
                <ref role="37wK5l" node="48Vb4ZfqysV" resolve="append" />
                <node concept="2GrUjf" id="48Vb4ZfqvZ6" role="37wK5m">
                  <ref role="2Gs0qQ" node="48Vb4Zfqutr" resolve="property" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="48Vb4ZfqJp3" role="3cqZAp">
              <node concept="1rXfSq" id="48Vb4ZfqJp1" role="3clFbG">
                <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                <node concept="Xl_RD" id="48Vb4ZfqJyO" role="37wK5m">
                  <property role="Xl_RC" value="value" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="48Vb4ZfqJLu" role="3cqZAp">
              <node concept="1rXfSq" id="48Vb4ZfqJLs" role="3clFbG">
                <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                <node concept="2OqwBi" id="48Vb4ZfqK5I" role="37wK5m">
                  <node concept="37vLTw" id="48Vb4ZfqJWM" role="2Oq$k0">
                    <ref role="3cqZAo" node="48Vb4ZfpAav" resolve="node" />
                  </node>
                  <node concept="liA8E" id="48Vb4ZfqKk4" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                    <node concept="2GrUjf" id="48Vb4ZfqKli" role="37wK5m">
                      <ref role="2Gs0qQ" node="48Vb4Zfqutr" resolve="property" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="48Vb4Zfra_m" role="3cqZAp" />
        <node concept="3clFbF" id="48Vb4Zfra3u" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4Zfra3v" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="Xl_RD" id="48Vb4Zfra3w" role="37wK5m">
              <property role="Xl_RC" value="references" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="48Vb4Zfra3c" role="3cqZAp">
          <node concept="2GrKxI" id="48Vb4Zfra3d" role="2Gsz3X">
            <property role="TrG5h" value="ref" />
          </node>
          <node concept="2OqwBi" id="48Vb4Zfra3e" role="2GsD0m">
            <node concept="37vLTw" id="48Vb4Zfra3f" role="2Oq$k0">
              <ref role="3cqZAo" node="48Vb4ZfpAav" resolve="node" />
            </node>
            <node concept="liA8E" id="48Vb4Zfra3g" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getReferences()" resolve="getReferences" />
            </node>
          </node>
          <node concept="3clFbS" id="48Vb4Zfra3h" role="2LFqv$">
            <node concept="3clFbF" id="48Vb4Zfrrub" role="3cqZAp">
              <node concept="1rXfSq" id="48Vb4Zfrru9" role="3clFbG">
                <ref role="37wK5l" node="48Vb4ZfreKw" resolve="append" />
                <node concept="2GrUjf" id="48Vb4ZfrrND" role="37wK5m">
                  <ref role="2Gs0qQ" node="48Vb4Zfra3d" resolve="ref" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="48Vb4ZfqLDn" role="3cqZAp" />
        <node concept="3clFbF" id="48Vb4ZfqLOB" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfqLO_" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="Xl_RD" id="48Vb4ZfqM9w" role="37wK5m">
              <property role="Xl_RC" value="children" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="48Vb4ZfqMxq" role="3cqZAp">
          <node concept="2GrKxI" id="48Vb4ZfqMxs" role="2Gsz3X">
            <property role="TrG5h" value="child" />
          </node>
          <node concept="2OqwBi" id="48Vb4ZfqN8O" role="2GsD0m">
            <node concept="37vLTw" id="48Vb4ZfqMQ8" role="2Oq$k0">
              <ref role="3cqZAo" node="48Vb4ZfpAav" resolve="node" />
            </node>
            <node concept="liA8E" id="48Vb4ZfqNuu" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
            </node>
          </node>
          <node concept="3clFbS" id="48Vb4ZfqMxw" role="2LFqv$">
            <node concept="3clFbF" id="48Vb4ZfrtYt" role="3cqZAp">
              <node concept="1rXfSq" id="48Vb4ZfrtYs" role="3clFbG">
                <ref role="37wK5l" node="48Vb4Zfp_RN" resolve="append" />
                <node concept="2GrUjf" id="48Vb4Zfru0X" role="37wK5m">
                  <ref role="2Gs0qQ" node="48Vb4ZfqMxs" resolve="child" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="48Vb4ZfrsEk" role="3cqZAp" />
        <node concept="3clFbF" id="48Vb4Zfrth3" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4Zfrth1" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="Xl_RD" id="48Vb4Zfrt_b" role="37wK5m">
              <property role="Xl_RC" value="node end" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="48Vb4Zfs5I5" role="3cqZAp">
          <node concept="Xjq3P" id="48Vb4Zfs6Za" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4ZfrdKQ" role="jymVt" />
    <node concept="3clFb_" id="48Vb4ZfreKw" role="jymVt">
      <property role="TrG5h" value="append" />
      <node concept="37vLTG" id="48Vb4Zfrjid" role="3clF46">
        <property role="TrG5h" value="ref" />
        <node concept="3uibUv" id="48Vb4Zfrk$A" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
        </node>
      </node>
      <node concept="3uibUv" id="48Vb4ZfsbW$" role="3clF45">
        <ref role="3uigEE" node="48Vb4Zfppr$" resolve="VersionCalculator" />
      </node>
      <node concept="3Tm1VV" id="48Vb4ZfreKz" role="1B3o_S" />
      <node concept="3clFbS" id="48Vb4ZfreK$" role="3clF47">
        <node concept="3clFbF" id="48Vb4Zfrm5e" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4Zfrm5d" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="Xl_RD" id="48Vb4Zfrm6j" role="37wK5m">
              <property role="Xl_RC" value="reference" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4Zfrm9F" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4Zfrm9D" role="3clFbG">
            <ref role="37wK5l" node="48Vb4Zfr50i" resolve="append" />
            <node concept="2OqwBi" id="48Vb4Zfrmi2" role="37wK5m">
              <node concept="37vLTw" id="48Vb4Zfrmcj" role="2Oq$k0">
                <ref role="3cqZAo" node="48Vb4Zfrjid" resolve="ref" />
              </node>
              <node concept="liA8E" id="48Vb4ZfrmqY" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SReference.getLink()" resolve="getLink" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfroHK" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfroHI" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="Xl_RD" id="48Vb4ZfroLf" role="37wK5m">
              <property role="Xl_RC" value="target" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfroaH" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfroaF" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="2EnYce" id="48Vb4ZfrqXZ" role="37wK5m">
              <node concept="2OqwBi" id="48Vb4Zfrojw" role="2Oq$k0">
                <node concept="37vLTw" id="48Vb4ZfrodL" role="2Oq$k0">
                  <ref role="3cqZAo" node="48Vb4Zfrjid" resolve="ref" />
                </node>
                <node concept="liA8E" id="48Vb4ZfroBJ" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SReference.getTargetNodeReference()" resolve="getTargetNodeReference" />
                </node>
              </node>
              <node concept="liA8E" id="48Vb4ZfrqWm" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="48Vb4Zfs823" role="3cqZAp">
          <node concept="Xjq3P" id="48Vb4Zfs87Y" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4Zfppsx" role="jymVt" />
    <node concept="3clFb_" id="48Vb4ZfqP3v" role="jymVt">
      <property role="TrG5h" value="append" />
      <node concept="3uibUv" id="48Vb4ZfscV5" role="3clF45">
        <ref role="3uigEE" node="48Vb4Zfppr$" resolve="VersionCalculator" />
      </node>
      <node concept="3Tm1VV" id="48Vb4ZfqP3y" role="1B3o_S" />
      <node concept="3clFbS" id="48Vb4ZfqP3z" role="3clF47">
        <node concept="3clFbF" id="48Vb4ZftMnu" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZftMns" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="Xl_RD" id="48Vb4ZftNoD" role="37wK5m">
              <property role="Xl_RC" value="containmentLink" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="48Vb4ZftVN9" role="3cqZAp">
          <node concept="3clFbS" id="48Vb4ZftVNa" role="3clFbx">
            <node concept="3clFbF" id="48Vb4ZftVNb" role="3cqZAp">
              <node concept="1rXfSq" id="48Vb4ZftVNc" role="3clFbG">
                <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                <node concept="Xl_RD" id="48Vb4ZftVNd" role="37wK5m">
                  <property role="Xl_RC" value="null" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="48Vb4ZftVNe" role="3clFbw">
            <node concept="10Nm6u" id="48Vb4ZftVNf" role="3uHU7w" />
            <node concept="37vLTw" id="48Vb4ZftVNg" role="3uHU7B">
              <ref role="3cqZAo" node="48Vb4ZfqRHS" resolve="link" />
            </node>
          </node>
          <node concept="3eNFk2" id="48Vb4ZftVNh" role="3eNLev">
            <node concept="3clFbS" id="48Vb4ZftVNi" role="3eOfB_">
              <node concept="3clFbF" id="48Vb4ZftVNj" role="3cqZAp">
                <node concept="1rXfSq" id="48Vb4ZftVNk" role="3clFbG">
                  <ref role="37wK5l" node="48Vb4ZfqU1H" resolve="append" />
                  <node concept="2OqwBi" id="48Vb4ZftVNl" role="37wK5m">
                    <node concept="1eOMI4" id="48Vb4ZftVNm" role="2Oq$k0">
                      <node concept="10QFUN" id="48Vb4ZftVNn" role="1eOMHV">
                        <node concept="3uibUv" id="48Vb4ZftWVN" role="10QFUM">
                          <ref role="3uigEE" to="wb4m:~SContainmentLinkAdapterById" resolve="SContainmentLinkAdapterById" />
                        </node>
                        <node concept="37vLTw" id="48Vb4ZftVNp" role="10QFUP">
                          <ref role="3cqZAo" node="48Vb4ZfqRHS" resolve="link" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="48Vb4ZftVNq" role="2OqNvi">
                      <ref role="37wK5l" to="wb4m:~SContainmentLinkAdapterById.getId()" resolve="getId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="48Vb4ZftVNr" role="3eO9$A">
              <node concept="3uibUv" id="48Vb4ZftWVn" role="2ZW6by">
                <ref role="3uigEE" to="wb4m:~SContainmentLinkAdapterById" resolve="SContainmentLinkAdapterById" />
              </node>
              <node concept="37vLTw" id="48Vb4ZftVNt" role="2ZW6bz">
                <ref role="3cqZAo" node="48Vb4ZfqRHS" resolve="link" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="48Vb4ZftVNu" role="9aQIa">
            <node concept="3clFbS" id="48Vb4ZftVNv" role="9aQI4">
              <node concept="3clFbF" id="48Vb4ZftVNw" role="3cqZAp">
                <node concept="1rXfSq" id="48Vb4ZftVNx" role="3clFbG">
                  <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                  <node concept="Xl_RD" id="48Vb4ZftVNy" role="37wK5m">
                    <property role="Xl_RC" value="name" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="48Vb4ZftVNz" role="3cqZAp">
                <node concept="1rXfSq" id="48Vb4ZftVN$" role="3clFbG">
                  <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                  <node concept="2OqwBi" id="48Vb4ZftVN_" role="37wK5m">
                    <node concept="37vLTw" id="48Vb4ZftVNA" role="2Oq$k0">
                      <ref role="3cqZAo" node="48Vb4ZfqRHS" resolve="link" />
                    </node>
                    <node concept="liA8E" id="48Vb4ZftVNB" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="48Vb4Zfs959" role="3cqZAp">
          <node concept="Xjq3P" id="48Vb4Zfs95a" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="48Vb4ZfqRHS" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="48Vb4ZfqRHR" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4Zfr9g_" role="jymVt" />
    <node concept="3clFb_" id="48Vb4Zfr50i" role="jymVt">
      <property role="TrG5h" value="append" />
      <node concept="3uibUv" id="48Vb4ZfsdTE" role="3clF45">
        <ref role="3uigEE" node="48Vb4Zfppr$" resolve="VersionCalculator" />
      </node>
      <node concept="3Tm1VV" id="48Vb4Zfr50k" role="1B3o_S" />
      <node concept="3clFbS" id="48Vb4Zfr50l" role="3clF47">
        <node concept="3clFbF" id="48Vb4ZftNBd" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZftNBe" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="Xl_RD" id="48Vb4ZftNBf" role="37wK5m">
              <property role="Xl_RC" value="referenceLink" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="48Vb4ZftPIe" role="3cqZAp">
          <node concept="3clFbS" id="48Vb4ZftPIg" role="3clFbx">
            <node concept="3clFbF" id="48Vb4ZftVB7" role="3cqZAp">
              <node concept="1rXfSq" id="48Vb4ZftVB5" role="3clFbG">
                <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                <node concept="Xl_RD" id="48Vb4ZftVCt" role="37wK5m">
                  <property role="Xl_RC" value="null" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="48Vb4ZftR49" role="3clFbw">
            <node concept="10Nm6u" id="48Vb4ZftReq" role="3uHU7w" />
            <node concept="37vLTw" id="48Vb4ZftQIt" role="3uHU7B">
              <ref role="3cqZAo" node="48Vb4Zfr50H" resolve="link" />
            </node>
          </node>
          <node concept="3eNFk2" id="48Vb4ZftRf3" role="3eNLev">
            <node concept="3clFbS" id="48Vb4ZftRf5" role="3eOfB_">
              <node concept="3clFbF" id="48Vb4Zfr50r" role="3cqZAp">
                <node concept="1rXfSq" id="48Vb4Zfr50s" role="3clFbG">
                  <ref role="37wK5l" node="48Vb4ZfqZk8" resolve="append" />
                  <node concept="2OqwBi" id="48Vb4Zfr50t" role="37wK5m">
                    <node concept="1eOMI4" id="48Vb4Zfr50u" role="2Oq$k0">
                      <node concept="10QFUN" id="48Vb4Zfr50v" role="1eOMHV">
                        <node concept="3uibUv" id="48Vb4Zfr6BF" role="10QFUM">
                          <ref role="3uigEE" to="rzjr:~SReferenceLinkAdapterById" resolve="SReferenceLinkAdapterById" />
                        </node>
                        <node concept="37vLTw" id="48Vb4Zfr50x" role="10QFUP">
                          <ref role="3cqZAo" node="48Vb4Zfr50H" resolve="link" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="48Vb4Zfr50y" role="2OqNvi">
                      <ref role="37wK5l" to="rzjr:~SReferenceLinkAdapterById.getId()" resolve="getId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="48Vb4ZftRl0" role="3eO9$A">
              <node concept="3uibUv" id="48Vb4ZftRl1" role="2ZW6by">
                <ref role="3uigEE" to="rzjr:~SReferenceLinkAdapterById" resolve="SReferenceLinkAdapterById" />
              </node>
              <node concept="37vLTw" id="48Vb4ZftRl2" role="2ZW6bz">
                <ref role="3cqZAo" node="48Vb4Zfr50H" resolve="link" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="48Vb4ZftTod" role="9aQIa">
            <node concept="3clFbS" id="48Vb4ZftToe" role="9aQI4">
              <node concept="3clFbF" id="48Vb4Zfr50_" role="3cqZAp">
                <node concept="1rXfSq" id="48Vb4Zfr50A" role="3clFbG">
                  <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                  <node concept="Xl_RD" id="48Vb4Zfr50B" role="37wK5m">
                    <property role="Xl_RC" value="name" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="48Vb4Zfr50C" role="3cqZAp">
                <node concept="1rXfSq" id="48Vb4Zfr50D" role="3clFbG">
                  <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                  <node concept="2OqwBi" id="48Vb4Zfr50E" role="37wK5m">
                    <node concept="37vLTw" id="48Vb4Zfr50F" role="2Oq$k0">
                      <ref role="3cqZAo" node="48Vb4Zfr50H" resolve="link" />
                    </node>
                    <node concept="liA8E" id="48Vb4Zfr50G" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="48Vb4Zfs9aP" role="3cqZAp">
          <node concept="Xjq3P" id="48Vb4Zfs9aQ" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="48Vb4Zfr50H" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="48Vb4Zfr5Su" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4ZfqOlW" role="jymVt" />
    <node concept="3clFb_" id="48Vb4ZfqysV" role="jymVt">
      <property role="TrG5h" value="append" />
      <node concept="3uibUv" id="48Vb4ZfseSj" role="3clF45">
        <ref role="3uigEE" node="48Vb4Zfppr$" resolve="VersionCalculator" />
      </node>
      <node concept="3Tm1VV" id="48Vb4ZfqysX" role="1B3o_S" />
      <node concept="3clFbS" id="48Vb4ZfqysY" role="3clF47">
        <node concept="3clFbF" id="48Vb4ZfqysZ" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4Zfqyt0" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="Xl_RD" id="48Vb4Zfqyt1" role="37wK5m">
              <property role="Xl_RC" value="property" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="48Vb4Zfqyt2" role="3cqZAp">
          <node concept="2ZW3vV" id="48Vb4Zfqyt3" role="3clFbw">
            <node concept="3uibUv" id="48Vb4ZfqEpa" role="2ZW6by">
              <ref role="3uigEE" to="pwx:~SPropertyAdapterById" resolve="SPropertyAdapterById" />
            </node>
            <node concept="37vLTw" id="48Vb4Zfqyt5" role="2ZW6bz">
              <ref role="3cqZAo" node="48Vb4ZfqytA" resolve="property" />
            </node>
          </node>
          <node concept="3clFbS" id="48Vb4Zfqyt6" role="3clFbx">
            <node concept="3clFbF" id="48Vb4Zfqyt7" role="3cqZAp">
              <node concept="1rXfSq" id="48Vb4Zfqyt8" role="3clFbG">
                <ref role="37wK5l" node="48Vb4ZfqFqf" resolve="append" />
                <node concept="2OqwBi" id="48Vb4Zfqyt9" role="37wK5m">
                  <node concept="1eOMI4" id="48Vb4Zfqyta" role="2Oq$k0">
                    <node concept="10QFUN" id="48Vb4Zfqytb" role="1eOMHV">
                      <node concept="3uibUv" id="48Vb4ZfqEpz" role="10QFUM">
                        <ref role="3uigEE" to="pwx:~SPropertyAdapterById" resolve="SPropertyAdapterById" />
                      </node>
                      <node concept="37vLTw" id="48Vb4Zfqytd" role="10QFUP">
                        <ref role="3cqZAo" node="48Vb4ZfqytA" resolve="property" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="48Vb4Zfqyte" role="2OqNvi">
                    <ref role="37wK5l" to="pwx:~SPropertyAdapterById.getId()" resolve="getId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="48Vb4Zfqyts" role="9aQIa">
            <node concept="3clFbS" id="48Vb4Zfqytt" role="9aQI4">
              <node concept="3clFbF" id="48Vb4Zfqytu" role="3cqZAp">
                <node concept="1rXfSq" id="48Vb4Zfqytv" role="3clFbG">
                  <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                  <node concept="Xl_RD" id="48Vb4Zfqytw" role="37wK5m">
                    <property role="Xl_RC" value="name" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="48Vb4Zfqytx" role="3cqZAp">
                <node concept="1rXfSq" id="48Vb4Zfqyty" role="3clFbG">
                  <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                  <node concept="2OqwBi" id="48Vb4Zfqytz" role="37wK5m">
                    <node concept="37vLTw" id="48Vb4Zfqyt$" role="2Oq$k0">
                      <ref role="3cqZAo" node="48Vb4ZfqytA" resolve="property" />
                    </node>
                    <node concept="liA8E" id="48Vb4Zfqyt_" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="48Vb4Zfs9gx" role="3cqZAp">
          <node concept="Xjq3P" id="48Vb4Zfs9gy" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="48Vb4ZfqytA" role="3clF46">
        <property role="TrG5h" value="property" />
        <node concept="3uibUv" id="48Vb4ZfqzQ3" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4ZfqDHN" role="jymVt" />
    <node concept="3clFb_" id="48Vb4Zfqgjj" role="jymVt">
      <property role="TrG5h" value="append" />
      <node concept="3uibUv" id="48Vb4ZfsfR0" role="3clF45">
        <ref role="3uigEE" node="48Vb4Zfppr$" resolve="VersionCalculator" />
      </node>
      <node concept="3Tm1VV" id="48Vb4Zfqgjm" role="1B3o_S" />
      <node concept="3clFbS" id="48Vb4Zfqgjn" role="3clF47">
        <node concept="3clFbF" id="48Vb4ZfqqA4" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfqqA2" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="Xl_RD" id="48Vb4ZfqqCq" role="37wK5m">
              <property role="Xl_RC" value="concept" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="48Vb4ZfqihV" role="3cqZAp">
          <node concept="2ZW3vV" id="48Vb4ZfqiLm" role="3clFbw">
            <node concept="3uibUv" id="48Vb4ZfqiYh" role="2ZW6by">
              <ref role="3uigEE" to="vxxo:~SConceptAdapterById" resolve="SConceptAdapterById" />
            </node>
            <node concept="37vLTw" id="48Vb4Zfqiis" role="2ZW6bz">
              <ref role="3cqZAo" node="48Vb4ZfqhM8" resolve="concept" />
            </node>
          </node>
          <node concept="3clFbS" id="48Vb4ZfqihX" role="3clFbx">
            <node concept="3clFbF" id="48Vb4ZfqiZ2" role="3cqZAp">
              <node concept="1rXfSq" id="48Vb4ZfqiZ1" role="3clFbG">
                <ref role="37wK5l" node="48Vb4ZfqkAI" resolve="append" />
                <node concept="2OqwBi" id="48Vb4ZfqjzW" role="37wK5m">
                  <node concept="1eOMI4" id="48Vb4Zfqj1Z" role="2Oq$k0">
                    <node concept="10QFUN" id="48Vb4Zfqj1W" role="1eOMHV">
                      <node concept="3uibUv" id="48Vb4Zfqj21" role="10QFUM">
                        <ref role="3uigEE" to="vxxo:~SConceptAdapterById" resolve="SConceptAdapterById" />
                      </node>
                      <node concept="37vLTw" id="48Vb4Zfqj22" role="10QFUP">
                        <ref role="3cqZAo" node="48Vb4ZfqhM8" resolve="concept" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="48Vb4ZfqjVf" role="2OqNvi">
                    <ref role="37wK5l" to="vxxo:~SConceptAdapterById.getId()" resolve="getId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="48Vb4ZfqmJL" role="3eNLev">
            <node concept="2ZW3vV" id="48Vb4Zfqn9K" role="3eO9$A">
              <node concept="3uibUv" id="48Vb4Zfqned" role="2ZW6by">
                <ref role="3uigEE" to="vxxo:~SInterfaceConceptAdapterById" resolve="SInterfaceConceptAdapterById" />
              </node>
              <node concept="37vLTw" id="48Vb4ZfqmL6" role="2ZW6bz">
                <ref role="3cqZAo" node="48Vb4ZfqhM8" resolve="concept" />
              </node>
            </node>
            <node concept="3clFbS" id="48Vb4ZfqmJN" role="3eOfB_">
              <node concept="3clFbF" id="48Vb4Zfqnez" role="3cqZAp">
                <node concept="1rXfSq" id="48Vb4Zfqne$" role="3clFbG">
                  <ref role="37wK5l" node="48Vb4ZfqkAI" resolve="append" />
                  <node concept="2OqwBi" id="48Vb4Zfqne_" role="37wK5m">
                    <node concept="1eOMI4" id="48Vb4ZfqneA" role="2Oq$k0">
                      <node concept="10QFUN" id="48Vb4ZfqneB" role="1eOMHV">
                        <node concept="3uibUv" id="48Vb4ZfqnkS" role="10QFUM">
                          <ref role="3uigEE" to="vxxo:~SInterfaceConceptAdapterById" resolve="SInterfaceConceptAdapterById" />
                        </node>
                        <node concept="37vLTw" id="48Vb4ZfqneD" role="10QFUP">
                          <ref role="3cqZAo" node="48Vb4ZfqhM8" resolve="concept" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="48Vb4ZfqneE" role="2OqNvi">
                      <ref role="37wK5l" to="vxxo:~SInterfaceConceptAdapterById.getId()" resolve="getId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="48Vb4ZfqrOz" role="9aQIa">
            <node concept="3clFbS" id="48Vb4ZfqrO$" role="9aQI4">
              <node concept="3clFbF" id="48Vb4Zfqtci" role="3cqZAp">
                <node concept="1rXfSq" id="48Vb4Zfqtcg" role="3clFbG">
                  <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                  <node concept="Xl_RD" id="48Vb4Zfqth_" role="37wK5m">
                    <property role="Xl_RC" value="name" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="48Vb4ZfqrQp" role="3cqZAp">
                <node concept="1rXfSq" id="48Vb4ZfqrQo" role="3clFbG">
                  <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                  <node concept="2OqwBi" id="48Vb4Zfqs1R" role="37wK5m">
                    <node concept="37vLTw" id="48Vb4ZfqrSV" role="2Oq$k0">
                      <ref role="3cqZAo" node="48Vb4ZfqhM8" resolve="concept" />
                    </node>
                    <node concept="liA8E" id="48Vb4Zfqsjx" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="48Vb4Zfs9ml" role="3cqZAp">
          <node concept="Xjq3P" id="48Vb4Zfs9mm" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="48Vb4ZfqhM8" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="48Vb4Zfqilq" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4Zfqk4K" role="jymVt" />
    <node concept="3clFb_" id="48Vb4ZfqkAI" role="jymVt">
      <property role="TrG5h" value="append" />
      <node concept="3uibUv" id="48Vb4ZfsgPL" role="3clF45">
        <ref role="3uigEE" node="48Vb4Zfppr$" resolve="VersionCalculator" />
      </node>
      <node concept="3Tm1VV" id="48Vb4ZfqkAL" role="1B3o_S" />
      <node concept="3clFbS" id="48Vb4ZfqkAM" role="3clF47">
        <node concept="3clFbF" id="48Vb4Zfqqnc" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4Zfqqna" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="Xl_RD" id="48Vb4Zfqqsv" role="37wK5m">
              <property role="Xl_RC" value="conceptId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4Zfqp8z" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4Zfqp8y" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="2EnYce" id="48Vb4ZfqqbE" role="37wK5m">
              <node concept="37vLTw" id="48Vb4ZfqpaM" role="2Oq$k0">
                <ref role="3cqZAo" node="48Vb4Zfqmcp" resolve="id" />
              </node>
              <node concept="liA8E" id="48Vb4ZfqpoY" role="2OqNvi">
                <ref role="37wK5l" to="e8bb:~SConceptId.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="48Vb4Zfs9sN" role="3cqZAp">
          <node concept="Xjq3P" id="48Vb4Zfs9sO" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="48Vb4Zfqmcp" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="48Vb4Zfqmco" role="1tU5fm">
          <ref role="3uigEE" to="e8bb:~SConceptId" resolve="SConceptId" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4ZfqG2B" role="jymVt" />
    <node concept="3clFb_" id="48Vb4ZfqFqf" role="jymVt">
      <property role="TrG5h" value="append" />
      <node concept="3uibUv" id="48Vb4ZfshOC" role="3clF45">
        <ref role="3uigEE" node="48Vb4Zfppr$" resolve="VersionCalculator" />
      </node>
      <node concept="3Tm1VV" id="48Vb4ZfqFqh" role="1B3o_S" />
      <node concept="3clFbS" id="48Vb4ZfqFqi" role="3clF47">
        <node concept="3clFbF" id="48Vb4ZfqFqj" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfqFqk" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="Xl_RD" id="48Vb4ZfqFql" role="37wK5m">
              <property role="Xl_RC" value="propertyId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfqFqm" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfqFqn" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="2EnYce" id="48Vb4ZfqFqo" role="37wK5m">
              <node concept="37vLTw" id="48Vb4ZfqFqp" role="2Oq$k0">
                <ref role="3cqZAo" node="48Vb4ZfqFqr" resolve="id" />
              </node>
              <node concept="liA8E" id="48Vb4ZfqFqq" role="2OqNvi">
                <ref role="37wK5l" to="e8bb:~SPropertyId.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="48Vb4Zfs9xH" role="3cqZAp">
          <node concept="Xjq3P" id="48Vb4Zfs9xI" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="48Vb4ZfqFqr" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="48Vb4ZfqGCc" role="1tU5fm">
          <ref role="3uigEE" to="e8bb:~SPropertyId" resolve="SPropertyId" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4ZfqWIv" role="jymVt" />
    <node concept="3clFb_" id="48Vb4ZfqU1H" role="jymVt">
      <property role="TrG5h" value="append" />
      <node concept="3uibUv" id="48Vb4ZfsiNx" role="3clF45">
        <ref role="3uigEE" node="48Vb4Zfppr$" resolve="VersionCalculator" />
      </node>
      <node concept="3Tm1VV" id="48Vb4ZfqU1J" role="1B3o_S" />
      <node concept="3clFbS" id="48Vb4ZfqU1K" role="3clF47">
        <node concept="3clFbF" id="48Vb4ZfqU1L" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfqU1M" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="Xl_RD" id="48Vb4ZfqU1N" role="37wK5m">
              <property role="Xl_RC" value="containmentLinkId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfqU1O" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfqU1P" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="2EnYce" id="48Vb4ZfqU1Q" role="37wK5m">
              <node concept="37vLTw" id="48Vb4ZfqU1R" role="2Oq$k0">
                <ref role="3cqZAo" node="48Vb4ZfqU1T" resolve="id" />
              </node>
              <node concept="liA8E" id="48Vb4ZfqU1S" role="2OqNvi">
                <ref role="37wK5l" to="e8bb:~SContainmentLinkId.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="48Vb4Zfs9AB" role="3cqZAp">
          <node concept="Xjq3P" id="48Vb4Zfs9AC" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="48Vb4ZfqU1T" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="48Vb4ZfqXtO" role="1tU5fm">
          <ref role="3uigEE" to="e8bb:~SContainmentLinkId" resolve="SContainmentLinkId" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4Zfr20j" role="jymVt" />
    <node concept="3clFb_" id="48Vb4ZfqZk8" role="jymVt">
      <property role="TrG5h" value="append" />
      <node concept="3uibUv" id="48Vb4ZfsjMu" role="3clF45">
        <ref role="3uigEE" node="48Vb4Zfppr$" resolve="VersionCalculator" />
      </node>
      <node concept="3Tm1VV" id="48Vb4ZfqZka" role="1B3o_S" />
      <node concept="3clFbS" id="48Vb4ZfqZkb" role="3clF47">
        <node concept="3clFbF" id="48Vb4ZfqZkc" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfqZkd" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="Xl_RD" id="48Vb4ZfqZke" role="37wK5m">
              <property role="Xl_RC" value="referenceLinkId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfqZkf" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfqZkg" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="2EnYce" id="48Vb4ZfqZkh" role="37wK5m">
              <node concept="37vLTw" id="48Vb4ZfqZki" role="2Oq$k0">
                <ref role="3cqZAo" node="48Vb4ZfqZkk" resolve="id" />
              </node>
              <node concept="liA8E" id="48Vb4ZfqZkj" role="2OqNvi">
                <ref role="37wK5l" to="e8bb:~SReferenceLinkId.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="48Vb4Zfs9Fx" role="3cqZAp">
          <node concept="Xjq3P" id="48Vb4Zfs9Fy" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="48Vb4ZfqZkk" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="48Vb4Zfr05s" role="1tU5fm">
          <ref role="3uigEE" to="e8bb:~SReferenceLinkId" resolve="SReferenceLinkId" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4ZfqfOv" role="jymVt" />
    <node concept="3clFb_" id="48Vb4ZfpLnG" role="jymVt">
      <property role="TrG5h" value="append" />
      <node concept="37vLTG" id="48Vb4ZfpM$q" role="3clF46">
        <property role="TrG5h" value="str" />
        <node concept="17QB3L" id="48Vb4ZfpMNA" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="48Vb4ZfskLv" role="3clF45">
        <ref role="3uigEE" node="48Vb4Zfppr$" resolve="VersionCalculator" />
      </node>
      <node concept="3Tm1VV" id="48Vb4ZfpLnJ" role="1B3o_S" />
      <node concept="3clFbS" id="48Vb4ZfpLnK" role="3clF47">
        <node concept="3clFbJ" id="48Vb4ZfpT8K" role="3cqZAp">
          <node concept="3clFbS" id="48Vb4ZfpT8M" role="3clFbx">
            <node concept="3clFbF" id="48Vb4ZfpTGB" role="3cqZAp">
              <node concept="2OqwBi" id="48Vb4ZfpTR4" role="3clFbG">
                <node concept="37vLTw" id="48Vb4ZfpTG_" role="2Oq$k0">
                  <ref role="3cqZAo" node="48Vb4ZfppsF" resolve="digester" />
                </node>
                <node concept="liA8E" id="48Vb4ZfpU13" role="2OqNvi">
                  <ref role="37wK5l" to="jgjw:~MessageDigest.update(byte)" resolve="update" />
                  <node concept="10QFUN" id="48Vb4Zfq54D" role="37wK5m">
                    <node concept="3cmrfG" id="48Vb4Zfq54C" role="10QFUP">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="10PrrI" id="48Vb4Zfq53f" role="10QFUM" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="48Vb4ZfpTxH" role="3clFbw">
            <node concept="10Nm6u" id="48Vb4ZfpTFS" role="3uHU7w" />
            <node concept="37vLTw" id="48Vb4ZfpTaV" role="3uHU7B">
              <ref role="3cqZAo" node="48Vb4ZfpM$q" resolve="str" />
            </node>
          </node>
          <node concept="3eNFk2" id="48Vb4Zfq7F8" role="3eNLev">
            <node concept="3clFbS" id="48Vb4Zfq7Fa" role="3eOfB_">
              <node concept="3clFbF" id="48Vb4Zfq9Qe" role="3cqZAp">
                <node concept="2OqwBi" id="48Vb4Zfqa0D" role="3clFbG">
                  <node concept="37vLTw" id="48Vb4Zfq9Qd" role="2Oq$k0">
                    <ref role="3cqZAo" node="48Vb4ZfppsF" resolve="digester" />
                  </node>
                  <node concept="liA8E" id="48Vb4ZfqaaA" role="2OqNvi">
                    <ref role="37wK5l" to="jgjw:~MessageDigest.update(byte)" resolve="update" />
                    <node concept="10QFUN" id="48Vb4Zfqaft" role="37wK5m">
                      <node concept="10PrrI" id="48Vb4Zfqake" role="10QFUM" />
                      <node concept="3cmrfG" id="48Vb4Zfqamg" role="10QFUP">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="48Vb4Zfq8Pm" role="3eO9$A">
              <node concept="37vLTw" id="48Vb4Zfq8vQ" role="2Oq$k0">
                <ref role="3cqZAo" node="48Vb4ZfpM$q" resolve="str" />
              </node>
              <node concept="liA8E" id="48Vb4Zfq9P6" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="48Vb4ZfpZtc" role="9aQIa">
            <node concept="3clFbS" id="48Vb4ZfpZtd" role="9aQI4">
              <node concept="3clFbF" id="48Vb4ZfqaQE" role="3cqZAp">
                <node concept="2OqwBi" id="48Vb4ZfqaQF" role="3clFbG">
                  <node concept="37vLTw" id="48Vb4ZfqaQG" role="2Oq$k0">
                    <ref role="3cqZAo" node="48Vb4ZfppsF" resolve="digester" />
                  </node>
                  <node concept="liA8E" id="48Vb4ZfqaQH" role="2OqNvi">
                    <ref role="37wK5l" to="jgjw:~MessageDigest.update(byte)" resolve="update" />
                    <node concept="10QFUN" id="48Vb4ZfqaQI" role="37wK5m">
                      <node concept="10PrrI" id="48Vb4ZfqaQJ" role="10QFUM" />
                      <node concept="3cmrfG" id="48Vb4ZfqaQK" role="10QFUP">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="48Vb4ZfqctO" role="3cqZAp">
                <node concept="2OqwBi" id="48Vb4ZfqcM8" role="3clFbG">
                  <node concept="37vLTw" id="48Vb4ZfqctM" role="2Oq$k0">
                    <ref role="3cqZAo" node="48Vb4ZfppsF" resolve="digester" />
                  </node>
                  <node concept="liA8E" id="48Vb4Zfqd3z" role="2OqNvi">
                    <ref role="37wK5l" to="jgjw:~MessageDigest.update(byte[])" resolve="update" />
                    <node concept="2OqwBi" id="48Vb4ZfpN9i" role="37wK5m">
                      <node concept="37vLTw" id="48Vb4ZfpMOn" role="2Oq$k0">
                        <ref role="3cqZAo" node="48Vb4ZfpM$q" resolve="str" />
                      </node>
                      <node concept="liA8E" id="48Vb4ZfpN$D" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.getBytes(java.nio.charset.Charset)" resolve="getBytes" />
                        <node concept="37vLTw" id="48Vb4ZfpRyc" role="37wK5m">
                          <ref role="3cqZAo" node="48Vb4ZfpNX5" resolve="charset" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="48Vb4Zfs9Kr" role="3cqZAp">
          <node concept="Xjq3P" id="48Vb4Zfs9Ks" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4ZfpZRo" role="jymVt" />
    <node concept="3clFb_" id="48Vb4ZfpAH9" role="jymVt">
      <property role="TrG5h" value="getVersion" />
      <node concept="17QB3L" id="48Vb4ZfpBzG" role="3clF45" />
      <node concept="3Tm1VV" id="48Vb4ZfpAHc" role="1B3o_S" />
      <node concept="3clFbS" id="48Vb4ZfpAHd" role="3clF47">
        <node concept="3cpWs6" id="48Vb4ZfpBD3" role="3cqZAp">
          <node concept="2YIFZM" id="48Vb4ZfpBUc" role="3cqZAk">
            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
            <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
            <node concept="Xl_RD" id="48Vb4ZfpC3N" role="37wK5m">
              <property role="Xl_RC" value="%064d" />
            </node>
            <node concept="2ShNRf" id="48Vb4ZfpDtc" role="37wK5m">
              <node concept="1pGfFk" id="48Vb4ZfpE74" role="2ShVmc">
                <ref role="37wK5l" to="xlxw:~BigInteger.&lt;init&gt;(int,byte[])" resolve="BigInteger" />
                <node concept="3cmrfG" id="48Vb4ZfpEnV" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="48Vb4ZfpFVx" role="37wK5m">
                  <node concept="37vLTw" id="48Vb4ZfpFrj" role="2Oq$k0">
                    <ref role="3cqZAo" node="48Vb4ZfppsF" resolve="digester" />
                  </node>
                  <node concept="liA8E" id="48Vb4ZfpG$l" role="2OqNvi">
                    <ref role="37wK5l" to="jgjw:~MessageDigest.digest()" resolve="digest" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="48Vb4Zfppr_" role="1B3o_S" />
  </node>
</model>

