<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:850c0561-52cb-4366-a188-39d1eb49d925(org.modelix.sandbox)">
  <persistence version="9" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports />
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
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
  <node concept="312cEu" id="4RHKc8nKsSb">
    <property role="TrG5h" value="ClassA" />
    <node concept="3clFb_" id="4RHKc8nKsYS" role="jymVt">
      <property role="TrG5h" value="methodA" />
      <node concept="3cqZAl" id="4RHKc8nKsYU" role="3clF45" />
      <node concept="3Tm1VV" id="4RHKc8nKsYV" role="1B3o_S" />
      <node concept="3clFbS" id="4RHKc8nKsYW" role="3clF47" />
      <node concept="37vLTG" id="4RHKc8nSe1K" role="3clF46">
        <property role="TrG5h" value="abc" />
        <node concept="10Oyi0" id="4RHKc8nSe1L" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4RHKc8nSe68" role="3clF46">
        <property role="TrG5h" value="abc" />
        <node concept="17QB3L" id="4RHKc8nSeBg" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4RHKc8nKt8K" role="jymVt" />
    <node concept="3Tm1VV" id="4RHKc8nKsSc" role="1B3o_S" />
  </node>
</model>

