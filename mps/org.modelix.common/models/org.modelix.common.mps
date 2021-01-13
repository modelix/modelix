<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:53d14de3-e820-4a3b-9328-a2833dcab0bd(org.modelix.common)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="3d38" ref="r:bc160b50-5a4e-4f99-ba07-a7b7116dab7a(de.q60.mps.incremental.util)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="5MA9wbc5skS">
    <property role="TrG5h" value="AuthorOverride" />
    <node concept="Wx3nA" id="5MA9wbc5sJL" role="jymVt">
      <property role="TrG5h" value="AUTHOR" />
      <node concept="3uibUv" id="5MA9wbc5sAx" role="1tU5fm">
        <ref role="3uigEE" to="3d38:7vWAzuEE15A" resolve="ContextValue" />
        <node concept="17QB3L" id="5MA9wbc5sID" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="5MA9wbc5t9f" role="1B3o_S" />
      <node concept="2ShNRf" id="5MA9wbc5t7F" role="33vP2m">
        <node concept="1pGfFk" id="5MA9wbc5sWb" role="2ShVmc">
          <ref role="37wK5l" to="3d38:32qWz0M5VME" resolve="ContextValue" />
          <node concept="17QB3L" id="5MA9wbc5sWc" role="1pMfVU" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5MA9wbc5ta5" role="jymVt" />
    <node concept="2YIFZL" id="5MA9wbc5wh4" role="jymVt">
      <property role="TrG5h" value="apply" />
      <node concept="3clFbS" id="5MA9wbc5teF" role="3clF47">
        <node concept="3cpWs8" id="5MA9wbc5uuh" role="3cqZAp">
          <node concept="3cpWsn" id="5MA9wbc5uui" role="3cpWs9">
            <property role="TrG5h" value="override" />
            <node concept="17QB3L" id="5MA9wbc5utn" role="1tU5fm" />
            <node concept="2OqwBi" id="5MA9wbc5uuj" role="33vP2m">
              <node concept="37vLTw" id="5MA9wbc5uuk" role="2Oq$k0">
                <ref role="3cqZAo" node="5MA9wbc5sJL" resolve="AUTHOR" />
              </node>
              <node concept="liA8E" id="5MA9wbc5uul" role="2OqNvi">
                <ref role="37wK5l" to="3d38:7vWAzuEE1gr" resolve="getValue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5MA9wbc5tV9" role="3cqZAp">
          <node concept="3K4zz7" id="5MA9wbc5vC8" role="3clFbG">
            <node concept="37vLTw" id="5MA9wbc5w07" role="3K4E3e">
              <ref role="3cqZAo" node="5MA9wbc5uui" resolve="override" />
            </node>
            <node concept="37vLTw" id="5MA9wbc5wck" role="3K4GZi">
              <ref role="3cqZAo" node="5MA9wbc5tko" resolve="author" />
            </node>
            <node concept="2OqwBi" id="5MA9wbc5uYY" role="3K4Cdx">
              <node concept="37vLTw" id="5MA9wbc5uum" role="2Oq$k0">
                <ref role="3cqZAo" node="5MA9wbc5uui" resolve="override" />
              </node>
              <node concept="17RvpY" id="5MA9wbc5veb" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5MA9wbc5tko" role="3clF46">
        <property role="TrG5h" value="author" />
        <node concept="17QB3L" id="5MA9wbc5tq3" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="5MA9wbc5tw0" role="3clF45" />
      <node concept="3Tm1VV" id="5MA9wbc5teE" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="5MA9wbc5skT" role="1B3o_S" />
  </node>
</model>

