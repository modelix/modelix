<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:398dbccd-9340-4ed3-8e84-f35434f97fe1(de.q60.mps.lazywebmps.runtime.synchronizer)">
  <persistence version="9" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tqvn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.tempmodel(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="cs9y" ref="r:a5895ed5-d753-4279-9a6a-1e4f59e8cac5(de.q60.mps.lazywebmps.runtime.modelrepo)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
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
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
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
  <node concept="312cEu" id="65KWK1vsjar">
    <property role="TrG5h" value="ModelSynchronizer" />
    <node concept="2tJIrI" id="65KWK1vsjaV" role="jymVt" />
    <node concept="312cEg" id="65KWK1vsjbg" role="jymVt">
      <property role="TrG5h" value="model" />
      <node concept="3Tm6S6" id="65KWK1vsjbh" role="1B3o_S" />
      <node concept="3uibUv" id="65KWK1vskrJ" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="65KWK1vsjbD" role="jymVt" />
    <node concept="3clFbW" id="65KWK1vsjc4" role="jymVt">
      <node concept="37vLTG" id="65KWK1vskPE" role="3clF46">
        <property role="TrG5h" value="modelrepo" />
        <node concept="3uibUv" id="65KWK1vskRi" role="1tU5fm">
          <ref role="3uigEE" to="cs9y:65KWK1vrEKM" resolve="IModelrepo" />
        </node>
      </node>
      <node concept="3cqZAl" id="65KWK1vsjc6" role="3clF45" />
      <node concept="3Tm1VV" id="65KWK1vsjc7" role="1B3o_S" />
      <node concept="3clFbS" id="65KWK1vsjc8" role="3clF47">
        <node concept="3cpWs8" id="65KWK1vsk1G" role="3cqZAp">
          <node concept="3cpWsn" id="65KWK1vsk1H" role="3cpWs9">
            <property role="TrG5h" value="options" />
            <node concept="3uibUv" id="65KWK1vsk1I" role="1tU5fm">
              <ref role="3uigEE" to="tqvn:~TempModuleOptions" resolve="TempModuleOptions" />
            </node>
            <node concept="2YIFZM" id="65KWK1vskgn" role="33vP2m">
              <ref role="37wK5l" to="tqvn:~TempModuleOptions.forDefaultModule()" resolve="forDefaultModule" />
              <ref role="1Pybhc" to="tqvn:~TempModuleOptions" resolve="TempModuleOptions" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="65KWK1vsks0" role="3cqZAp">
          <node concept="37vLTI" id="65KWK1vsks2" role="3clFbG">
            <node concept="2OqwBi" id="65KWK1vsklf" role="37vLTx">
              <node concept="2YIFZM" id="65KWK1vsklg" role="2Oq$k0">
                <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
              </node>
              <node concept="liA8E" id="65KWK1vsklh" role="2OqNvi">
                <ref role="37wK5l" to="tqvn:~TemporaryModels.create(boolean,jetbrains.mps.smodel.tempmodel.TempModuleOptions)" resolve="create" />
                <node concept="3clFbT" id="65KWK1vskli" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
                <node concept="37vLTw" id="65KWK1vsklj" role="37wK5m">
                  <ref role="3cqZAo" node="65KWK1vsk1H" resolve="options" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="65KWK1vsks6" role="37vLTJ">
              <ref role="3cqZAo" node="65KWK1vsjbg" resolve="model" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="65KWK1vslyB" role="3cqZAp" />
        <node concept="3SKdUt" id="2$gEJgL7$8L" role="3cqZAp">
          <node concept="3SKdUq" id="2$gEJgL7$8N" role="3SKWNk">
            <property role="3SKdUp" value="TODO" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="65KWK1vskp8" role="jymVt" />
    <node concept="3clFb_" id="65KWK1vskq5" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="65KWK1vskq7" role="3clF45" />
      <node concept="3Tm1VV" id="65KWK1vskq8" role="1B3o_S" />
      <node concept="3clFbS" id="65KWK1vskq9" role="3clF47">
        <node concept="3clFbF" id="65KWK1vskyv" role="3cqZAp">
          <node concept="2OqwBi" id="65KWK1vskCJ" role="3clFbG">
            <node concept="2YIFZM" id="65KWK1vskz0" role="2Oq$k0">
              <ref role="37wK5l" to="tqvn:~TemporaryModels.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="tqvn:~TemporaryModels" resolve="TemporaryModels" />
            </node>
            <node concept="liA8E" id="65KWK1vskIf" role="2OqNvi">
              <ref role="37wK5l" to="tqvn:~TemporaryModels.dispose(org.jetbrains.mps.openapi.model.SModel)" resolve="dispose" />
              <node concept="37vLTw" id="65KWK1vskJb" role="37wK5m">
                <ref role="3cqZAo" node="65KWK1vsjbg" resolve="model" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="65KWK1vsjaX" role="jymVt" />
    <node concept="3Tm1VV" id="65KWK1vsjas" role="1B3o_S" />
  </node>
</model>

