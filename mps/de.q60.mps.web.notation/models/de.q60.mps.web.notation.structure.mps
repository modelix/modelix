<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:599c60e4-99d0-4ea8-9225-bd9adc3816a3(de.q60.mps.web.notation.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
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
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="8842732777748464990" name="jetbrains.mps.lang.structure.structure.RefPresentationTemplate" flags="ng" index="ROjv2" />
      <concept id="8842732777748207592" name="jetbrains.mps.lang.structure.structure.SmartReferenceAttribute" flags="ng" index="RPilO">
        <reference id="8842732777748207597" name="charactersticReference" index="RPilL" />
        <child id="8842732777748474935" name="refPresentationTemplate" index="ROhUF" />
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
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="6IHVO0tjgbc">
    <property role="EcuMT" value="7759120791677764300" />
    <property role="TrG5h" value="Cell" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6IHVO0tjAea" role="PzmwI">
      <ref role="PrY4T" node="6IHVO0tjgbK" resolve="ICell" />
    </node>
  </node>
  <node concept="1TIwiD" id="6IHVO0tjgbo">
    <property role="EcuMT" value="7759120791677764312" />
    <property role="TrG5h" value="PropertyCell" />
    <ref role="1TJDcQ" node="6IHVO0tjgbc" resolve="Cell" />
    <node concept="1TJgyj" id="6IHVO0tjiNV" role="1TKVEi">
      <property role="IQ2ns" value="7759120791677775099" />
      <property role="20kJfa" value="property" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="6IHVO0tjgb$">
    <property role="EcuMT" value="7759120791677764324" />
    <property role="TrG5h" value="ChildrenCollectionCell" />
    <ref role="1TJDcQ" node="6IHVO0tjgbc" resolve="Cell" />
    <node concept="1TJgyi" id="7jIhq8MJMcP" role="1TKVEl">
      <property role="IQ2nx" value="8425748515795182389" />
      <property role="TrG5h" value="separator" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="w8XdrMWyYG" role="1TKVEi">
      <property role="IQ2ns" value="578981756153245612" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="layout" />
      <ref role="20lvS9" node="w8XdrMVXw$" resolve="CollectionLayout" />
    </node>
    <node concept="1TJgyj" id="6IHVO0tmKfq" role="1TKVEi">
      <property role="IQ2ns" value="7759120791678682074" />
      <property role="20kJfa" value="link" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    </node>
    <node concept="1TJgyj" id="eq067TgiOo" role="1TKVEi">
      <property role="IQ2ns" value="259520349320850712" />
      <property role="20kJfa" value="subconceptToInsert" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="RPilO" id="7KWsI9BlTFN" role="lGtFl">
      <ref role="RPilL" node="6IHVO0tmKfq" resolve="link" />
      <node concept="ROjv2" id="7KWsI9BlYiR" role="ROhUF" />
    </node>
  </node>
  <node concept="PlHQZ" id="6IHVO0tjgbK">
    <property role="EcuMT" value="7759120791677764336" />
    <property role="TrG5h" value="ICell" />
  </node>
  <node concept="1TIwiD" id="6IHVO0tjgbW">
    <property role="EcuMT" value="7759120791677764348" />
    <property role="TrG5h" value="ConceptNotation" />
    <property role="34LRSv" value="notation" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6IHVO0tjiNC" role="1TKVEi">
      <property role="IQ2ns" value="7759120791677775080" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="cell" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6IHVO0tjgbK" resolve="ICell" />
    </node>
    <node concept="1TJgyj" id="6IHVO0tjgc8" role="1TKVEi">
      <property role="IQ2ns" value="7759120791677764360" />
      <property role="20kJfa" value="concept" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpce:h0PkWnZ" resolve="AbstractConceptDeclaration" />
    </node>
    <node concept="PrWs8" id="6IHVO0tjoQC" role="PzmwI">
      <ref role="PrY4T" node="6IHVO0tjoPO" resolve="INotationModuleContent" />
    </node>
  </node>
  <node concept="1TIwiD" id="6IHVO0tjiNF">
    <property role="EcuMT" value="7759120791677775083" />
    <property role="TrG5h" value="StaticCollectionCell" />
    <property role="34LRSv" value="[" />
    <ref role="1TJDcQ" node="6IHVO0tjgbc" resolve="Cell" />
    <node concept="1TJgyj" id="6IHVO0tjiNR" role="1TKVEi">
      <property role="IQ2ns" value="7759120791677775095" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="cells" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6IHVO0tjgbK" resolve="ICell" />
    </node>
    <node concept="1TJgyj" id="w8XdrMVXx8" role="1TKVEi">
      <property role="IQ2ns" value="578981756153092168" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="layout" />
      <ref role="20lvS9" node="w8XdrMVXw$" resolve="CollectionLayout" />
    </node>
  </node>
  <node concept="1TIwiD" id="6IHVO0tjiO1">
    <property role="EcuMT" value="7759120791677775105" />
    <property role="TrG5h" value="FlagCell" />
    <property role="34LRSv" value="flag" />
    <ref role="1TJDcQ" node="6IHVO0tjgbc" resolve="Cell" />
    <node concept="1TJgyi" id="6IHVO0tjlo$" role="1TKVEl">
      <property role="IQ2nx" value="7759120791677785636" />
      <property role="TrG5h" value="text" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="6IHVO0tjloA" role="1TKVEl">
      <property role="IQ2nx" value="7759120791677785638" />
      <property role="TrG5h" value="inverted" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="6IHVO0tjiOt" role="1TKVEi">
      <property role="IQ2ns" value="7759120791677775133" />
      <property role="20kJfa" value="property" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="6IHVO0tjiOd">
    <property role="EcuMT" value="7759120791677775117" />
    <property role="TrG5h" value="OptionalCell" />
    <property role="34LRSv" value="?" />
    <ref role="1TJDcQ" node="6IHVO0tjgbc" resolve="Cell" />
    <node concept="1TJgyj" id="6IHVO0tjiOr" role="1TKVEi">
      <property role="IQ2ns" value="7759120791677775131" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="cell" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6IHVO0tjgbK" resolve="ICell" />
    </node>
  </node>
  <node concept="1TIwiD" id="6IHVO0tjoPC">
    <property role="EcuMT" value="7759120791677799784" />
    <property role="TrG5h" value="NotationModule" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="6IHVO0tjwOg" role="1TKVEi">
      <property role="IQ2ns" value="7759120791677832464" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="content" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6IHVO0tjoPO" resolve="INotationModuleContent" />
    </node>
    <node concept="PrWs8" id="7jIhq8M9B8n" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="PlHQZ" id="6IHVO0tjoPO">
    <property role="EcuMT" value="7759120791677799796" />
    <property role="TrG5h" value="INotationModuleContent" />
  </node>
  <node concept="1TIwiD" id="6IHVO0tjoQ0">
    <property role="EcuMT" value="7759120791677799808" />
    <property role="TrG5h" value="EmptyLine" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6IHVO0tjoQc" role="PzmwI">
      <ref role="PrY4T" node="6IHVO0tjoPO" resolve="INotationModuleContent" />
    </node>
  </node>
  <node concept="1TIwiD" id="6IHVO0tjBC9">
    <property role="EcuMT" value="7759120791677860361" />
    <property role="TrG5h" value="ConstantCell" />
    <property role="34LRSv" value="&quot;" />
    <ref role="1TJDcQ" node="6IHVO0tjgbc" resolve="Cell" />
    <node concept="1TJgyi" id="6IHVO0tjBCl" role="1TKVEl">
      <property role="IQ2nx" value="7759120791677860373" />
      <property role="TrG5h" value="text" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="6IHVO0tmKec">
    <property role="EcuMT" value="7759120791678681996" />
    <property role="TrG5h" value="SingleChildCell" />
    <ref role="1TJDcQ" node="6IHVO0tjgbc" resolve="Cell" />
    <node concept="1TJgyj" id="6IHVO0tmKeo" role="1TKVEi">
      <property role="IQ2ns" value="7759120791678682008" />
      <property role="20kJfa" value="link" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="6IHVO0tn4Ep">
    <property role="EcuMT" value="7759120791678765721" />
    <property role="TrG5h" value="ReferenceCell" />
    <ref role="1TJDcQ" node="6IHVO0tjgbc" resolve="Cell" />
    <node concept="1TJgyj" id="6IHVO0tn4E_" role="1TKVEi">
      <property role="IQ2ns" value="7759120791678765733" />
      <property role="20kJfa" value="link" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="w8XdrMVXw$">
    <property role="EcuMT" value="578981756153092132" />
    <property role="TrG5h" value="CollectionLayout" />
    <property role="R5$K7" value="true" />
    <property role="3GE5qa" value="layout" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="w8XdrMVXwK">
    <property role="EcuMT" value="578981756153092144" />
    <property role="TrG5h" value="HorizontalLayout" />
    <property role="3GE5qa" value="layout" />
    <property role="34LRSv" value="horizontal" />
    <ref role="1TJDcQ" node="w8XdrMVXw$" resolve="CollectionLayout" />
  </node>
  <node concept="1TIwiD" id="w8XdrMVXwW">
    <property role="EcuMT" value="578981756153092156" />
    <property role="3GE5qa" value="layout" />
    <property role="TrG5h" value="VerticalLayout" />
    <property role="34LRSv" value="vertical" />
    <ref role="1TJDcQ" node="w8XdrMVXw$" resolve="CollectionLayout" />
  </node>
  <node concept="1TIwiD" id="w8XdrMWPKz">
    <property role="EcuMT" value="578981756153322531" />
    <property role="TrG5h" value="IndentCell" />
    <property role="34LRSv" value="--&gt;" />
    <ref role="1TJDcQ" node="6IHVO0tjgbc" resolve="Cell" />
  </node>
  <node concept="1TIwiD" id="7jIhq8MsQ7y">
    <property role="EcuMT" value="8425748515790217698" />
    <property role="TrG5h" value="ExpressionCell" />
    <property role="34LRSv" value="*(" />
    <ref role="1TJDcQ" node="6IHVO0tjgbc" resolve="Cell" />
    <node concept="1TJgyj" id="7jIhq8MsQ9J" role="1TKVEi">
      <property role="IQ2ns" value="8425748515790217839" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="7jIhq8MsXJ6">
    <property role="EcuMT" value="8425748515790248902" />
    <property role="TrG5h" value="NotationNodeExpression" />
    <property role="34LRSv" value="_" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="7jIhq8MtqS5">
    <property role="EcuMT" value="8425748515790368261" />
    <property role="TrG5h" value="ConceptAliasCell" />
    <property role="34LRSv" value="alias" />
    <ref role="1TJDcQ" node="6IHVO0tjgbc" resolve="Cell" />
  </node>
  <node concept="1TIwiD" id="5aNLs4JAW_L">
    <property role="EcuMT" value="5959324165459396977" />
    <property role="TrG5h" value="RemoveSpace" />
    <property role="34LRSv" value="&gt;&lt;" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="5aNLs4JAWC2" role="PzmwI">
      <ref role="PrY4T" node="6IHVO0tjgbK" resolve="ICell" />
    </node>
  </node>
  <node concept="1TIwiD" id="eq067TtMRv">
    <property role="EcuMT" value="259520349324389855" />
    <property role="TrG5h" value="SubstitutionCell" />
    <property role="34LRSv" value="substitute" />
    <ref role="1TJDcQ" node="6IHVO0tjgbc" resolve="Cell" />
    <node concept="1TJgyi" id="eq067TtMTK" role="1TKVEl">
      <property role="IQ2nx" value="259520349324390000" />
      <property role="TrG5h" value="text" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
</model>

