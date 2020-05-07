<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:50eb7766-91e1-4a37-b475-1b30e8bebcac(de.q60.mps.web.notation.impl.baseLanguage.web)">
  <persistence version="9" />
  <languages>
    <use id="375af171-bd4b-4bfb-bc9f-418fb996740b" name="de.q60.mps.web.aspect" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="94b64715-a263-4c36-a138-8da14705ffa7" name="de.q60.mps.shadowmodels.transformation" version="1" />
    <devkit ref="df4512e0-2de7-456b-8e87-16e2011a3e91(de.q60.mps.web.aspect.devkit)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="70w2" ref="r:59e1f3dd-5dad-4bbd-ad65-fef01059d9d2(de.q60.mps.web.ui.sm.dom.structure)" />
    <import index="m3vg" ref="r:9bcdcf0c-f978-4630-9b17-a35339e80a73(de.q60.mps.web.ui.sm.transformations)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
    </language>
    <language id="375af171-bd4b-4bfb-bc9f-418fb996740b" name="de.q60.mps.web.aspect">
      <concept id="4572148810971832979" name="de.q60.mps.web.aspect.structure.HttpPageParameterRef" flags="ng" index="2PgeId">
        <reference id="4572148810971833022" name="decl" index="2PgeIw" />
      </concept>
      <concept id="4572148810970664170" name="de.q60.mps.web.aspect.structure.HttpPage" flags="ng" index="2PkwnO">
        <property id="4572148810970664186" name="path" index="2Pkwn$" />
        <child id="4572148810971602676" name="transformation" index="2Pn5vE" />
        <child id="4572148810971564238" name="parameters" index="2Pnc7g" />
        <child id="7833706949021263648" name="title" index="1engRn" />
      </concept>
      <concept id="4572148810970665056" name="de.q60.mps.web.aspect.structure.HttpPageParameter" flags="ng" index="2Pkx_Y">
        <child id="4572148810971751121" name="type" index="2PgqJf" />
      </concept>
      <concept id="4572148810970665104" name="de.q60.mps.web.aspect.structure.NodeHttpPageParameterType" flags="ng" index="2PkxAe">
        <reference id="4572148810970665120" name="concept" index="2PkxAY" />
      </concept>
    </language>
    <language id="94b64715-a263-4c36-a138-8da14705ffa7" name="de.q60.mps.shadowmodels.transformation">
      <concept id="7335687028107245072" name="de.q60.mps.shadowmodels.transformation.structure.TransformationOutput" flags="ng" index="026TG">
        <child id="7335687028107245075" name="output" index="026TJ" />
      </concept>
      <concept id="7335687028107243116" name="de.q60.mps.shadowmodels.transformation.structure.NodeBuilder" flags="ng" index="027og">
        <reference id="7335687028107281650" name="concept" index="02LMe" />
        <child id="7335687028107281653" name="content" index="02LM9" />
      </concept>
      <concept id="7335687028107243169" name="de.q60.mps.shadowmodels.transformation.structure.ChildBuilder" flags="ng" index="027rt">
        <reference id="7335687028107243171" name="link" index="027rv" />
        <child id="7335687028107243173" name="child" index="027rp" />
      </concept>
      <concept id="7335687028107163797" name="de.q60.mps.shadowmodels.transformation.structure.TConceptType" flags="ig" index="02i3D">
        <reference id="7335687028107163800" name="concept" index="02i3$" />
      </concept>
      <concept id="7335687028107163788" name="de.q60.mps.shadowmodels.transformation.structure.TransformationParameter" flags="ng" index="02i3K">
        <child id="7335687028107163867" name="type" index="02i2B" />
      </concept>
      <concept id="7335687028107144200" name="de.q60.mps.shadowmodels.transformation.structure.TransformationsNamespace" flags="ng" index="02vhO">
        <child id="7335687028107145383" name="content" index="02uzr" />
      </concept>
      <concept id="7335687028107144742" name="de.q60.mps.shadowmodels.transformation.structure.Transformation" flags="ng" index="02vpq">
        <child id="7335687028107245068" name="output" index="026TK" />
        <child id="7335687028107163827" name="input" index="02i3f" />
      </concept>
      <concept id="9170566427534778463" name="de.q60.mps.shadowmodels.transformation.structure.TransformationCall" flags="ng" index="214gnc">
        <reference id="6198477943068350028" name="transformation" index="1YEVMl" />
        <child id="9170566427534794950" name="parameterValues" index="214sll" />
      </concept>
      <concept id="9170566427534812277" name="de.q60.mps.shadowmodels.transformation.structure.ContextNodeExpression" flags="ng" index="214o7A" />
      <concept id="5373338300159315830" name="de.q60.mps.shadowmodels.transformation.structure.EmptyLine" flags="ng" index="2OrE70" />
    </language>
    <language id="25fcb6ab-d05a-4950-8cdf-251526bdf513" name="de.q60.mps.web.notation">
      <concept id="3089108827998240126" name="de.q60.mps.web.notation.structure.HorizontalGridLayout" flags="ng" index="2nxgly" />
      <concept id="3089108827998240127" name="de.q60.mps.web.notation.structure.VerticalGridLayout" flags="ng" index="2nxglz" />
      <concept id="8425748515790368261" name="de.q60.mps.web.notation.structure.ConceptAliasCell" flags="ng" index="16AYIB" />
      <concept id="8425748515790217698" name="de.q60.mps.web.notation.structure.ExpressionCell" flags="ng" index="16Bih0">
        <child id="8425748515790217839" name="expression" index="16Bivd" />
      </concept>
      <concept id="8425748515790248902" name="de.q60.mps.web.notation.structure.NotationNodeExpression" flags="ng" index="16BpT$" />
      <concept id="7759120791677799784" name="de.q60.mps.web.notation.structure.NotationModule" flags="ng" index="1QS68C">
        <child id="7759120791677832464" name="content" index="1QSY9g" />
      </concept>
      <concept id="7759120791677799808" name="de.q60.mps.web.notation.structure.EmptyLine" flags="ng" index="1QS6b0" />
      <concept id="7759120791677775105" name="de.q60.mps.web.notation.structure.FlagCell" flags="ng" index="1QSc91">
        <property id="7759120791677785636" name="text" index="1QSb_$" />
        <property id="7759120791677785638" name="inverted" index="1QSb_A" />
        <reference id="7759120791677775133" name="property" index="1QSc9t" />
      </concept>
      <concept id="7759120791677775117" name="de.q60.mps.web.notation.structure.OptionalCell" flags="ng" index="1QSc9d">
        <child id="7759120791677775131" name="cell" index="1QSc9r" />
      </concept>
      <concept id="7759120791677775083" name="de.q60.mps.web.notation.structure.StaticCollectionCell" flags="ng" index="1QSceF">
        <child id="7759120791677775095" name="cells" index="1QSceR" />
        <child id="578981756153092168" name="layout" index="3UTMMu" />
      </concept>
      <concept id="7759120791677764312" name="de.q60.mps.web.notation.structure.PropertyCell" flags="ng" index="1QSeQo">
        <reference id="7759120791677775099" name="property" index="1QSceV" />
      </concept>
      <concept id="7759120791677764324" name="de.q60.mps.web.notation.structure.ChildrenCollectionCell" flags="ng" index="1QSeQ$">
        <property id="8425748515795182389" name="separator" index="16kmqn" />
        <reference id="7759120791678682074" name="link" index="1QXIMq" />
        <reference id="259520349320850712" name="subconceptToInsert" index="3UQMPT" />
        <child id="578981756153245612" name="layout" index="3UYHHU" />
      </concept>
      <concept id="7759120791677764348" name="de.q60.mps.web.notation.structure.ConceptNotation" flags="ng" index="1QSeQW">
        <reference id="7759120791677764360" name="concept" index="1QSeL8" />
        <child id="8781543137580343122" name="condition" index="26S96A" />
        <child id="7759120791677775080" name="cell" index="1QSceC" />
      </concept>
      <concept id="7759120791677860361" name="de.q60.mps.web.notation.structure.ConstantCell" flags="ng" index="1QSTl9">
        <property id="7759120791677860373" name="text" index="1QSTll" />
      </concept>
      <concept id="7759120791678765721" name="de.q60.mps.web.notation.structure.ReferenceCell" flags="ng" index="1QWqnp">
        <reference id="7759120791678765733" name="link" index="1QWqn_" />
      </concept>
      <concept id="7759120791678681996" name="de.q60.mps.web.notation.structure.SingleChildCell" flags="ng" index="1QXINc">
        <reference id="7759120791678682008" name="link" index="1QXINo" />
      </concept>
      <concept id="578981756153092156" name="de.q60.mps.web.notation.structure.VerticalLayout" flags="ng" index="3UTMNE" />
      <concept id="259520349324389855" name="de.q60.mps.web.notation.structure.SubstitutionCell" flags="ng" index="3UViQY">
        <property id="259520349324390000" name="text" index="3UViSh" />
      </concept>
      <concept id="578981756153322531" name="de.q60.mps.web.notation.structure.IndentCell" flags="ng" index="3UYUzP" />
      <concept id="5959324165459396977" name="de.q60.mps.web.notation.structure.RemoveSpace" flags="ng" index="1Xa0MK" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1172326502327" name="jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation" flags="nn" index="3O6GUB">
        <child id="1206733650006" name="conceptArgument" index="3QVz_e" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1QS68C" id="7jIhq8M9Tgr">
    <property role="TrG5h" value="Java" />
    <node concept="1QS6b0" id="7jIhq8M9Tgs" role="1QSY9g" />
    <node concept="1QSeQW" id="7jIhq8M9TgT" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:fzcpWvV" resolve="PlusExpression" />
      <node concept="1QSceF" id="7jIhq8M9TgU" role="1QSceC">
        <node concept="1QXINc" id="7jIhq8M9TgV" role="1QSceR">
          <ref role="1QXINo" to="tpee:fJuHU4s" resolve="leftExpression" />
        </node>
        <node concept="1QSTl9" id="7jIhq8M9TgW" role="1QSceR">
          <property role="1QSTll" value="+" />
        </node>
        <node concept="1QXINc" id="7jIhq8M9TgX" role="1QSceR">
          <ref role="1QXINo" to="tpee:fJuHU4r" resolve="rightExpression" />
        </node>
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8M9TgY" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:fzcpWvP" resolve="MinusExpression" />
      <node concept="1QSceF" id="7jIhq8M9TgZ" role="1QSceC">
        <node concept="1QXINc" id="7jIhq8M9Th0" role="1QSceR">
          <ref role="1QXINo" to="tpee:fJuHU4s" resolve="leftExpression" />
        </node>
        <node concept="1QSTl9" id="7jIhq8M9Th1" role="1QSceR">
          <property role="1QSTll" value="-" />
        </node>
        <node concept="1QXINc" id="7jIhq8M9Th2" role="1QSceR">
          <ref role="1QXINo" to="tpee:fJuHU4r" resolve="rightExpression" />
        </node>
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8M9Th3" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:fT7qRmf" resolve="MulExpression" />
      <node concept="1QSceF" id="7jIhq8M9Th4" role="1QSceC">
        <node concept="1QXINc" id="7jIhq8M9Th5" role="1QSceR">
          <ref role="1QXINo" to="tpee:fJuHU4s" resolve="leftExpression" />
        </node>
        <node concept="1QSTl9" id="7jIhq8M9Th6" role="1QSceR">
          <property role="1QSTll" value="*" />
        </node>
        <node concept="1QXINc" id="7jIhq8M9Th7" role="1QSceR">
          <ref role="1QXINo" to="tpee:fJuHU4r" resolve="rightExpression" />
        </node>
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8M9Th8" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:fWFJ1fq" resolve="DivExpression" />
      <node concept="1QSceF" id="7jIhq8M9Th9" role="1QSceC">
        <node concept="1QXINc" id="7jIhq8M9Tha" role="1QSceR">
          <ref role="1QXINo" to="tpee:fJuHU4s" resolve="leftExpression" />
        </node>
        <node concept="1QSTl9" id="7jIhq8M9Thb" role="1QSceR">
          <property role="1QSTll" value="/" />
        </node>
        <node concept="1QXINc" id="7jIhq8M9Thc" role="1QSceR">
          <ref role="1QXINo" to="tpee:fJuHU4r" resolve="rightExpression" />
        </node>
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8MtDJ4" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:fJuHJVf" resolve="BinaryOperation" />
      <node concept="1QSceF" id="7jIhq8MtDMe" role="1QSceC">
        <node concept="1QXINc" id="7jIhq8MtDMh" role="1QSceR">
          <ref role="1QXINo" to="tpee:fJuHU4s" resolve="leftExpression" />
        </node>
        <node concept="16AYIB" id="7jIhq8MtDMu" role="1QSceR" />
        <node concept="1QXINc" id="7jIhq8MtDMm" role="1QSceR">
          <ref role="1QXINo" to="tpee:fJuHU4r" resolve="rightExpression" />
        </node>
      </node>
    </node>
    <node concept="1QS6b0" id="7jIhq8MtDMz" role="1QSY9g" />
    <node concept="1QSeQW" id="7jIhq8M9Thd" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:fHeOMHZ" resolve="ParenthesizedExpression" />
      <node concept="1QSceF" id="7jIhq8M9The" role="1QSceC">
        <node concept="1QSTl9" id="7jIhq8M9Thf" role="1QSceR">
          <property role="1QSTll" value="(" />
        </node>
        <node concept="1QXINc" id="7jIhq8M9Thg" role="1QSceR">
          <ref role="1QXINo" to="tpee:fHeOMI0" resolve="expression" />
        </node>
        <node concept="1QSTl9" id="7jIhq8M9Thh" role="1QSceR">
          <property role="1QSTll" value=")" />
        </node>
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8M9Thi" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:gVK4zB9" resolve="TernaryOperatorExpression" />
      <node concept="1QSceF" id="7jIhq8M9Thj" role="1QSceC">
        <node concept="1QXINc" id="7jIhq8M9Thk" role="1QSceR">
          <ref role="1QXINo" to="tpee:gVK4C9J" resolve="condition" />
        </node>
        <node concept="1QSTl9" id="7jIhq8M9Thl" role="1QSceR">
          <property role="1QSTll" value="?" />
        </node>
        <node concept="1QXINc" id="7jIhq8M9Thm" role="1QSceR">
          <ref role="1QXINo" to="tpee:gVK4E70" resolve="ifTrue" />
        </node>
        <node concept="1QSTl9" id="7jIhq8M9Thn" role="1QSceR">
          <property role="1QSTll" value=":" />
        </node>
        <node concept="1QXINc" id="7jIhq8M9Tho" role="1QSceR">
          <ref role="1QXINo" to="tpee:gVK4GVs" resolve="ifFalse" />
        </node>
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8M9Thp" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:fzcmrck" resolve="IntegerConstant" />
      <node concept="1QSeQo" id="7jIhq8M9Thq" role="1QSceC">
        <ref role="1QSceV" to="tpee:fzcmrcl" resolve="value" />
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8M9Thr" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:gbb6qgO" resolve="FloatingPointConstant" />
      <node concept="1QSeQo" id="7jIhq8M9Ths" role="1QSceC">
        <ref role="1QSceV" to="tpee:gc$nh$Z" resolve="value" />
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8M9Tht" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:f$Xl_Og" resolve="StringLiteral" />
      <node concept="1QSceF" id="7jIhq8M9Thu" role="1QSceC">
        <node concept="1QSTl9" id="7jIhq8M9Thv" role="1QSceR">
          <property role="1QSTll" value="&quot;" />
        </node>
        <node concept="1Xa0MK" id="5aNLs4JGJcb" role="1QSceR" />
        <node concept="1QSeQo" id="7jIhq8M9Thw" role="1QSceR">
          <ref role="1QSceV" to="tpee:f$Xl_Oh" resolve="value" />
        </node>
        <node concept="1Xa0MK" id="5aNLs4JGJcg" role="1QSceR" />
        <node concept="1QSTl9" id="7jIhq8M9Thx" role="1QSceR">
          <property role="1QSTll" value="&quot;" />
        </node>
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8M9Thy" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:hqOqwz4" resolve="DotExpression" />
      <node concept="1QSceF" id="7jIhq8M9Thz" role="1QSceC">
        <node concept="1QXINc" id="7jIhq8M9Th$" role="1QSceR">
          <ref role="1QXINo" to="tpee:hqOq$gm" resolve="operand" />
        </node>
        <node concept="1Xa0MK" id="5aNLs4JBBSM" role="1QSceR" />
        <node concept="1QSTl9" id="7jIhq8M9Th_" role="1QSceR">
          <property role="1QSTll" value="." />
        </node>
        <node concept="1Xa0MK" id="5aNLs4JBBSY" role="1QSceR" />
        <node concept="1QXINc" id="7jIhq8M9ThA" role="1QSceR">
          <ref role="1QXINo" to="tpee:hqOqNr4" resolve="operation" />
        </node>
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8M9ThB" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:fIYIFW9" resolve="StaticMethodCall" />
      <node concept="1QSceF" id="7jIhq8M9ThC" role="1QSceC">
        <node concept="1QWqnp" id="7jIhq8M9ThD" role="1QSceR">
          <ref role="1QWqn_" to="tpee:gDPybl6" resolve="classConcept" />
        </node>
        <node concept="1Xa0MK" id="5aNLs4JGJbp" role="1QSceR" />
        <node concept="1QSTl9" id="7jIhq8M9ThE" role="1QSceR">
          <property role="1QSTll" value="." />
        </node>
        <node concept="1Xa0MK" id="5aNLs4JGJbx" role="1QSceR" />
        <node concept="1QWqnp" id="7jIhq8M9ThF" role="1QSceR">
          <ref role="1QWqn_" to="tpee:fIYIWN3" resolve="staticMethodDeclaration" />
        </node>
        <node concept="1Xa0MK" id="5aNLs4JGJbE" role="1QSceR" />
        <node concept="1QSTl9" id="7jIhq8M9ThG" role="1QSceR">
          <property role="1QSTll" value="(" />
        </node>
        <node concept="1Xa0MK" id="5aNLs4JGJbO" role="1QSceR" />
        <node concept="1QSeQ$" id="7jIhq8M9ThH" role="1QSceR">
          <property role="16kmqn" value="," />
          <ref role="1QXIMq" to="tpee:fz7wK6I" resolve="actualArgument" />
        </node>
        <node concept="1Xa0MK" id="5aNLs4JGJbZ" role="1QSceR" />
        <node concept="1QSTl9" id="7jIhq8M9ThI" role="1QSceR">
          <property role="1QSTll" value=")" />
        </node>
      </node>
    </node>
    <node concept="1QS6b0" id="7jIhq8M9ThJ" role="1QSY9g" />
    <node concept="1QSeQW" id="7jIhq8Ma1vU" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:fz12cDA" resolve="ClassConcept" />
      <node concept="1QSceF" id="7jIhq8Ma1wU" role="1QSceC">
        <node concept="3UViQY" id="eq067T_73M" role="1QSceR">
          <property role="3UViSh" value="class" />
        </node>
        <node concept="1QSceF" id="7jIhq8MB1P$" role="1QSceR">
          <node concept="1QXINc" id="7jIhq8Ma1wX" role="1QSceR">
            <ref role="1QXINo" to="tpee:h9B3oxE" resolve="visibility" />
          </node>
          <node concept="1QSc91" id="7jIhq8Ma1x2" role="1QSceR">
            <property role="1QSb_A" value="true" />
            <property role="1QSb_$" value="static" />
            <ref role="1QSc9t" to="tpee:sWroEc0xYp" resolve="nonStatic" />
          </node>
          <node concept="1QSc91" id="7jIhq8Ma1xa" role="1QSceR">
            <property role="1QSb_$" value="final" />
            <ref role="1QSc9t" to="tpee:hLEXba4" resolve="isFinal" />
          </node>
          <node concept="1QSc91" id="7jIhq8Ma1xk" role="1QSceR">
            <property role="1QSb_$" value="abstract" />
            <ref role="1QSc9t" to="tpee:fDsVARU" resolve="abstractClass" />
          </node>
          <node concept="1QSeQo" id="7jIhq8Ma1xV" role="1QSceR">
            <ref role="1QSceV" to="tpck:h0TrG11" resolve="name" />
          </node>
          <node concept="1QSc9d" id="7jIhq8Ma1zl" role="1QSceR">
            <node concept="1QSceF" id="7jIhq8Ma1zz" role="1QSc9r">
              <node concept="1Xa0MK" id="5aNLs4JGJb7" role="1QSceR" />
              <node concept="1QSTl9" id="7jIhq8Ma1zP" role="1QSceR">
                <property role="1QSTll" value="&lt;" />
              </node>
              <node concept="1Xa0MK" id="5aNLs4JGJbc" role="1QSceR" />
              <node concept="1QSeQ$" id="7jIhq8Ma1yZ" role="1QSceR">
                <property role="16kmqn" value="," />
                <ref role="1QXIMq" to="tpee:g96eVAe" resolve="typeVariableDeclaration" />
              </node>
              <node concept="1Xa0MK" id="5aNLs4JGJbi" role="1QSceR" />
              <node concept="1QSTl9" id="7jIhq8Ma1zX" role="1QSceR">
                <property role="1QSTll" value="&gt;" />
              </node>
            </node>
          </node>
          <node concept="1QSTl9" id="7jIhq8Ma1y9" role="1QSceR">
            <property role="1QSTll" value="{" />
          </node>
        </node>
        <node concept="1QSceF" id="7jIhq8MB1Q8" role="1QSceR">
          <node concept="3UYUzP" id="7jIhq8MB1QK" role="1QSceR" />
          <node concept="1QSeQ$" id="7jIhq8Ma1yF" role="1QSceR">
            <ref role="3UQMPT" to="tpee:1hodSy9TH5A" resolve="PlaceholderMember" />
            <ref role="1QXIMq" to="tpee:4EqhHTp4Mw3" resolve="member" />
            <node concept="3UTMNE" id="7jIhq8MyFB1" role="3UYHHU" />
          </node>
        </node>
        <node concept="1QSTl9" id="7jIhq8Ma1yp" role="1QSceR">
          <property role="1QSTll" value="}" />
        </node>
        <node concept="3UTMNE" id="7jIhq8MB1PP" role="3UTMMu" />
      </node>
    </node>
    <node concept="1QS6b0" id="7jIhq8Ma1uX" role="1QSY9g" />
    <node concept="1QSeQW" id="7jIhq8Ma1_e" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:fz12cDC" resolve="FieldDeclaration" />
      <node concept="1QSceF" id="7jIhq8Ma1BI" role="1QSceC">
        <node concept="3UViQY" id="eq067Tuy1P" role="1QSceR">
          <property role="3UViSh" value="field" />
        </node>
        <node concept="1QXINc" id="7jIhq8Ma1BL" role="1QSceR">
          <ref role="1QXINo" to="tpee:h9B3oxE" resolve="visibility" />
        </node>
        <node concept="1QSc91" id="7jIhq8Ma2a1" role="1QSceR">
          <ref role="1QSc9t" to="tpee:h7TUv0c" resolve="isFinal" />
        </node>
        <node concept="1QSc91" id="7jIhq8Ma2a9" role="1QSceR">
          <ref role="1QSc9t" to="tpee:7tJT$hTbT2H" resolve="isTransient" />
        </node>
        <node concept="1QSc91" id="7jIhq8Ma2aj" role="1QSceR">
          <ref role="1QSc9t" to="tpee:i34Cwyx" resolve="isVolatile" />
        </node>
        <node concept="1QXINc" id="7jIhq8Ma2av" role="1QSceR">
          <ref role="1QXINo" to="tpee:4VkOLwjf83e" resolve="type" />
        </node>
        <node concept="1QSeQo" id="7jIhq8Ma2aH" role="1QSceR">
          <ref role="1QSceV" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="1QSc9d" id="7jIhq8Ma2aX" role="1QSceR">
          <node concept="1QSceF" id="7jIhq8Ma2bb" role="1QSc9r">
            <node concept="1QSTl9" id="7jIhq8Ma2be" role="1QSceR">
              <property role="1QSTll" value="=" />
            </node>
            <node concept="1QXINc" id="7jIhq8Ma2bj" role="1QSceR">
              <ref role="1QXINo" to="tpee:fz3vP1I" resolve="initializer" />
            </node>
          </node>
        </node>
        <node concept="1Xa0MK" id="5aNLs4JNlcL" role="1QSceR" />
        <node concept="1QSTl9" id="7jIhq8Ma2bz" role="1QSceR">
          <property role="1QSTll" value=";" />
        </node>
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8Ma28u" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:f$Wx3kv" resolve="StaticFieldDeclaration" />
      <node concept="1QSceF" id="7jIhq8Ma29P" role="1QSceC">
        <node concept="3UViQY" id="eq067T_74n" role="1QSceR">
          <property role="3UViSh" value="static field" />
        </node>
        <node concept="1QXINc" id="7jIhq8Ma29S" role="1QSceR">
          <ref role="1QXINo" to="tpee:h9B3oxE" resolve="visibility" />
        </node>
        <node concept="1QSTl9" id="7jIhq8Ma29X" role="1QSceR">
          <property role="1QSTll" value="static" />
        </node>
        <node concept="1QSc91" id="7jIhq8Ma2bO" role="1QSceR">
          <ref role="1QSc9t" to="tpee:h7TUv0c" resolve="isFinal" />
        </node>
        <node concept="1QSc91" id="7jIhq8Ma2bP" role="1QSceR">
          <ref role="1QSc9t" to="tpee:5B5vMVk$qSq" resolve="isTransient" />
        </node>
        <node concept="1QSc91" id="7jIhq8Ma2bQ" role="1QSceR">
          <ref role="1QSc9t" to="tpee:5B5vMVk$r4J" resolve="isVolatile" />
        </node>
        <node concept="1QXINc" id="7jIhq8Ma2bR" role="1QSceR">
          <ref role="1QXINo" to="tpee:4VkOLwjf83e" resolve="type" />
        </node>
        <node concept="1QSeQo" id="7jIhq8Ma2bS" role="1QSceR">
          <ref role="1QSceV" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="1QSc9d" id="7jIhq8Ma2bT" role="1QSceR">
          <node concept="1QSceF" id="7jIhq8Ma2bU" role="1QSc9r">
            <node concept="1QSTl9" id="7jIhq8Ma2bV" role="1QSceR">
              <property role="1QSTll" value="=" />
            </node>
            <node concept="1QXINc" id="7jIhq8Ma2bW" role="1QSceR">
              <ref role="1QXINo" to="tpee:fz3vP1I" resolve="initializer" />
            </node>
          </node>
        </node>
        <node concept="1QSTl9" id="7jIhq8Ma2bX" role="1QSceR">
          <property role="1QSTll" value=";" />
        </node>
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8Ma2dS" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:fzclF8t" resolve="InstanceMethodDeclaration" />
      <node concept="1QSceF" id="7jIhq8Ma2fz" role="1QSceC">
        <node concept="3UViQY" id="eq067TuXuQ" role="1QSceR">
          <property role="3UViSh" value="method" />
        </node>
        <node concept="1QSceF" id="7jIhq8MFoXC" role="1QSceR">
          <node concept="1QXINc" id="7jIhq8Ma2fA" role="1QSceR">
            <ref role="1QXINo" to="tpee:h9B3oxE" resolve="visibility" />
          </node>
          <node concept="1QSc91" id="7jIhq8Ma2fF" role="1QSceR">
            <property role="1QSb_$" value="abstract" />
            <ref role="1QSc9t" to="tpee:h9EzhlX" resolve="isAbstract" />
          </node>
          <node concept="1QSc91" id="7jIhq8Ma2fN" role="1QSceR">
            <property role="1QSb_$" value="final" />
            <ref role="1QSc9t" to="tpee:hcDiZZi" resolve="isFinal" />
          </node>
          <node concept="1QSc91" id="7jIhq8Ma2fX" role="1QSceR">
            <property role="1QSb_$" value="synchronized" />
            <ref role="1QSc9t" to="tpee:3HnrdCzoiLU" resolve="isSynchronized" />
          </node>
          <node concept="1QXINc" id="7jIhq8Ma2gB" role="1QSceR">
            <ref role="1QXINo" to="tpee:fzclF7X" resolve="returnType" />
          </node>
          <node concept="1QSeQo" id="7jIhq8Ma2g9" role="1QSceR">
            <ref role="1QSceV" to="tpck:h0TrG11" resolve="name" />
          </node>
          <node concept="1Xa0MK" id="5aNLs4JGJaw" role="1QSceR" />
          <node concept="1QSTl9" id="7jIhq8Ma2gn" role="1QSceR">
            <property role="1QSTll" value="(" />
          </node>
          <node concept="1Xa0MK" id="5aNLs4JGJaG" role="1QSceR" />
          <node concept="1QSeQ$" id="7jIhq8Ma2hV" role="1QSceR">
            <property role="16kmqn" value="," />
            <ref role="1QXIMq" to="tpee:fzclF7Y" resolve="parameter" />
          </node>
          <node concept="1Xa0MK" id="5aNLs4JGJaT" role="1QSceR" />
          <node concept="1QSTl9" id="7jIhq8Ma2gT" role="1QSceR">
            <property role="1QSTll" value=")" />
          </node>
          <node concept="1QSTl9" id="7jIhq8Ma2hd" role="1QSceR">
            <property role="1QSTll" value="{" />
          </node>
        </node>
        <node concept="1QSceF" id="7jIhq8MFoYv" role="1QSceR">
          <node concept="3UYUzP" id="7jIhq8MFoZ1" role="1QSceR" />
          <node concept="1QXINc" id="7jIhq8Ma2il" role="1QSceR">
            <ref role="1QXINo" to="tpee:fzclF7Z" resolve="body" />
          </node>
        </node>
        <node concept="1QSTl9" id="7jIhq8Ma2hz" role="1QSceR">
          <property role="1QSTll" value="}" />
        </node>
        <node concept="3UTMNE" id="7jIhq8MFoYe" role="3UTMMu" />
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8MsPZv" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:fzclF84" resolve="ConstructorDeclaration" />
      <node concept="1QSceF" id="7jIhq8MsPZw" role="1QSceC">
        <node concept="3UViQY" id="eq067TuX_X" role="1QSceR">
          <property role="3UViSh" value="constructor" />
        </node>
        <node concept="1QSceF" id="7jIhq8MUbmN" role="1QSceR">
          <node concept="1QXINc" id="7jIhq8MsPZx" role="1QSceR">
            <ref role="1QXINo" to="tpee:h9B3oxE" resolve="visibility" />
          </node>
          <node concept="16Bih0" id="7jIhq8MsXIk" role="1QSceR">
            <node concept="2OqwBi" id="7jIhq8Mtbum" role="16Bivd">
              <node concept="2OqwBi" id="7jIhq8Mtaf4" role="2Oq$k0">
                <node concept="16BpT$" id="7jIhq8Mt9SN" role="2Oq$k0" />
                <node concept="2Xjw5R" id="7jIhq8Mtb9o" role="2OqNvi">
                  <node concept="1xMEDy" id="7jIhq8Mtb9q" role="1xVPHs">
                    <node concept="chp4Y" id="7jIhq8Mtb9T" role="ri$Ld">
                      <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3TrcHB" id="7jIhq8MtcgN" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="1Xa0MK" id="5aNLs4JGIWO" role="1QSceR" />
          <node concept="1QSTl9" id="7jIhq8MsPZB" role="1QSceR">
            <property role="1QSTll" value="(" />
          </node>
          <node concept="1Xa0MK" id="5aNLs4JGJ3s" role="1QSceR" />
          <node concept="1QSeQ$" id="7jIhq8MsPZC" role="1QSceR">
            <property role="16kmqn" value="," />
            <ref role="1QXIMq" to="tpee:fzclF7Y" resolve="parameter" />
          </node>
          <node concept="1Xa0MK" id="5aNLs4JGJa5" role="1QSceR" />
          <node concept="1QSTl9" id="7jIhq8MsPZD" role="1QSceR">
            <property role="1QSTll" value=")" />
          </node>
          <node concept="1QSTl9" id="7jIhq8MsPZE" role="1QSceR">
            <property role="1QSTll" value="{" />
          </node>
        </node>
        <node concept="1QSceF" id="7jIhq8MUbuT" role="1QSceR">
          <node concept="3UYUzP" id="7jIhq8MUb_0" role="1QSceR" />
          <node concept="1QXINc" id="7jIhq8MsPZF" role="1QSceR">
            <ref role="1QXINo" to="tpee:fzclF7Z" resolve="body" />
          </node>
        </node>
        <node concept="1QSTl9" id="7jIhq8MsPZG" role="1QSceR">
          <property role="1QSTll" value="}" />
        </node>
        <node concept="3UTMNE" id="7jIhq8MUbpa" role="3UTMMu" />
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8Ma2kp" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:fz7vLUk" resolve="ParameterDeclaration" />
      <node concept="1QSceF" id="7jIhq8Ma2mi" role="1QSceC">
        <node concept="1QXINc" id="7jIhq8Ma2ml" role="1QSceR">
          <ref role="1QXINo" to="tpee:4VkOLwjf83e" resolve="type" />
        </node>
        <node concept="1QSeQo" id="7jIhq8Ma2mq" role="1QSceR">
          <ref role="1QSceV" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
    <node concept="1QS6b0" id="7jIhq8Ma4mZ" role="1QSY9g" />
    <node concept="1QSeQW" id="7jIhq8Ma4qO" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:gEShNN5" resolve="GenericNewExpression" />
      <node concept="1QSceF" id="7jIhq8Ma4sM" role="1QSceC">
        <node concept="1QSTl9" id="7jIhq8Ma4sP" role="1QSceR">
          <property role="1QSTll" value="new" />
        </node>
        <node concept="1QXINc" id="7jIhq8Ma4sU" role="1QSceR">
          <ref role="1QXINo" to="tpee:gEShVi6" resolve="creator" />
        </node>
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8Ma4sY" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:2s$p4KaM3e_" resolve="DefaultClassCreator" />
      <node concept="1QSceF" id="7jIhq8Ma4uZ" role="1QSceC">
        <node concept="1QWqnp" id="7jIhq8Ma4v2" role="1QSceR">
          <ref role="1QWqn_" to="tpee:2s$p4KaM3eA" resolve="classifier" />
        </node>
        <node concept="1Xa0MK" id="5aNLs4JGIWJ" role="1QSceR" />
        <node concept="1QSTl9" id="7jIhq8Ma4vB" role="1QSceR">
          <property role="1QSTll" value="(" />
        </node>
        <node concept="1QSTl9" id="7jIhq8Ma4vJ" role="1QSceR">
          <property role="1QSTll" value=")" />
        </node>
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8Ma4xR" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:hDpGfJe" resolve="ClassCreator" />
      <node concept="1QSceF" id="7jIhq8Ma4JV" role="1QSceC">
        <node concept="1QWqnp" id="7jIhq8Ma4JY" role="1QSceR">
          <ref role="1QWqn_" to="tpee:hDpISCB" resolve="constructorDeclaration" />
        </node>
        <node concept="1QSTl9" id="7jIhq8Ma4K3" role="1QSceR">
          <property role="1QSTll" value="(" />
        </node>
        <node concept="1Xa0MK" id="5aNLs4JGIWw" role="1QSceR" />
        <node concept="1QSc9d" id="7jIhq8MdIsX" role="1QSceR">
          <node concept="1QSeQ$" id="7jIhq8MdIt6" role="1QSc9r">
            <property role="16kmqn" value="," />
            <ref role="1QXIMq" to="tpee:fz7wK6I" resolve="actualArgument" />
          </node>
        </node>
        <node concept="1Xa0MK" id="5aNLs4JGIWB" role="1QSceR" />
        <node concept="1QSTl9" id="7jIhq8Ma4Kb" role="1QSceR">
          <property role="1QSTll" value=")" />
        </node>
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8Ma4M$" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:hwliAcM" resolve="InstanceMethodCallOperation" />
      <node concept="1QSceF" id="7jIhq8Ma4OK" role="1QSceC">
        <node concept="1QWqnp" id="7jIhq8Ma4ON" role="1QSceR">
          <ref role="1QWqn_" to="tpee:hwllgre" resolve="instanceMethodDeclaration" />
        </node>
        <node concept="1Xa0MK" id="5aNLs4JGIWb" role="1QSceR" />
        <node concept="1QSTl9" id="7jIhq8Ma4OS" role="1QSceR">
          <property role="1QSTll" value="(" />
        </node>
        <node concept="1Xa0MK" id="5aNLs4JGIWh" role="1QSceR" />
        <node concept="1QSeQ$" id="7jIhq8Ma4Pa" role="1QSceR">
          <property role="16kmqn" value="," />
          <ref role="1QXIMq" to="tpee:fz7wK6I" resolve="actualArgument" />
        </node>
        <node concept="1Xa0MK" id="5aNLs4JGIWo" role="1QSceR" />
        <node concept="1QSTl9" id="7jIhq8Ma4P0" role="1QSceR">
          <property role="1QSTll" value=")" />
        </node>
      </node>
    </node>
    <node concept="1QS6b0" id="7jIhq8M9ThK" role="1QSY9g" />
    <node concept="1QSeQW" id="7jIhq8MhjXi" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:gFTm1ZL" resolve="PublicVisibility" />
      <node concept="1QSTl9" id="7jIhq8MhjZ_" role="1QSceC">
        <property role="1QSTll" value="public" />
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8Mhk1U" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:gFTm6Wc" resolve="PrivateVisibility" />
      <node concept="1QSTl9" id="7jIhq8Mhk4f" role="1QSceC">
        <property role="1QSTll" value="private" />
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8Mhk6A" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:gFTmbq6" resolve="ProtectedVisibility" />
      <node concept="1QSTl9" id="7jIhq8Mhk8X" role="1QSceC">
        <property role="1QSTll" value="protected" />
      </node>
    </node>
    <node concept="1QS6b0" id="7jIhq8MkVnk" role="1QSY9g" />
    <node concept="1QSeQW" id="7jIhq8MkVs1" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:hP7QB7G" resolve="StringType" />
      <node concept="1QSTl9" id="7jIhq8MkVur" role="1QSceC">
        <property role="1QSTll" value="string" />
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8MkVwR" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:fzcqZ_H" resolve="VoidType" />
      <node concept="1QSTl9" id="7jIhq8MkVzj" role="1QSceC">
        <property role="1QSTll" value="void" />
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8MkV_L" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:f_0OyhT" resolve="IntegerType" />
      <node concept="1QSTl9" id="7jIhq8MkVCf" role="1QSceC">
        <property role="1QSTll" value="int" />
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8NcsmO" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:g7uibYu" resolve="ClassifierType" />
      <node concept="1QWqnp" id="7jIhq8Ncsqm" role="1QSceC">
        <ref role="1QWqn_" to="tpee:g7uigIF" resolve="classifier" />
      </node>
    </node>
    <node concept="1QS6b0" id="7jIhq8Ncsjl" role="1QSY9g" />
    <node concept="1QSeQW" id="7jIhq8MkVHd" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:f$Xjq0c" resolve="ThisExpression" />
      <node concept="1QSTl9" id="7jIhq8MkVJI" role="1QSceC">
        <property role="1QSTll" value="this" />
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8MkVMh" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:fzclF8j" resolve="ExpressionStatement" />
      <node concept="1QSceF" id="7jIhq8MkVOO" role="1QSceC">
        <node concept="1QXINc" id="7jIhq8MkVOR" role="1QSceR">
          <ref role="1QXINo" to="tpee:fzclF8k" resolve="expression" />
        </node>
        <node concept="1Xa0MK" id="5aNLs4JGIW7" role="1QSceR" />
        <node concept="1QSTl9" id="7jIhq8MkVOW" role="1QSceR">
          <property role="1QSTll" value=";" />
        </node>
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8MkVR$" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:fz7vLUm" resolve="AssignmentExpression" />
      <node concept="1QSceF" id="7jIhq8MkVUb" role="1QSceC">
        <node concept="1QXINc" id="7jIhq8MkVUj" role="1QSceR">
          <ref role="1QXINo" to="tpee:fz7vLUn" resolve="lValue" />
        </node>
        <node concept="1QSTl9" id="7jIhq8MkVUe" role="1QSceR">
          <property role="1QSTll" value="=" />
        </node>
        <node concept="1QXINc" id="7jIhq8MkVUr" role="1QSceR">
          <ref role="1QXINo" to="tpee:fz7vLUp" resolve="rValue" />
        </node>
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8MkVX9" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:fz7vLUo" resolve="VariableReference" />
      <node concept="1QWqnp" id="7jIhq8MkVZP" role="1QSceC">
        <ref role="1QWqn_" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8MkW2z" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:hqOwXtU" resolve="FieldReferenceOperation" />
      <node concept="1QWqnp" id="7jIhq8MkW5h" role="1QSceC">
        <ref role="1QWqn_" to="tpee:hqOxapj" resolve="fieldDeclaration" />
      </node>
    </node>
    <node concept="1QS6b0" id="7jIhq8MoO_B" role="1QSY9g" />
    <node concept="1QSeQW" id="7jIhq8MYA9z" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:fzclF8l" resolve="Statement" />
      <node concept="1QSTl9" id="7jIhq8MYAd0" role="1QSceC" />
      <node concept="2OqwBi" id="7BujJjZgrqb" role="26S96A">
        <node concept="2OqwBi" id="7BujJjZgqUA" role="2Oq$k0">
          <node concept="16BpT$" id="7BujJjZgqKh" role="2Oq$k0" />
          <node concept="2yIwOk" id="7BujJjZgras" role="2OqNvi" />
        </node>
        <node concept="3O6GUB" id="7BujJjZgrKu" role="2OqNvi">
          <node concept="chp4Y" id="7BujJjZgrPu" role="3QVz_e">
            <ref role="cht4Q" to="tpee:fzclF8l" resolve="Statement" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8MoOF2" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:fzclF80" resolve="StatementList" />
      <node concept="1QSeQ$" id="7jIhq8MoOHN" role="1QSceC">
        <ref role="1QXIMq" to="tpee:fzcqZ_x" resolve="statement" />
        <node concept="3UTMNE" id="7jIhq8MoOHQ" role="3UYHHU" />
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8MoOSX" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:fzcpWvY" resolve="ReturnStatement" />
      <node concept="1QSceF" id="7jIhq8MoOVL" role="1QSceC">
        <node concept="1QSTl9" id="7jIhq8MoOVO" role="1QSceR">
          <property role="1QSTll" value="return" />
        </node>
        <node concept="1QXINc" id="7jIhq8MoOVT" role="1QSceR">
          <ref role="1QXINo" to="tpee:fzcqZ_G" resolve="expression" />
        </node>
        <node concept="1Xa0MK" id="5aNLs4JGIW2" role="1QSceR" />
        <node concept="1QSTl9" id="7jIhq8MoOW1" role="1QSceR">
          <property role="1QSTll" value=";" />
        </node>
      </node>
    </node>
    <node concept="1QSeQW" id="7jIhq8N7ZEI" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:1hodSy9TH5A" resolve="PlaceholderMember" />
      <node concept="1QSceF" id="eq067TFNIX" role="1QSceC">
        <node concept="3UViQY" id="eq067TFNJ8" role="1QSceR" />
        <node concept="1QSTl9" id="eq067TFNJ2" role="1QSceR" />
      </node>
    </node>
    <node concept="1QSeQW" id="eq067SXAWS" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:fz3vP1J" resolve="Expression" />
      <node concept="1QSTl9" id="eq067SXB1g" role="1QSceC" />
    </node>
    <node concept="1QS6b0" id="eq067SXASz" role="1QSY9g" />
    <node concept="1QSeQW" id="7jIhq8NcstU" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:fBnyPmE" resolve="SuperMethodCall" />
      <node concept="1QSceF" id="7jIhq8Ncsxu" role="1QSceC">
        <node concept="1QSTl9" id="7jIhq8Ncsxx" role="1QSceR">
          <property role="1QSTll" value="super" />
        </node>
        <node concept="1Xa0MK" id="5aNLs4JGIUx" role="1QSceR" />
        <node concept="1QSTl9" id="7jIhq8NcsTl" role="1QSceR">
          <property role="1QSTll" value="." />
        </node>
        <node concept="1Xa0MK" id="5aNLs4JGIUN" role="1QSceR" />
        <node concept="1QWqnp" id="7jIhq8NcsTt" role="1QSceR">
          <ref role="1QWqn_" to="tpee:fBnyPmF" resolve="instanceMethodDeclaration" />
        </node>
        <node concept="1Xa0MK" id="5aNLs4JGIV7" role="1QSceR" />
        <node concept="1QSTl9" id="7jIhq8NcsTB" role="1QSceR">
          <property role="1QSTll" value="(" />
        </node>
        <node concept="1Xa0MK" id="5aNLs4JGIVt" role="1QSceR" />
        <node concept="1QSeQ$" id="7jIhq8NcsU1" role="1QSceR">
          <property role="16kmqn" value="," />
          <ref role="1QXIMq" to="tpee:fz7wK6I" resolve="actualArgument" />
        </node>
        <node concept="1Xa0MK" id="5aNLs4JGIVP" role="1QSceR" />
        <node concept="1QSTl9" id="7jIhq8NcsTN" role="1QSceR">
          <property role="1QSTll" value=")" />
        </node>
      </node>
    </node>
    <node concept="1QSeQW" id="2$$gRlcE8ko" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:6LFqxSRBTg4" resolve="LocalMethodCall" />
      <node concept="1QSceF" id="2$$gRlcE8p8" role="1QSceC">
        <node concept="1QWqnp" id="2$$gRlcE8pb" role="1QSceR">
          <ref role="1QWqn_" to="tpee:6LFqxSRBTg7" resolve="method" />
        </node>
        <node concept="1QSTl9" id="2$$gRlcE8pg" role="1QSceR">
          <property role="1QSTll" value="(" />
        </node>
        <node concept="1QSeQ$" id="2$$gRlcE9DT" role="1QSceR">
          <property role="16kmqn" value="," />
          <ref role="1QXIMq" to="tpee:fz7wK6I" resolve="actualArgument" />
        </node>
        <node concept="1QSTl9" id="2$$gRlcE8po" role="1QSceR">
          <property role="1QSTll" value=")" />
        </node>
      </node>
    </node>
    <node concept="1QS6b0" id="5aNLs4JNl_9" role="1QSY9g" />
    <node concept="1QSeQW" id="5aNLs4JNlHs" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:g96euPO" resolve="TypeVariableDeclaration" />
      <node concept="1QSceF" id="5aNLs4JNlRp" role="1QSceC">
        <node concept="1QSeQo" id="5aNLs4JNlRv" role="1QSceR">
          <ref role="1QSceV" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="1QSc9d" id="5aNLs4JNlR$" role="1QSceR">
          <node concept="1QSceF" id="5aNLs4JNlRE" role="1QSc9r">
            <node concept="1QSTl9" id="5aNLs4JNlRJ" role="1QSceR">
              <property role="1QSTll" value="extends" />
            </node>
            <node concept="1QXINc" id="5aNLs4JNlRO" role="1QSceR">
              <ref role="1QXINo" to="tpee:hFztrQw" resolve="bound" />
            </node>
            <node concept="1QSc9d" id="5aNLs4JNlRW" role="1QSceR">
              <node concept="1QSceF" id="5aNLs4JNlS3" role="1QSc9r">
                <node concept="1QSTl9" id="5aNLs4JNlS6" role="1QSceR">
                  <property role="1QSTll" value="&amp;" />
                </node>
                <node concept="1QSeQ$" id="5aNLs4JNlSb" role="1QSceR">
                  <property role="16kmqn" value="&amp;" />
                  <ref role="1QXIMq" to="tpee:hFD4UhQ" resolve="auxBounds" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1QS6b0" id="eq067T3JGF" role="1QSY9g" />
    <node concept="1QSeQW" id="eq067T3JPq" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:fzcpWvK" resolve="LocalVariableDeclarationStatement" />
      <node concept="1QSceF" id="eq067T3JTP" role="1QSceC">
        <node concept="1QXINc" id="eq067T3JTS" role="1QSceR">
          <ref role="1QXINo" to="tpee:fzcpWvL" resolve="localVariableDeclaration" />
        </node>
        <node concept="1Xa0MK" id="eq067T3JU5" role="1QSceR" />
        <node concept="1QSTl9" id="eq067T3JTX" role="1QSceR">
          <property role="1QSTll" value=";" />
        </node>
      </node>
    </node>
    <node concept="1QSeQW" id="eq067T3JYB" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:fzcpWvJ" resolve="LocalVariableDeclaration" />
      <node concept="1QSceF" id="eq067T3K3c" role="1QSceC">
        <node concept="1QSc91" id="eq067T3K3e" role="1QSceR">
          <ref role="1QSc9t" to="tpee:h7TUv0c" resolve="isFinal" />
        </node>
        <node concept="1QXINc" id="eq067T3K3h" role="1QSceR">
          <ref role="1QXINo" to="tpee:4VkOLwjf83e" resolve="type" />
        </node>
        <node concept="1QSeQo" id="eq067T3K3i" role="1QSceR">
          <ref role="1QSceV" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="1QSc9d" id="eq067T3K3j" role="1QSceR">
          <node concept="1QSceF" id="eq067T3K3k" role="1QSc9r">
            <node concept="1QSTl9" id="eq067T3K3l" role="1QSceR">
              <property role="1QSTll" value="=" />
            </node>
            <node concept="1QXINc" id="eq067T3K3m" role="1QSceR">
              <ref role="1QXINo" to="tpee:fz3vP1I" resolve="initializer" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1QS6b0" id="7BujJjZmIOc" role="1QSY9g" />
    <node concept="1QSeQW" id="7BujJjZmIXZ" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:gVKaCLE" resolve="SwitchStatement" />
      <node concept="1QSceF" id="7BujJjZmJdv" role="1QSceC">
        <node concept="1QSceF" id="7hSvR_xU7Or" role="1QSceR">
          <node concept="1QSTl9" id="7BujJjZmJdb" role="1QSceR">
            <property role="1QSTll" value="switch" />
          </node>
          <node concept="1QSTl9" id="7hSvR_y1b3x" role="1QSceR">
            <property role="1QSTll" value="(" />
          </node>
          <node concept="1Xa0MK" id="7hSvR_y1b4b" role="1QSceR" />
          <node concept="1QXINc" id="7BujJjZmJdj" role="1QSceR">
            <ref role="1QXINo" to="tpee:gVKbG91" resolve="expression" />
          </node>
          <node concept="1Xa0MK" id="7hSvR_y1b3V" role="1QSceR" />
          <node concept="1QSTl9" id="7hSvR_y1b3H" role="1QSceR">
            <property role="1QSTll" value=")" />
          </node>
          <node concept="1QSTl9" id="7hSvR_xU7Ob" role="1QSceR">
            <property role="1QSTll" value="{" />
          </node>
        </node>
        <node concept="1QSceF" id="7hSvR_xU7OT" role="1QSceR">
          <node concept="3UYUzP" id="7hSvR_xU7P3" role="1QSceR" />
          <node concept="1QSeQ$" id="2FuI1MXmVPL" role="1QSceR">
            <ref role="1QXIMq" to="tpee:gVKbHMJ" resolve="case" />
            <node concept="2nxglz" id="2FuI1MXn6zl" role="3UYHHU" />
          </node>
        </node>
        <node concept="1QSTl9" id="7hSvR_xN6jV" role="1QSceR">
          <property role="1QSTll" value="}" />
        </node>
        <node concept="3UTMNE" id="7hSvR_xU7OI" role="3UTMMu" />
      </node>
    </node>
    <node concept="1QSeQW" id="7BujJjZmJ7W" role="1QSY9g">
      <ref role="1QSeL8" to="tpee:gVKbdOr" resolve="SwitchCase" />
      <node concept="1QSceF" id="2FuI1MXmVP$" role="1QSceC">
        <node concept="1QXINc" id="7221_nSOZ$p" role="1QSceR">
          <ref role="1QXINo" to="tpee:gVKbmvf" resolve="expression" />
        </node>
        <node concept="1QXINc" id="7221_nSOZ$u" role="1QSceR">
          <ref role="1QXINo" to="tpee:gVKbo18" resolve="body" />
        </node>
        <node concept="2nxgly" id="2FuI1MXn6zq" role="3UTMMu" />
      </node>
    </node>
    <node concept="1QS6b0" id="7jIhq8NcsfR" role="1QSY9g" />
  </node>
  <node concept="2PkwnO" id="7gdm0gzZW21">
    <property role="2Pkwn$" value="/imageEditor" />
    <node concept="2Pkx_Y" id="7gdm0g$0reJ" role="2Pnc7g">
      <property role="TrG5h" value="nodeRef" />
      <node concept="2PkxAe" id="7gdm0g$0reT" role="2PgqJf">
        <ref role="2PkxAY" to="tpck:gw2VY9q" resolve="BaseConcept" />
      </node>
    </node>
    <node concept="214gnc" id="7gdm0gzZW22" role="2Pn5vE">
      <ref role="1YEVMl" node="62_qJBxNi5Y" resolve="imageEditor" />
      <node concept="2PgeId" id="7gdm0g$0rf2" role="214sll">
        <ref role="2PgeIw" node="7gdm0g$0reJ" resolve="nodeRef" />
      </node>
    </node>
    <node concept="Xl_RD" id="7gdm0g$0rn6" role="1engRn">
      <property role="Xl_RC" value="Node Image Editor" />
    </node>
  </node>
  <node concept="02vhO" id="7gdm0g$0cg6">
    <property role="TrG5h" value="pageTransformations" />
    <node concept="2OrE70" id="7gdm0g$0cjw" role="02uzr" />
    <node concept="02vpq" id="62_qJBxNi5Y" role="02uzr">
      <property role="TrG5h" value="imageEditor" />
      <node concept="026TG" id="62_qJBxNjwr" role="026TK">
        <node concept="027og" id="62_qJBxNjws" role="026TJ">
          <ref role="02LMe" to="70w2:7NImM04TdSk" resolve="HTMLDivElement" />
          <node concept="027rt" id="62_qJBxNjwt" role="02LM9">
            <ref role="027rv" to="70w2:7NImM053Sep" resolve="children" />
            <node concept="214gnc" id="7trMQm3aJAx" role="027rp">
              <ref role="1YEVMl" to="m3vg:7trMQm3aIaE" resolve="breadcrumbs" />
              <node concept="214o7A" id="7trMQm3aJHz" role="214sll" />
            </node>
          </node>
          <node concept="027rt" id="7fn21XE1rh_" role="02LM9">
            <ref role="027rv" to="70w2:7NImM053Sep" resolve="children" />
            <node concept="214gnc" id="7fn21XE1sbF" role="027rp">
              <ref role="1YEVMl" to="m3vg:7trMQm3W2UH" resolve="svgNodeEditor" />
              <node concept="214o7A" id="7fn21XE1sbQ" role="214sll" />
            </node>
          </node>
        </node>
      </node>
      <node concept="02i3K" id="62_qJBxNjmr" role="02i3f">
        <property role="TrG5h" value="node" />
        <node concept="02i3D" id="62_qJBxNjmz" role="02i2B">
          <ref role="02i3$" to="tpck:gw2VY9q" resolve="BaseConcept" />
        </node>
      </node>
    </node>
    <node concept="2OrE70" id="7gdm0g$0cj_" role="02uzr" />
    <node concept="2OrE70" id="7gdm0g$0cjy" role="02uzr" />
  </node>
</model>

