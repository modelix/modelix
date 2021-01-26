<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:20cc2180-685b-4b8b-b4bf-8338f7fe7df5(ASecondSolution.model2A)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
  </languages>
  <imports>
    <import index="c5fg" ref="r:08484d5d-1f70-4b33-b501-334ce5d3015e(MyExampleSolution.aModel)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
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
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="c_w$uPhoot">
    <property role="TrG5h" value="AnotherClass" />
    <node concept="2tJIrI" id="c_w$uPhopP" role="jymVt" />
    <node concept="3clFb_" id="c_w$uPhoqt" role="jymVt">
      <property role="TrG5h" value="aGloriousMethod" />
      <node concept="3clFbS" id="c_w$uPhoqw" role="3clF47">
        <node concept="3clFbF" id="c_w$uPhp5s" role="3cqZAp">
          <node concept="2OqwBi" id="c_w$uPhp9S" role="3clFbG">
            <node concept="Xjq3P" id="c_w$uPhp5n" role="2Oq$k0" />
            <node concept="liA8E" id="c_w$uPhpcL" role="2OqNvi">
              <ref role="37wK5l" to="c5fg:c_w$uPhoUW" resolve="methodM1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="c_w$uPhoq3" role="1B3o_S" />
      <node concept="3cqZAl" id="c_w$uPhoqi" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="c_w$uPhoou" role="1B3o_S" />
    <node concept="3uibUv" id="c_w$uPhopD" role="1zkMxy">
      <ref role="3uigEE" to="c5fg:4RKx2wh0pIN" resolve="MyAbstractClass" />
    </node>
  </node>
</model>

