<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a009b15b-6386-4045-b94f-fa21b9788c19(de.q60.mps.web.ui.svg.svg)">
  <persistence version="9" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="6lvu" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cellMenu(MPS.Editor/)" />
    <import index="fbzs" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.geom(JDK/)" />
    <import index="jan3" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.image(JDK/)" />
    <import index="oqcp" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.imageio(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="qsto" ref="r:6f19a603-f6b1-4c78-aaa5-6c24c7fbc333(de.q60.mps.web.ui.common)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="5279705229678483897" name="jetbrains.mps.baseLanguage.structure.FloatingPointFloatConstant" flags="nn" index="2$xPTn">
        <property id="5279705229678483899" name="value" index="2$xPTl" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="ng" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367509" name="finallyClause" index="1zxBo6" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e">
        <child id="1225797361612" name="parameter" index="1BdPVh" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="6xm2RBl62ji">
    <property role="TrG5h" value="EditorToImage" />
    <node concept="2tJIrI" id="1me6UesqgNc" role="jymVt" />
    <node concept="2YIFZL" id="1me6Uesqf38" role="jymVt">
      <property role="TrG5h" value="paintEditor" />
      <node concept="3Tm1VV" id="7tTb3N6Kgyo" role="1B3o_S" />
      <node concept="3cqZAl" id="1me6Uesqf3a" role="3clF45" />
      <node concept="37vLTG" id="1me6Uesqf2Q" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="1me6Uesqf2R" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="1me6Uesqf2S" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="1me6Uesqk9Z" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
        </node>
      </node>
      <node concept="3clFbS" id="1me6Uesqf0v" role="3clF47">
        <node concept="3clFbF" id="7tTb3N6I3Yb" role="3cqZAp">
          <node concept="2YIFZM" id="7tTb3N6Iisn" role="3clFbG">
            <ref role="37wK5l" to="3a50:~ThreadUtils.assertEDT()" resolve="assertEDT" />
            <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
          </node>
        </node>
        <node concept="3clFbH" id="7tTb3N6IiAE" role="3cqZAp" />
        <node concept="3clFbF" id="1me6Uesqf0w" role="3cqZAp">
          <node concept="2OqwBi" id="1me6Uesqf0x" role="3clFbG">
            <node concept="liA8E" id="1me6Uesqf0y" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.paint(java.awt.Graphics)" resolve="paint" />
              <node concept="37vLTw" id="1me6Uesqf32" role="37wK5m">
                <ref role="3cqZAo" node="1me6Uesqf2S" resolve="g" />
              </node>
            </node>
            <node concept="1eOMI4" id="1me6Uesqf0$" role="2Oq$k0">
              <node concept="10QFUN" id="1me6Uesqf0_" role="1eOMHV">
                <node concept="37vLTw" id="1me6Uesqf31" role="10QFUP">
                  <ref role="3cqZAo" node="1me6Uesqf2Q" resolve="editor" />
                </node>
                <node concept="3uibUv" id="1me6Uesqf0B" role="10QFUM">
                  <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="2D2$TMZtRlU" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="1me6Uesqf0C" role="8Wnug">
            <node concept="3cpWsn" id="1me6Uesqf0D" role="3cpWs9">
              <property role="TrG5h" value="chooser" />
              <node concept="3uibUv" id="1me6Uesqf0E" role="1tU5fm">
                <ref role="3uigEE" to="6lvu:~NodeSubstituteChooser" resolve="NodeSubstituteChooser" />
              </node>
              <node concept="2OqwBi" id="1me6Uesqf0F" role="33vP2m">
                <node concept="1eOMI4" id="1me6Uesqf0G" role="2Oq$k0">
                  <node concept="10QFUN" id="1me6Uesqf0H" role="1eOMHV">
                    <node concept="37vLTw" id="1me6Uesqf2W" role="10QFUP">
                      <ref role="3cqZAo" node="1me6Uesqf2Q" resolve="editor" />
                    </node>
                    <node concept="3uibUv" id="1me6Uesqf0J" role="10QFUM">
                      <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1me6Uesqf0K" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorComponent.getNodeSubstituteChooser()" resolve="getNodeSubstituteChooser" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="2D2$TMZtRlV" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbJ" id="1me6Uesqf0L" role="8Wnug">
            <node concept="3clFbS" id="1me6Uesqf0M" role="3clFbx">
              <node concept="3cpWs8" id="1me6Uesqf0N" role="3cqZAp">
                <node concept="3cpWsn" id="1me6Uesqf0O" role="3cpWs9">
                  <property role="TrG5h" value="window" />
                  <node concept="3uibUv" id="1me6Uesqf0P" role="1tU5fm">
                    <ref role="3uigEE" to="z60i:~Window" resolve="Window" />
                  </node>
                  <node concept="2OqwBi" id="1me6Uesqf0Q" role="33vP2m">
                    <node concept="37vLTw" id="1me6Uesqf0R" role="2Oq$k0">
                      <ref role="3cqZAo" node="1me6Uesqf0D" resolve="chooser" />
                    </node>
                    <node concept="liA8E" id="1me6Uesqf0S" role="2OqNvi">
                      <ref role="37wK5l" to="6lvu:~NodeSubstituteChooser.getWindow()" resolve="getWindow" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1me6Uesqf0T" role="3cqZAp">
                <node concept="3clFbS" id="1me6Uesqf0U" role="3clFbx">
                  <node concept="3clFbF" id="1me6Uesqf0V" role="3cqZAp">
                    <node concept="1rXfSq" id="1me6Uesqf0W" role="3clFbG">
                      <ref role="37wK5l" node="1LwnBM301Rx" resolve="withGraphicsCopy" />
                      <node concept="37vLTw" id="1me6Uesqf2X" role="37wK5m">
                        <ref role="3cqZAo" node="1me6Uesqf2S" resolve="g" />
                      </node>
                      <node concept="1bVj0M" id="1me6Uesqf0Y" role="37wK5m">
                        <node concept="37vLTG" id="1me6Uesqf0Z" role="1bW2Oz">
                          <property role="TrG5h" value="g2" />
                          <node concept="3uibUv" id="1me6Uesqf10" role="1tU5fm">
                            <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="1me6Uesqf11" role="1bW5cS">
                          <node concept="3clFbF" id="1me6Uesqf12" role="3cqZAp">
                            <node concept="2OqwBi" id="1me6Uesqf13" role="3clFbG">
                              <node concept="37vLTw" id="1me6Uesqf14" role="2Oq$k0">
                                <ref role="3cqZAo" node="1me6Uesqf0Z" resolve="g2" />
                              </node>
                              <node concept="liA8E" id="1me6Uesqf15" role="2OqNvi">
                                <ref role="37wK5l" to="z60i:~Graphics.translate(int,int)" resolve="translate" />
                                <node concept="2OqwBi" id="1me6Uesqf16" role="37wK5m">
                                  <node concept="37vLTw" id="1me6Uesqf17" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1me6Uesqf0O" resolve="window" />
                                  </node>
                                  <node concept="liA8E" id="1me6Uesqf18" role="2OqNvi">
                                    <ref role="37wK5l" to="z60i:~Component.getX()" resolve="getX" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="1me6Uesqf19" role="37wK5m">
                                  <node concept="37vLTw" id="1me6Uesqf1a" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1me6Uesqf0O" resolve="window" />
                                  </node>
                                  <node concept="liA8E" id="1me6Uesqf1b" role="2OqNvi">
                                    <ref role="37wK5l" to="z60i:~Component.getY()" resolve="getY" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1me6Uesqf1c" role="3cqZAp">
                            <node concept="2OqwBi" id="1me6Uesqf1d" role="3clFbG">
                              <node concept="37vLTw" id="1me6Uesqf1e" role="2Oq$k0">
                                <ref role="3cqZAo" node="1me6Uesqf0O" resolve="window" />
                              </node>
                              <node concept="liA8E" id="1me6Uesqf1f" role="2OqNvi">
                                <ref role="37wK5l" to="z60i:~Window.paint(java.awt.Graphics)" resolve="paint" />
                                <node concept="37vLTw" id="1me6Uesqf1g" role="37wK5m">
                                  <ref role="3cqZAo" node="1me6Uesqf0Z" resolve="g2" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1me6Uesqf1h" role="3clFbw">
                  <node concept="37vLTw" id="1me6Uesqf1i" role="2Oq$k0">
                    <ref role="3cqZAo" node="1me6Uesqf0O" resolve="window" />
                  </node>
                  <node concept="liA8E" id="1me6Uesqf1j" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Window.isShowing()" resolve="isShowing" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1me6Uesqf1k" role="3clFbw">
              <node concept="37vLTw" id="1me6Uesqf1l" role="2Oq$k0">
                <ref role="3cqZAo" node="1me6Uesqf0D" resolve="chooser" />
              </node>
              <node concept="liA8E" id="1me6Uesqf1m" role="2OqNvi">
                <ref role="37wK5l" to="6lvu:~NodeSubstituteChooser.isVisible()" resolve="isVisible" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1me6Uesqf1n" role="3cqZAp" />
        <node concept="3clFbF" id="1me6Uesqf1o" role="3cqZAp">
          <node concept="2OqwBi" id="1me6Uesqf1p" role="3clFbG">
            <node concept="37vLTw" id="1me6Uesqf2U" role="2Oq$k0">
              <ref role="3cqZAo" node="1me6Uesqf2S" resolve="g" />
            </node>
            <node concept="liA8E" id="1me6Uesqf1r" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setFont(java.awt.Font)" resolve="setFont" />
              <node concept="2OqwBi" id="1me6Uesqf1s" role="37wK5m">
                <node concept="2YIFZM" id="1me6Uesqf1t" role="2Oq$k0">
                  <ref role="37wK5l" to="exr9:~EditorSettings.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="exr9:~EditorSettings" resolve="EditorSettings" />
                </node>
                <node concept="liA8E" id="1me6Uesqf1u" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorSettings.getDefaultEditorFont()" resolve="getDefaultEditorFont" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1me6Uesqf1v" role="3cqZAp">
          <node concept="3cpWsn" id="1me6Uesqf1w" role="3cpWs9">
            <property role="TrG5h" value="str" />
            <node concept="17QB3L" id="1me6Uesqf1x" role="1tU5fm" />
            <node concept="3cpWs3" id="1me6Uesqf1y" role="33vP2m">
              <node concept="10M0yZ" id="5npwda7lIAP" role="3uHU7w">
                <ref role="3cqZAo" to="qsto:2HzO4VEyW58" resolve="RANDOM_STATIC_NUMBER_4DIGIT" />
                <ref role="1PxDUh" to="qsto:3ov7kT3oB09" resolve="RandomStaticNumber" />
              </node>
              <node concept="Xl_RD" id="1me6Uesqf1$" role="3uHU7B">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lpnKkXZ4Co" role="3cqZAp">
          <node concept="2OqwBi" id="lpnKkXZ5z2" role="3clFbG">
            <node concept="37vLTw" id="lpnKkXZ4Cm" role="2Oq$k0">
              <ref role="3cqZAo" node="1me6Uesqf2S" resolve="g" />
            </node>
            <node concept="liA8E" id="lpnKkXZ6HO" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setFont(java.awt.Font)" resolve="setFont" />
              <node concept="2OqwBi" id="lpnKkXZ7Kp" role="37wK5m">
                <node concept="2OqwBi" id="lpnKkXZ7aJ" role="2Oq$k0">
                  <node concept="37vLTw" id="lpnKkXZ6Pb" role="2Oq$k0">
                    <ref role="3cqZAo" node="1me6Uesqf2S" resolve="g" />
                  </node>
                  <node concept="liA8E" id="lpnKkXZ7uK" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.getFont()" resolve="getFont" />
                  </node>
                </node>
                <node concept="liA8E" id="lpnKkXZ80U" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Font.deriveFont(float)" resolve="deriveFont" />
                  <node concept="2$xPTn" id="lpnKkXZ8Ey" role="37wK5m">
                    <property role="2$xPTl" value="8.0f" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1me6Uesqwo7" role="3cqZAp">
          <node concept="3cpWsn" id="1me6Uesqwo8" role="3cpWs9">
            <property role="TrG5h" value="strBounds" />
            <node concept="3uibUv" id="1me6UesqsNb" role="1tU5fm">
              <ref role="3uigEE" to="fbzs:~Rectangle2D" resolve="Rectangle2D" />
            </node>
            <node concept="2OqwBi" id="1me6Uesqwo9" role="33vP2m">
              <node concept="2OqwBi" id="1me6Uesqwoa" role="2Oq$k0">
                <node concept="37vLTw" id="1me6Uesqwob" role="2Oq$k0">
                  <ref role="3cqZAo" node="1me6Uesqf2S" resolve="g" />
                </node>
                <node concept="liA8E" id="1me6Uesqwoc" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.getFontMetrics()" resolve="getFontMetrics" />
                </node>
              </node>
              <node concept="liA8E" id="1me6Uesqwod" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~FontMetrics.getStringBounds(java.lang.String,java.awt.Graphics)" resolve="getStringBounds" />
                <node concept="37vLTw" id="1me6Uesqwoe" role="37wK5m">
                  <ref role="3cqZAo" node="1me6Uesqf1w" resolve="str" />
                </node>
                <node concept="37vLTw" id="1me6Uesqwof" role="37wK5m">
                  <ref role="3cqZAo" node="1me6Uesqf2S" resolve="g" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1me6Uesqy1t" role="3cqZAp">
          <node concept="3cpWsn" id="1me6Uesqy1w" role="3cpWs9">
            <property role="TrG5h" value="strY" />
            <node concept="10Oyi0" id="1me6Uesqy$N" role="1tU5fm" />
            <node concept="10QFUN" id="1me6UesqTls" role="33vP2m">
              <node concept="1eOMI4" id="1me6UesqTlt" role="10QFUP">
                <node concept="3cpWsd" id="1me6UesqTln" role="1eOMHV">
                  <node concept="3cmrfG" id="1me6UesqTlo" role="3uHU7B">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="1me6UesqTlp" role="3uHU7w">
                    <node concept="37vLTw" id="1me6UesqTlq" role="2Oq$k0">
                      <ref role="3cqZAo" node="1me6Uesqwo8" resolve="strBounds" />
                    </node>
                    <node concept="liA8E" id="1me6UesqTlr" role="2OqNvi">
                      <ref role="37wK5l" to="fbzs:~RectangularShape.getY()" resolve="getY" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="10Oyi0" id="1me6UesqTlm" role="10QFUM" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1me6UesqBq9" role="3cqZAp">
          <node concept="3cpWsn" id="1me6UesqBqc" role="3cpWs9">
            <property role="TrG5h" value="strX" />
            <node concept="10Oyi0" id="1me6UesqBq7" role="1tU5fm" />
            <node concept="3cpWsd" id="1me6UesqKZv" role="33vP2m">
              <node concept="3cmrfG" id="1me6UesqL59" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="10QFUN" id="1me6UesqHrg" role="3uHU7B">
                <node concept="10Oyi0" id="1me6UesqHr5" role="10QFUM" />
                <node concept="1eOMI4" id="1me6UesqHrh" role="10QFUP">
                  <node concept="3cpWsd" id="1me6UesqHr6" role="1eOMHV">
                    <node concept="2OqwBi" id="1me6UesqHr7" role="3uHU7w">
                      <node concept="37vLTw" id="1me6UesqHr8" role="2Oq$k0">
                        <ref role="3cqZAo" node="1me6Uesqwo8" resolve="strBounds" />
                      </node>
                      <node concept="liA8E" id="1me6UesqHr9" role="2OqNvi">
                        <ref role="37wK5l" to="fbzs:~RectangularShape.getWidth()" resolve="getWidth" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1me6UesqHra" role="3uHU7B">
                      <node concept="1eOMI4" id="1me6UesqHrb" role="2Oq$k0">
                        <node concept="10QFUN" id="1me6UesqHrc" role="1eOMHV">
                          <node concept="37vLTw" id="1me6UesqHrd" role="10QFUP">
                            <ref role="3cqZAo" node="1me6Uesqf2Q" resolve="editor" />
                          </node>
                          <node concept="3uibUv" id="1me6UesqHre" role="10QFUM">
                            <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="1me6UesqHrf" role="2OqNvi">
                        <ref role="37wK5l" to="dxuu:~JComponent.getWidth()" resolve="getWidth" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1me6Uesqf1_" role="3cqZAp">
          <node concept="3cpWsn" id="1me6Uesqf1A" role="3cpWs9">
            <property role="TrG5h" value="bounds" />
            <node concept="3uibUv" id="1me6Uesqf1B" role="1tU5fm">
              <ref role="3uigEE" to="fbzs:~Rectangle2D" resolve="Rectangle2D" />
            </node>
            <node concept="37vLTw" id="1me6Uesqwog" role="33vP2m">
              <ref role="3cqZAo" node="1me6Uesqwo8" resolve="strBounds" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1me6Uesqf1J" role="3cqZAp">
          <node concept="37vLTI" id="1me6Uesqf1K" role="3clFbG">
            <node concept="2ShNRf" id="1me6Uesqf1L" role="37vLTx">
              <node concept="1pGfFk" id="1me6Uesqf1M" role="2ShVmc">
                <ref role="37wK5l" to="fbzs:~Rectangle2D$Double.&lt;init&gt;(double,double,double,double)" resolve="Rectangle2D.Double" />
                <node concept="37vLTw" id="1me6UesqIcg" role="37wK5m">
                  <ref role="3cqZAo" node="1me6UesqBqc" resolve="strX" />
                </node>
                <node concept="3cpWs3" id="1me6Uesqf1S" role="37wK5m">
                  <node concept="2OqwBi" id="1me6Uesqf1T" role="3uHU7w">
                    <node concept="37vLTw" id="1me6Uesqf1U" role="2Oq$k0">
                      <ref role="3cqZAo" node="1me6Uesqf1A" resolve="bounds" />
                    </node>
                    <node concept="liA8E" id="1me6Uesqf1V" role="2OqNvi">
                      <ref role="37wK5l" to="fbzs:~RectangularShape.getY()" resolve="getY" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1me6Uesq_8h" role="3uHU7B">
                    <ref role="3cqZAo" node="1me6Uesqy1w" resolve="strY" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1me6Uesqf1X" role="37wK5m">
                  <node concept="37vLTw" id="1me6Uesqf1Y" role="2Oq$k0">
                    <ref role="3cqZAo" node="1me6Uesqf1A" resolve="bounds" />
                  </node>
                  <node concept="liA8E" id="1me6Uesqf1Z" role="2OqNvi">
                    <ref role="37wK5l" to="fbzs:~RectangularShape.getWidth()" resolve="getWidth" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1me6Uesqf20" role="37wK5m">
                  <node concept="37vLTw" id="1me6Uesqf21" role="2Oq$k0">
                    <ref role="3cqZAo" node="1me6Uesqf1A" resolve="bounds" />
                  </node>
                  <node concept="liA8E" id="1me6Uesqf22" role="2OqNvi">
                    <ref role="37wK5l" to="fbzs:~RectangularShape.getHeight()" resolve="getHeight" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1me6Uesqf23" role="37vLTJ">
              <ref role="3cqZAo" node="1me6Uesqf1A" resolve="bounds" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1me6Uesqf24" role="3cqZAp">
          <node concept="2OqwBi" id="1me6Uesqf25" role="3clFbG">
            <node concept="37vLTw" id="1me6Uesqf2Y" role="2Oq$k0">
              <ref role="3cqZAo" node="1me6Uesqf2S" resolve="g" />
            </node>
            <node concept="liA8E" id="1me6Uesqf27" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
              <node concept="2ShNRf" id="1me6Uesqf28" role="37wK5m">
                <node concept="1pGfFk" id="1me6Uesqf29" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int,int)" resolve="Color" />
                  <node concept="3cmrfG" id="1me6Uesqf2a" role="37wK5m">
                    <property role="3cmrfH" value="255" />
                  </node>
                  <node concept="3cmrfG" id="1me6Uesqf2b" role="37wK5m">
                    <property role="3cmrfH" value="255" />
                  </node>
                  <node concept="3cmrfG" id="1me6Uesqf2c" role="37wK5m">
                    <property role="3cmrfH" value="200" />
                  </node>
                  <node concept="3cmrfG" id="1me6Uesqf2d" role="37wK5m">
                    <property role="3cmrfH" value="127" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1me6Uesqf2e" role="3cqZAp">
          <node concept="2OqwBi" id="1me6Uesqf2f" role="3clFbG">
            <node concept="37vLTw" id="1me6Uesqf2Z" role="2Oq$k0">
              <ref role="3cqZAo" node="1me6Uesqf2S" resolve="g" />
            </node>
            <node concept="liA8E" id="1me6Uesqf2h" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape)" resolve="fill" />
              <node concept="37vLTw" id="1me6Uesqf2i" role="37wK5m">
                <ref role="3cqZAo" node="1me6Uesqf1A" resolve="bounds" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1me6Uesqf2j" role="3cqZAp">
          <node concept="2OqwBi" id="1me6Uesqf2k" role="3clFbG">
            <node concept="37vLTw" id="1me6Uesqf30" role="2Oq$k0">
              <ref role="3cqZAo" node="1me6Uesqf2S" resolve="g" />
            </node>
            <node concept="liA8E" id="1me6Uesqf2m" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
              <node concept="10M0yZ" id="1me6Uesqf2n" role="37wK5m">
                <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
                <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1me6Uesqf2B" role="3cqZAp">
          <node concept="2OqwBi" id="1me6Uesqf2C" role="3clFbG">
            <node concept="37vLTw" id="1me6Uesqf33" role="2Oq$k0">
              <ref role="3cqZAo" node="1me6Uesqf2S" resolve="g" />
            </node>
            <node concept="liA8E" id="1me6Uesqf2E" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.drawString(java.lang.String,int,int)" resolve="drawString" />
              <node concept="37vLTw" id="1me6Uesqf2F" role="37wK5m">
                <ref role="3cqZAo" node="1me6Uesqf1w" resolve="str" />
              </node>
              <node concept="37vLTw" id="1me6UesqIJN" role="37wK5m">
                <ref role="3cqZAo" node="1me6UesqBqc" resolve="strX" />
              </node>
              <node concept="37vLTw" id="1me6UesqAsO" role="37wK5m">
                <ref role="3cqZAo" node="1me6Uesqy1w" resolve="strY" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6xm2RBl62jX" role="jymVt" />
    <node concept="2YIFZL" id="4qNw5QUzlqD" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="toPngBase64" />
      <node concept="37vLTG" id="4qNw5QUzlqE" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="4qNw5QUzlqF" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="4qNw5QUzlqG" role="3clF46">
        <property role="TrG5h" value="clip" />
        <node concept="3uibUv" id="4qNw5QUzlqH" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
        </node>
      </node>
      <node concept="3clFbS" id="4qNw5QUzlqI" role="3clF47">
        <node concept="3cpWs8" id="4qNw5QUxZDR" role="3cqZAp">
          <node concept="3cpWsn" id="4qNw5QUxZDS" role="3cpWs9">
            <property role="TrG5h" value="size" />
            <node concept="3uibUv" id="4qNw5QUxZwu" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
            </node>
            <node concept="2OqwBi" id="4qNw5QUxZDT" role="33vP2m">
              <node concept="1eOMI4" id="4qNw5QUxZDU" role="2Oq$k0">
                <node concept="10QFUN" id="4qNw5QUxZDV" role="1eOMHV">
                  <node concept="37vLTw" id="4qNw5QUxZDW" role="10QFUP">
                    <ref role="3cqZAo" node="4qNw5QUzlqE" resolve="editor" />
                  </node>
                  <node concept="3uibUv" id="4qNw5QUxZDX" role="10QFUM">
                    <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4qNw5QUxZDY" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.getSize()" resolve="getSize" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4qNw5QUxRb8" role="3cqZAp">
          <node concept="3cpWsn" id="4qNw5QUxRb9" role="3cpWs9">
            <property role="TrG5h" value="img" />
            <node concept="3uibUv" id="4qNw5QUxRba" role="1tU5fm">
              <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
            </node>
            <node concept="2ShNRf" id="4qNw5QUxRFE" role="33vP2m">
              <node concept="1pGfFk" id="4qNw5QUxRDw" role="2ShVmc">
                <ref role="37wK5l" to="jan3:~BufferedImage.&lt;init&gt;(int,int,int)" resolve="BufferedImage" />
                <node concept="2OqwBi" id="4qNw5QUy1nW" role="37wK5m">
                  <node concept="37vLTw" id="4qNw5QUy14h" role="2Oq$k0">
                    <ref role="3cqZAo" node="4qNw5QUxZDS" resolve="size" />
                  </node>
                  <node concept="2OwXpG" id="4qNw5QUy3_l" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~Dimension.width" resolve="width" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4qNw5QUy4cN" role="37wK5m">
                  <node concept="37vLTw" id="4qNw5QUy3Pc" role="2Oq$k0">
                    <ref role="3cqZAo" node="4qNw5QUxZDS" resolve="size" />
                  </node>
                  <node concept="2OwXpG" id="4qNw5QUy4Lk" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~Dimension.height" resolve="height" />
                  </node>
                </node>
                <node concept="10M0yZ" id="4qNw5QUz7u3" role="37wK5m">
                  <ref role="3cqZAo" to="jan3:~BufferedImage.TYPE_INT_ARGB" resolve="TYPE_INT_ARGB" />
                  <ref role="1PxDUh" to="jan3:~BufferedImage" resolve="BufferedImage" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4qNw5QUy8tr" role="3cqZAp">
          <node concept="3cpWsn" id="4qNw5QUy8ts" role="3cpWs9">
            <property role="TrG5h" value="g" />
            <node concept="3uibUv" id="4qNw5QUy8p8" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
            </node>
            <node concept="2OqwBi" id="4qNw5QUy8tt" role="33vP2m">
              <node concept="37vLTw" id="4qNw5QUy8tu" role="2Oq$k0">
                <ref role="3cqZAo" node="4qNw5QUxRb9" resolve="img" />
              </node>
              <node concept="liA8E" id="4qNw5QUy8tv" role="2OqNvi">
                <ref role="37wK5l" to="jan3:~BufferedImage.createGraphics()" resolve="createGraphics" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qNw5QUz9ZN" role="3cqZAp">
          <node concept="2OqwBi" id="4qNw5QUzb7D" role="3clFbG">
            <node concept="37vLTw" id="4qNw5QUz9ZL" role="2Oq$k0">
              <ref role="3cqZAo" node="4qNw5QUy8ts" resolve="g" />
            </node>
            <node concept="liA8E" id="4qNw5QUzcfW" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)" resolve="setRenderingHint" />
              <node concept="10M0yZ" id="4qNw5QUzcKH" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                <ref role="3cqZAo" to="z60i:~RenderingHints.KEY_TEXT_ANTIALIASING" resolve="KEY_TEXT_ANTIALIASING" />
              </node>
              <node concept="10M0yZ" id="4qNw5QUzdwA" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                <ref role="3cqZAo" to="z60i:~RenderingHints.VALUE_TEXT_ANTIALIAS_ON" resolve="VALUE_TEXT_ANTIALIAS_ON" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qNw5QUzdEp" role="3cqZAp">
          <node concept="2OqwBi" id="4qNw5QUzdEq" role="3clFbG">
            <node concept="37vLTw" id="4qNw5QUzdEr" role="2Oq$k0">
              <ref role="3cqZAo" node="4qNw5QUy8ts" resolve="g" />
            </node>
            <node concept="liA8E" id="4qNw5QUzdEs" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)" resolve="setRenderingHint" />
              <node concept="10M0yZ" id="4qNw5QUzfjX" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                <ref role="3cqZAo" to="z60i:~RenderingHints.KEY_ANTIALIASING" resolve="KEY_ANTIALIASING" />
              </node>
              <node concept="10M0yZ" id="4qNw5QUzfSB" role="37wK5m">
                <ref role="3cqZAo" to="z60i:~RenderingHints.VALUE_ANTIALIAS_ON" resolve="VALUE_ANTIALIAS_ON" />
                <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4qNw5QUzgbE" role="3cqZAp">
          <node concept="2OqwBi" id="4qNw5QUzgbF" role="3clFbG">
            <node concept="37vLTw" id="4qNw5QUzgbG" role="2Oq$k0">
              <ref role="3cqZAo" node="4qNw5QUy8ts" resolve="g" />
            </node>
            <node concept="liA8E" id="4qNw5QUzgbH" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)" resolve="setRenderingHint" />
              <node concept="10M0yZ" id="4qNw5QUzhHS" role="37wK5m">
                <ref role="3cqZAo" to="z60i:~RenderingHints.KEY_RENDERING" resolve="KEY_RENDERING" />
                <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
              </node>
              <node concept="10M0yZ" id="4qNw5QUzi6v" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                <ref role="3cqZAo" to="z60i:~RenderingHints.VALUE_RENDER_QUALITY" resolve="VALUE_RENDER_QUALITY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4qNw5QUz8Qd" role="3cqZAp" />
        <node concept="3clFbJ" id="4qNw5QUzlqJ" role="3cqZAp">
          <node concept="3clFbS" id="4qNw5QUzlqK" role="3clFbx">
            <node concept="3clFbF" id="4qNw5QUzlqL" role="3cqZAp">
              <node concept="2OqwBi" id="4qNw5QUzlqM" role="3clFbG">
                <node concept="37vLTw" id="4qNw5QUzlqN" role="2Oq$k0">
                  <ref role="3cqZAo" node="4qNw5QUy8ts" resolve="g" />
                </node>
                <node concept="liA8E" id="4qNw5QUzlqO" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.setClip(java.awt.Shape)" resolve="setClip" />
                  <node concept="37vLTw" id="4qNw5QUzlqP" role="37wK5m">
                    <ref role="3cqZAo" node="4qNw5QUzlqG" resolve="clip" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4qNw5QUzlqQ" role="3clFbw">
            <node concept="10Nm6u" id="4qNw5QUzlqR" role="3uHU7w" />
            <node concept="37vLTw" id="4qNw5QUzlqS" role="3uHU7B">
              <ref role="3cqZAo" node="4qNw5QUzlqG" resolve="clip" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4qNw5QUzlqT" role="3cqZAp" />
        <node concept="3clFbF" id="1me6Uesqj12" role="3cqZAp">
          <node concept="1rXfSq" id="1me6Uesqj10" role="3clFbG">
            <ref role="37wK5l" node="1me6Uesqf38" resolve="paintEditor" />
            <node concept="37vLTw" id="1me6UesqjQJ" role="37wK5m">
              <ref role="3cqZAo" node="4qNw5QUzlqE" resolve="editor" />
            </node>
            <node concept="37vLTw" id="1me6Uesqk39" role="37wK5m">
              <ref role="3cqZAo" node="4qNw5QUy8ts" resolve="g" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4qNw5QUzlth" role="3cqZAp" />
        <node concept="3cpWs8" id="4qNw5QUzlti" role="3cqZAp">
          <node concept="3cpWsn" id="4qNw5QUzltj" role="3cpWs9">
            <property role="TrG5h" value="os" />
            <node concept="3uibUv" id="4qNw5QUzltk" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~ByteArrayOutputStream" resolve="ByteArrayOutputStream" />
            </node>
            <node concept="10Nm6u" id="4qNw5QUzltl" role="33vP2m" />
          </node>
        </node>
        <node concept="3J1_TO" id="4qNw5QUzltm" role="3cqZAp">
          <node concept="3clFbS" id="4qNw5QUzltn" role="1zxBo7">
            <node concept="3clFbF" id="4qNw5QUzlto" role="3cqZAp">
              <node concept="37vLTI" id="4qNw5QUzltp" role="3clFbG">
                <node concept="2ShNRf" id="4qNw5QUzltq" role="37vLTx">
                  <node concept="1pGfFk" id="4qNw5QUzltr" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~ByteArrayOutputStream.&lt;init&gt;()" resolve="ByteArrayOutputStream" />
                  </node>
                </node>
                <node concept="37vLTw" id="4qNw5QUzlts" role="37vLTJ">
                  <ref role="3cqZAo" node="4qNw5QUzltj" resolve="os" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4qNw5QUyghx" role="3cqZAp">
              <node concept="2YIFZM" id="4qNw5QUyig7" role="3clFbG">
                <ref role="1Pybhc" to="oqcp:~ImageIO" resolve="ImageIO" />
                <ref role="37wK5l" to="oqcp:~ImageIO.write(java.awt.image.RenderedImage,java.lang.String,java.io.OutputStream)" resolve="write" />
                <node concept="37vLTw" id="4qNw5QUyjsA" role="37wK5m">
                  <ref role="3cqZAo" node="4qNw5QUxRb9" resolve="img" />
                </node>
                <node concept="Xl_RD" id="4qNw5QUyjKB" role="37wK5m">
                  <property role="Xl_RC" value="png" />
                </node>
                <node concept="37vLTw" id="4qNw5QUykek" role="37wK5m">
                  <ref role="3cqZAo" node="4qNw5QUzltj" resolve="os" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4qNw5QUzltt" role="3cqZAp">
              <node concept="2OqwBi" id="4qNw5QUzltu" role="3clFbG">
                <node concept="37vLTw" id="4qNw5QUyo2o" role="2Oq$k0">
                  <ref role="3cqZAo" node="4qNw5QUzltj" resolve="os" />
                </node>
                <node concept="liA8E" id="4qNw5QUzltv" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~ByteArrayOutputStream.close()" resolve="close" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4qNw5QUzltw" role="3cqZAp">
              <node concept="3cpWsn" id="4qNw5QUzltx" role="3cpWs9">
                <property role="TrG5h" value="result" />
                <node concept="17QB3L" id="4qNw5QUzlty" role="1tU5fm" />
                <node concept="2OqwBi" id="4OyL8R_5dDh" role="33vP2m">
                  <node concept="2YIFZM" id="4qNw5QUy_Vt" role="2Oq$k0">
                    <ref role="37wK5l" to="33ny:~Base64.getEncoder()" resolve="getEncoder" />
                    <ref role="1Pybhc" to="33ny:~Base64" resolve="Base64" />
                  </node>
                  <node concept="liA8E" id="4OyL8R_5dDl" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Base64$Encoder.encodeToString(byte[])" resolve="encodeToString" />
                    <node concept="2OqwBi" id="4qNw5QUy_C9" role="37wK5m">
                      <node concept="37vLTw" id="4qNw5QUy_sM" role="2Oq$k0">
                        <ref role="3cqZAo" node="4qNw5QUzltj" resolve="os" />
                      </node>
                      <node concept="liA8E" id="4qNw5QUy_PP" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~ByteArrayOutputStream.toByteArray()" resolve="toByteArray" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4qNw5QUzltz" role="3cqZAp">
              <node concept="37vLTw" id="4qNw5QUzlt$" role="3cqZAk">
                <ref role="3cqZAo" node="4qNw5QUzltx" resolve="result" />
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="4qNw5QUzlt_" role="1zxBo5">
            <node concept="XOnhg" id="4qNw5QUzltA" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="4F3wTlsZuya" role="1tU5fm">
                <node concept="3uibUv" id="4qNw5QUzltB" role="nSUat">
                  <ref role="3uigEE" to="guwi:~UnsupportedEncodingException" resolve="UnsupportedEncodingException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="4qNw5QUzltC" role="1zc67A">
              <node concept="YS8fn" id="4qNw5QUzltD" role="3cqZAp">
                <node concept="2ShNRf" id="4qNw5QUzltE" role="YScLw">
                  <node concept="1pGfFk" id="4qNw5QUzltF" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="4qNw5QUzltG" role="37wK5m">
                      <ref role="3cqZAo" node="4qNw5QUzltA" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="4qNw5QUzltP" role="1zxBo5">
            <node concept="XOnhg" id="4qNw5QUzltQ" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="4F3wTlsZuyE" role="1tU5fm">
                <node concept="3uibUv" id="4qNw5QUzltR" role="nSUat">
                  <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="4qNw5QUzltS" role="1zc67A">
              <node concept="YS8fn" id="4qNw5QUzltT" role="3cqZAp">
                <node concept="2ShNRf" id="4qNw5QUzltU" role="YScLw">
                  <node concept="1pGfFk" id="4qNw5QUzltV" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="4qNw5QUzltW" role="37wK5m">
                      <ref role="3cqZAo" node="4qNw5QUzltQ" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="cydYpWppFPx" role="1zxBo6">
            <node concept="3clFbS" id="4qNw5QUzltX" role="1wplMD">
              <node concept="3J1_TO" id="4qNw5QUzltY" role="3cqZAp">
                <node concept="3clFbS" id="4qNw5QUzltZ" role="1zxBo7">
                  <node concept="3clFbF" id="4qNw5QUzlu0" role="3cqZAp">
                    <node concept="2OqwBi" id="4qNw5QUzlu1" role="3clFbG">
                      <node concept="37vLTw" id="4qNw5QUzlu2" role="2Oq$k0">
                        <ref role="3cqZAo" node="4qNw5QUzltj" resolve="os" />
                      </node>
                      <node concept="liA8E" id="4qNw5QUzlu3" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~ByteArrayOutputStream.close()" resolve="close" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uVAMA" id="4qNw5QUzlu4" role="1zxBo5">
                  <node concept="XOnhg" id="4qNw5QUzlu5" role="1zc67B">
                    <property role="3TUv4t" value="false" />
                    <property role="TrG5h" value="ex" />
                    <node concept="nSUau" id="4F3wTlsZu_c" role="1tU5fm">
                      <node concept="3uibUv" id="4qNw5QUzlu6" role="nSUat">
                        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="4qNw5QUzlu7" role="1zc67A" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4qNw5QUzlu8" role="3cqZAp" />
      </node>
      <node concept="17QB3L" id="4qNw5QUzlu9" role="3clF45" />
      <node concept="3Tm1VV" id="4qNw5QUzlua" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4qNw5QUzl8k" role="jymVt" />
    <node concept="2YIFZL" id="7tTb3N6PLuj" role="jymVt">
      <property role="TrG5h" value="toPngBase64" />
      <node concept="3clFbS" id="7tTb3N6PF4o" role="3clF47">
        <node concept="3cpWs8" id="7tTb3N6PKcn" role="3cqZAp">
          <node concept="3cpWsn" id="7tTb3N6PKco" role="3cpWs9">
            <property role="TrG5h" value="os" />
            <node concept="3uibUv" id="7tTb3N6PKcp" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~ByteArrayOutputStream" resolve="ByteArrayOutputStream" />
            </node>
            <node concept="10Nm6u" id="7tTb3N6PKcq" role="33vP2m" />
          </node>
        </node>
        <node concept="3J1_TO" id="7tTb3N6PKcr" role="3cqZAp">
          <node concept="3clFbS" id="7tTb3N6PKcs" role="1zxBo7">
            <node concept="3clFbF" id="7tTb3N6PKct" role="3cqZAp">
              <node concept="37vLTI" id="7tTb3N6PKcu" role="3clFbG">
                <node concept="2ShNRf" id="7tTb3N6PKcv" role="37vLTx">
                  <node concept="1pGfFk" id="7tTb3N6PKcw" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~ByteArrayOutputStream.&lt;init&gt;()" resolve="ByteArrayOutputStream" />
                  </node>
                </node>
                <node concept="37vLTw" id="7tTb3N6PKcx" role="37vLTJ">
                  <ref role="3cqZAo" node="7tTb3N6PKco" resolve="os" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7tTb3N6PKcy" role="3cqZAp">
              <node concept="2YIFZM" id="7tTb3N6PKcz" role="3clFbG">
                <ref role="37wK5l" to="oqcp:~ImageIO.write(java.awt.image.RenderedImage,java.lang.String,java.io.OutputStream)" resolve="write" />
                <ref role="1Pybhc" to="oqcp:~ImageIO" resolve="ImageIO" />
                <node concept="37vLTw" id="7tTb3N6PKc$" role="37wK5m">
                  <ref role="3cqZAo" node="7tTb3N6PJ2C" resolve="img" />
                </node>
                <node concept="Xl_RD" id="7tTb3N6PKc_" role="37wK5m">
                  <property role="Xl_RC" value="png" />
                </node>
                <node concept="37vLTw" id="7tTb3N6PKcA" role="37wK5m">
                  <ref role="3cqZAo" node="7tTb3N6PKco" resolve="os" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7tTb3N6PKcB" role="3cqZAp">
              <node concept="2OqwBi" id="7tTb3N6PKcC" role="3clFbG">
                <node concept="37vLTw" id="7tTb3N6PKcD" role="2Oq$k0">
                  <ref role="3cqZAo" node="7tTb3N6PKco" resolve="os" />
                </node>
                <node concept="liA8E" id="7tTb3N6PKcE" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~ByteArrayOutputStream.close()" resolve="close" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7tTb3N6PKcF" role="3cqZAp">
              <node concept="3cpWsn" id="7tTb3N6PKcG" role="3cpWs9">
                <property role="TrG5h" value="result" />
                <node concept="17QB3L" id="7tTb3N6PKcH" role="1tU5fm" />
                <node concept="2OqwBi" id="7tTb3N6PKcI" role="33vP2m">
                  <node concept="2YIFZM" id="7tTb3N6PKcJ" role="2Oq$k0">
                    <ref role="37wK5l" to="33ny:~Base64.getEncoder()" resolve="getEncoder" />
                    <ref role="1Pybhc" to="33ny:~Base64" resolve="Base64" />
                  </node>
                  <node concept="liA8E" id="7tTb3N6PKcK" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Base64$Encoder.encodeToString(byte[])" resolve="encodeToString" />
                    <node concept="2OqwBi" id="7tTb3N6PKcL" role="37wK5m">
                      <node concept="37vLTw" id="7tTb3N6PKcM" role="2Oq$k0">
                        <ref role="3cqZAo" node="7tTb3N6PKco" resolve="os" />
                      </node>
                      <node concept="liA8E" id="7tTb3N6PKcN" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~ByteArrayOutputStream.toByteArray()" resolve="toByteArray" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7tTb3N6PKcO" role="3cqZAp">
              <node concept="37vLTw" id="7tTb3N6PKcP" role="3cqZAk">
                <ref role="3cqZAo" node="7tTb3N6PKcG" resolve="result" />
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="7tTb3N6PKcQ" role="1zxBo5">
            <node concept="XOnhg" id="7tTb3N6PKcR" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="2_mQPu$ik0C" role="1tU5fm">
                <node concept="3uibUv" id="7tTb3N6PKcS" role="nSUat">
                  <ref role="3uigEE" to="guwi:~UnsupportedEncodingException" resolve="UnsupportedEncodingException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7tTb3N6PKcT" role="1zc67A">
              <node concept="YS8fn" id="7tTb3N6PKcU" role="3cqZAp">
                <node concept="2ShNRf" id="7tTb3N6PKcV" role="YScLw">
                  <node concept="1pGfFk" id="7tTb3N6PKcW" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="7tTb3N6PKcX" role="37wK5m">
                      <ref role="3cqZAo" node="7tTb3N6PKcR" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="7tTb3N6PKd6" role="1zxBo5">
            <node concept="XOnhg" id="7tTb3N6PKd7" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="2_mQPu$ik38" role="1tU5fm">
                <node concept="3uibUv" id="7tTb3N6PKd8" role="nSUat">
                  <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7tTb3N6PKd9" role="1zc67A">
              <node concept="YS8fn" id="7tTb3N6PKda" role="3cqZAp">
                <node concept="2ShNRf" id="7tTb3N6PKdb" role="YScLw">
                  <node concept="1pGfFk" id="7tTb3N6PKdc" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="7tTb3N6PKdd" role="37wK5m">
                      <ref role="3cqZAo" node="7tTb3N6PKd7" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="aGoClRxOxnV" role="1zxBo6">
            <node concept="3clFbS" id="7tTb3N6PKde" role="1wplMD">
              <node concept="3J1_TO" id="7tTb3N6PKdf" role="3cqZAp">
                <node concept="3clFbS" id="7tTb3N6PKdg" role="1zxBo7">
                  <node concept="3clFbF" id="7tTb3N6PKdh" role="3cqZAp">
                    <node concept="2OqwBi" id="7tTb3N6PKdi" role="3clFbG">
                      <node concept="37vLTw" id="7tTb3N6PKdj" role="2Oq$k0">
                        <ref role="3cqZAo" node="7tTb3N6PKco" resolve="os" />
                      </node>
                      <node concept="liA8E" id="7tTb3N6PKdk" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~ByteArrayOutputStream.close()" resolve="close" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uVAMA" id="7tTb3N6PKdl" role="1zxBo5">
                  <node concept="XOnhg" id="7tTb3N6PKdm" role="1zc67B">
                    <property role="3TUv4t" value="false" />
                    <property role="TrG5h" value="ex" />
                    <node concept="nSUau" id="2_mQPu$ik3E" role="1tU5fm">
                      <node concept="3uibUv" id="7tTb3N6PKdn" role="nSUat">
                        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7tTb3N6PKdo" role="1zc67A" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7tTb3N6PJ2C" role="3clF46">
        <property role="TrG5h" value="img" />
        <node concept="3uibUv" id="7tTb3N6PJlb" role="1tU5fm">
          <ref role="3uigEE" to="jan3:~RenderedImage" resolve="RenderedImage" />
        </node>
      </node>
      <node concept="17QB3L" id="7tTb3N6PJCA" role="3clF45" />
      <node concept="3Tm1VV" id="7tTb3N6PF4n" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4qNw5QUzldr" role="jymVt" />
    <node concept="2YIFZL" id="1LwnBM301Rx" role="jymVt">
      <property role="TrG5h" value="withGraphicsCopy" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="1LwnBM2ZZPi" role="3clF47">
        <node concept="3cpWs8" id="1LwnBM301i7" role="3cqZAp">
          <node concept="3cpWsn" id="1LwnBM301i8" role="3cpWs9">
            <property role="TrG5h" value="g2" />
            <node concept="3uibUv" id="1LwnBM301i4" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
            </node>
            <node concept="2OqwBi" id="1LwnBM301i9" role="33vP2m">
              <node concept="37vLTw" id="1LwnBM301ia" role="2Oq$k0">
                <ref role="3cqZAo" node="1LwnBM300cI" resolve="g" />
              </node>
              <node concept="liA8E" id="1LwnBM301ib" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Graphics.create()" resolve="create" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="1LwnBM301qa" role="3cqZAp">
          <node concept="3clFbS" id="1LwnBM301qc" role="1zxBo7">
            <node concept="3clFbF" id="1LwnBM301Lz" role="3cqZAp">
              <node concept="2OqwBi" id="1LwnBM301LM" role="3clFbG">
                <node concept="37vLTw" id="1LwnBM301Lx" role="2Oq$k0">
                  <ref role="3cqZAo" node="1LwnBM3010e" resolve="r" />
                </node>
                <node concept="1Bd96e" id="1LwnBM301Mv" role="2OqNvi">
                  <node concept="37vLTw" id="1LwnBM301P6" role="1BdPVh">
                    <ref role="3cqZAo" node="1LwnBM301i8" resolve="g2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="7OEhtPEv3Vo" role="1zxBo6">
            <node concept="3clFbS" id="1LwnBM301qd" role="1wplMD">
              <node concept="3clFbF" id="1LwnBM300w$" role="3cqZAp">
                <node concept="2OqwBi" id="1LwnBM301z1" role="3clFbG">
                  <node concept="37vLTw" id="1LwnBM301ic" role="2Oq$k0">
                    <ref role="3cqZAo" node="1LwnBM301i8" resolve="g2" />
                  </node>
                  <node concept="liA8E" id="1LwnBM301GT" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.dispose()" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1LwnBM300cI" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="1LwnBM300kM" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="37vLTG" id="1LwnBM3010e" role="3clF46">
        <property role="TrG5h" value="r" />
        <node concept="1ajhzC" id="1LwnBM3018k" role="1tU5fm">
          <node concept="3cqZAl" id="1LwnBM301bX" role="1ajl9A" />
          <node concept="3uibUv" id="1LwnBM301aW" role="1ajw0F">
            <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1LwnBM2ZZPg" role="3clF45" />
      <node concept="3Tmbuc" id="1LwnBM3024x" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="6xm2RBl62jj" role="1B3o_S" />
  </node>
</model>

