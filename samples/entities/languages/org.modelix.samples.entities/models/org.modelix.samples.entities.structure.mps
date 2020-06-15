<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7db70d3d-4d8f-421d-b146-7ea793314222(org.modelix.samples.entities.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="6Emz9elPWGY">
    <property role="EcuMT" value="7680480780028988222" />
    <property role="TrG5h" value="Entity" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6Emz9elPXVm" role="1TKVEi">
      <property role="IQ2ns" value="7680480780028993238" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="properties" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6Emz9elPXSG" resolve="Property" />
    </node>
    <node concept="PrWs8" id="7zDl3zkcUHF" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="6Emz9elPXSG">
    <property role="EcuMT" value="7680480780028993068" />
    <property role="TrG5h" value="Property" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="wa_gCmoqws" role="1TKVEi">
      <property role="IQ2ns" value="579439372628240412" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="wa_gCmoqm6" resolve="Type" />
    </node>
    <node concept="1TJgyj" id="7zDl3zkbpRu" role="1TKVEi">
      <property role="IQ2ns" value="8712587557179596254" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="initializer" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="7zDl3zkcUHI" role="PzmwI">
      <ref role="PrY4T" to="tpee:hCUYCKd" resolve="IValidIdentifier" />
    </node>
  </node>
  <node concept="1TIwiD" id="wa_gCmoqm6">
    <property role="EcuMT" value="579439372628239750" />
    <property role="TrG5h" value="Type" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="wa_gCmoqpv">
    <property role="EcuMT" value="579439372628239967" />
    <property role="TrG5h" value="StringType" />
    <property role="34LRSv" value="string" />
    <ref role="1TJDcQ" node="wa_gCmoqm6" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="wa_gCmoEdW">
    <property role="EcuMT" value="579439372628304764" />
    <property role="TrG5h" value="EntityType" />
    <ref role="1TJDcQ" node="wa_gCmoqm6" resolve="Type" />
    <node concept="1TJgyj" id="wa_gCmoEhl" role="1TKVEi">
      <property role="IQ2ns" value="579439372628304981" />
      <property role="20kJfa" value="entity" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6Emz9elPWGY" resolve="Entity" />
    </node>
  </node>
  <node concept="1TIwiD" id="1D6Sg8QmYnM">
    <property role="EcuMT" value="1893448092974048754" />
    <property role="TrG5h" value="IntegerType" />
    <property role="34LRSv" value="int" />
    <ref role="1TJDcQ" node="wa_gCmoqm6" resolve="Type" />
  </node>
</model>

