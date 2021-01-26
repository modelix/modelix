<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:08484d5d-1f70-4b33-b501-334ce5d3015e(MyExampleSolution.aModel)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="4RKx2wh0mCi">
    <property role="TrG5h" value="MyClass" />
    <node concept="2tJIrI" id="4RKx2wh0pKs" role="jymVt" />
    <node concept="312cEg" id="4RKx2wh0sBW" role="jymVt">
      <property role="TrG5h" value="s1" />
      <node concept="3Tm6S6" id="4RKx2wh0sAa" role="1B3o_S" />
      <node concept="17QB3L" id="4RKx2wh0sBL" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4RKx2wh0sRf" role="jymVt">
      <property role="TrG5h" value="s2" />
      <node concept="3Tm6S6" id="4RKx2wh0sRg" role="1B3o_S" />
      <node concept="17QB3L" id="4RKx2wh0sRh" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="4RKx2wh0s$A" role="jymVt" />
    <node concept="3clFb_" id="4RKx2wh0pL4" role="jymVt">
      <property role="TrG5h" value="foo" />
      <node concept="3clFbS" id="4RKx2wh0pL7" role="3clF47">
        <node concept="3clFbF" id="4RKx2wh0rnY" role="3cqZAp">
          <node concept="2OqwBi" id="4RKx2wh0rzI" role="3clFbG">
            <node concept="10M0yZ" id="4RKx2wh0rox" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="4RKx2wh0rJP" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
              <node concept="3cpWs3" id="4RKx2wh0sln" role="37wK5m">
                <node concept="37vLTw" id="4RKx2wh0snd" role="3uHU7w">
                  <ref role="3cqZAo" node="4RKx2wh0pMf" resolve="inheritedField" />
                </node>
                <node concept="Xl_RD" id="4RKx2wh0rOH" role="3uHU7B">
                  <property role="Xl_RC" value="inheritedField=" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4RKx2wh0pKE" role="1B3o_S" />
      <node concept="3cqZAl" id="4RKx2wh0pKT" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4RKx2wh0sT7" role="jymVt" />
    <node concept="3clFb_" id="4RKx2wh0sYc" role="jymVt">
      <property role="TrG5h" value="swap" />
      <node concept="3clFbS" id="4RKx2wh0sYf" role="3clF47">
        <node concept="3cpWs8" id="4RKx2wh0t0f" role="3cqZAp">
          <node concept="3cpWsn" id="4RKx2wh0t0i" role="3cpWs9">
            <property role="TrG5h" value="saved" />
            <node concept="17QB3L" id="4RKx2wh0t0e" role="1tU5fm" />
            <node concept="37vLTw" id="4RKx2wh0t0X" role="33vP2m">
              <ref role="3cqZAo" node="4RKx2wh0sBW" resolve="s1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4RKx2wh0taD" role="3cqZAp">
          <node concept="37vLTI" id="4RKx2wh0tk0" role="3clFbG">
            <node concept="37vLTw" id="4RKx2wh0tlz" role="37vLTx">
              <ref role="3cqZAo" node="4RKx2wh0sRf" resolve="s2" />
            </node>
            <node concept="37vLTw" id="4RKx2wh0taB" role="37vLTJ">
              <ref role="3cqZAo" node="4RKx2wh0sBW" resolve="s1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4RKx2wh0tnV" role="3cqZAp">
          <node concept="37vLTI" id="4RKx2wh0tpe" role="3clFbG">
            <node concept="37vLTw" id="4RKx2wh0tyX" role="37vLTx">
              <ref role="3cqZAo" node="4RKx2wh0t0i" resolve="saved" />
            </node>
            <node concept="37vLTw" id="4RKx2wh0tnT" role="37vLTJ">
              <ref role="3cqZAo" node="4RKx2wh0sRf" resolve="s2" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4RKx2wh0sWs" role="1B3o_S" />
      <node concept="3cqZAl" id="4RKx2wh0sWP" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="4RKx2wh0mCj" role="1B3o_S" />
    <node concept="3uibUv" id="4RKx2wh0pKg" role="1zkMxy">
      <ref role="3uigEE" node="4RKx2wh0pIN" resolve="MyAbstractClass" />
    </node>
  </node>
  <node concept="312cEu" id="4RKx2wh0pIN">
    <property role="TrG5h" value="MyAbstractClass" />
    <property role="1sVAO0" value="true" />
    <node concept="312cEg" id="4RKx2wh0pMf" role="jymVt">
      <property role="TrG5h" value="inheritedField" />
      <node concept="3Tmbuc" id="4RKx2wh0pLP" role="1B3o_S" />
      <node concept="10Oyi0" id="4RKx2wh0pNW" role="1tU5fm" />
      <node concept="3cmrfG" id="4RKx2wh0rn9" role="33vP2m">
        <property role="3cmrfH" value="123" />
      </node>
    </node>
    <node concept="2tJIrI" id="c_w$uPhoU7" role="jymVt" />
    <node concept="3clFb_" id="c_w$uPhoUW" role="jymVt">
      <property role="TrG5h" value="methodM1" />
      <node concept="3clFbS" id="c_w$uPhoUZ" role="3clF47" />
      <node concept="3cqZAl" id="c_w$uPhoUC" role="3clF45" />
      <node concept="3Tm1VV" id="c_w$uPhoVq" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="4RKx2wh0pJP" role="1B3o_S" />
  </node>
</model>

