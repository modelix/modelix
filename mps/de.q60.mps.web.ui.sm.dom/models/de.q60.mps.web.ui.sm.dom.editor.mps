<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7c34fb41-94f9-4510-96b7-7a94a5d686ff(de.q60.mps.web.ui.sm.dom.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="70w2" ref="r:59e1f3dd-5dad-4bbd-ad65-fef01059d9d2(de.q60.mps.web.ui.sm.dom.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
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
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="6870613620390542976" name="jetbrains.mps.lang.smodel.structure.ConceptAliasOperation" flags="ng" index="3n3YKJ" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="2pepAm0kTu2">
    <property role="3GE5qa" value="dom.htmlElement" />
    <ref role="1XX52x" to="70w2:7NImM04RGAQ" resolve="HTMLElement" />
    <node concept="3EZMnI" id="2pepAm0kTu4" role="2wV5jI">
      <node concept="1HlG4h" id="2pepAm0kTub" role="3EZMnx">
        <node concept="1HfYo3" id="2pepAm0kTud" role="1HlULh">
          <node concept="3TQlhw" id="2pepAm0kTuf" role="1Hhtcw">
            <node concept="3clFbS" id="2pepAm0kTuh" role="2VODD2">
              <node concept="3clFbF" id="2pepAm0kTyU" role="3cqZAp">
                <node concept="3cpWs3" id="2pepAm0kUi3" role="3clFbG">
                  <node concept="Xl_RD" id="2pepAm0kTYd" role="3uHU7w">
                    <property role="Xl_RC" value="&gt;" />
                  </node>
                  <node concept="3cpWs3" id="2pepAm0kTY7" role="3uHU7B">
                    <node concept="Xl_RD" id="2pepAm0kTyT" role="3uHU7B">
                      <property role="Xl_RC" value="&lt;" />
                    </node>
                    <node concept="2OqwBi" id="2pepAm0kVom" role="3uHU7w">
                      <node concept="2OqwBi" id="2pepAm0kUGF" role="2Oq$k0">
                        <node concept="pncrf" id="2pepAm0kUnb" role="2Oq$k0" />
                        <node concept="2yIwOk" id="2pepAm0kV2K" role="2OqNvi" />
                      </node>
                      <node concept="3n3YKJ" id="2pepAm0kW4J" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="2pepAm0kWDT" role="3EZMnx">
        <node concept="3XFhqQ" id="2pepAm0kWLf" role="3EZMnx" />
        <node concept="2iRfu4" id="2pepAm0kWDU" role="2iSdaV" />
        <node concept="3F2HdR" id="2pepAm0kWyH" role="3EZMnx">
          <ref role="1NtTu8" to="70w2:7NImM053Sep" resolve="children" />
          <node concept="2iRkQZ" id="2pepAm0kWyJ" role="2czzBx" />
        </node>
      </node>
      <node concept="1HlG4h" id="2pepAm0kWeD" role="3EZMnx">
        <node concept="1HfYo3" id="2pepAm0kWeE" role="1HlULh">
          <node concept="3TQlhw" id="2pepAm0kWeF" role="1Hhtcw">
            <node concept="3clFbS" id="2pepAm0kWeG" role="2VODD2">
              <node concept="3clFbF" id="2pepAm0kWeH" role="3cqZAp">
                <node concept="3cpWs3" id="2pepAm0kWeI" role="3clFbG">
                  <node concept="Xl_RD" id="2pepAm0kWeJ" role="3uHU7w">
                    <property role="Xl_RC" value="&gt;" />
                  </node>
                  <node concept="3cpWs3" id="2pepAm0kWeK" role="3uHU7B">
                    <node concept="Xl_RD" id="2pepAm0kWeL" role="3uHU7B">
                      <property role="Xl_RC" value="&lt;/" />
                    </node>
                    <node concept="2OqwBi" id="2pepAm0kWeM" role="3uHU7w">
                      <node concept="2OqwBi" id="2pepAm0kWeN" role="2Oq$k0">
                        <node concept="pncrf" id="2pepAm0kWeO" role="2Oq$k0" />
                        <node concept="2yIwOk" id="2pepAm0kWeP" role="2OqNvi" />
                      </node>
                      <node concept="3n3YKJ" id="2pepAm0kWeQ" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRkQZ" id="2pepAm0kTu7" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2pepAm0kX$L">
    <property role="3GE5qa" value="dom" />
    <ref role="1XX52x" to="70w2:7NImM04RGAT" resolve="HtmlText" />
    <node concept="3EZMnI" id="2pepAm0kX$N" role="2wV5jI">
      <node concept="3F0ifn" id="2pepAm0kX$U" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="11LMrY" id="2pepAm0kX_k" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VechU" id="2pepAm0kX_d" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="3F0A7n" id="2pepAm0kX_8" role="3EZMnx">
        <ref role="1NtTu8" to="70w2:7NImM04TrPE" resolve="data" />
      </node>
      <node concept="3F0ifn" id="2pepAm0kX_0" role="3EZMnx">
        <property role="3F0ifm" value="&quot;" />
        <node concept="11L4FC" id="2pepAm0kX_r" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VechU" id="2pepAm0kX_f" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
      </node>
      <node concept="l2Vlx" id="2pepAm0kX$Q" role="2iSdaV" />
    </node>
  </node>
</model>

