<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c0f62029-94d5-495d-b498-eb090ba537fc(org.modelix.ui.state.structure)">
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
      <concept id="7862711839422615209" name="jetbrains.mps.lang.structure.structure.DocumentedNodeAnnotation" flags="ng" index="t5JxF">
        <property id="7862711839422615217" name="text" index="t5JxN" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
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
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="4bjL$lUe34H">
    <property role="EcuMT" value="4815410428294738221" />
    <property role="TrG5h" value="UiStateRoot" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4bjL$lUeedB" role="1TKVEi">
      <property role="IQ2ns" value="4815410428294783847" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="users" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4bjL$lUee0m" resolve="User" />
    </node>
    <node concept="1TJgyj" id="4bjL$lUeegP" role="1TKVEi">
      <property role="IQ2ns" value="4815410428294784053" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="sessions" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4bjL$lUedD6" resolve="UserSession" />
    </node>
  </node>
  <node concept="1TIwiD" id="4bjL$lUedD6">
    <property role="EcuMT" value="4815410428294781510" />
    <property role="TrG5h" value="UserSession" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2UHWH1pKOdl" role="1TKVEi">
      <property role="IQ2ns" value="3363611473388716885" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="editorStates" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4bjL$lUeeQe" resolve="EditorComponentState" />
    </node>
    <node concept="1TJgyi" id="2UHWH1pKMDf" role="1TKVEl">
      <property role="IQ2nx" value="3363611473388710479" />
      <property role="TrG5h" value="id" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="4bjL$lUeeoQ" role="1TKVEi">
      <property role="IQ2ns" value="4815410428294784566" />
      <property role="20kJfa" value="user" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4bjL$lUee0m" resolve="User" />
    </node>
    <node concept="t5JxF" id="2UHWH1pKMv7" role="lGtFl">
      <property role="t5JxN" value="A user can log in from different devices/browsers with different sessions. The user has to provide the session ID in a cookie." />
    </node>
  </node>
  <node concept="1TIwiD" id="4bjL$lUee0m">
    <property role="EcuMT" value="4815410428294782998" />
    <property role="TrG5h" value="User" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="4bjL$lUee5u" role="1TKVEl">
      <property role="IQ2nx" value="4815410428294783326" />
      <property role="TrG5h" value="id" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
      <node concept="t5JxF" id="2UHWH1pKMWt" role="lGtFl">
        <property role="t5JxN" value="ID is usually the e-mail adress used during OAuth login" />
      </node>
    </node>
    <node concept="t5JxF" id="2UHWH1pKMTf" role="lGtFl">
      <property role="t5JxN" value="Created on first login of an OAuth user." />
    </node>
  </node>
  <node concept="1TIwiD" id="4bjL$lUeeQe">
    <property role="EcuMT" value="4815410428294786446" />
    <property role="TrG5h" value="EditorComponentState" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="2UHWH1pKOia" role="1TKVEl">
      <property role="IQ2nx" value="3363611473388717194" />
      <property role="TrG5h" value="id" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="4bjL$lUeOrX" role="1TKVEl">
      <property role="IQ2nx" value="4815410428294940413" />
      <property role="TrG5h" value="memento" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
</model>

