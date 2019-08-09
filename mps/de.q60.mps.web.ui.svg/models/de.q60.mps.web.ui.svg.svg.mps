<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a009b15b-6386-4045-b94f-fa21b9788c19(de.q60.mps.web.ui.svg.svg)">
  <persistence version="9" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="nxzt" ref="cceec75f-de6e-4ee7-bd91-29a3a99bfede/java:org.apache.batik.svggen(de.q60.mps.lazywebmps.runtime/)" />
    <import index="lhjl" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:org.w3c.dom(JDK/)" />
    <import index="ujg5" ref="cceec75f-de6e-4ee7-bd91-29a3a99bfede/java:org.apache.batik.dom(de.q60.mps.lazywebmps.runtime/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="lwvz" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.selection(MPS.Editor/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="8oaq" ref="b0f8641f-bd77-4421-8425-30d9088a82f7/java:org.apache.commons.io(org.apache.commons/)" />
    <import index="6lvu" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cellMenu(MPS.Editor/)" />
    <import index="idqn" ref="cceec75f-de6e-4ee7-bd91-29a3a99bfede/java:org.apache.batik.ext.awt.g2d(de.q60.mps.web.ui.svg/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1153952380246" name="jetbrains.mps.baseLanguage.structure.TryStatement" flags="nn" index="2GUZhq">
        <child id="1153952416686" name="body" index="2GV8ay" />
        <child id="1153952429843" name="finallyBody" index="2GVbov" />
        <child id="1164903700860" name="catchClause" index="TEXxN" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
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
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
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
    <property role="TrG5h" value="EditorToSvg" />
    <node concept="2tJIrI" id="6xm2RBl62jS" role="jymVt" />
    <node concept="2YIFZL" id="6xm2RBl62kx" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="toSvg" />
      <node concept="37vLTG" id="6xm2RBl62lt" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="6xm2RBl62lY" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="35hm5eHNIGf" role="3clF46">
        <property role="TrG5h" value="clip" />
        <node concept="3uibUv" id="35hm5eHNIZT" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
        </node>
      </node>
      <node concept="3clFbS" id="6xm2RBl62kb" role="3clF47">
        <node concept="3cpWs8" id="6xm2RBl64Jg" role="3cqZAp">
          <node concept="3cpWsn" id="6xm2RBl64Jh" role="3cpWs9">
            <property role="TrG5h" value="domImpl" />
            <node concept="3uibUv" id="6xm2RBl64Ji" role="1tU5fm">
              <ref role="3uigEE" to="lhjl:~DOMImplementation" resolve="DOMImplementation" />
            </node>
            <node concept="2YIFZM" id="6xm2RBl67GD" role="33vP2m">
              <ref role="37wK5l" to="ujg5:~GenericDOMImplementation.getDOMImplementation()" resolve="getDOMImplementation" />
              <ref role="1Pybhc" to="ujg5:~GenericDOMImplementation" resolve="GenericDOMImplementation" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6xm2RBl67K0" role="3cqZAp">
          <node concept="3cpWsn" id="6xm2RBl67K1" role="3cpWs9">
            <property role="TrG5h" value="doc" />
            <node concept="3uibUv" id="6xm2RBl67K2" role="1tU5fm">
              <ref role="3uigEE" to="lhjl:~Document" resolve="Document" />
            </node>
            <node concept="2OqwBi" id="6xm2RBl67T7" role="33vP2m">
              <node concept="37vLTw" id="6xm2RBl67MG" role="2Oq$k0">
                <ref role="3cqZAo" node="6xm2RBl64Jh" resolve="domImpl" />
              </node>
              <node concept="liA8E" id="6xm2RBl683D" role="2OqNvi">
                <ref role="37wK5l" to="lhjl:~DOMImplementation.createDocument(java.lang.String,java.lang.String,org.w3c.dom.DocumentType)" resolve="createDocument" />
                <node concept="Xl_RD" id="6xm2RBl685X" role="37wK5m">
                  <property role="Xl_RC" value="http://www.w3.org/2000/svg" />
                </node>
                <node concept="Xl_RD" id="6xm2RBl68bf" role="37wK5m">
                  <property role="Xl_RC" value="svg" />
                </node>
                <node concept="10Nm6u" id="6xm2RBl68l6" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6xm2RBl68ti" role="3cqZAp">
          <node concept="3cpWsn" id="6xm2RBl68tj" role="3cpWs9">
            <property role="TrG5h" value="g" />
            <node concept="3uibUv" id="6xm2RBl68tg" role="1tU5fm">
              <ref role="3uigEE" to="nxzt:~SVGGraphics2D" resolve="SVGGraphics2D" />
            </node>
            <node concept="2ShNRf" id="6xm2RBl68tk" role="33vP2m">
              <node concept="1pGfFk" id="6xm2RBl68tl" role="2ShVmc">
                <ref role="37wK5l" to="nxzt:~SVGGraphics2D.&lt;init&gt;(org.w3c.dom.Document)" resolve="SVGGraphics2D" />
                <node concept="37vLTw" id="6xm2RBl68tm" role="37wK5m">
                  <ref role="3cqZAo" node="6xm2RBl67K1" resolve="doc" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6xm2RBlpsIl" role="3cqZAp">
          <node concept="2OqwBi" id="6xm2RBlptrq" role="3clFbG">
            <node concept="37vLTw" id="6xm2RBlpsIj" role="2Oq$k0">
              <ref role="3cqZAo" node="6xm2RBl68tj" resolve="g" />
            </node>
            <node concept="liA8E" id="6xm2RBlpuyC" role="2OqNvi">
              <ref role="37wK5l" to="nxzt:~SVGGraphics2D.setSVGCanvasSize(java.awt.Dimension)" resolve="setSVGCanvasSize" />
              <node concept="2OqwBi" id="6xm2RBlpxj7" role="37wK5m">
                <node concept="1eOMI4" id="6xm2RBlpwup" role="2Oq$k0">
                  <node concept="10QFUN" id="6xm2RBlpvJC" role="1eOMHV">
                    <node concept="37vLTw" id="6xm2RBlpvJB" role="10QFUP">
                      <ref role="3cqZAo" node="6xm2RBl62lt" resolve="editor" />
                    </node>
                    <node concept="3uibUv" id="6xm2RBlpw0w" role="10QFUM">
                      <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6xm2RBlpzCv" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.getSize()" resolve="getSize" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6xm2RBl9WCb" role="3cqZAp" />
        <node concept="3clFbJ" id="35hm5eHNNdS" role="3cqZAp">
          <node concept="3clFbS" id="35hm5eHNNdU" role="3clFbx">
            <node concept="3clFbF" id="35hm5eHMS2c" role="3cqZAp">
              <node concept="2OqwBi" id="35hm5eHMSJg" role="3clFbG">
                <node concept="37vLTw" id="35hm5eHMS2a" role="2Oq$k0">
                  <ref role="3cqZAo" node="6xm2RBl68tj" resolve="g" />
                </node>
                <node concept="liA8E" id="35hm5eHMTV2" role="2OqNvi">
                  <ref role="37wK5l" to="idqn:~AbstractGraphics2D.setClip(java.awt.Shape)" resolve="setClip" />
                  <node concept="37vLTw" id="35hm5eHNJJP" role="37wK5m">
                    <ref role="3cqZAo" node="35hm5eHNIGf" resolve="clip" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="35hm5eHNOeY" role="3clFbw">
            <node concept="10Nm6u" id="35hm5eHNOxy" role="3uHU7w" />
            <node concept="37vLTw" id="35hm5eHNN__" role="3uHU7B">
              <ref role="3cqZAo" node="35hm5eHNIGf" resolve="clip" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="35hm5eHTvc$" role="3cqZAp" />
        <node concept="3clFbF" id="6xm2RBl9JcZ" role="3cqZAp">
          <node concept="2OqwBi" id="6xm2RBl9KRI" role="3clFbG">
            <node concept="liA8E" id="6xm2RBl9N7z" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~EditorComponent.paint(java.awt.Graphics)" resolve="paint" />
              <node concept="37vLTw" id="6xm2RBl9NbR" role="37wK5m">
                <ref role="3cqZAo" node="6xm2RBl68tj" resolve="g" />
              </node>
            </node>
            <node concept="1eOMI4" id="6xm2RBl9VrG" role="2Oq$k0">
              <node concept="10QFUN" id="6xm2RBl9VrH" role="1eOMHV">
                <node concept="37vLTw" id="6xm2RBl9VrI" role="10QFUP">
                  <ref role="3cqZAo" node="6xm2RBl62lt" resolve="editor" />
                </node>
                <node concept="3uibUv" id="6xm2RBl9VrJ" role="10QFUM">
                  <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1LwnBM2YJVv" role="3cqZAp">
          <node concept="3cpWsn" id="1LwnBM2YJVw" role="3cpWs9">
            <property role="TrG5h" value="chooser" />
            <node concept="3uibUv" id="1LwnBM2YJVr" role="1tU5fm">
              <ref role="3uigEE" to="6lvu:~NodeSubstituteChooser" resolve="NodeSubstituteChooser" />
            </node>
            <node concept="2OqwBi" id="1LwnBM2YJVx" role="33vP2m">
              <node concept="1eOMI4" id="1LwnBM2YJVy" role="2Oq$k0">
                <node concept="10QFUN" id="1LwnBM2YJVz" role="1eOMHV">
                  <node concept="37vLTw" id="1LwnBM2YJV$" role="10QFUP">
                    <ref role="3cqZAo" node="6xm2RBl62lt" resolve="editor" />
                  </node>
                  <node concept="3uibUv" id="1LwnBM2YJV_" role="10QFUM">
                    <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1LwnBM2YJVA" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getNodeSubstituteChooser()" resolve="getNodeSubstituteChooser" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1LwnBM2YNNO" role="3cqZAp">
          <node concept="3clFbS" id="1LwnBM2YNNQ" role="3clFbx">
            <node concept="3cpWs8" id="1LwnBM2ZySp" role="3cqZAp">
              <node concept="3cpWsn" id="1LwnBM2ZySq" role="3cpWs9">
                <property role="TrG5h" value="window" />
                <node concept="3uibUv" id="1LwnBM2ZySk" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~Window" resolve="Window" />
                </node>
                <node concept="2OqwBi" id="1LwnBM2ZySr" role="33vP2m">
                  <node concept="37vLTw" id="1LwnBM2ZySs" role="2Oq$k0">
                    <ref role="3cqZAo" node="1LwnBM2YJVw" resolve="chooser" />
                  </node>
                  <node concept="liA8E" id="1LwnBM2ZySt" role="2OqNvi">
                    <ref role="37wK5l" to="6lvu:~NodeSubstituteChooser.getWindow()" resolve="getWindow" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1LwnBM2ZziV" role="3cqZAp">
              <node concept="3clFbS" id="1LwnBM2ZziX" role="3clFbx">
                <node concept="3clFbF" id="1LwnBM302bT" role="3cqZAp">
                  <node concept="1rXfSq" id="1LwnBM302bR" role="3clFbG">
                    <ref role="37wK5l" node="1LwnBM301Rx" resolve="withGraphicsCopy" />
                    <node concept="37vLTw" id="1LwnBM302rd" role="37wK5m">
                      <ref role="3cqZAo" node="6xm2RBl68tj" resolve="g" />
                    </node>
                    <node concept="1bVj0M" id="1LwnBM302QC" role="37wK5m">
                      <node concept="37vLTG" id="1LwnBM30326" role="1bW2Oz">
                        <property role="TrG5h" value="g2" />
                        <node concept="3uibUv" id="1LwnBM303gt" role="1tU5fm">
                          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="1LwnBM302QE" role="1bW5cS">
                        <node concept="3clFbF" id="1LwnBM305f1" role="3cqZAp">
                          <node concept="2OqwBi" id="1LwnBM305yK" role="3clFbG">
                            <node concept="37vLTw" id="1LwnBM305eZ" role="2Oq$k0">
                              <ref role="3cqZAo" node="1LwnBM30326" resolve="g2" />
                            </node>
                            <node concept="liA8E" id="1LwnBM305SG" role="2OqNvi">
                              <ref role="37wK5l" to="z60i:~Graphics.translate(int,int)" resolve="translate" />
                              <node concept="2OqwBi" id="1LwnBM306KT" role="37wK5m">
                                <node concept="37vLTw" id="1LwnBM3067h" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1LwnBM2ZySq" resolve="window" />
                                </node>
                                <node concept="liA8E" id="1LwnBM307Ra" role="2OqNvi">
                                  <ref role="37wK5l" to="z60i:~Component.getX()" resolve="getX" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1LwnBM308ZT" role="37wK5m">
                                <node concept="37vLTw" id="1LwnBM308lI" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1LwnBM2ZySq" resolve="window" />
                                </node>
                                <node concept="liA8E" id="1LwnBM309Ev" role="2OqNvi">
                                  <ref role="37wK5l" to="z60i:~Component.getY()" resolve="getY" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1LwnBM2YGaB" role="3cqZAp">
                          <node concept="2OqwBi" id="1LwnBM2YPeg" role="3clFbG">
                            <node concept="37vLTw" id="1LwnBM2ZySu" role="2Oq$k0">
                              <ref role="3cqZAo" node="1LwnBM2ZySq" resolve="window" />
                            </node>
                            <node concept="liA8E" id="1LwnBM2YQqz" role="2OqNvi">
                              <ref role="37wK5l" to="z60i:~Window.paint(java.awt.Graphics)" resolve="paint" />
                              <node concept="37vLTw" id="1LwnBM304Vx" role="37wK5m">
                                <ref role="3cqZAo" node="1LwnBM30326" resolve="g2" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1LwnBM2Z$5h" role="3clFbw">
                <node concept="37vLTw" id="1LwnBM2ZzyF" role="2Oq$k0">
                  <ref role="3cqZAo" node="1LwnBM2ZySq" resolve="window" />
                </node>
                <node concept="liA8E" id="1LwnBM2Z_39" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Window.isShowing()" resolve="isShowing" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1LwnBM2YOd6" role="3clFbw">
            <node concept="37vLTw" id="1LwnBM2YOd7" role="2Oq$k0">
              <ref role="3cqZAo" node="1LwnBM2YJVw" resolve="chooser" />
            </node>
            <node concept="liA8E" id="1LwnBM2YOd8" role="2OqNvi">
              <ref role="37wK5l" to="6lvu:~NodeSubstituteChooser.isVisible()" resolve="isVisible" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1LwnBM2YFMF" role="3cqZAp" />
        <node concept="3clFbH" id="35hm5eHUq7l" role="3cqZAp" />
        <node concept="1X3_iC" id="2w64df5Rx1F" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbJ" id="35hm5eHUqv8" role="8Wnug">
            <node concept="3clFbS" id="35hm5eHUqv9" role="3clFbx">
              <node concept="3clFbF" id="35hm5eHUqvf" role="3cqZAp">
                <node concept="2OqwBi" id="35hm5eHUqvg" role="3clFbG">
                  <node concept="37vLTw" id="35hm5eHUqvh" role="2Oq$k0">
                    <ref role="3cqZAo" node="6xm2RBl68tj" resolve="g" />
                  </node>
                  <node concept="liA8E" id="35hm5eHUqvi" role="2OqNvi">
                    <ref role="37wK5l" to="idqn:~AbstractGraphics2D.setColor(java.awt.Color)" resolve="setColor" />
                    <node concept="10M0yZ" id="35hm5eHWg6x" role="37wK5m">
                      <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
                      <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="35hm5eHUqvk" role="3cqZAp">
                <node concept="2OqwBi" id="35hm5eHUqvl" role="3clFbG">
                  <node concept="37vLTw" id="35hm5eHUqvm" role="2Oq$k0">
                    <ref role="3cqZAo" node="6xm2RBl68tj" resolve="g" />
                  </node>
                  <node concept="liA8E" id="35hm5eHUqvn" role="2OqNvi">
                    <ref role="37wK5l" to="nxzt:~SVGGraphics2D.draw(java.awt.Shape)" resolve="draw" />
                    <node concept="37vLTw" id="35hm5eHUqvo" role="37wK5m">
                      <ref role="3cqZAo" node="35hm5eHNIGf" resolve="clip" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="35hm5eHUqvp" role="3clFbw">
              <node concept="10Nm6u" id="35hm5eHUqvq" role="3uHU7w" />
              <node concept="37vLTw" id="35hm5eHUqvr" role="3uHU7B">
                <ref role="3cqZAo" node="35hm5eHNIGf" resolve="clip" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="6xm2RBlce5y" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="6xm2RBl70NC" role="8Wnug">
            <node concept="2OqwBi" id="6xm2RBl71zK" role="3clFbG">
              <node concept="1eOMI4" id="6xm2RBl72sD" role="2Oq$k0">
                <node concept="10QFUN" id="6xm2RBl72sC" role="1eOMHV">
                  <node concept="2OqwBi" id="6xm2RBl72s_" role="10QFUP">
                    <node concept="37vLTw" id="6xm2RBl72sA" role="2Oq$k0">
                      <ref role="3cqZAo" node="6xm2RBl62lt" resolve="editor" />
                    </node>
                    <node concept="liA8E" id="6xm2RBl72sB" role="2OqNvi">
                      <ref role="37wK5l" to="cj4x:~EditorComponent.getRootCell()" resolve="getRootCell" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="6xm2RBl72xp" role="10QFUM">
                    <ref role="3uigEE" to="g51k:~EditorCell_Basic" resolve="EditorCell_Basic" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="6xm2RBl72V7" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.paint(java.awt.Graphics)" resolve="paint" />
                <node concept="37vLTw" id="6xm2RBl7306" role="37wK5m">
                  <ref role="3cqZAo" node="6xm2RBl68tj" resolve="g" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6xm2RBl6miz" role="3cqZAp" />
        <node concept="3cpWs8" id="6xm2RBl6jV8" role="3cqZAp">
          <node concept="3cpWsn" id="6xm2RBl6jV9" role="3cpWs9">
            <property role="TrG5h" value="os" />
            <node concept="3uibUv" id="6xm2RBlc4Bc" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~ByteArrayOutputStream" resolve="ByteArrayOutputStream" />
            </node>
            <node concept="10Nm6u" id="6xm2RBl6kYL" role="33vP2m" />
          </node>
        </node>
        <node concept="2GUZhq" id="6xm2RBl6kuX" role="3cqZAp">
          <node concept="3clFbS" id="6xm2RBl69$K" role="2GV8ay">
            <node concept="3clFbF" id="6xm2RBl6kfN" role="3cqZAp">
              <node concept="37vLTI" id="6xm2RBl6kfP" role="3clFbG">
                <node concept="2ShNRf" id="6xm2RBl6jVa" role="37vLTx">
                  <node concept="1pGfFk" id="6xm2RBl6jVb" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~ByteArrayOutputStream.&lt;init&gt;()" resolve="ByteArrayOutputStream" />
                  </node>
                </node>
                <node concept="37vLTw" id="6xm2RBl6kfT" role="37vLTJ">
                  <ref role="3cqZAo" node="6xm2RBl6jV9" resolve="os" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6xm2RBl68E_" role="3cqZAp">
              <node concept="3cpWsn" id="6xm2RBl68EA" role="3cpWs9">
                <property role="TrG5h" value="out" />
                <node concept="3uibUv" id="6xm2RBl68EB" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~Writer" resolve="Writer" />
                </node>
                <node concept="2ShNRf" id="6xm2RBl68I9" role="33vP2m">
                  <node concept="1pGfFk" id="6xm2RBl68XG" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~OutputStreamWriter.&lt;init&gt;(java.io.OutputStream,java.lang.String)" resolve="OutputStreamWriter" />
                    <node concept="37vLTw" id="6xm2RBl6k4M" role="37wK5m">
                      <ref role="3cqZAo" node="6xm2RBl6jV9" resolve="os" />
                    </node>
                    <node concept="Xl_RD" id="6xm2RBl6993" role="37wK5m">
                      <property role="Xl_RC" value="UTF-8" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6xm2RBl6bSG" role="3cqZAp">
              <node concept="3cpWsn" id="6xm2RBl6bSH" role="3cpWs9">
                <property role="TrG5h" value="useCss" />
                <node concept="10P_77" id="6xm2RBl6bSF" role="1tU5fm" />
                <node concept="3clFbT" id="6xm2RBl6bSI" role="33vP2m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6xm2RBl6aFY" role="3cqZAp">
              <node concept="2OqwBi" id="6xm2RBl6aXt" role="3clFbG">
                <node concept="37vLTw" id="6xm2RBl6aFW" role="2Oq$k0">
                  <ref role="3cqZAo" node="6xm2RBl68tj" resolve="g" />
                </node>
                <node concept="liA8E" id="6xm2RBl6byd" role="2OqNvi">
                  <ref role="37wK5l" to="nxzt:~SVGGraphics2D.stream(java.io.Writer,boolean)" resolve="stream" />
                  <node concept="37vLTw" id="6xm2RBl6bBi" role="37wK5m">
                    <ref role="3cqZAo" node="6xm2RBl68EA" resolve="out" />
                  </node>
                  <node concept="37vLTw" id="6xm2RBl6bSJ" role="37wK5m">
                    <ref role="3cqZAo" node="6xm2RBl6bSH" resolve="useCss" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="35hm5eHLq3l" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3cpWs8" id="35hm5eHLplZ" role="8Wnug">
                <node concept="3cpWsn" id="35hm5eHLpm0" role="3cpWs9">
                  <property role="TrG5h" value="root" />
                  <node concept="3uibUv" id="35hm5eHLplX" role="1tU5fm">
                    <ref role="3uigEE" to="lhjl:~Element" resolve="Element" />
                  </node>
                  <node concept="2OqwBi" id="35hm5eHLpm1" role="33vP2m">
                    <node concept="37vLTw" id="35hm5eHLpm2" role="2Oq$k0">
                      <ref role="3cqZAo" node="6xm2RBl68tj" resolve="g" />
                    </node>
                    <node concept="liA8E" id="35hm5eHLpm3" role="2OqNvi">
                      <ref role="37wK5l" to="nxzt:~SVGGraphics2D.getRoot()" resolve="getRoot" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6xm2RBlc0NO" role="3cqZAp">
              <node concept="2OqwBi" id="6xm2RBlc16Z" role="3clFbG">
                <node concept="37vLTw" id="6xm2RBlc0NM" role="2Oq$k0">
                  <ref role="3cqZAo" node="6xm2RBl68EA" resolve="out" />
                </node>
                <node concept="liA8E" id="6xm2RBlc1p_" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~Writer.close()" resolve="close" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6xm2RBlrLaO" role="3cqZAp">
              <node concept="3cpWsn" id="6xm2RBlrLaP" role="3cpWs9">
                <property role="TrG5h" value="result" />
                <node concept="17QB3L" id="6xm2RBlrMeK" role="1tU5fm" />
                <node concept="2OqwBi" id="6xm2RBlrLaQ" role="33vP2m">
                  <node concept="37vLTw" id="6xm2RBlrLaR" role="2Oq$k0">
                    <ref role="3cqZAo" node="6xm2RBl6jV9" resolve="os" />
                  </node>
                  <node concept="liA8E" id="6xm2RBlrLaS" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~ByteArrayOutputStream.toString(java.lang.String)" resolve="toString" />
                    <node concept="Xl_RD" id="6xm2RBlrLaT" role="37wK5m">
                      <property role="Xl_RC" value="UTF-8" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="2w64df5R9UT" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbF" id="6xm2RBlrMYb" role="8Wnug">
                <node concept="2YIFZM" id="6xm2RBlrOJk" role="3clFbG">
                  <ref role="37wK5l" to="8oaq:~FileUtils.writeStringToFile(java.io.File,java.lang.String)" resolve="writeStringToFile" />
                  <ref role="1Pybhc" to="8oaq:~FileUtils" resolve="FileUtils" />
                  <node concept="2ShNRf" id="6xm2RBlrORi" role="37wK5m">
                    <node concept="1pGfFk" id="6xm2RBlrPvD" role="2ShVmc">
                      <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                      <node concept="Xl_RD" id="6xm2RBlrPBH" role="37wK5m">
                        <property role="Xl_RC" value="/Users/slisson/Desktop/out.svg" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="6xm2RBlrRg2" role="37wK5m">
                    <ref role="3cqZAo" node="6xm2RBlrLaP" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6xm2RBlc6DU" role="3cqZAp">
              <node concept="37vLTw" id="6xm2RBlrLaU" role="3cqZAk">
                <ref role="3cqZAo" node="6xm2RBlrLaP" resolve="result" />
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="6xm2RBl69$L" role="TEXxN">
            <node concept="3cpWsn" id="6xm2RBl69$N" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="6xm2RBl69Z6" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~UnsupportedEncodingException" resolve="UnsupportedEncodingException" />
              </node>
            </node>
            <node concept="3clFbS" id="6xm2RBl69$R" role="TDEfX">
              <node concept="YS8fn" id="6xm2RBl6ad7" role="3cqZAp">
                <node concept="2ShNRf" id="6xm2RBl6aes" role="YScLw">
                  <node concept="1pGfFk" id="6xm2RBl6aua" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="6xm2RBl6ayz" role="37wK5m">
                      <ref role="3cqZAo" node="6xm2RBl69$N" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="6xm2RBl6c2W" role="TEXxN">
            <node concept="3cpWsn" id="6xm2RBl6c2X" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="6xm2RBl6cdr" role="1tU5fm">
                <ref role="3uigEE" to="nxzt:~SVGGraphics2DIOException" resolve="SVGGraphics2DIOException" />
              </node>
            </node>
            <node concept="3clFbS" id="6xm2RBl6c2Z" role="TDEfX">
              <node concept="YS8fn" id="6xm2RBl6czM" role="3cqZAp">
                <node concept="2ShNRf" id="6xm2RBl6czN" role="YScLw">
                  <node concept="1pGfFk" id="6xm2RBl6czO" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="6xm2RBl6czP" role="37wK5m">
                      <ref role="3cqZAo" node="6xm2RBl6c2X" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="6xm2RBlc2jH" role="TEXxN">
            <node concept="3cpWsn" id="6xm2RBlc2jI" role="TDEfY">
              <property role="TrG5h" value="ex" />
              <node concept="3uibUv" id="6xm2RBlc2EH" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
            <node concept="3clFbS" id="6xm2RBlc2jK" role="TDEfX">
              <node concept="YS8fn" id="6xm2RBlc3bd" role="3cqZAp">
                <node concept="2ShNRf" id="6xm2RBlc3be" role="YScLw">
                  <node concept="1pGfFk" id="6xm2RBlc3bf" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="6xm2RBlc3bg" role="37wK5m">
                      <ref role="3cqZAo" node="6xm2RBlc2jI" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6xm2RBl6kv0" role="2GVbov">
            <node concept="SfApY" id="6xm2RBl6l6k" role="3cqZAp">
              <node concept="3clFbS" id="6xm2RBl6l6l" role="SfCbr">
                <node concept="3clFbF" id="6xm2RBl6lna" role="3cqZAp">
                  <node concept="2OqwBi" id="6xm2RBl6lGh" role="3clFbG">
                    <node concept="37vLTw" id="6xm2RBl6ln9" role="2Oq$k0">
                      <ref role="3cqZAo" node="6xm2RBl6jV9" resolve="os" />
                    </node>
                    <node concept="liA8E" id="6xm2RBl6lYS" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~ByteArrayOutputStream.close()" resolve="close" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="TDmWw" id="6xm2RBl6l6m" role="TEbGg">
                <node concept="3cpWsn" id="6xm2RBl6l6n" role="TDEfY">
                  <property role="TrG5h" value="ex" />
                  <node concept="3uibUv" id="6xm2RBl6l9G" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                  </node>
                </node>
                <node concept="3clFbS" id="6xm2RBl6l6p" role="TDEfX" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6xm2RBl6itf" role="3cqZAp" />
      </node>
      <node concept="17QB3L" id="6xm2RBlc4oi" role="3clF45" />
      <node concept="3Tm1VV" id="6xm2RBl62ka" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6xm2RBl62jX" role="jymVt" />
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
        <node concept="2GUZhq" id="1LwnBM301qa" role="3cqZAp">
          <node concept="3clFbS" id="1LwnBM301qc" role="2GV8ay">
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
          <node concept="3clFbS" id="1LwnBM301qd" role="2GVbov">
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

