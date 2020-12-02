<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9f88a0c4-0955-4da0-b431-55e1caa7d82a(sandbox_beta.model_2)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
  </languages>
  <imports>
    <import index="zcse" ref="r:96e1b22d-ed2b-4efd-ae7d-8ab970af0817(sandbox_beta.model_1)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
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
  <node concept="312cEu" id="4p_bU8cS1u6">
    <property role="TrG5h" value="ClassBeta2" />
    <node concept="3Tm1VV" id="4p_bU8cS1u7" role="1B3o_S" />
    <node concept="3uibUv" id="4p_bU8cS1uY" role="1zkMxy">
      <ref role="3uigEE" to="zcse:4p_bU8cS1tA" resolve="ClassBeta1" />
    </node>
  </node>
</model>

