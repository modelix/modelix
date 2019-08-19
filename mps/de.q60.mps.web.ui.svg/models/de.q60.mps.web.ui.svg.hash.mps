<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:85de55b5-84d0-4cc5-8673-25addf93c394(de.q60.mps.web.ui.svg.hash)">
  <persistence version="9" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="xlxw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.math(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="7x5y" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.charset(JDK/)" />
    <import index="jgjw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.security(JDK/)" />
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534604311" name="jetbrains.mps.baseLanguage.structure.ByteType" flags="in" index="10PrrI" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
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
    <property role="TrG5h" value="HashCalculator" />
    <node concept="2tJIrI" id="48Vb4Zfppsm" role="jymVt" />
    <node concept="312cEg" id="48Vb4ZfppsF" role="jymVt">
      <property role="TrG5h" value="digester" />
      <node concept="3Tmbuc" id="48Vb4Zfp_Kv" role="1B3o_S" />
      <node concept="3uibUv" id="48Vb4Zfp$Ja" role="1tU5fm">
        <ref role="3uigEE" to="jgjw:~MessageDigest" resolve="MessageDigest" />
      </node>
    </node>
    <node concept="312cEg" id="2AThsNtKPHC" role="jymVt">
      <property role="TrG5h" value="hashProvider" />
      <node concept="3Tm6S6" id="2AThsNtKPHD" role="1B3o_S" />
      <node concept="3uibUv" id="2AThsNtKQmw" role="1tU5fm">
        <ref role="3uigEE" node="2AThsNtKejZ" resolve="IHashCache" />
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
      <node concept="37vLTG" id="2AThsNtKOZd" role="3clF46">
        <property role="TrG5h" value="hashProvider" />
        <node concept="3uibUv" id="2AThsNtKP2G" role="1tU5fm">
          <ref role="3uigEE" node="2AThsNtKejZ" resolve="IHashCache" />
        </node>
      </node>
      <node concept="3cqZAl" id="48Vb4Zfp$Ku" role="3clF45" />
      <node concept="3Tm1VV" id="48Vb4Zfp$Kv" role="1B3o_S" />
      <node concept="3clFbS" id="48Vb4Zfp$Kw" role="3clF47">
        <node concept="3clFbF" id="2AThsNtKQsD" role="3cqZAp">
          <node concept="37vLTI" id="2AThsNtKQXi" role="3clFbG">
            <node concept="37vLTw" id="2AThsNtKR0V" role="37vLTx">
              <ref role="3cqZAo" node="2AThsNtKOZd" resolve="hashProvider" />
            </node>
            <node concept="2OqwBi" id="2AThsNtKQ$L" role="37vLTJ">
              <node concept="Xjq3P" id="2AThsNtKQsB" role="2Oq$k0" />
              <node concept="2OwXpG" id="2AThsNtKQK5" role="2OqNvi">
                <ref role="2Oxat5" node="2AThsNtKPHC" resolve="hashProvider" />
              </node>
            </node>
          </node>
        </node>
        <node concept="SfApY" id="48Vb4Zfp_kd" role="3cqZAp">
          <node concept="3clFbS" id="48Vb4Zfp_ke" role="SfCbr">
            <node concept="3clFbF" id="48Vb4Zfp$L5" role="3cqZAp">
              <node concept="37vLTI" id="48Vb4Zfp$Wy" role="3clFbG">
                <node concept="2YIFZM" id="48Vb4Zfp_6X" role="37vLTx">
                  <ref role="1Pybhc" to="jgjw:~MessageDigest" resolve="MessageDigest" />
                  <ref role="37wK5l" to="jgjw:~MessageDigest.getInstance(java.lang.String)" resolve="getInstance" />
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
          <node concept="TDmWw" id="48Vb4Zfp_k9" role="TEbGg">
            <node concept="3clFbS" id="48Vb4Zfp_ka" role="TDEfX">
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
            <node concept="3cpWsn" id="48Vb4Zfp_kb" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="48Vb4Zfp_kc" role="1tU5fm">
                <ref role="3uigEE" to="jgjw:~NoSuchAlgorithmException" resolve="NoSuchAlgorithmException" />
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
              <ref role="37wK5l" to="7x5y:~Charset.forName(java.lang.String)" resolve="forName" />
              <ref role="1Pybhc" to="7x5y:~Charset" resolve="Charset" />
              <node concept="Xl_RD" id="48Vb4ZfpRVN" role="37wK5m">
                <property role="Xl_RC" value="UTF-8" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="48Vb4Zfrucj" role="jymVt" />
    <node concept="3clFb_" id="48Vb4Zfp_RN" role="jymVt">
      <property role="TrG5h" value="append" />
      <node concept="37vLTG" id="48Vb4ZfpAav" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="1_iojA24bpB" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3uibUv" id="48Vb4Zfs4pN" role="3clF45">
        <ref role="3uigEE" node="48Vb4Zfppr$" resolve="HashCalculator" />
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
            <node concept="2OqwBi" id="1_iojA24gvB" role="37wK5m">
              <node concept="2OqwBi" id="48Vb4ZfpZbo" role="2Oq$k0">
                <node concept="37vLTw" id="48Vb4ZfpZbp" role="2Oq$k0">
                  <ref role="3cqZAo" node="48Vb4ZfpAav" resolve="node" />
                </node>
                <node concept="liA8E" id="1_iojA24cti" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
                </node>
              </node>
              <node concept="liA8E" id="1_iojA24hRW" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfqeiM" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfqeiK" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="2OqwBi" id="1_iojA24iTT" role="37wK5m">
              <node concept="2OqwBi" id="48Vb4ZfqeTE" role="2Oq$k0">
                <node concept="37vLTw" id="48Vb4ZfqeMc" role="2Oq$k0">
                  <ref role="3cqZAo" node="48Vb4ZfpAav" resolve="node" />
                </node>
                <node concept="liA8E" id="48Vb4Zfqf7o" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                </node>
              </node>
              <node concept="liA8E" id="1_iojA24oa_" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48Vb4ZfqNKQ" role="3cqZAp">
          <node concept="1rXfSq" id="48Vb4ZfqNKO" role="3clFbG">
            <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
            <node concept="2OqwBi" id="1_iojA24lrF" role="37wK5m">
              <node concept="2OqwBi" id="48Vb4ZfqO8o" role="2Oq$k0">
                <node concept="37vLTw" id="48Vb4ZfqO0U" role="2Oq$k0">
                  <ref role="3cqZAo" node="48Vb4ZfpAav" resolve="node" />
                </node>
                <node concept="liA8E" id="48Vb4ZfqOh4" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                </node>
              </node>
              <node concept="liA8E" id="1_iojA24n1n" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
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
                <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                <node concept="2OqwBi" id="1_iojA24Ewy" role="37wK5m">
                  <node concept="2GrUjf" id="1_iojA24DQq" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="48Vb4Zfqutr" resolve="property" />
                  </node>
                  <node concept="liA8E" id="1_iojA24UCT" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                  </node>
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
                <node concept="2OqwBi" id="1_iojA24WTM" role="37wK5m">
                  <node concept="37vLTw" id="1_iojA24WsB" role="2Oq$k0">
                    <ref role="3cqZAo" node="48Vb4ZfpAav" resolve="node" />
                  </node>
                  <node concept="liA8E" id="1_iojA24XWL" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                    <node concept="2GrUjf" id="1_iojA24YEq" role="37wK5m">
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
                <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                <node concept="2OqwBi" id="1_iojA25eVu" role="37wK5m">
                  <node concept="2OqwBi" id="1_iojA250MT" role="2Oq$k0">
                    <node concept="2GrUjf" id="1_iojA250h6" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="48Vb4Zfra3d" resolve="ref" />
                    </node>
                    <node concept="liA8E" id="1_iojA25eoj" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SReference.getLink()" resolve="getLink" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1_iojA25tuj" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2AThsNtKCcn" role="3cqZAp">
              <node concept="1rXfSq" id="2AThsNtKCcl" role="3clFbG">
                <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                <node concept="Xl_RD" id="2AThsNtKCpe" role="37wK5m">
                  <property role="Xl_RC" value="target" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2AThsNtKCG0" role="3cqZAp">
              <node concept="1rXfSq" id="2AThsNtKCFY" role="3clFbG">
                <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                <node concept="2OqwBi" id="1_iojA25IBf" role="37wK5m">
                  <node concept="2OqwBi" id="1_iojA25wnF" role="2Oq$k0">
                    <node concept="2GrUjf" id="1_iojA25vQJ" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="48Vb4Zfra3d" resolve="ref" />
                    </node>
                    <node concept="liA8E" id="1_iojA25HGl" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SReference.getTargetNodeReference()" resolve="getTargetNodeReference" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1_iojA25WAm" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                  </node>
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
            <node concept="3clFbF" id="2AThsNtKSha" role="3cqZAp">
              <node concept="1rXfSq" id="2AThsNtKSh8" role="3clFbG">
                <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                <node concept="2OqwBi" id="1_iojA24eKz" role="37wK5m">
                  <node concept="2OqwBi" id="2AThsNtKSEX" role="2Oq$k0">
                    <node concept="2GrUjf" id="2AThsNtKSvc" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="48Vb4ZfqMxs" resolve="child" />
                    </node>
                    <node concept="liA8E" id="2AThsNtKThv" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1_iojA24ggE" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2AThsNtKV3o" role="3cqZAp">
              <node concept="1rXfSq" id="2AThsNtKV3m" role="3clFbG">
                <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                <node concept="Xl_RD" id="2AThsNtKVhN" role="37wK5m">
                  <property role="Xl_RC" value="childHash" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="48Vb4ZfrtYt" role="3cqZAp">
              <node concept="1rXfSq" id="48Vb4ZfrtYs" role="3clFbG">
                <ref role="37wK5l" node="48Vb4ZfpLnG" resolve="append" />
                <node concept="2OqwBi" id="2AThsNtKVpw" role="37wK5m">
                  <node concept="37vLTw" id="2AThsNtKVpx" role="2Oq$k0">
                    <ref role="3cqZAo" node="2AThsNtKPHC" resolve="hashProvider" />
                  </node>
                  <node concept="liA8E" id="2AThsNtKVpy" role="2OqNvi">
                    <ref role="37wK5l" node="2AThsNtKeqJ" resolve="get" />
                    <node concept="2GrUjf" id="2AThsNtKVU$" role="37wK5m">
                      <ref role="2Gs0qQ" node="48Vb4ZfqMxs" resolve="child" />
                    </node>
                  </node>
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
    <node concept="2tJIrI" id="48Vb4ZfqfOv" role="jymVt" />
    <node concept="3clFb_" id="48Vb4ZfpLnG" role="jymVt">
      <property role="TrG5h" value="append" />
      <node concept="37vLTG" id="48Vb4ZfpM$q" role="3clF46">
        <property role="TrG5h" value="str" />
        <node concept="17QB3L" id="48Vb4ZfpMNA" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="48Vb4ZfskLv" role="3clF45">
        <ref role="3uigEE" node="48Vb4Zfppr$" resolve="HashCalculator" />
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
      <property role="TrG5h" value="getHash" />
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
  <node concept="3HP615" id="2AThsNtKejZ">
    <property role="TrG5h" value="IHashCache" />
    <node concept="2tJIrI" id="2AThsNtKekH" role="jymVt" />
    <node concept="3clFb_" id="2AThsNtKekW" role="jymVt">
      <property role="TrG5h" value="set" />
      <node concept="37vLTG" id="2AThsNtKelQ" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="1_iojA24a7_" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="2AThsNtKep8" role="3clF46">
        <property role="TrG5h" value="hash" />
        <node concept="17QB3L" id="2AThsNtKep_" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="2AThsNtKekY" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNtKekZ" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNtKel0" role="3clF47" />
    </node>
    <node concept="3clFb_" id="2AThsNtKeqJ" role="jymVt">
      <property role="TrG5h" value="get" />
      <node concept="37vLTG" id="2AThsNtKerS" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="1_iojA24a8g" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="17QB3L" id="2AThsNtKety" role="3clF45" />
      <node concept="3Tm1VV" id="2AThsNtKeqM" role="1B3o_S" />
      <node concept="3clFbS" id="2AThsNtKeqN" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2AThsNtKekM" role="jymVt" />
    <node concept="3Tm1VV" id="2AThsNtKek0" role="1B3o_S" />
  </node>
</model>

