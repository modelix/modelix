<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2cecb6cb-d471-44cb-9e24-ed922bfb5c7e(org.modelix.model.metametamodel.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
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
  <node concept="1TIwiD" id="10conVNJevJ">
    <property role="EcuMT" value="1156406402210392047" />
    <property role="TrG5h" value="Language" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="10conVNJuT4" role="1TKVEi">
      <property role="IQ2ns" value="1156406402210459204" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="concepts" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="10conVNJevK" resolve="Concept" />
    </node>
    <node concept="PrWs8" id="10conVNJevZ" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="10conVNJevK">
    <property role="EcuMT" value="1156406402210392048" />
    <property role="TrG5h" value="Concept" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="10conVNJuT6" role="1TKVEl">
      <property role="IQ2nx" value="1156406402210459206" />
      <property role="TrG5h" value="abstract" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="10conVNJew1" role="1TKVEi">
      <property role="IQ2ns" value="1156406402210392065" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="properties" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="10conVNJevL" resolve="Property" />
    </node>
    <node concept="1TJgyj" id="10conVNJew3" role="1TKVEi">
      <property role="IQ2ns" value="1156406402210392067" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="containmentLinks" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="10conVNJevN" resolve="ContainmentLink" />
    </node>
    <node concept="1TJgyj" id="10conVNJew6" role="1TKVEi">
      <property role="IQ2ns" value="1156406402210392070" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="referenceLinks" />
      <ref role="20lvS9" node="10conVNJevM" resolve="ReferenceLink" />
    </node>
    <node concept="1TJgyj" id="10conVNJewd" role="1TKVEi">
      <property role="IQ2ns" value="1156406402210392077" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="superConcepts" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="10conVNJewa" resolve="ConceptReference" />
    </node>
    <node concept="PrWs8" id="10conVNJevX" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="10conVNJevL">
    <property role="EcuMT" value="1156406402210392049" />
    <property role="TrG5h" value="Property" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="10conVNJevR" role="PzmwI">
      <ref role="PrY4T" node="10conVNJevO" resolve="IRole" />
    </node>
  </node>
  <node concept="1TIwiD" id="10conVNJevM">
    <property role="EcuMT" value="1156406402210392050" />
    <property role="TrG5h" value="ReferenceLink" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="10conVNJevT" role="PzmwI">
      <ref role="PrY4T" node="10conVNJevO" resolve="IRole" />
    </node>
  </node>
  <node concept="1TIwiD" id="10conVNJevN">
    <property role="EcuMT" value="1156406402210392051" />
    <property role="TrG5h" value="ContainmentLink" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="10conVNJevP" role="PzmwI">
      <ref role="PrY4T" node="10conVNJevO" resolve="IRole" />
    </node>
  </node>
  <node concept="PlHQZ" id="10conVNJevO">
    <property role="EcuMT" value="1156406402210392052" />
    <property role="TrG5h" value="IRole" />
    <node concept="PrWs8" id="10conVNJevV" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="10conVNJewa">
    <property role="EcuMT" value="1156406402210392074" />
    <property role="TrG5h" value="ConceptReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="10conVNJewb" role="1TKVEi">
      <property role="IQ2ns" value="1156406402210392075" />
      <property role="20kJfa" value="concept" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="10conVNJevK" resolve="Concept" />
    </node>
  </node>
</model>

