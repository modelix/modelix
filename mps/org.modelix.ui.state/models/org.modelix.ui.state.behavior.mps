<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d5a75d6a-e56f-4c12-a58e-3acb971cef19(org.modelix.ui.state.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="mmaq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.jdom(MPS.Core/)" />
    <import index="zn9m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util(MPS.IDEA/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mmar" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:org.jdom(MPS.IDEA/)" />
    <import index="fnup" ref="r:c0f62029-94d5-495d-b498-eb090ba537fc(org.modelix.ui.state.structure)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz" />
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="1423104411234567454" name="repo" index="ukAjM" />
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
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
  <node concept="13h7C7" id="4bjL$lUeO_r">
    <ref role="13h7C2" to="fnup:4bjL$lUeeQe" resolve="EditorComponentState" />
    <node concept="13i0hz" id="4bjL$lUeOEb" role="13h7CS">
      <property role="TrG5h" value="save" />
      <node concept="37vLTG" id="4bjL$lUeOKn" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="4bjL$lUeOTq" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4bjL$lUeOEc" role="1B3o_S" />
      <node concept="3cqZAl" id="4bjL$lUeOFv" role="3clF45" />
      <node concept="3clFbS" id="4bjL$lUeOEe" role="3clF47">
        <node concept="3cpWs8" id="4bjL$lUeUhi" role="3cqZAp">
          <node concept="3cpWsn" id="4bjL$lUeUhj" role="3cpWs9">
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="4bjL$lUeUcl" role="1tU5fm">
              <ref role="3uigEE" to="cj4x:~EditorComponentState" resolve="EditorComponentState" />
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="2UHWH1pQlwF" role="3cqZAp">
          <node concept="1QHqEC" id="2UHWH1pQlwH" role="1QHqEI">
            <node concept="3clFbS" id="2UHWH1pQlwJ" role="1bW5cS">
              <node concept="3clFbF" id="2UHWH1pQlQk" role="3cqZAp">
                <node concept="37vLTI" id="2UHWH1pQlQm" role="3clFbG">
                  <node concept="2OqwBi" id="4bjL$lUeUhk" role="37vLTx">
                    <node concept="2OqwBi" id="4bjL$lUeUhl" role="2Oq$k0">
                      <node concept="37vLTw" id="4bjL$lUeUhm" role="2Oq$k0">
                        <ref role="3cqZAo" node="4bjL$lUeOKn" resolve="editor" />
                      </node>
                      <node concept="liA8E" id="4bjL$lUeUhn" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4bjL$lUeUho" role="2OqNvi">
                      <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponentState()" resolve="getEditorComponentState" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2UHWH1pQlQq" role="37vLTJ">
                    <ref role="3cqZAo" node="4bjL$lUeUhj" resolve="state" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2UHWH1pQlEa" role="ukAjM">
            <node concept="2OqwBi" id="2UHWH1pQlEb" role="2Oq$k0">
              <node concept="37vLTw" id="2UHWH1pQlEc" role="2Oq$k0">
                <ref role="3cqZAo" node="4bjL$lUeOKn" resolve="editor" />
              </node>
              <node concept="liA8E" id="2UHWH1pQlEd" role="2OqNvi">
                <ref role="37wK5l" to="cj4x:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
              </node>
            </node>
            <node concept="liA8E" id="2UHWH1pQlEe" role="2OqNvi">
              <ref role="37wK5l" to="cj4x:~EditorContext.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4bjL$lUeUyo" role="3cqZAp">
          <node concept="3cpWsn" id="4bjL$lUeUyp" role="3cpWs9">
            <property role="TrG5h" value="element" />
            <node concept="3uibUv" id="4bjL$lUeUxD" role="1tU5fm">
              <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
            </node>
            <node concept="2ShNRf" id="4bjL$lUeUyq" role="33vP2m">
              <node concept="1pGfFk" id="4bjL$lUeUyr" role="2ShVmc">
                <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                <node concept="Xl_RD" id="4bjL$lUeXT1" role="37wK5m">
                  <property role="Xl_RC" value="editorState" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4bjL$lUeUmg" role="3cqZAp">
          <node concept="2YIFZM" id="4bjL$lUeUoh" role="3clFbG">
            <ref role="37wK5l" to="exr9:~MementoPersistence.saveMemento(jetbrains.mps.openapi.editor.EditorComponentState,org.jdom.Element)" resolve="saveMemento" />
            <ref role="1Pybhc" to="exr9:~MementoPersistence" resolve="MementoPersistence" />
            <node concept="37vLTw" id="4bjL$lUeUp$" role="37wK5m">
              <ref role="3cqZAo" node="4bjL$lUeUhj" resolve="state" />
            </node>
            <node concept="37vLTw" id="4bjL$lUeUys" role="37wK5m">
              <ref role="3cqZAo" node="4bjL$lUeUyp" resolve="element" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2UHWH1pM_Qe" role="3cqZAp">
          <node concept="3cpWsn" id="2UHWH1pM_Qf" role="3cpWs9">
            <property role="TrG5h" value="serialized" />
            <node concept="17QB3L" id="2UHWH1pM_Tr" role="1tU5fm" />
            <node concept="2YIFZM" id="2UHWH1pM_Qg" role="33vP2m">
              <ref role="1Pybhc" to="zn9m:~JDOMUtil" resolve="JDOMUtil" />
              <ref role="37wK5l" to="zn9m:~JDOMUtil.write(org.jdom.Element)" resolve="write" />
              <node concept="37vLTw" id="2UHWH1pM_Qh" role="37wK5m">
                <ref role="3cqZAo" node="4bjL$lUeUyp" resolve="element" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2UHWH1pM_XD" role="3cqZAp">
          <node concept="3clFbS" id="2UHWH1pM_XF" role="3clFbx">
            <node concept="3clFbF" id="2UHWH1pIzlB" role="3cqZAp">
              <node concept="37vLTI" id="2UHWH1pI$0X" role="3clFbG">
                <node concept="2OqwBi" id="2UHWH1pIzz2" role="37vLTJ">
                  <node concept="13iPFW" id="2UHWH1pIzl_" role="2Oq$k0" />
                  <node concept="3TrcHB" id="2UHWH1pIzGg" role="2OqNvi">
                    <ref role="3TsBF5" to="fnup:4bjL$lUeOrX" resolve="memento" />
                  </node>
                </node>
                <node concept="37vLTw" id="2UHWH1pM_Qi" role="37vLTx">
                  <ref role="3cqZAo" node="2UHWH1pM_Qf" resolve="serialized" />
                </node>
              </node>
            </node>
          </node>
          <node concept="17QLQc" id="2UHWH1pMAJ_" role="3clFbw">
            <node concept="37vLTw" id="2UHWH1pMAKi" role="3uHU7w">
              <ref role="3cqZAo" node="2UHWH1pM_Qf" resolve="serialized" />
            </node>
            <node concept="2OqwBi" id="2UHWH1pMAdI" role="3uHU7B">
              <node concept="13iPFW" id="2UHWH1pM_YL" role="2Oq$k0" />
              <node concept="3TrcHB" id="2UHWH1pMAnA" role="2OqNvi">
                <ref role="3TsBF5" to="fnup:4bjL$lUeOrX" resolve="memento" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2UHWH1pI$vB" role="13h7CS">
      <property role="TrG5h" value="restore" />
      <node concept="37vLTG" id="2UHWH1pI$vC" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="2UHWH1pI$vD" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2UHWH1pI$vE" role="1B3o_S" />
      <node concept="3cqZAl" id="2UHWH1pI$vF" role="3clF45" />
      <node concept="3clFbS" id="2UHWH1pI$vG" role="3clF47">
        <node concept="3J1_TO" id="2UHWH1pILHy" role="3cqZAp">
          <node concept="3uVAMA" id="2UHWH1pINdP" role="1zxBo5">
            <node concept="XOnhg" id="2UHWH1pINdQ" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="2UHWH1pINdR" role="1tU5fm">
                <node concept="3uibUv" id="2UHWH1pINgx" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2UHWH1pINdS" role="1zc67A">
              <node concept="YS8fn" id="2UHWH1pIOgT" role="3cqZAp">
                <node concept="2ShNRf" id="2UHWH1pIOgX" role="YScLw">
                  <node concept="1pGfFk" id="2UHWH1pJ7nF" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                    <node concept="Xl_RD" id="2UHWH1pJ7qt" role="37wK5m">
                      <property role="Xl_RC" value="Failed to restore editor state" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2UHWH1pILH$" role="1zxBo7">
            <node concept="3cpWs8" id="2UHWH1pICd9" role="3cqZAp">
              <node concept="3cpWsn" id="2UHWH1pICda" role="3cpWs9">
                <property role="TrG5h" value="element" />
                <node concept="3uibUv" id="2UHWH1pIC2g" role="1tU5fm">
                  <ref role="3uigEE" to="mmar:~Element" resolve="Element" />
                </node>
                <node concept="2YIFZM" id="2UHWH1pICdb" role="33vP2m">
                  <ref role="37wK5l" to="zn9m:~JDOMUtil.load(java.lang.CharSequence)" resolve="load" />
                  <ref role="1Pybhc" to="zn9m:~JDOMUtil" resolve="JDOMUtil" />
                  <node concept="2OqwBi" id="2UHWH1pICdc" role="37wK5m">
                    <node concept="13iPFW" id="2UHWH1pICdd" role="2Oq$k0" />
                    <node concept="3TrcHB" id="2UHWH1pICde" role="2OqNvi">
                      <ref role="3TsBF5" to="fnup:4bjL$lUeOrX" resolve="memento" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2UHWH1pIJkn" role="3cqZAp">
              <node concept="3cpWsn" id="2UHWH1pIJko" role="3cpWs9">
                <property role="TrG5h" value="state" />
                <node concept="3uibUv" id="2UHWH1pIJhb" role="1tU5fm">
                  <ref role="3uigEE" to="cj4x:~EditorComponentState" resolve="EditorComponentState" />
                </node>
                <node concept="2YIFZM" id="2UHWH1pIJkp" role="33vP2m">
                  <ref role="37wK5l" to="exr9:~MementoPersistence.loadMemento(org.jdom.Element)" resolve="loadMemento" />
                  <ref role="1Pybhc" to="exr9:~MementoPersistence" resolve="MementoPersistence" />
                  <node concept="37vLTw" id="2UHWH1pIJkq" role="37wK5m">
                    <ref role="3cqZAo" node="2UHWH1pICda" resolve="element" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2UHWH1pIHvr" role="3cqZAp">
              <node concept="2OqwBi" id="2UHWH1pIHVf" role="3clFbG">
                <node concept="2OqwBi" id="2UHWH1pIHD8" role="2Oq$k0">
                  <node concept="37vLTw" id="2UHWH1pIHvp" role="2Oq$k0">
                    <ref role="3cqZAo" node="2UHWH1pI$vC" resolve="editor" />
                  </node>
                  <node concept="liA8E" id="2UHWH1pIHLy" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
                  </node>
                </node>
                <node concept="liA8E" id="2UHWH1pII69" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.restoreEditorComponentState(jetbrains.mps.openapi.editor.EditorComponentState)" resolve="restoreEditorComponentState" />
                  <node concept="37vLTw" id="2UHWH1pIJOw" role="37wK5m">
                    <ref role="3cqZAo" node="2UHWH1pIJko" resolve="state" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="4bjL$lUeO_s" role="13h7CW">
      <node concept="3clFbS" id="4bjL$lUeO_t" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="2UHWH1pKQ4c">
    <ref role="13h7C2" to="fnup:4bjL$lUe34H" resolve="UiStateRoot" />
    <node concept="13i0hz" id="2UHWH1pKQ4L" role="13h7CS">
      <property role="TrG5h" value="getSession" />
      <node concept="37vLTG" id="2UHWH1pKQ85" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="2UHWH1pKQ89" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="2UHWH1pKQ4M" role="1B3o_S" />
      <node concept="3Tqbb2" id="2UHWH1pKQ9M" role="3clF45">
        <ref role="ehGHo" to="fnup:4bjL$lUedD6" resolve="UserSession" />
      </node>
      <node concept="3clFbS" id="2UHWH1pKQ4O" role="3clF47">
        <node concept="3clFbF" id="2UHWH1pKQd2" role="3cqZAp">
          <node concept="2OqwBi" id="2UHWH1pKS6M" role="3clFbG">
            <node concept="2OqwBi" id="2UHWH1pKQmC" role="2Oq$k0">
              <node concept="13iPFW" id="2UHWH1pKQd1" role="2Oq$k0" />
              <node concept="3Tsc0h" id="2UHWH1pKQvN" role="2OqNvi">
                <ref role="3TtcxE" to="fnup:4bjL$lUeegP" resolve="sessions" />
              </node>
            </node>
            <node concept="1z4cxt" id="2UHWH1pKU8W" role="2OqNvi">
              <node concept="1bVj0M" id="2UHWH1pKU8Y" role="23t8la">
                <node concept="3clFbS" id="2UHWH1pKU8Z" role="1bW5cS">
                  <node concept="3clFbF" id="2UHWH1pKUeh" role="3cqZAp">
                    <node concept="17R0WA" id="2UHWH1pKV3C" role="3clFbG">
                      <node concept="37vLTw" id="2UHWH1pKV4l" role="3uHU7w">
                        <ref role="3cqZAo" node="2UHWH1pKQ85" resolve="id" />
                      </node>
                      <node concept="2OqwBi" id="2UHWH1pKUqE" role="3uHU7B">
                        <node concept="37vLTw" id="2UHWH1pKUeg" role="2Oq$k0">
                          <ref role="3cqZAo" node="2UHWH1pKU90" resolve="it" />
                        </node>
                        <node concept="3TrcHB" id="2UHWH1pKU_6" role="2OqNvi">
                          <ref role="3TsBF5" to="fnup:2UHWH1pKMDf" resolve="id" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2UHWH1pKU90" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2UHWH1pKU91" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="2UHWH1pKQ4d" role="13h7CW">
      <node concept="3clFbS" id="2UHWH1pKQ4e" role="2VODD2" />
    </node>
  </node>
</model>

