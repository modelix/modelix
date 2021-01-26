<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:76f5e072-fbfe-490d-9eda-7dee1331b88a(simple.solution1.model1)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf" />
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="5yNJPA6t9uG">
    <property role="TrG5h" value="MyClass" />
    <node concept="312cEg" id="5yNJPA6t9vt" role="jymVt">
      <property role="TrG5h" value="field" />
      <node concept="10Oyi0" id="5yNJPA6t9ve" role="1tU5fm" />
      <node concept="3Tm6S6" id="5yNJPA6tdb4" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5yNJPA6t9w8" role="jymVt" />
    <node concept="3clFbW" id="5yNJPA6t9w_" role="jymVt">
      <node concept="3cqZAl" id="5yNJPA6t9wB" role="3clF45" />
      <node concept="3Tm1VV" id="5yNJPA6t9wC" role="1B3o_S" />
      <node concept="3clFbS" id="5yNJPA6t9wD" role="3clF47">
        <node concept="3clFbF" id="5yNJPA6t9y0" role="3cqZAp">
          <node concept="37vLTI" id="5yNJPA6ta63" role="3clFbG">
            <node concept="17qRlL" id="5yNJPA6tak6" role="37vLTx">
              <node concept="3cmrfG" id="5yNJPA6takh" role="3uHU7w">
                <property role="3cmrfH" value="3" />
              </node>
              <node concept="37vLTw" id="5yNJPA6taak" role="3uHU7B">
                <ref role="3cqZAo" node="5yNJPA6t9x3" resolve="value" />
              </node>
            </node>
            <node concept="2OqwBi" id="5yNJPA6t9$O" role="37vLTJ">
              <node concept="Xjq3P" id="5yNJPA6t9xZ" role="2Oq$k0" />
              <node concept="2OwXpG" id="5yNJPA6t9AU" role="2OqNvi">
                <ref role="2Oxat5" node="5yNJPA6t9vt" resolve="field" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5yNJPA6t9x3" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="10Oyi0" id="5yNJPA6t9x2" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5yNJPA6taWv" role="jymVt" />
    <node concept="3clFb_" id="5yNJPA6tb8X" role="jymVt">
      <property role="TrG5h" value="howAreYou" />
      <node concept="3clFbS" id="5yNJPA6tb90" role="3clF47">
        <node concept="3clFbJ" id="5yNJPA6tbbi" role="3cqZAp">
          <node concept="3eOVzh" id="5yNJPA6tbTb" role="3clFbw">
            <node concept="2OqwBi" id="5yNJPA6tbgs" role="3uHU7B">
              <node concept="Xjq3P" id="5yNJPA6tbc2" role="2Oq$k0" />
              <node concept="2OwXpG" id="5yNJPA6tbiE" role="2OqNvi">
                <ref role="2Oxat5" node="5yNJPA6t9vt" resolve="field" />
              </node>
            </node>
            <node concept="3cmrfG" id="5yNJPA6tbUn" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3clFbS" id="5yNJPA6tbbk" role="3clFbx">
            <node concept="3cpWs6" id="5yNJPA6tbV9" role="3cqZAp">
              <node concept="Rm8GO" id="5yNJPA6tbVE" role="3cqZAk">
                <ref role="1Px2BO" node="5yNJPA6tazr" resolve="HowGood" />
                <ref role="Rm8GQ" node="5yNJPA6taFb" resolve="SUBOPTIMAL" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5yNJPA6tc8u" role="3cqZAp">
          <node concept="3clFbS" id="5yNJPA6tc8w" role="3clFbx">
            <node concept="3cpWs6" id="5yNJPA6td0X" role="3cqZAp">
              <node concept="Rm8GO" id="5yNJPA6td3k" role="3cqZAk">
                <ref role="1Px2BO" node="5yNJPA6tazr" resolve="HowGood" />
                <ref role="Rm8GQ" node="5yNJPA6ta$D" resolve="GOOD" />
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="5yNJPA6tcYH" role="3clFbw">
            <node concept="3cmrfG" id="5yNJPA6td00" role="3uHU7w">
              <property role="3cmrfH" value="5" />
            </node>
            <node concept="2OqwBi" id="5yNJPA6tcnP" role="3uHU7B">
              <node concept="Xjq3P" id="5yNJPA6tc8Y" role="2Oq$k0" />
              <node concept="2OwXpG" id="5yNJPA6tcql" role="2OqNvi">
                <ref role="2Oxat5" node="5yNJPA6t9vt" resolve="field" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5yNJPA6td5Y" role="3cqZAp">
          <node concept="Rm8GO" id="5yNJPA6td8N" role="3cqZAk">
            <ref role="1Px2BO" node="5yNJPA6tazr" resolve="HowGood" />
            <ref role="Rm8GQ" node="5yNJPA6taAX" resolve="LESSGOOD" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5yNJPA6tb7U" role="1B3o_S" />
      <node concept="3uibUv" id="5yNJPA6tbaa" role="3clF45">
        <ref role="3uigEE" node="5yNJPA6tazr" resolve="HowGood" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5yNJPA6t9uH" role="1B3o_S" />
  </node>
  <node concept="Qs71p" id="5yNJPA6tazr">
    <property role="TrG5h" value="HowGood" />
    <node concept="3Tm1VV" id="5yNJPA6tazs" role="1B3o_S" />
    <node concept="QsSxf" id="5yNJPA6ta$D" role="Qtgdg">
      <property role="TrG5h" value="GOOD" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="5yNJPA6taAX" role="Qtgdg">
      <property role="TrG5h" value="LESSGOOD" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
    <node concept="QsSxf" id="5yNJPA6taFb" role="Qtgdg">
      <property role="TrG5h" value="SUBOPTIMAL" />
      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
    </node>
  </node>
</model>

