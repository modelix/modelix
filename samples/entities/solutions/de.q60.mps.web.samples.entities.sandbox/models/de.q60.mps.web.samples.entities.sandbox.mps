<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5d56df86-9b89-40e7-a17f-675bb0dc9ae2(de.q60.mps.web.samples.entities.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="363848cf-91df-484c-9066-7089821cb609" name="de.q60.mps.web.samples.entities" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports />
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="363848cf-91df-484c-9066-7089821cb609" name="de.q60.mps.web.samples.entities">
      <concept id="579439372628304764" name="de.q60.mps.web.samples.entities.structure.EntityType" flags="ng" index="uq3pQ">
        <reference id="579439372628304981" name="entity" index="uq35v" />
      </concept>
      <concept id="579439372628239967" name="de.q60.mps.web.samples.entities.structure.StringType" flags="ng" index="uqNdl" />
      <concept id="7680480780028988222" name="de.q60.mps.web.samples.entities.structure.Entity" flags="ng" index="3ZgkuH">
        <child id="7680480780028993238" name="properties" index="3Zgl95" />
      </concept>
      <concept id="7680480780028993068" name="de.q60.mps.web.samples.entities.structure.Property" flags="ng" index="3ZglaZ">
        <child id="579439372628240412" name="type" index="uqNOm" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3ZgkuH" id="wa_gCmopcC">
    <property role="TrG5h" value="EntityA" />
    <node concept="3ZglaZ" id="wa_gCmo$wi" role="3Zgl95">
      <property role="TrG5h" value="a" />
      <node concept="uqNdl" id="wa_gCmo$wm" role="uqNOm" />
    </node>
    <node concept="3ZglaZ" id="wa_gCmoEag" role="3Zgl95">
      <property role="TrG5h" value="b" />
      <node concept="uqNdl" id="wa_gCmoEam" role="uqNOm" />
    </node>
    <node concept="3ZglaZ" id="wa_gCmoEap" role="3Zgl95">
      <property role="TrG5h" value="c" />
      <node concept="uq3pQ" id="wa_gCmoKO6" role="uqNOm">
        <ref role="uq35v" node="wa_gCmopcC" resolve="EntityA" />
      </node>
    </node>
    <node concept="3ZglaZ" id="HabLxtWIaw" role="3Zgl95">
      <property role="TrG5h" value="d" />
      <node concept="uq3pQ" id="HabLxtWIay" role="uqNOm">
        <ref role="uq35v" node="lpnKkXX1BR" resolve="EntityB" />
      </node>
    </node>
  </node>
  <node concept="3ZgkuH" id="lpnKkXX1BR">
    <property role="TrG5h" value="EntityB" />
    <node concept="3ZglaZ" id="lpnKkY07hH" role="3Zgl95">
      <property role="TrG5h" value="e" />
      <node concept="uq3pQ" id="lpnKkY07hL" role="uqNOm">
        <ref role="uq35v" node="wa_gCmopcC" resolve="EntityA" />
      </node>
    </node>
  </node>
  <node concept="3ZgkuH" id="lpnKkXX1BS" />
  <node concept="312cEu" id="7BujJjYSI25">
    <property role="TrG5h" value="ClassA" />
    <property role="1EXbeo" value="false" />
    <node concept="2tJIrI" id="7gdm0g$Q_9j" role="jymVt" />
    <node concept="312cEg" id="7BujJjYSI3T" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="3Tm6S6" id="7BujJjYSI3U" role="1B3o_S" />
      <node concept="17QB3L" id="7BujJjYSI5d" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="5$p5$D1GISm" role="jymVt" />
    <node concept="3clFbW" id="5$p5$D1GIWZ" role="jymVt">
      <node concept="3cqZAl" id="5$p5$D1GIX1" role="3clF45" />
      <node concept="3Tm1VV" id="5$p5$D1GIX2" role="1B3o_S" />
      <node concept="3clFbS" id="5$p5$D1GIX3" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5$p5$D1GITa" role="jymVt" />
    <node concept="3Tm1VV" id="7BujJjYSI26" role="1B3o_S" />
    <node concept="3clFb_" id="7BujJjYSI7z" role="jymVt">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="7BujJjYSI9K" role="1B3o_S" />
      <node concept="3cqZAl" id="7BujJjYSIaP" role="3clF45" />
      <node concept="37vLTG" id="7BujJjYSIdc" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="7hSvR_y8kyZ" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7BujJjYSIf1" role="3clF47">
        <node concept="3clFbF" id="7hSvR_y8jVk" role="3cqZAp">
          <node concept="37vLTI" id="7hSvR_y8kqI" role="3clFbG">
            <node concept="2OqwBi" id="7hSvR_y8k12" role="37vLTJ">
              <node concept="Xjq3P" id="7hSvR_y8jVi" role="2Oq$k0" />
              <node concept="2OwXpG" id="7hSvR_y8k6V" role="2OqNvi">
                <ref role="2Oxat5" node="7BujJjYSI3T" resolve="name" />
              </node>
            </node>
            <node concept="37vLTw" id="5$p5$D1GIHM" role="37vLTx">
              <ref role="3cqZAo" node="7BujJjYSIdc" resolve="value" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7BujJjYW_Dl" role="jymVt" />
    <node concept="3clFb_" id="7BujJjYW_Fu" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="7BujJjYW_In" role="1B3o_S" />
      <node concept="17QB3L" id="7BujJjYW_Kh" role="3clF45" />
      <node concept="3clFbS" id="7BujJjYW_Md" role="3clF47">
        <node concept="3cpWs6" id="7BujJjYW_Up" role="3cqZAp">
          <node concept="37vLTw" id="7BujJjYWA7f" role="3cqZAk">
            <ref role="3cqZAo" node="7BujJjYSI3T" resolve="name" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7BujJjZfx$l" role="jymVt" />
    <node concept="3clFb_" id="7BujJjZfxA9" role="jymVt">
      <property role="TrG5h" value="switchAsTableDemo" />
      <node concept="37vLTG" id="7BujJjZfxMF" role="3clF46">
        <property role="TrG5h" value="input" />
        <node concept="10Oyi0" id="7BujJjZfxNU" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="7BujJjZfypG" role="3clF45" />
      <node concept="3Tm1VV" id="7BujJjZfxAc" role="1B3o_S" />
      <node concept="3clFbS" id="7BujJjZfxAd" role="3clF47">
        <node concept="3KaCP$" id="7BujJjZfxMr" role="3cqZAp">
          <node concept="3KbdKl" id="7BujJjZfxPa" role="3KbHQx">
            <node concept="3cmrfG" id="7BujJjZfxPE" role="3Kbmr1">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="3clFbS" id="7BujJjZfxPc" role="3Kbo56">
              <node concept="3cpWs6" id="7BujJjZfxQ8" role="3cqZAp">
                <node concept="Xl_RD" id="7BujJjZfxRL" role="3cqZAk">
                  <property role="Xl_RC" value="a" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="7BujJjZfxY$" role="3KbHQx">
            <node concept="3cmrfG" id="7BujJjZfy0s" role="3Kbmr1">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="3clFbS" id="7BujJjZfxYA" role="3Kbo56">
              <node concept="3cpWs6" id="7BujJjZfy10" role="3cqZAp">
                <node concept="Xl_RD" id="7BujJjZfy7L" role="3cqZAk">
                  <property role="Xl_RC" value="z" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="7BujJjZfya_" role="3KbHQx">
            <node concept="3cmrfG" id="7BujJjZfycK" role="3Kbmr1">
              <property role="3cmrfH" value="2" />
            </node>
            <node concept="3clFbS" id="7BujJjZfyaB" role="3Kbo56">
              <node concept="3cpWs6" id="7BujJjZfydq" role="3cqZAp">
                <node concept="Xl_RD" id="7BujJjZfydW" role="3cqZAk">
                  <property role="Xl_RC" value="h" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7BujJjZfyln" role="3Kb1Dw">
            <node concept="3cpWs6" id="7BujJjZfynu" role="3cqZAp">
              <node concept="Xl_RD" id="7BujJjZfyo3" role="3cqZAk">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="7hSvR_y8eQv" role="3KbGdf">
            <ref role="3cqZAo" node="7BujJjZfxMF" resolve="input" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

