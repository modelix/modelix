<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a5895ed5-d753-4279-9a6a-1e4f59e8cac5(de.q60.mps.lazywebmps.runtime.modelrepo)">
  <persistence version="9" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="b3cn" ref="r:ef125ab6-4535-46f9-963a-bb3cf1420cc4(de.q60.mps.lazywebmps.runtime.tree)" />
    <import index="88at" ref="r:2077b9cb-d6f5-46a2-9b75-7ca019fa40cc(de.q60.mps.lazywebmps.runtime.ot)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="65KWK1vrEKu">
    <property role="TrG5h" value="Modelrepo" />
    <node concept="2tJIrI" id="65KWK1vsmbN" role="jymVt" />
    <node concept="2tJIrI" id="65KWK1vsmcq" role="jymVt" />
    <node concept="2tJIrI" id="65KWK1vsmbY" role="jymVt" />
    <node concept="3Tm1VV" id="65KWK1vrEKv" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="65KWK1vrEKM">
    <property role="TrG5h" value="IModelrepo" />
    <node concept="2tJIrI" id="65KWK1vrELc" role="jymVt" />
    <node concept="3clFb_" id="65KWK1vrELx" role="jymVt">
      <property role="TrG5h" value="listModels" />
      <node concept="3uibUv" id="65KWK1vrEOo" role="3clF45">
        <ref role="3uigEE" node="65KWK1vrELX" resolve="ModelInfo" />
      </node>
      <node concept="3Tm1VV" id="65KWK1vrEL$" role="1B3o_S" />
      <node concept="3clFbS" id="65KWK1vrEL_" role="3clF47" />
    </node>
    <node concept="3clFb_" id="65KWK1vrEPS" role="jymVt">
      <property role="TrG5h" value="getModel" />
      <node concept="37vLTG" id="65KWK1vrEQJ" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="17QB3L" id="65KWK1vrEQR" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="65KWK1vrEQY" role="3clF45">
        <ref role="3uigEE" to="b3cn:q4IqgjMpFf" resolve="IModel" />
      </node>
      <node concept="3Tm1VV" id="65KWK1vrEPV" role="1B3o_S" />
      <node concept="3clFbS" id="65KWK1vrEPW" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="65KWK1vrELp" role="jymVt" />
    <node concept="2tJIrI" id="65KWK1vskSl" role="jymVt" />
    <node concept="3Tm1VV" id="65KWK1vrEKN" role="1B3o_S" />
    <node concept="3uibUv" id="65KWK1vsl5K" role="3HQHJm">
      <ref role="3uigEE" to="88at:65KWK1vskUz" resolve="IOTServer" />
    </node>
  </node>
  <node concept="312cEu" id="65KWK1vrELX">
    <property role="TrG5h" value="ModelInfo" />
    <node concept="2tJIrI" id="65KWK1vrEMn" role="jymVt" />
    <node concept="312cEg" id="65KWK1vrENy" role="jymVt">
      <property role="TrG5h" value="id" />
      <node concept="3Tm6S6" id="65KWK1vrENz" role="1B3o_S" />
      <node concept="17QB3L" id="65KWK1vrENR" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="65KWK1vrEMM" role="jymVt">
      <property role="TrG5h" value="name" />
      <node concept="3Tm6S6" id="65KWK1vrEMN" role="1B3o_S" />
      <node concept="17QB3L" id="65KWK1vrEN4" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="65KWK1vrEMv" role="jymVt" />
    <node concept="3Tm1VV" id="65KWK1vrELY" role="1B3o_S" />
  </node>
</model>

