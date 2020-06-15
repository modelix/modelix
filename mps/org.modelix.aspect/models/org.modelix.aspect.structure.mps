<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ded575ba-957a-4f7f-89f0-d9fc02ad1b0c(org.modelix.aspect.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="oyp0" ref="r:ff4bc8f2-4e53-41b7-a27c-792a5dcc86cb(de.q60.mps.shadowmodels.transformation.structure)" />
    <import index="70w2" ref="r:59e1f3dd-5dad-4bbd-ad65-fef01059d9d2(org.modelix.ui.sm.dom.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="wa_gCmoW26">
    <property role="EcuMT" value="579439372628377734" />
    <property role="TrG5h" value="CloudModelDefinition" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="wa_gCmppc_" role="1TKVEl">
      <property role="IQ2nx" value="579439372628497189" />
      <property role="TrG5h" value="cloudModelId" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="wa_gCmoW6H" role="1TKVEl">
      <property role="IQ2nx" value="579439372628378029" />
      <property role="TrG5h" value="computedCloudModelId" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="wa_gCmpqd2" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="wa_gCmpVKR">
    <property role="EcuMT" value="579439372628638775" />
    <property role="TrG5h" value="CloudModelExpression" />
    <property role="34LRSv" value="cloudModel" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="wa_gCmpVNW" role="1TKVEi">
      <property role="IQ2ns" value="579439372628638972" />
      <property role="20kJfa" value="definition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="wa_gCmoW26" resolve="CloudModelDefinition" />
    </node>
  </node>
  <node concept="1TIwiD" id="3XNyhUa8oNE">
    <property role="EcuMT" value="4572148810970664170" />
    <property role="TrG5h" value="HttpPage" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="httpPage" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3XNyhUabOze" role="1TKVEi">
      <property role="IQ2ns" value="4572148810971564238" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3XNyhUa8p1w" resolve="HttpPageParameter" />
    </node>
    <node concept="1TJgyj" id="3XNyhUabXVO" role="1TKVEi">
      <property role="IQ2ns" value="4572148810971602676" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="transformation" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="oyp0:7X4ppfYlm1v" resolve="TransformationCall" />
    </node>
    <node concept="1TJgyj" id="6MQUJsyUYsw" role="1TKVEi">
      <property role="IQ2ns" value="7833706949021263648" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="title" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyi" id="3XNyhUa8oNU" role="1TKVEl">
      <property role="IQ2nx" value="4572148810970664186" />
      <property role="TrG5h" value="path" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="3XNyhUa8p1w">
    <property role="EcuMT" value="4572148810970665056" />
    <property role="TrG5h" value="HttpPageParameter" />
    <property role="3GE5qa" value="httpPage" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3XNyhUacybh" role="1TKVEi">
      <property role="IQ2ns" value="4572148810971751121" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="type" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3XNyhUa8p1K" resolve="HttpPageParameterType" />
    </node>
    <node concept="PrWs8" id="3XNyhUa8pHq" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3XNyhUa8p1K">
    <property role="EcuMT" value="4572148810970665072" />
    <property role="TrG5h" value="HttpPageParameterType" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="httpPage" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="3XNyhUa8p20">
    <property role="EcuMT" value="4572148810970665088" />
    <property role="TrG5h" value="StringHttpPageParameterType" />
    <property role="34LRSv" value="string" />
    <property role="3GE5qa" value="httpPage" />
    <ref role="1TJDcQ" node="3XNyhUa8p1K" resolve="HttpPageParameterType" />
  </node>
  <node concept="1TIwiD" id="3XNyhUa8p2g">
    <property role="EcuMT" value="4572148810970665104" />
    <property role="TrG5h" value="NodeHttpPageParameterType" />
    <property role="34LRSv" value="node" />
    <property role="3GE5qa" value="httpPage" />
    <ref role="1TJDcQ" node="3XNyhUa8p1K" resolve="HttpPageParameterType" />
    <node concept="1TJgyj" id="3XNyhUa8p2w" role="1TKVEi">
      <property role="IQ2ns" value="4572148810970665120" />
      <property role="20kJfa" value="concept" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="3XNyhUacQaj">
    <property role="EcuMT" value="4572148810971832979" />
    <property role="3GE5qa" value="httpPage" />
    <property role="TrG5h" value="HttpPageParameterRef" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="3XNyhUacQaY" role="1TKVEi">
      <property role="IQ2ns" value="4572148810971833022" />
      <property role="20kJfa" value="decl" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3XNyhUa8p1w" resolve="HttpPageParameter" />
    </node>
  </node>
  <node concept="1TIwiD" id="3XNyhUae7DY">
    <property role="EcuMT" value="4572148810972166782" />
    <property role="TrG5h" value="RepositoryNodeExpression" />
    <property role="34LRSv" value="repositoryNode" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="6MQUJsz126I">
    <property role="EcuMT" value="7833706949022851502" />
    <property role="3GE5qa" value="httpPage" />
    <property role="TrG5h" value="UrlForHttpPageExpression" />
    <property role="34LRSv" value="urlFor" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="6MQUJsz12aG" role="1TKVEi">
      <property role="IQ2ns" value="7833706949022851756" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="parameterValues" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="6MQUJsz129c" role="1TKVEi">
      <property role="IQ2ns" value="7833706949022851660" />
      <property role="20kJfa" value="page" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3XNyhUa8oNE" resolve="HttpPage" />
    </node>
  </node>
</model>

