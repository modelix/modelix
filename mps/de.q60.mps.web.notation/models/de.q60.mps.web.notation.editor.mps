<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ae8c6e3f-72fe-43dc-bbb2-7d65aabea872(de.q60.mps.web.notation.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="13" />
    <use id="1919c723-b60b-4592-9318-9ce96d91da44" name="de.itemis.mps.editor.celllayout" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="z0fb" ref="r:0b928dd6-dd7e-45a8-b309-a2e315b7877a(de.itemis.mps.editor.celllayout.styles.editor)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="gsqd" ref="r:599c60e4-99d0-4ea8-9225-bd9adc3816a3(de.q60.mps.web.notation.structure)" implicit="true" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="pgur" ref="r:0cd5e68f-034a-4a03-8011-e57fcc7cce60(de.q60.mps.web.notation.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1176897764478" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeFactory" flags="in" index="4$FPG" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1176897874615" name="nodeFactory" index="4_6I_" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
        <child id="1186403803051" name="query" index="VblUZ" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1225456267680" name="jetbrains.mps.lang.editor.structure.RGBColor" flags="ng" index="1iSF2X">
        <property id="1225456424731" name="value" index="1iTho6" />
      </concept>
      <concept id="3982520150125052579" name="jetbrains.mps.lang.editor.structure.QueryFunction_AttributeStyleParameter" flags="ig" index="3sjG9q" />
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="3982520150122341378" name="jetbrains.mps.lang.editor.structure.AttributeStyleClassItem" flags="lg" index="3tD6jV">
        <reference id="3982520150122346707" name="attribute" index="3tD7wE" />
        <child id="3982520150122341379" name="query" index="3tD6jU" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1214560368769" name="emptyNoTargetText" index="39s7Ar" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1088612959204" name="jetbrains.mps.lang.editor.structure.CellModel_Alternation" flags="sg" stub="8104358048506729361" index="1QoScp">
        <property id="1088613081987" name="vertical" index="1QpmdY" />
        <child id="1145918517974" name="alternationCondition" index="3e4ffs" />
        <child id="1088612958265" name="ifTrueCellModel" index="1QoS34" />
        <child id="1088612973955" name="ifFalseCellModel" index="1QoVPY" />
      </concept>
      <concept id="625126330682908270" name="jetbrains.mps.lang.editor.structure.CellModel_ReferencePresentation" flags="sg" stub="730538219795961225" index="3SHvHV" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="6IHVO0tjoQm">
    <ref role="1XX52x" to="gsqd:6IHVO0tjoQ0" resolve="EmptyLine" />
    <node concept="3F0ifn" id="6IHVO0tjoQz" role="2wV5jI">
      <node concept="VPxyj" id="6IHVO0tjoQA" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6IHVO0tjwOq">
    <ref role="1XX52x" to="gsqd:6IHVO0tjoPC" resolve="NotationModule" />
    <node concept="3EZMnI" id="6IHVO0tjwOB" role="2wV5jI">
      <node concept="3F0ifn" id="6IHVO0tjwOI" role="3EZMnx">
        <property role="3F0ifm" value="notation module" />
      </node>
      <node concept="3F0ifn" id="6IHVO0tjwP2" role="3EZMnx">
        <property role="3F0ifm" value="----------------------------" />
      </node>
      <node concept="3F2HdR" id="6IHVO0tjwP9" role="3EZMnx">
        <ref role="1NtTu8" to="gsqd:6IHVO0tjwOg" resolve="content" />
        <node concept="2iRkQZ" id="6IHVO0tjwPb" role="2czzBx" />
        <node concept="4$FPG" id="6IHVO0tjz37" role="4_6I_">
          <node concept="3clFbS" id="6IHVO0tjz38" role="2VODD2">
            <node concept="3clFbF" id="6IHVO0tjz58" role="3cqZAp">
              <node concept="2ShNRf" id="6IHVO0tjz56" role="3clFbG">
                <node concept="3zrR0B" id="6IHVO0tjzcc" role="2ShVmc">
                  <node concept="3Tqbb2" id="6IHVO0tjzce" role="3zrR0E">
                    <ref role="ehGHo" to="gsqd:6IHVO0tjoQ0" resolve="EmptyLine" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRkQZ" id="6IHVO0tjwOZ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6IHVO0tjzMN">
    <ref role="1XX52x" to="gsqd:6IHVO0tjgbW" resolve="ConceptNotation" />
    <node concept="3EZMnI" id="6IHVO0tjzN0" role="2wV5jI">
      <node concept="PMmxH" id="6IHVO0tjzN7" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="1iCGBv" id="6IHVO0tjzNc" role="3EZMnx">
        <ref role="1NtTu8" to="gsqd:6IHVO0tjgc8" resolve="concept" />
        <node concept="1sVBvm" id="6IHVO0tjzNe" role="1sWHZn">
          <node concept="3SHvHV" id="6IHVO0tjzNm" role="2wV5jI" />
        </node>
      </node>
      <node concept="3F0ifn" id="6IHVO0tjzNv" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="6IHVO0tjzNH" role="3EZMnx">
        <ref role="1NtTu8" to="gsqd:6IHVO0tjiNC" resolve="cell" />
      </node>
      <node concept="l2Vlx" id="6IHVO0tjzN3" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6IHVO0tlvP2">
    <ref role="1XX52x" to="gsqd:6IHVO0tjgbo" resolve="PropertyCell" />
    <node concept="1iCGBv" id="6IHVO0tlvPf" role="2wV5jI">
      <ref role="1NtTu8" to="gsqd:6IHVO0tjiNV" resolve="property" />
      <node concept="1sVBvm" id="6IHVO0tlvPh" role="1sWHZn">
        <node concept="3F0A7n" id="6IHVO0tlvPr" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VechU" id="6IHVO0tma5Z" role="3F10Kt">
            <node concept="1iSF2X" id="6IHVO0tma62" role="VblUZ">
              <property role="1iTho6" value="2356a8" />
            </node>
          </node>
          <node concept="Vb9p2" id="6IHVO0tnlgK" role="3F10Kt">
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6IHVO0tly_k">
    <ref role="1XX52x" to="gsqd:6IHVO0tjgb$" resolve="ChildrenCollectionCell" />
    <node concept="1iCGBv" id="6IHVO0tly_x" role="2wV5jI">
      <ref role="1NtTu8" to="gsqd:6IHVO0tmKfq" resolve="link" />
      <node concept="1sVBvm" id="6IHVO0tly_z" role="1sWHZn">
        <node concept="3F0A7n" id="6IHVO0tly_H" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VechU" id="6IHVO0tma65" role="3F10Kt">
            <node concept="1iSF2X" id="6IHVO0tma68" role="VblUZ">
              <property role="1iTho6" value="b32462" />
            </node>
          </node>
          <node concept="Vb9p2" id="6IHVO0tnlgD" role="3F10Kt">
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3EZMnI" id="w8XdrMWyYL" role="6VMZX">
      <node concept="2iRkQZ" id="w8XdrMWyYM" role="2iSdaV" />
      <node concept="3EZMnI" id="w8XdrMWyYR" role="3EZMnx">
        <node concept="2iRfu4" id="w8XdrMWyYS" role="2iSdaV" />
        <node concept="VPM3Z" id="w8XdrMWyYT" role="3F10Kt" />
        <node concept="3F0ifn" id="w8XdrMWyZ0" role="3EZMnx">
          <property role="3F0ifm" value="layout:" />
        </node>
        <node concept="3F1sOY" id="w8XdrMWyZ8" role="3EZMnx">
          <ref role="1NtTu8" to="gsqd:w8XdrMWyYG" resolve="layout" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6IHVO0tly_S">
    <ref role="1XX52x" to="gsqd:6IHVO0tjBC9" resolve="ConstantCell" />
    <node concept="3EZMnI" id="6IHVO0tlyAd" role="2wV5jI">
      <node concept="3F0A7n" id="6IHVO0tlyAy" role="3EZMnx">
        <property role="39s7Ar" value="true" />
        <property role="1O74Pk" value="true" />
        <ref role="1NtTu8" to="gsqd:6IHVO0tjBCl" resolve="text" />
        <node concept="VechU" id="6IHVO0tma5D" role="3F10Kt">
          <node concept="1iSF2X" id="6IHVO0tma5G" role="VblUZ">
            <property role="1iTho6" value="008300" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="6IHVO0tlyAg" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6IHVO0tlyAN">
    <ref role="1XX52x" to="gsqd:6IHVO0tjiO1" resolve="FlagCell" />
    <node concept="3EZMnI" id="6IHVO0tlyB0" role="2wV5jI">
      <node concept="PMmxH" id="6IHVO0tlyBN" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F0ifn" id="6IHVO0tlyBz" role="3EZMnx">
        <property role="3F0ifm" value="/" />
        <node concept="11L4FC" id="6IHVO0tlyBE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="6IHVO0tlyBJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="6IHVO0tlyBd" role="3EZMnx">
        <ref role="1NtTu8" to="gsqd:6IHVO0tjiOt" resolve="property" />
        <node concept="1sVBvm" id="6IHVO0tlyBf" role="1sWHZn">
          <node concept="3F0A7n" id="6IHVO0tlyBq" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="6IHVO0tlyB3" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6IHVO0tlyC3">
    <ref role="1XX52x" to="gsqd:6IHVO0tjiOd" resolve="OptionalCell" />
    <node concept="3EZMnI" id="6IHVO0tlyCg" role="2wV5jI">
      <node concept="3tD6jV" id="6IHVO0tlyXq" role="3F10Kt">
        <ref role="3tD7wE" to="z0fb:2FAXvauFp7O" resolve="_border-top-size" />
        <node concept="3sjG9q" id="6IHVO0tlyXs" role="3tD6jU">
          <node concept="3clFbS" id="6IHVO0tlyXt" role="2VODD2">
            <node concept="3clFbF" id="6IHVO0tlyXu" role="3cqZAp">
              <node concept="3cmrfG" id="6IHVO0tlyXv" role="3clFbG">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3tD6jV" id="6IHVO0tlz6F" role="3F10Kt">
        <ref role="3tD7wE" to="z0fb:2FAXvauFoXW" resolve="_border-top-color" />
        <node concept="3sjG9q" id="6IHVO0tlz6H" role="3tD6jU">
          <node concept="3clFbS" id="6IHVO0tlz6J" role="2VODD2">
            <node concept="3clFbF" id="6IHVO0tl$mF" role="3cqZAp">
              <node concept="2ShNRf" id="6IHVO0tl$mD" role="3clFbG">
                <node concept="1pGfFk" id="6IHVO0tl_mK" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
                  <node concept="3cmrfG" id="6IHVO0tl_qF" role="37wK5m">
                    <property role="3cmrfH" value="34" />
                  </node>
                  <node concept="3cmrfG" id="6IHVO0tl_uR" role="37wK5m">
                    <property role="3cmrfH" value="97" />
                  </node>
                  <node concept="3cmrfG" id="6IHVO0tl_ES" role="37wK5m">
                    <property role="3cmrfH" value="163" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="6IHVO0tlyCt" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F1sOY" id="6IHVO0tlyCw" role="3EZMnx">
        <ref role="1NtTu8" to="gsqd:6IHVO0tjiOr" resolve="cell" />
      </node>
      <node concept="2iRfu4" id="6IHVO0tlyCj" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6IHVO0tl_LI">
    <ref role="1XX52x" to="gsqd:6IHVO0tjiNF" resolve="StaticCollectionCell" />
    <node concept="1QoScp" id="w8XdrMW21f" role="2wV5jI">
      <property role="1QpmdY" value="true" />
      <node concept="pkWqt" id="w8XdrMW21i" role="3e4ffs">
        <node concept="3clFbS" id="w8XdrMW21k" role="2VODD2">
          <node concept="3clFbF" id="w8XdrMW2I1" role="3cqZAp">
            <node concept="2OqwBi" id="w8XdrMW2Qb" role="3clFbG">
              <node concept="pncrf" id="w8XdrMW2I0" role="2Oq$k0" />
              <node concept="2qgKlT" id="w8XdrMW2YA" role="2OqNvi">
                <ref role="37wK5l" to="pgur:w8XdrMW0I4" resolve="isVerticalLayout" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="6IHVO0tl_LV" role="1QoVPY">
        <node concept="3F0ifn" id="6IHVO0tl_M2" role="3EZMnx">
          <property role="3F0ifm" value="[" />
          <node concept="VechU" id="6IHVO0tlVbd" role="3F10Kt">
            <node concept="1iSF2X" id="6IHVO0tlVbf" role="VblUZ">
              <property role="1iTho6" value="cccccc" />
            </node>
          </node>
        </node>
        <node concept="3F2HdR" id="6IHVO0tl_Mg" role="3EZMnx">
          <ref role="1NtTu8" to="gsqd:6IHVO0tjiNR" resolve="cells" />
          <node concept="2iRfu4" id="6IHVO0tl_Mi" role="2czzBx" />
        </node>
        <node concept="3F0ifn" id="6IHVO0tl_M8" role="3EZMnx">
          <property role="3F0ifm" value="]" />
          <node concept="VechU" id="6IHVO0tlVbh" role="3F10Kt">
            <node concept="1iSF2X" id="6IHVO0tlVbi" role="VblUZ">
              <property role="1iTho6" value="cccccc" />
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="6IHVO0tl_LY" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="w8XdrMW2oz" role="1QoS34">
        <node concept="3F0ifn" id="w8XdrMW2oU" role="3EZMnx">
          <property role="3F0ifm" value="[" />
          <node concept="VechU" id="w8XdrMW2oV" role="3F10Kt">
            <node concept="1iSF2X" id="w8XdrMW2oW" role="VblUZ">
              <property role="1iTho6" value="cccccc" />
            </node>
          </node>
        </node>
        <node concept="3EZMnI" id="w8XdrMW3ki" role="3EZMnx">
          <node concept="2iRfu4" id="w8XdrMW3kj" role="2iSdaV" />
          <node concept="3XFhqQ" id="w8XdrMW3ly" role="3EZMnx" />
          <node concept="3F2HdR" id="w8XdrMW2oX" role="3EZMnx">
            <ref role="1NtTu8" to="gsqd:6IHVO0tjiNR" resolve="cells" />
            <node concept="2iRkQZ" id="w8XdrMWozQ" role="2czzBx" />
          </node>
        </node>
        <node concept="3F0ifn" id="w8XdrMW2oZ" role="3EZMnx">
          <property role="3F0ifm" value="]" />
          <node concept="VechU" id="w8XdrMW2p0" role="3F10Kt">
            <node concept="1iSF2X" id="w8XdrMW2p1" role="VblUZ">
              <property role="1iTho6" value="cccccc" />
            </node>
          </node>
        </node>
        <node concept="2iRkQZ" id="w8XdrMW375" role="2iSdaV" />
      </node>
    </node>
    <node concept="3EZMnI" id="w8XdrMWozT" role="6VMZX">
      <node concept="2iRkQZ" id="w8XdrMWozU" role="2iSdaV" />
      <node concept="3EZMnI" id="w8XdrMWoUu" role="3EZMnx">
        <node concept="2iRfu4" id="w8XdrMWoUv" role="2iSdaV" />
        <node concept="VPM3Z" id="w8XdrMWoUw" role="3F10Kt" />
        <node concept="3F0ifn" id="w8XdrMWoU$" role="3EZMnx">
          <property role="3F0ifm" value="layout:" />
        </node>
        <node concept="3F1sOY" id="w8XdrMWoUD" role="3EZMnx">
          <ref role="1NtTu8" to="gsqd:w8XdrMVXx8" resolve="layout" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6IHVO0tmKez">
    <ref role="1XX52x" to="gsqd:6IHVO0tmKec" resolve="SingleChildCell" />
    <node concept="1iCGBv" id="6IHVO0tmKe_" role="2wV5jI">
      <ref role="1NtTu8" to="gsqd:6IHVO0tmKeo" resolve="link" />
      <node concept="1sVBvm" id="6IHVO0tmKeA" role="1sWHZn">
        <node concept="3F0A7n" id="6IHVO0tmKeB" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VechU" id="6IHVO0tmKeC" role="3F10Kt">
            <node concept="1iSF2X" id="6IHVO0tmKeD" role="VblUZ">
              <property role="1iTho6" value="b32462" />
            </node>
          </node>
          <node concept="Vb9p2" id="6IHVO0tnlgR" role="3F10Kt">
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6IHVO0tn4F0">
    <ref role="1XX52x" to="gsqd:6IHVO0tn4Ep" resolve="ReferenceCell" />
    <node concept="1iCGBv" id="6IHVO0tn4Fd" role="2wV5jI">
      <ref role="1NtTu8" to="gsqd:6IHVO0tn4E_" resolve="link" />
      <node concept="1sVBvm" id="6IHVO0tn4Ff" role="1sWHZn">
        <node concept="3F0A7n" id="6IHVO0tn4Ft" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VechU" id="6IHVO0tn4Fx" role="3F10Kt">
            <node concept="1iSF2X" id="6IHVO0tn4F$" role="VblUZ">
              <property role="1iTho6" value="945721" />
            </node>
          </node>
          <node concept="Vb9p2" id="6IHVO0tnlgx" role="3F10Kt">
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="w8XdrMWGSe">
    <property role="3GE5qa" value="layout" />
    <ref role="1XX52x" to="gsqd:w8XdrMVXw$" resolve="CollectionLayout" />
    <node concept="PMmxH" id="w8XdrMWGSr" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
    </node>
  </node>
  <node concept="24kQdi" id="w8XdrMWPKR">
    <ref role="1XX52x" to="gsqd:w8XdrMWPKz" resolve="IndentCell" />
    <node concept="PMmxH" id="w8XdrMWPL4" role="2wV5jI">
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      <node concept="VechU" id="w8XdrMWPL7" role="3F10Kt">
        <property role="Vb096" value="fLJRk5_/gray" />
      </node>
    </node>
  </node>
</model>

