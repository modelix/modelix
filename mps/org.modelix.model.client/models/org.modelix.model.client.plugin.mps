<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f7b3e987-e94e-49ad-b769-c0a1c96ed17d(org.modelix.model.client.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="xkhl" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.lazy(org.modelix.model.client/)" />
    <import index="xxte" ref="r:a79f28f8-6055-40c6-bc5e-47a42a3b97e8(org.modelix.model.mpsadapters.mps)" />
    <import index="vxxo" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure.concept(MPS.Core/)" />
    <import index="2k9e" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="jks5" ref="cc99dce1-49f3-4392-8dbf-e22ca47bd0af/java:org.modelix.model.api(org.modelix.model.api/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="e8bb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.ids(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="ista" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime.illegal(MPS.Core/)" />
  </imports>
  <registry>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261755" name="throwable" index="RRSow" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
  </registry>
  <node concept="2uRRBC" id="1dOSuFb0JAY">
    <property role="TrG5h" value="ApplicationPlugin" />
    <node concept="2uRRBj" id="1dOSuFb0JB0" role="2uRRBE">
      <node concept="3clFbS" id="1dOSuFb0JB1" role="2VODD2">
        <node concept="3clFbF" id="3QWa2a1DX6L" role="3cqZAp">
          <node concept="2OqwBi" id="3QWa2a1DXnM" role="3clFbG">
            <node concept="10M0yZ" id="3QWa2a1DXi7" role="2Oq$k0">
              <ref role="3cqZAo" to="xkhl:~INodeReferenceSerializer.Companion" resolve="Companion" />
              <ref role="1PxDUh" to="xkhl:~INodeReferenceSerializer" resolve="INodeReferenceSerializer" />
            </node>
            <node concept="liA8E" id="3QWa2a1DXxd" role="2OqNvi">
              <ref role="37wK5l" to="xkhl:~INodeReferenceSerializer$Companion.register(org.modelix.model.lazy.INodeReferenceSerializer)" resolve="register" />
              <node concept="10M0yZ" id="3ofF9dt44Yh" role="37wK5m">
                <ref role="3cqZAo" node="3ofF9dt435K" resolve="INSTANCE" />
                <ref role="1PxDUh" node="3ofF9dt3Y$Y" resolve="MPSNodeReferenceSerializer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4SOqQDg$rv1" role="3cqZAp">
          <node concept="2OqwBi" id="4SOqQDg$rDL" role="3clFbG">
            <node concept="10M0yZ" id="4SOqQDg$ryo" role="2Oq$k0">
              <ref role="1PxDUh" to="xkhl:~IConceptReferenceSerializer" resolve="IConceptReferenceSerializer" />
              <ref role="3cqZAo" to="xkhl:~IConceptReferenceSerializer.Companion" resolve="Companion" />
            </node>
            <node concept="liA8E" id="4SOqQDg$rJm" role="2OqNvi">
              <ref role="37wK5l" to="xkhl:~IConceptReferenceSerializer$Companion.register(org.modelix.model.lazy.IConceptReferenceSerializer)" resolve="register" />
              <node concept="10M0yZ" id="3ofF9dt3X7y" role="37wK5m">
                <ref role="3cqZAo" node="3ofF9dt3WhJ" resolve="INSTANCE" />
                <ref role="1PxDUh" node="3ofF9dt3PXH" resolve="MPSConceptReferenceSerializer" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="2lTt2KMwsxI" role="2uRRBF">
      <node concept="3clFbS" id="2lTt2KMwsxJ" role="2VODD2">
        <node concept="3clFbF" id="1k1g6j0hQXJ" role="3cqZAp">
          <node concept="2OqwBi" id="1k1g6j0hQXK" role="3clFbG">
            <node concept="10M0yZ" id="1k1g6j0hQXL" role="2Oq$k0">
              <ref role="1PxDUh" to="xkhl:~INodeReferenceSerializer" resolve="INodeReferenceSerializer" />
              <ref role="3cqZAo" to="xkhl:~INodeReferenceSerializer.Companion" resolve="Companion" />
            </node>
            <node concept="liA8E" id="1k1g6j0hQXM" role="2OqNvi">
              <ref role="37wK5l" to="xkhl:~INodeReferenceSerializer$Companion.unregister(org.modelix.model.lazy.INodeReferenceSerializer)" resolve="unregister" />
              <node concept="10M0yZ" id="3ofF9dt4560" role="37wK5m">
                <ref role="3cqZAo" node="3ofF9dt435K" resolve="INSTANCE" />
                <ref role="1PxDUh" node="3ofF9dt3Y$Y" resolve="MPSNodeReferenceSerializer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1k1g6j0hQXO" role="3cqZAp">
          <node concept="2OqwBi" id="1k1g6j0hQXP" role="3clFbG">
            <node concept="10M0yZ" id="1k1g6j0hQXQ" role="2Oq$k0">
              <ref role="1PxDUh" to="xkhl:~IConceptReferenceSerializer" resolve="IConceptReferenceSerializer" />
              <ref role="3cqZAo" to="xkhl:~IConceptReferenceSerializer.Companion" resolve="Companion" />
            </node>
            <node concept="liA8E" id="1k1g6j0hQXR" role="2OqNvi">
              <ref role="37wK5l" to="xkhl:~IConceptReferenceSerializer$Companion.unregister(org.modelix.model.lazy.IConceptReferenceSerializer)" resolve="unregister" />
              <node concept="10M0yZ" id="3ofF9dt3Xkl" role="37wK5m">
                <ref role="3cqZAo" node="3ofF9dt3WhJ" resolve="INSTANCE" />
                <ref role="1PxDUh" node="3ofF9dt3PXH" resolve="MPSConceptReferenceSerializer" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2DaZZR" id="1bGUuKxhNJG" />
  <node concept="312cEu" id="3ofF9dt3PXH">
    <property role="TrG5h" value="MPSConceptReferenceSerializer" />
    <node concept="Wx3nA" id="3ofF9dt3WhJ" role="jymVt">
      <property role="TrG5h" value="INSTANCE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3ofF9dt3S_e" role="1tU5fm">
        <ref role="3uigEE" node="3ofF9dt3PXH" resolve="MPSConceptReferenceSerializer" />
      </node>
      <node concept="3Tm1VV" id="3ofF9dt3WsZ" role="1B3o_S" />
      <node concept="2ShNRf" id="3ofF9dt3SJ4" role="33vP2m">
        <node concept="HV5vD" id="3ofF9dt3WcI" role="2ShVmc">
          <ref role="HV5vE" node="3ofF9dt3PXH" resolve="MPSConceptReferenceSerializer" />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2wa1BbcP7u9" role="jymVt">
      <property role="TrG5h" value="PREFIX" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="2wa1BbcP7cg" role="1tU5fm" />
      <node concept="3Tm1VV" id="2wa1BbcP7_B" role="1B3o_S" />
      <node concept="Xl_RD" id="2wa1BbcP7k8" role="33vP2m">
        <property role="Xl_RC" value="mps:" />
      </node>
    </node>
    <node concept="2tJIrI" id="3ofF9dt3Wvp" role="jymVt" />
    <node concept="3clFb_" id="2lTt2KMwubK" role="jymVt">
      <property role="TrG5h" value="serialize" />
      <node concept="3Tm1VV" id="2lTt2KMwubL" role="1B3o_S" />
      <node concept="2AHcQZ" id="2lTt2KMwubM" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="17QB3L" id="2lTt2KMwubN" role="3clF45" />
      <node concept="37vLTG" id="2lTt2KMwubO" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="2lTt2KMwubP" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
        </node>
        <node concept="2AHcQZ" id="2lTt2KMwubQ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2lTt2KMwubR" role="3clF47">
        <node concept="3cpWs8" id="2wa1BbcOZlz" role="3cqZAp">
          <node concept="3cpWsn" id="2wa1BbcOZl$" role="3cpWs9">
            <property role="TrG5h" value="sconcept" />
            <node concept="3uibUv" id="2wa1BbcOZ7u" role="1tU5fm">
              <ref role="3uigEE" to="vxxo:~SAbstractConceptAdapter" resolve="SAbstractConceptAdapter" />
            </node>
            <node concept="1eOMI4" id="2wa1BbcOZl_" role="33vP2m">
              <node concept="10QFUN" id="2wa1BbcOZlA" role="1eOMHV">
                <node concept="2EnYce" id="2wa1BbcOZlB" role="10QFUP">
                  <node concept="0kSF2" id="2wa1BbcOZlC" role="2Oq$k0">
                    <node concept="3uibUv" id="2wa1BbcOZlD" role="0kSFW">
                      <ref role="3uigEE" to="xxte:5gTrVpGjuL2" resolve="SConceptAdapter" />
                    </node>
                    <node concept="37vLTw" id="2wa1BbcOZlE" role="0kSFX">
                      <ref role="3cqZAo" node="2lTt2KMwubO" resolve="concept" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2wa1BbcOZlF" role="2OqNvi">
                    <ref role="37wK5l" to="xxte:5gTrVpGqz6x" resolve="getAdapted" />
                  </node>
                </node>
                <node concept="3uibUv" id="2wa1BbcOZlG" role="10QFUM">
                  <ref role="3uigEE" to="vxxo:~SAbstractConceptAdapter" resolve="SAbstractConceptAdapter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2wa1BbcOYRN" role="3cqZAp">
          <node concept="3clFbS" id="2wa1BbcOYRP" role="3clFbx">
            <node concept="3cpWs6" id="2wa1BbcP17b" role="3cqZAp">
              <node concept="3cpWs3" id="2wa1BbcP17d" role="3cqZAk">
                <node concept="2OqwBi" id="2wa1BbcP3Oq" role="3uHU7w">
                  <node concept="2YIFZM" id="2wa1BbcP3tL" role="2Oq$k0">
                    <ref role="37wK5l" to="e8bb:~MetaIdHelper.getConcept(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="getConcept" />
                    <ref role="1Pybhc" to="e8bb:~MetaIdHelper" resolve="MetaIdHelper" />
                    <node concept="37vLTw" id="2wa1BbcP3zN" role="37wK5m">
                      <ref role="3cqZAo" node="2wa1BbcOZl$" resolve="sconcept" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2wa1BbcP43c" role="2OqNvi">
                    <ref role="37wK5l" to="e8bb:~SConceptId.serialize()" resolve="serialize" />
                  </node>
                </node>
                <node concept="Xl_RD" id="2wa1BbcP17f" role="3uHU7B">
                  <property role="Xl_RC" value="mps:" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2wa1BbcP0i7" role="3clFbw">
            <node concept="10Nm6u" id="2wa1BbcP0nW" role="3uHU7w" />
            <node concept="37vLTw" id="2wa1BbcOZGm" role="3uHU7B">
              <ref role="3cqZAo" node="2wa1BbcOZl$" resolve="sconcept" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2wa1BbcP4u$" role="3cqZAp">
          <node concept="10Nm6u" id="2wa1BbcP4Ao" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2lTt2KMwuc3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2lTt2KMwuc4" role="jymVt" />
    <node concept="3clFb_" id="2lTt2KMwuc5" role="jymVt">
      <property role="TrG5h" value="deserialize" />
      <node concept="3Tm1VV" id="2lTt2KMwuc6" role="1B3o_S" />
      <node concept="2AHcQZ" id="2lTt2KMwuc7" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="2lTt2KMwuc8" role="3clF45">
        <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
      </node>
      <node concept="37vLTG" id="2lTt2KMwuc9" role="3clF46">
        <property role="TrG5h" value="serialized" />
        <node concept="17QB3L" id="2lTt2KMwuca" role="1tU5fm" />
        <node concept="2AHcQZ" id="2lTt2KMwucb" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2lTt2KMwucc" role="3clF47">
        <node concept="3J1_TO" id="2wa1BbcP8VP" role="3cqZAp">
          <node concept="3uVAMA" id="2wa1BbcP8VQ" role="1zxBo5">
            <node concept="XOnhg" id="2wa1BbcP8VR" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="2wa1BbcP8VS" role="1tU5fm">
                <node concept="3uibUv" id="2wa1BbcP8VT" role="nSUat">
                  <ref role="3uigEE" to="2k9e:~FormatException" resolve="FormatException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2wa1BbcP8VU" role="1zc67A">
              <node concept="RRSsy" id="2wa1BbcP8VV" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="3cpWs3" id="2wa1BbcP8VW" role="RRSoy">
                  <node concept="37vLTw" id="2wa1BbcP8VX" role="3uHU7w">
                    <ref role="3cqZAo" node="2lTt2KMwuc9" resolve="serialized" />
                  </node>
                  <node concept="Xl_RD" id="2wa1BbcP8VY" role="3uHU7B">
                    <property role="Xl_RC" value="Failed to deserialize " />
                  </node>
                </node>
                <node concept="37vLTw" id="2wa1BbcP8VZ" role="RRSow">
                  <ref role="3cqZAo" node="2wa1BbcP8VR" resolve="ex" />
                </node>
              </node>
              <node concept="3cpWs6" id="2wa1BbcP8W0" role="3cqZAp">
                <node concept="10Nm6u" id="2wa1BbcP8W1" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2wa1BbcP8W2" role="1zxBo7">
            <node concept="3clFbJ" id="2wa1BbcP4N$" role="3cqZAp">
              <node concept="3clFbS" id="2wa1BbcP4NA" role="3clFbx">
                <node concept="3cpWs8" id="2wa1BbcP8L8" role="3cqZAp">
                  <node concept="3cpWsn" id="2wa1BbcP8L9" role="3cpWs9">
                    <property role="TrG5h" value="sconceptId" />
                    <node concept="3uibUv" id="2wa1BbcP8I8" role="1tU5fm">
                      <ref role="3uigEE" to="e8bb:~SConceptId" resolve="SConceptId" />
                    </node>
                    <node concept="2YIFZM" id="2wa1BbcP8La" role="33vP2m">
                      <ref role="37wK5l" to="e8bb:~SConceptId.deserialize(java.lang.String)" resolve="deserialize" />
                      <ref role="1Pybhc" to="e8bb:~SConceptId" resolve="SConceptId" />
                      <node concept="2OqwBi" id="2wa1BbcP8Lb" role="37wK5m">
                        <node concept="37vLTw" id="2wa1BbcP8Lc" role="2Oq$k0">
                          <ref role="3cqZAo" node="2lTt2KMwuc9" resolve="serialized" />
                        </node>
                        <node concept="liA8E" id="2wa1BbcP8Ld" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                          <node concept="2OqwBi" id="2wa1BbcP8Le" role="37wK5m">
                            <node concept="37vLTw" id="2wa1BbcP8Lf" role="2Oq$k0">
                              <ref role="3cqZAo" node="2wa1BbcP7u9" resolve="PREFIX" />
                            </node>
                            <node concept="liA8E" id="2wa1BbcP8Lg" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="6s8HYq3nfHQ" role="3cqZAp">
                  <node concept="3cpWsn" id="6s8HYq3nfHR" role="3cpWs9">
                    <property role="TrG5h" value="conceptDescriptor" />
                    <node concept="3uibUv" id="6s8HYq3nfHS" role="1tU5fm">
                      <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
                    </node>
                    <node concept="2OqwBi" id="6s8HYq3nfHT" role="33vP2m">
                      <node concept="2YIFZM" id="6s8HYq3nfHU" role="2Oq$k0">
                        <ref role="37wK5l" to="vndm:~ConceptRegistry.getInstance()" resolve="getInstance" />
                        <ref role="1Pybhc" to="vndm:~ConceptRegistry" resolve="ConceptRegistry" />
                      </node>
                      <node concept="liA8E" id="6s8HYq3nfHV" role="2OqNvi">
                        <ref role="37wK5l" to="vndm:~ConceptRegistry.getConceptDescriptor(jetbrains.mps.smodel.adapter.ids.SConceptId)" resolve="getConceptDescriptor" />
                        <node concept="37vLTw" id="6s8HYq3nn$S" role="37wK5m">
                          <ref role="3cqZAo" node="2wa1BbcP8L9" resolve="sconceptId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6s8HYq3nfHX" role="3cqZAp">
                  <node concept="3clFbS" id="6s8HYq3nfHY" role="3clFbx">
                    <node concept="3cpWs6" id="6s8HYq3nfHZ" role="3cqZAp">
                      <node concept="10Nm6u" id="6s8HYq3nfI0" role="3cqZAk" />
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="6s8HYq3nfI1" role="3clFbw">
                    <node concept="3uibUv" id="6s8HYq3nfI2" role="2ZW6by">
                      <ref role="3uigEE" to="ista:~IllegalConceptDescriptor" resolve="IllegalConceptDescriptor" />
                    </node>
                    <node concept="37vLTw" id="6s8HYq3nfI3" role="2ZW6bz">
                      <ref role="3cqZAo" node="6s8HYq3nfHR" resolve="conceptDescriptor" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6s8HYq3nfI4" role="3cqZAp">
                  <node concept="2YIFZM" id="2wa1BbcPcxY" role="3cqZAk">
                    <ref role="37wK5l" to="xxte:3ECE8iPOmg5" resolve="wrap" />
                    <ref role="1Pybhc" to="xxte:5gTrVpGjuL2" resolve="SConceptAdapter" />
                    <node concept="2YIFZM" id="6s8HYq3nfI6" role="37wK5m">
                      <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getAbstractConcept(jetbrains.mps.smodel.runtime.ConceptDescriptor)" resolve="getAbstractConcept" />
                      <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                      <node concept="37vLTw" id="6s8HYq3nfI7" role="37wK5m">
                        <ref role="3cqZAo" node="6s8HYq3nfHR" resolve="conceptDescriptor" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2wa1BbcP5ke" role="3clFbw">
                <node concept="37vLTw" id="2wa1BbcP4U1" role="2Oq$k0">
                  <ref role="3cqZAo" node="2lTt2KMwuc9" resolve="serialized" />
                </node>
                <node concept="liA8E" id="2wa1BbcP5Kf" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                  <node concept="37vLTw" id="2wa1BbcP7J5" role="37wK5m">
                    <ref role="3cqZAo" node="2wa1BbcP7u9" resolve="PREFIX" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2lTt2KMwucd" role="3cqZAp">
          <node concept="3uVAMA" id="2lTt2KMwuce" role="1zxBo5">
            <node concept="XOnhg" id="2lTt2KMwucf" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="2lTt2KMwucg" role="1tU5fm">
                <node concept="3uibUv" id="2lTt2KMwuch" role="nSUat">
                  <ref role="3uigEE" to="2k9e:~FormatException" resolve="FormatException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2lTt2KMwuci" role="1zc67A">
              <node concept="RRSsy" id="2lTt2KMwucj" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="3cpWs3" id="2lTt2KMwuck" role="RRSoy">
                  <node concept="37vLTw" id="2lTt2KMwucl" role="3uHU7w">
                    <ref role="3cqZAo" node="2lTt2KMwuc9" resolve="serialized" />
                  </node>
                  <node concept="Xl_RD" id="2lTt2KMwucm" role="3uHU7B">
                    <property role="Xl_RC" value="Failed to deserialize " />
                  </node>
                </node>
                <node concept="37vLTw" id="2lTt2KMwucn" role="RRSow">
                  <ref role="3cqZAo" node="2lTt2KMwucf" resolve="ex" />
                </node>
              </node>
              <node concept="3cpWs6" id="2lTt2KMwuco" role="3cqZAp">
                <node concept="10Nm6u" id="2lTt2KMwucp" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2lTt2KMwucq" role="1zxBo7">
            <node concept="3clFbJ" id="2wa1BbcPcZ6" role="3cqZAp">
              <property role="TyiWK" value="true" />
              <node concept="3clFbS" id="2wa1BbcPcZ8" role="3clFbx">
                <node concept="3cpWs6" id="2lTt2KMwucr" role="3cqZAp">
                  <node concept="2YIFZM" id="3ofF9dt3Qfy" role="3cqZAk">
                    <ref role="1Pybhc" to="xxte:5gTrVpGjuL2" resolve="SConceptAdapter" />
                    <ref role="37wK5l" to="xxte:3ECE8iPOmg5" resolve="wrap" />
                    <node concept="2YIFZM" id="3ofF9dt3Qfz" role="37wK5m">
                      <ref role="1Pybhc" to="vxxo:~SAbstractConceptAdapter" resolve="SAbstractConceptAdapter" />
                      <ref role="37wK5l" to="vxxo:~SAbstractConceptAdapter.deserialize(java.lang.String)" resolve="deserialize" />
                      <node concept="37vLTw" id="3ofF9dt3Qf$" role="37wK5m">
                        <ref role="3cqZAo" node="2lTt2KMwuc9" resolve="serialized" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="22lmx$" id="2wa1BbcPdZX" role="3clFbw">
                <node concept="2OqwBi" id="2wa1BbcPei8" role="3uHU7w">
                  <node concept="37vLTw" id="2wa1BbcPe7S" role="2Oq$k0">
                    <ref role="3cqZAo" node="2lTt2KMwuc9" resolve="serialized" />
                  </node>
                  <node concept="liA8E" id="2wa1BbcPeG2" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                    <node concept="Xl_RD" id="2wa1BbcPeKP" role="37wK5m">
                      <property role="Xl_RC" value="i:" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="2wa1BbcPdj4" role="3uHU7B">
                  <node concept="37vLTw" id="2wa1BbcPd8a" role="2Oq$k0">
                    <ref role="3cqZAo" node="2lTt2KMwuc9" resolve="serialized" />
                  </node>
                  <node concept="liA8E" id="2wa1BbcPdy_" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                    <node concept="Xl_RD" id="2wa1BbcPd_m" role="37wK5m">
                      <property role="Xl_RC" value="c:" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2wa1BbcPfzS" role="3cqZAp">
          <node concept="10Nm6u" id="2wa1BbcPfDw" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2lTt2KMwucv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3ofF9dt3PYf" role="jymVt" />
    <node concept="3Tm1VV" id="3ofF9dt3PXI" role="1B3o_S" />
    <node concept="3uibUv" id="54cOQ7UPTgL" role="EKbjA">
      <ref role="3uigEE" to="xkhl:~IConceptReferenceSerializer" resolve="IConceptReferenceSerializer" />
    </node>
  </node>
  <node concept="312cEu" id="3ofF9dt3Y$Y">
    <property role="TrG5h" value="MPSNodeReferenceSerializer" />
    <node concept="2tJIrI" id="3ofF9dt40Ch" role="jymVt" />
    <node concept="Wx3nA" id="3ofF9dt435K" role="jymVt">
      <property role="TrG5h" value="INSTANCE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3ofF9dt43hd" role="1tU5fm">
        <ref role="3uigEE" node="3ofF9dt3Y$Y" resolve="MPSNodeReferenceSerializer" />
      </node>
      <node concept="3Tm1VV" id="3ofF9dt435M" role="1B3o_S" />
      <node concept="2ShNRf" id="3ofF9dt435N" role="33vP2m">
        <node concept="HV5vD" id="3ofF9dt435O" role="2ShVmc">
          <ref role="HV5vE" node="3ofF9dt3Y$Y" resolve="MPSNodeReferenceSerializer" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3ofF9dt40NK" role="jymVt" />
    <node concept="3clFb_" id="2lTt2KMwrwY" role="jymVt">
      <property role="TrG5h" value="serialize" />
      <node concept="3Tm1VV" id="2lTt2KMwrwZ" role="1B3o_S" />
      <node concept="2AHcQZ" id="2lTt2KMwrx0" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="17QB3L" id="2lTt2KMwrx1" role="3clF45" />
      <node concept="37vLTG" id="2lTt2KMwrx2" role="3clF46">
        <property role="TrG5h" value="ref" />
        <node concept="3uibUv" id="2lTt2KMwrx3" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
        </node>
        <node concept="2AHcQZ" id="2lTt2KMwrx4" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2lTt2KMwrx5" role="3clF47">
        <node concept="3clFbJ" id="2lTt2KMwrx6" role="3cqZAp">
          <node concept="3clFbS" id="2lTt2KMwrx7" role="3clFbx">
            <node concept="3cpWs6" id="2lTt2KMwrx8" role="3cqZAp">
              <node concept="2YIFZM" id="2lTt2KMwrx9" role="3cqZAk">
                <ref role="37wK5l" to="w1kc:~SNodePointer.serialize(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="serialize" />
                <ref role="1Pybhc" to="w1kc:~SNodePointer" resolve="SNodePointer" />
                <node concept="2OqwBi" id="2lTt2KMwrxa" role="37wK5m">
                  <node concept="1eOMI4" id="2lTt2KMwrxb" role="2Oq$k0">
                    <node concept="10QFUN" id="2lTt2KMwrxc" role="1eOMHV">
                      <node concept="3uibUv" id="2lTt2KMwrxd" role="10QFUM">
                        <ref role="3uigEE" to="xxte:5gTrVpGyZdS" resolve="SNodeReferenceAdapter" />
                      </node>
                      <node concept="37vLTw" id="2lTt2KMwrxe" role="10QFUP">
                        <ref role="3cqZAo" node="2lTt2KMwrx2" resolve="ref" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3ofF9dt42AZ" role="2OqNvi">
                    <ref role="37wK5l" to="xxte:QurUgiyYyg" resolve="getReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="2lTt2KMwrxg" role="3clFbw">
            <node concept="3uibUv" id="2lTt2KMwrxh" role="2ZW6by">
              <ref role="3uigEE" to="xxte:5gTrVpGyZdS" resolve="SNodeReferenceAdapter" />
            </node>
            <node concept="37vLTw" id="2lTt2KMwrxi" role="2ZW6bz">
              <ref role="3cqZAo" node="2lTt2KMwrx2" resolve="ref" />
            </node>
          </node>
          <node concept="9aQIb" id="2lTt2KMwrxj" role="9aQIa">
            <node concept="3clFbS" id="2lTt2KMwrxk" role="9aQI4">
              <node concept="3cpWs6" id="2lTt2KMwrxl" role="3cqZAp">
                <node concept="10Nm6u" id="2lTt2KMwrxm" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2lTt2KMwrxn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2lTt2KMwrxo" role="jymVt" />
    <node concept="3clFb_" id="2lTt2KMwrxp" role="jymVt">
      <property role="TrG5h" value="deserialize" />
      <node concept="3Tm1VV" id="2lTt2KMwrxq" role="1B3o_S" />
      <node concept="2AHcQZ" id="2lTt2KMwrxr" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="2lTt2KMwrxs" role="3clF45">
        <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
      </node>
      <node concept="37vLTG" id="2lTt2KMwrxt" role="3clF46">
        <property role="TrG5h" value="serialized" />
        <node concept="17QB3L" id="2lTt2KMwrxu" role="1tU5fm" />
        <node concept="2AHcQZ" id="2lTt2KMwrxv" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2lTt2KMwrxw" role="3clF47">
        <node concept="3J1_TO" id="2lTt2KMwrxx" role="3cqZAp">
          <node concept="3uVAMA" id="2lTt2KMwrxy" role="1zxBo5">
            <node concept="XOnhg" id="2lTt2KMwrxz" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="2lTt2KMwrx$" role="1tU5fm">
                <node concept="3uibUv" id="2lTt2KMwrx_" role="nSUat">
                  <ref role="3uigEE" to="2k9e:~FormatException" resolve="FormatException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2lTt2KMwrxA" role="1zc67A">
              <node concept="RRSsy" id="2lTt2KMwrxB" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="3cpWs3" id="2lTt2KMwrxC" role="RRSoy">
                  <node concept="37vLTw" id="2lTt2KMwrxD" role="3uHU7w">
                    <ref role="3cqZAo" node="2lTt2KMwrxt" resolve="serialized" />
                  </node>
                  <node concept="Xl_RD" id="2lTt2KMwrxE" role="3uHU7B">
                    <property role="Xl_RC" value="Failed to deserialize " />
                  </node>
                </node>
                <node concept="37vLTw" id="2lTt2KMwrxF" role="RRSow">
                  <ref role="3cqZAo" node="2lTt2KMwrxz" resolve="ex" />
                </node>
              </node>
              <node concept="3cpWs6" id="2lTt2KMwrxG" role="3cqZAp">
                <node concept="10Nm6u" id="2lTt2KMwrxH" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="7AjmLChXOyy" role="1zxBo5">
            <node concept="XOnhg" id="7AjmLChXOyz" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="7AjmLChXOy$" role="1tU5fm">
                <node concept="3uibUv" id="7AjmLChY200" role="nSUat">
                  <ref role="3uigEE" to="dush:~PersistenceFacade$IncorrectNodeIdFormatException" resolve="PersistenceFacade.IncorrectNodeIdFormatException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7AjmLChXOyA" role="1zc67A">
              <node concept="1X3_iC" id="1l8LMIRVIkk" role="lGtFl">
                <property role="3V$3am" value="statement" />
                <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                <node concept="RRSsy" id="7AjmLChXOyB" role="8Wnug">
                  <property role="RRSoG" value="gZ5fh_4/error" />
                  <node concept="3cpWs3" id="7AjmLChXOyC" role="RRSoy">
                    <node concept="37vLTw" id="7AjmLChXOyD" role="3uHU7w">
                      <ref role="3cqZAo" node="2lTt2KMwrxt" resolve="serialized" />
                    </node>
                    <node concept="Xl_RD" id="7AjmLChXOyE" role="3uHU7B">
                      <property role="Xl_RC" value="Failed to deserialize " />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7AjmLChXOyF" role="RRSow">
                    <ref role="3cqZAo" node="7AjmLChXOyz" resolve="ex" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="7AjmLChXOyG" role="3cqZAp">
                <node concept="10Nm6u" id="7AjmLChXOyH" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="7AjmLChY_OJ" role="1zxBo5">
            <node concept="XOnhg" id="7AjmLChY_OK" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="7AjmLChY_OL" role="1tU5fm">
                <node concept="3uibUv" id="7AjmLChYArJ" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7AjmLChY_OM" role="1zc67A">
              <node concept="RRSsy" id="7AjmLChYAzC" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="3cpWs3" id="7AjmLChYAzD" role="RRSoy">
                  <node concept="37vLTw" id="7AjmLChYAzE" role="3uHU7w">
                    <ref role="3cqZAo" node="2lTt2KMwrxt" resolve="serialized" />
                  </node>
                  <node concept="Xl_RD" id="7AjmLChYAzF" role="3uHU7B">
                    <property role="Xl_RC" value="Failed to deserialize " />
                  </node>
                </node>
                <node concept="37vLTw" id="7AjmLChYB3c" role="RRSow">
                  <ref role="3cqZAo" node="7AjmLChY_OK" resolve="ex" />
                </node>
              </node>
              <node concept="3cpWs6" id="7AjmLChYAzH" role="3cqZAp">
                <node concept="10Nm6u" id="7AjmLChYD8N" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2lTt2KMwrxI" role="1zxBo7">
            <node concept="3cpWs6" id="2lTt2KMwrxJ" role="3cqZAp">
              <node concept="2ShNRf" id="2lTt2KMwrxK" role="3cqZAk">
                <node concept="1pGfFk" id="2lTt2KMwrxL" role="2ShVmc">
                  <ref role="37wK5l" to="xxte:5gTrVpGz3n8" resolve="SNodeReferenceAdapter" />
                  <node concept="2YIFZM" id="2lTt2KMwrxM" role="37wK5m">
                    <ref role="1Pybhc" to="w1kc:~SNodePointer" resolve="SNodePointer" />
                    <ref role="37wK5l" to="w1kc:~SNodePointer.deserialize(java.lang.String)" resolve="deserialize" />
                    <node concept="37vLTw" id="2lTt2KMwrxN" role="37wK5m">
                      <ref role="3cqZAo" node="2lTt2KMwrxt" resolve="serialized" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2lTt2KMwrxO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3ofF9dt3YAD" role="jymVt" />
    <node concept="3Tm1VV" id="3ofF9dt3Y$Z" role="1B3o_S" />
    <node concept="3uibUv" id="3ofF9dt3YAo" role="EKbjA">
      <ref role="3uigEE" to="xkhl:~INodeReferenceSerializer" resolve="INodeReferenceSerializer" />
    </node>
  </node>
</model>

