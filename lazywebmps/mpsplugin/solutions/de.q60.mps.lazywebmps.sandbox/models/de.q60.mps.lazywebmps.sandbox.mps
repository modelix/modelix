<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:99d44f4e-77b8-4b11-bdb3-05ad6afc513a(de.q60.mps.lazywebmps.sandbox)">
  <persistence version="9" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports />
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
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
  <node concept="312cEu" id="2AThsNtEtDt">
    <property role="TrG5h" value="C12345" />
    <node concept="2tJIrI" id="2AThsNtJTLi" role="jymVt" />
    <node concept="312cEg" id="2AThsNtHdza" role="jymVt">
      <property role="TrG5h" value="abcd" />
      <node concept="3Tm6S6" id="2AThsNtHdzb" role="1B3o_S" />
      <node concept="10Oyi0" id="2AThsNtHdzq" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="2AThsNtJTge" role="jymVt">
      <property role="TrG5h" value="abcde" />
      <node concept="3Tm6S6" id="2AThsNtJTgf" role="1B3o_S" />
      <node concept="10Oyi0" id="2AThsNtJTgg" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="2AThsNtJTxL" role="jymVt" />
    <node concept="312cEg" id="2AThsNtHDiY" role="jymVt">
      <property role="TrG5h" value="defge22" />
      <node concept="3Tm6S6" id="2AThsNtHDiZ" role="1B3o_S" />
      <node concept="10Oyi0" id="2AThsNtHDjh" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="2AThsNtIwMq" role="jymVt">
      <property role="TrG5h" value="aaa" />
      <node concept="3Tm6S6" id="2AThsNtIwMr" role="1B3o_S" />
      <node concept="10Oyi0" id="2AThsNtIwN2" role="1tU5fm" />
      <node concept="Xl_RD" id="1oBrsEKPVGI" role="33vP2m">
        <property role="Xl_RC" value="" />
      </node>
    </node>
    <node concept="2tJIrI" id="1LwnBM30IfI" role="jymVt" />
    <node concept="2tJIrI" id="1LwnBM30Ig1" role="jymVt" />
    <node concept="3Tm1VV" id="2AThsNtEtDu" role="1B3o_S" />
  </node>
</model>

