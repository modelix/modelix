<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e0ebb201-ffb5-414c-a096-5b55f0486d38(org.modelix.model.server.mpsplugin.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="rdww" ref="d5d0bab3-0d1d-4161-b322-a85b0528a69a/java:org.modelix.model.server.light(org.modelix.model.server.mpsplugin/)" />
    <import index="xxte" ref="r:a79f28f8-6055-40c6-bc5e-47a42a3b97e8(org.modelix.model.mpsadapters.mps)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="slod" ref="r:0fac2319-607e-4342-a163-7b982bbd957e(com.mbeddr.mpsutil.modellisteners.runtime)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="cmfw" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.event(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="jks5" ref="cc99dce1-49f3-4392-8dbf-e22ca47bd0af/java:org.modelix.model.api(org.modelix.model.api/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="nvd4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.repository(MPS.OpenAPI/)" />
    <import index="jh6v" ref="r:f2f39a18-fd23-4090-b7f2-ba8da340eec2(org.modelix.model.repositoryconcepts.structure)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="y8s3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.structure.project(MPS.Core/)" />
  </imports>
  <registry>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
        <child id="481983775135178844" name="fieldDeclaration" index="2uRRBG" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1178893518978" name="jetbrains.mps.baseLanguage.structure.ThisConstructorInvocation" flags="nn" index="1VxSAg" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261755" name="throwable" index="RRSow" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="2644386474302386080" name="jetbrains.mps.lang.smodel.structure.PropertyIdRefExpression" flags="nn" index="355D3s">
        <reference id="2644386474302386081" name="conceptDeclaration" index="355D3t" />
        <reference id="2644386474302386082" name="propertyDeclaration" index="355D3u" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="4611582986551314327" name="jetbrains.mps.baseLanguage.collections.structure.OfTypeOperation" flags="nn" index="UnYns">
        <child id="4611582986551314344" name="requestedType" index="UnYnz" />
      </concept>
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="2uRRBC" id="7VLV6fKtcVb">
    <property role="TrG5h" value="ApplicationPlugin" />
    <node concept="2BZ0e9" id="7VLV6fKCk6O" role="2uRRBG">
      <property role="TrG5h" value="server" />
      <node concept="3Tm6S6" id="7VLV6fKCk6P" role="1B3o_S" />
      <node concept="3uibUv" id="7VLV6fKCkdk" role="1tU5fm">
        <ref role="3uigEE" node="3Y5tAPnfjvI" resolve="MPSLightModelServer" />
      </node>
    </node>
    <node concept="2uRRBj" id="7VLV6fKzt_9" role="2uRRBE">
      <node concept="3clFbS" id="7VLV6fKzt_a" role="2VODD2">
        <node concept="3J1_TO" id="6U2HndrTcQF" role="3cqZAp">
          <node concept="3uVAMA" id="6U2HndrTd7z" role="1zxBo5">
            <node concept="XOnhg" id="6U2HndrTd7$" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="6U2HndrTd7_" role="1tU5fm">
                <node concept="3uibUv" id="6U2HndrTdgG" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="6U2HndrTd7A" role="1zc67A">
              <node concept="RRSsy" id="6U2HndrTiJN" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="6U2HndrTiJP" role="RRSoy">
                  <property role="Xl_RC" value="light model server failed to start" />
                </node>
                <node concept="37vLTw" id="6U2HndrTlbA" role="RRSow">
                  <ref role="3cqZAo" node="6U2HndrTd7$" resolve="ex" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6U2HndrTcQH" role="1zxBo7">
            <node concept="3clFbF" id="7VLV6fKCkd_" role="3cqZAp">
              <node concept="37vLTI" id="7VLV6fKCkdB" role="3clFbG">
                <node concept="2ShNRf" id="3Y5tAPnfUtv" role="37vLTx">
                  <node concept="1pGfFk" id="3Y5tAPnfUs7" role="2ShVmc">
                    <ref role="37wK5l" node="3Y5tAPnfGJp" resolve="MPSLightModelServer" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7VLV6fKCkq$" role="37vLTJ">
                  <node concept="2WthIp" id="7VLV6fKCkqB" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="7VLV6fKCkqD" role="2OqNvi">
                    <ref role="2WH_rO" node="7VLV6fKCk6O" resolve="server" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7VLV6fKztCC" role="3cqZAp">
              <node concept="2OqwBi" id="7VLV6fKCiZk" role="3clFbG">
                <node concept="2OqwBi" id="7VLV6fKCkxs" role="2Oq$k0">
                  <node concept="2WthIp" id="7VLV6fKCkxv" role="2Oq$k0" />
                  <node concept="2BZ7hE" id="7VLV6fKCkxx" role="2OqNvi">
                    <ref role="2WH_rO" node="7VLV6fKCk6O" resolve="server" />
                  </node>
                </node>
                <node concept="liA8E" id="7VLV6fKCjWp" role="2OqNvi">
                  <ref role="37wK5l" node="3Y5tAPnfyMg" resolve="start" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="7VLV6fKCjWZ" role="2uRRBF">
      <node concept="3clFbS" id="7VLV6fKCjX0" role="2VODD2">
        <node concept="3clFbF" id="7VLV6fKCk$M" role="3cqZAp">
          <node concept="2OqwBi" id="7VLV6fKCkND" role="3clFbG">
            <node concept="2OqwBi" id="7VLV6fKCk$G" role="2Oq$k0">
              <node concept="2WthIp" id="7VLV6fKCk$J" role="2Oq$k0" />
              <node concept="2BZ7hE" id="7VLV6fKCk$L" role="2OqNvi">
                <ref role="2WH_rO" node="7VLV6fKCk6O" resolve="server" />
              </node>
            </node>
            <node concept="liA8E" id="7VLV6fKCkTI" role="2OqNvi">
              <ref role="37wK5l" node="3Y5tAPnf_nH" resolve="stop" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2DaZZR" id="7VLV6fKtcVc" />
  <node concept="312cEu" id="3Y5tAPnfjvI">
    <property role="TrG5h" value="MPSLightModelServer" />
    <node concept="312cEg" id="3Y5tAPnfJ6P" role="jymVt">
      <property role="TrG5h" value="repository" />
      <node concept="3Tm6S6" id="3Y5tAPnfJ6Q" role="1B3o_S" />
      <node concept="3uibUv" id="3Y5tAPnfJuV" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
    </node>
    <node concept="312cEg" id="3Y5tAPnfkFU" role="jymVt">
      <property role="TrG5h" value="server" />
      <node concept="3Tm6S6" id="3Y5tAPnfkFV" role="1B3o_S" />
      <node concept="3uibUv" id="3Y5tAPnfkWy" role="1tU5fm">
        <ref role="3uigEE" to="rdww:~LightModelServer" resolve="LightModelServer" />
      </node>
    </node>
    <node concept="312cEg" id="3Y5tAPnfO1V" role="jymVt">
      <property role="TrG5h" value="nodeChangeListener" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3Y5tAPnfO1W" role="1B3o_S" />
      <node concept="3uibUv" id="3Y5tAPnfO1Y" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNodeChangeListener" resolve="SNodeChangeListener" />
      </node>
      <node concept="2ShNRf" id="3Y5tAPnfO1Z" role="33vP2m">
        <node concept="YeOm9" id="3Y5tAPnfO20" role="2ShVmc">
          <node concept="1Y3b0j" id="3Y5tAPnfO21" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="mhbf:~SNodeChangeListener" resolve="SNodeChangeListener" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3clFb_" id="3Y5tAPnfO22" role="jymVt">
              <property role="TrG5h" value="notifyChange" />
              <node concept="37vLTG" id="3Y5tAPnfO23" role="3clF46">
                <property role="TrG5h" value="node" />
                <node concept="3uibUv" id="3Y5tAPnfO24" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="2AHcQZ" id="3Y5tAPnfO25" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                </node>
              </node>
              <node concept="3cqZAl" id="3Y5tAPnfO26" role="3clF45" />
              <node concept="3Tm1VV" id="3Y5tAPnfO27" role="1B3o_S" />
              <node concept="3clFbS" id="3Y5tAPnfO28" role="3clF47">
                <node concept="3clFbJ" id="3Y5tAPnfO29" role="3cqZAp">
                  <node concept="3clFbC" id="3Y5tAPnfO2a" role="3clFbw">
                    <node concept="10Nm6u" id="3Y5tAPnfO2b" role="3uHU7w" />
                    <node concept="37vLTw" id="3Y5tAPnfO2c" role="3uHU7B">
                      <ref role="3cqZAo" node="3Y5tAPnfO23" resolve="node" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="3Y5tAPnfO2d" role="3clFbx">
                    <node concept="3cpWs6" id="3Y5tAPnfO2e" role="3cqZAp" />
                  </node>
                </node>
                <node concept="3clFbF" id="3Y5tAPnfO2f" role="3cqZAp">
                  <node concept="2OqwBi" id="3Y5tAPnfO2g" role="3clFbG">
                    <node concept="37vLTw" id="3Y5tAPnfPbA" role="2Oq$k0">
                      <ref role="3cqZAo" node="3Y5tAPnfkFU" resolve="server" />
                    </node>
                    <node concept="liA8E" id="3Y5tAPnfO2k" role="2OqNvi">
                      <ref role="37wK5l" to="rdww:~LightModelServer.nodeChanged(org.modelix.model.api.INode)" resolve="nodeChanged" />
                      <node concept="2YIFZM" id="3Y5tAPnfO2l" role="37wK5m">
                        <ref role="1Pybhc" to="xxte:5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                        <ref role="37wK5l" to="xxte:5gTrVpGyMwR" resolve="wrap" />
                        <node concept="37vLTw" id="3Y5tAPnfO2m" role="37wK5m">
                          <ref role="3cqZAo" node="3Y5tAPnfO23" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3Tm1VV" id="3Y5tAPnfO2n" role="1B3o_S" />
            <node concept="3clFb_" id="3Y5tAPnfO2o" role="jymVt">
              <property role="TrG5h" value="propertyChanged" />
              <node concept="3Tm1VV" id="3Y5tAPnfO2p" role="1B3o_S" />
              <node concept="3cqZAl" id="3Y5tAPnfO2q" role="3clF45" />
              <node concept="37vLTG" id="3Y5tAPnfO2r" role="3clF46">
                <property role="TrG5h" value="e" />
                <node concept="3uibUv" id="3Y5tAPnfO2s" role="1tU5fm">
                  <ref role="3uigEE" to="cmfw:~SPropertyChangeEvent" resolve="SPropertyChangeEvent" />
                </node>
                <node concept="2AHcQZ" id="3Y5tAPnfO2t" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="3Y5tAPnfO2u" role="3clF47">
                <node concept="3J1_TO" id="3Y5tAPnfO2v" role="3cqZAp">
                  <node concept="3uVAMA" id="3Y5tAPnfO2w" role="1zxBo5">
                    <node concept="XOnhg" id="3Y5tAPnfO2x" role="1zc67B">
                      <property role="TrG5h" value="ex" />
                      <node concept="nSUau" id="3Y5tAPnfO2y" role="1tU5fm">
                        <node concept="3uibUv" id="3Y5tAPnfO2z" role="nSUat">
                          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="3Y5tAPnfO2$" role="1zc67A">
                      <node concept="RRSsy" id="3Y5tAPnfO2_" role="3cqZAp">
                        <property role="RRSoG" value="gZ5fh_4/error" />
                        <node concept="Xl_RD" id="3Y5tAPnfO2A" role="RRSoy" />
                        <node concept="37vLTw" id="3Y5tAPnfO2B" role="RRSow">
                          <ref role="3cqZAo" node="3Y5tAPnfO2x" resolve="ex" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="3Y5tAPnfO2C" role="1zxBo7">
                    <node concept="3clFbF" id="3Y5tAPnfO2D" role="3cqZAp">
                      <node concept="1rXfSq" id="3Y5tAPnfO2E" role="3clFbG">
                        <ref role="37wK5l" node="3Y5tAPnfO22" resolve="notifyChange" />
                        <node concept="2OqwBi" id="3Y5tAPnfO2F" role="37wK5m">
                          <node concept="37vLTw" id="3Y5tAPnfO2G" role="2Oq$k0">
                            <ref role="3cqZAo" node="3Y5tAPnfO2r" resolve="e" />
                          </node>
                          <node concept="liA8E" id="3Y5tAPnfO2H" role="2OqNvi">
                            <ref role="37wK5l" to="cmfw:~SPropertyChangeEvent.getNode()" resolve="getNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3Y5tAPnfO2I" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="3Y5tAPnfO2J" role="jymVt" />
            <node concept="3clFb_" id="3Y5tAPnfO2K" role="jymVt">
              <property role="TrG5h" value="referenceChanged" />
              <node concept="3Tm1VV" id="3Y5tAPnfO2L" role="1B3o_S" />
              <node concept="3cqZAl" id="3Y5tAPnfO2M" role="3clF45" />
              <node concept="37vLTG" id="3Y5tAPnfO2N" role="3clF46">
                <property role="TrG5h" value="e" />
                <node concept="3uibUv" id="3Y5tAPnfO2O" role="1tU5fm">
                  <ref role="3uigEE" to="cmfw:~SReferenceChangeEvent" resolve="SReferenceChangeEvent" />
                </node>
                <node concept="2AHcQZ" id="3Y5tAPnfO2P" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="3Y5tAPnfO2Q" role="3clF47">
                <node concept="3J1_TO" id="3Y5tAPnfO2R" role="3cqZAp">
                  <node concept="3uVAMA" id="3Y5tAPnfO2S" role="1zxBo5">
                    <node concept="XOnhg" id="3Y5tAPnfO2T" role="1zc67B">
                      <property role="TrG5h" value="ex" />
                      <node concept="nSUau" id="3Y5tAPnfO2U" role="1tU5fm">
                        <node concept="3uibUv" id="3Y5tAPnfO2V" role="nSUat">
                          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="3Y5tAPnfO2W" role="1zc67A">
                      <node concept="RRSsy" id="3Y5tAPnfO2X" role="3cqZAp">
                        <property role="RRSoG" value="gZ5fh_4/error" />
                        <node concept="Xl_RD" id="3Y5tAPnfO2Y" role="RRSoy" />
                        <node concept="37vLTw" id="3Y5tAPnfO2Z" role="RRSow">
                          <ref role="3cqZAo" node="3Y5tAPnfO2T" resolve="ex" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="3Y5tAPnfO30" role="1zxBo7">
                    <node concept="3clFbF" id="3Y5tAPnfO31" role="3cqZAp">
                      <node concept="1rXfSq" id="3Y5tAPnfO32" role="3clFbG">
                        <ref role="37wK5l" node="3Y5tAPnfO22" resolve="notifyChange" />
                        <node concept="2OqwBi" id="3Y5tAPnfO33" role="37wK5m">
                          <node concept="37vLTw" id="3Y5tAPnfO34" role="2Oq$k0">
                            <ref role="3cqZAo" node="3Y5tAPnfO2N" resolve="e" />
                          </node>
                          <node concept="liA8E" id="3Y5tAPnfO35" role="2OqNvi">
                            <ref role="37wK5l" to="cmfw:~SReferenceChangeEvent.getNode()" resolve="getNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3Y5tAPnfO36" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="3Y5tAPnfO37" role="jymVt" />
            <node concept="3clFb_" id="3Y5tAPnfO38" role="jymVt">
              <property role="TrG5h" value="nodeAdded" />
              <node concept="3Tm1VV" id="3Y5tAPnfO39" role="1B3o_S" />
              <node concept="3cqZAl" id="3Y5tAPnfO3a" role="3clF45" />
              <node concept="37vLTG" id="3Y5tAPnfO3b" role="3clF46">
                <property role="TrG5h" value="e" />
                <node concept="3uibUv" id="3Y5tAPnfO3c" role="1tU5fm">
                  <ref role="3uigEE" to="cmfw:~SNodeAddEvent" resolve="SNodeAddEvent" />
                </node>
                <node concept="2AHcQZ" id="3Y5tAPnfO3d" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="3Y5tAPnfO3e" role="3clF47">
                <node concept="3J1_TO" id="3Y5tAPnfO3f" role="3cqZAp">
                  <node concept="3uVAMA" id="3Y5tAPnfO3g" role="1zxBo5">
                    <node concept="XOnhg" id="3Y5tAPnfO3h" role="1zc67B">
                      <property role="TrG5h" value="ex" />
                      <node concept="nSUau" id="3Y5tAPnfO3i" role="1tU5fm">
                        <node concept="3uibUv" id="3Y5tAPnfO3j" role="nSUat">
                          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="3Y5tAPnfO3k" role="1zc67A">
                      <node concept="RRSsy" id="3Y5tAPnfO3l" role="3cqZAp">
                        <property role="RRSoG" value="gZ5fh_4/error" />
                        <node concept="Xl_RD" id="3Y5tAPnfO3m" role="RRSoy" />
                        <node concept="37vLTw" id="3Y5tAPnfO3n" role="RRSow">
                          <ref role="3cqZAo" node="3Y5tAPnfO3h" resolve="ex" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="3Y5tAPnfO3o" role="1zxBo7">
                    <node concept="3clFbF" id="3Y5tAPnfO3p" role="3cqZAp">
                      <node concept="1rXfSq" id="3Y5tAPnfO3q" role="3clFbG">
                        <ref role="37wK5l" node="3Y5tAPnfO22" resolve="notifyChange" />
                        <node concept="2OqwBi" id="3Y5tAPnfO3r" role="37wK5m">
                          <node concept="37vLTw" id="3Y5tAPnfO3s" role="2Oq$k0">
                            <ref role="3cqZAo" node="3Y5tAPnfO3b" resolve="e" />
                          </node>
                          <node concept="liA8E" id="3Y5tAPnfO3t" role="2OqNvi">
                            <ref role="37wK5l" to="cmfw:~SNodeAddEvent.getParent()" resolve="getParent" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3Y5tAPnfO3u" role="3cqZAp">
                      <node concept="1rXfSq" id="3Y5tAPnfO3v" role="3clFbG">
                        <ref role="37wK5l" node="3Y5tAPnfO22" resolve="notifyChange" />
                        <node concept="2OqwBi" id="3Y5tAPnfO3w" role="37wK5m">
                          <node concept="37vLTw" id="3Y5tAPnfO3x" role="2Oq$k0">
                            <ref role="3cqZAo" node="3Y5tAPnfO3b" resolve="e" />
                          </node>
                          <node concept="liA8E" id="3Y5tAPnfO3y" role="2OqNvi">
                            <ref role="37wK5l" to="cmfw:~SNodeAddEvent.getChild()" resolve="getChild" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3Y5tAPnfO3z" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="3Y5tAPnfO3$" role="jymVt" />
            <node concept="3clFb_" id="3Y5tAPnfO3_" role="jymVt">
              <property role="TrG5h" value="nodeRemoved" />
              <node concept="3Tm1VV" id="3Y5tAPnfO3A" role="1B3o_S" />
              <node concept="3cqZAl" id="3Y5tAPnfO3B" role="3clF45" />
              <node concept="37vLTG" id="3Y5tAPnfO3C" role="3clF46">
                <property role="TrG5h" value="e" />
                <node concept="3uibUv" id="3Y5tAPnfO3D" role="1tU5fm">
                  <ref role="3uigEE" to="cmfw:~SNodeRemoveEvent" resolve="SNodeRemoveEvent" />
                </node>
                <node concept="2AHcQZ" id="3Y5tAPnfO3E" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="3Y5tAPnfO3F" role="3clF47">
                <node concept="3J1_TO" id="3Y5tAPnfO3G" role="3cqZAp">
                  <node concept="3uVAMA" id="3Y5tAPnfO3H" role="1zxBo5">
                    <node concept="XOnhg" id="3Y5tAPnfO3I" role="1zc67B">
                      <property role="TrG5h" value="ex" />
                      <node concept="nSUau" id="3Y5tAPnfO3J" role="1tU5fm">
                        <node concept="3uibUv" id="3Y5tAPnfO3K" role="nSUat">
                          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="3Y5tAPnfO3L" role="1zc67A">
                      <node concept="RRSsy" id="3Y5tAPnfO3M" role="3cqZAp">
                        <property role="RRSoG" value="gZ5fh_4/error" />
                        <node concept="Xl_RD" id="3Y5tAPnfO3N" role="RRSoy" />
                        <node concept="37vLTw" id="3Y5tAPnfO3O" role="RRSow">
                          <ref role="3cqZAo" node="3Y5tAPnfO3I" resolve="ex" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="3Y5tAPnfO3P" role="1zxBo7">
                    <node concept="3clFbF" id="3Y5tAPnfO3Q" role="3cqZAp">
                      <node concept="1rXfSq" id="3Y5tAPnfO3R" role="3clFbG">
                        <ref role="37wK5l" node="3Y5tAPnfO22" resolve="notifyChange" />
                        <node concept="2OqwBi" id="3Y5tAPnfO3S" role="37wK5m">
                          <node concept="37vLTw" id="3Y5tAPnfO3T" role="2Oq$k0">
                            <ref role="3cqZAo" node="3Y5tAPnfO3C" resolve="e" />
                          </node>
                          <node concept="liA8E" id="3Y5tAPnfO3U" role="2OqNvi">
                            <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.getParent()" resolve="getParent" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3Y5tAPnfO3V" role="3cqZAp">
                      <node concept="1rXfSq" id="3Y5tAPnfO3W" role="3clFbG">
                        <ref role="37wK5l" node="3Y5tAPnfO22" resolve="notifyChange" />
                        <node concept="2OqwBi" id="3Y5tAPnfO3X" role="37wK5m">
                          <node concept="37vLTw" id="3Y5tAPnfO3Y" role="2Oq$k0">
                            <ref role="3cqZAo" node="3Y5tAPnfO3C" resolve="e" />
                          </node>
                          <node concept="liA8E" id="3Y5tAPnfO3Z" role="2OqNvi">
                            <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.getChild()" resolve="getChild" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3Y5tAPnfO40" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3Y5tAPnfQjO" role="jymVt">
      <property role="TrG5h" value="globalModelListener" />
      <node concept="3Tm6S6" id="3Y5tAPnfQjP" role="1B3o_S" />
      <node concept="3uibUv" id="3Y5tAPnfQHA" role="1tU5fm">
        <ref role="3uigEE" to="slod:ncHX0ORFPi" resolve="GlobalModelListener" />
      </node>
      <node concept="2ShNRf" id="3Y5tAPnfQQv" role="33vP2m">
        <node concept="YeOm9" id="3Y5tAPnfQQw" role="2ShVmc">
          <node concept="1Y3b0j" id="3Y5tAPnfQQx" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="slod:ncHX0ORFPi" resolve="GlobalModelListener" />
            <ref role="37wK5l" to="slod:ncHX0OS6Q3" resolve="GlobalModelListener" />
            <node concept="3Tm1VV" id="3Y5tAPnfQQy" role="1B3o_S" />
            <node concept="3clFb_" id="3Y5tAPnfQQz" role="jymVt">
              <property role="TrG5h" value="addListener" />
              <node concept="37vLTG" id="3Y5tAPnfQQ$" role="3clF46">
                <property role="TrG5h" value="model" />
                <node concept="3uibUv" id="3Y5tAPnfQQ_" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
              <node concept="3cqZAl" id="3Y5tAPnfQQA" role="3clF45" />
              <node concept="3Tmbuc" id="3Y5tAPnfQQB" role="1B3o_S" />
              <node concept="3clFbS" id="3Y5tAPnfQQC" role="3clF47">
                <node concept="3clFbF" id="3Y5tAPnfQQD" role="3cqZAp">
                  <node concept="2OqwBi" id="3Y5tAPnfQQE" role="3clFbG">
                    <node concept="37vLTw" id="3Y5tAPnfQQF" role="2Oq$k0">
                      <ref role="3cqZAo" node="3Y5tAPnfQQ$" resolve="model" />
                    </node>
                    <node concept="liA8E" id="3Y5tAPnfQQG" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.addChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="addChangeListener" />
                      <node concept="37vLTw" id="3Y5tAPnfQQH" role="37wK5m">
                        <ref role="3cqZAo" node="3Y5tAPnfO1V" resolve="nodeChangeListener" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3Y5tAPnfQQI" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="3Y5tAPnfQQJ" role="jymVt">
              <property role="TrG5h" value="removeListener" />
              <node concept="37vLTG" id="3Y5tAPnfQQK" role="3clF46">
                <property role="TrG5h" value="model" />
                <node concept="3uibUv" id="3Y5tAPnfQQL" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
              <node concept="3cqZAl" id="3Y5tAPnfQQM" role="3clF45" />
              <node concept="3Tmbuc" id="3Y5tAPnfQQN" role="1B3o_S" />
              <node concept="3clFbS" id="3Y5tAPnfQQO" role="3clF47">
                <node concept="3clFbF" id="3Y5tAPnfQQP" role="3cqZAp">
                  <node concept="2OqwBi" id="3Y5tAPnfQQQ" role="3clFbG">
                    <node concept="37vLTw" id="3Y5tAPnfQQR" role="2Oq$k0">
                      <ref role="3cqZAo" node="3Y5tAPnfQQK" resolve="model" />
                    </node>
                    <node concept="liA8E" id="3Y5tAPnfQQS" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.removeChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="removeChangeListener" />
                      <node concept="37vLTw" id="3Y5tAPnfQQT" role="37wK5m">
                        <ref role="3cqZAo" node="3Y5tAPnfO1V" resolve="nodeChangeListener" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3Y5tAPnfQQU" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6g9f21tFocI" role="jymVt">
      <property role="TrG5h" value="commandListener" />
      <node concept="3Tm6S6" id="6g9f21tFocJ" role="1B3o_S" />
      <node concept="3uibUv" id="6g9f21tFv3t" role="1tU5fm">
        <ref role="3uigEE" to="nvd4:~CommandListener" resolve="CommandListener" />
      </node>
      <node concept="2ShNRf" id="6g9f21tFvxr" role="33vP2m">
        <node concept="YeOm9" id="6g9f21tFvTQ" role="2ShVmc">
          <node concept="1Y3b0j" id="6g9f21tFvTT" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="w1kc:~CommandListenerAdapter.&lt;init&gt;()" resolve="CommandListenerAdapter" />
            <ref role="1Y3XeK" to="w1kc:~CommandListenerAdapter" resolve="CommandListenerAdapter" />
            <node concept="3Tm1VV" id="6g9f21tFvTU" role="1B3o_S" />
            <node concept="3clFb_" id="6g9f21tFvWB" role="jymVt">
              <property role="TrG5h" value="commandFinished" />
              <node concept="3Tm1VV" id="6g9f21tFvWC" role="1B3o_S" />
              <node concept="3cqZAl" id="6g9f21tFvWE" role="3clF45" />
              <node concept="3clFbS" id="6g9f21tFvWG" role="3clF47">
                <node concept="3clFbF" id="6g9f21tFx6o" role="3cqZAp">
                  <node concept="2OqwBi" id="6g9f21tFxde" role="3clFbG">
                    <node concept="37vLTw" id="6g9f21tFx6n" role="2Oq$k0">
                      <ref role="3cqZAo" node="3Y5tAPnfkFU" resolve="server" />
                    </node>
                    <node concept="liA8E" id="6g9f21tFxqv" role="2OqNvi">
                      <ref role="37wK5l" to="rdww:~LightModelServer.sendUpdate()" resolve="sendUpdate" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="6g9f21tFvWH" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6g9f21tFnK9" role="jymVt" />
    <node concept="3clFbW" id="3Y5tAPnfGJp" role="jymVt">
      <node concept="3cqZAl" id="3Y5tAPnfGJr" role="3clF45" />
      <node concept="3Tm1VV" id="3Y5tAPnfGJs" role="1B3o_S" />
      <node concept="3clFbS" id="3Y5tAPnfGJt" role="3clF47">
        <node concept="1VxSAg" id="3Y5tAPnfHdp" role="3cqZAp">
          <ref role="37wK5l" node="3Y5tAPnkCYk" resolve="MPSLightModelServer" />
          <node concept="2YIFZM" id="3Y5tAPnfH$c" role="37wK5m">
            <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
            <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3Y5tAPnfysu" role="jymVt" />
    <node concept="3clFbW" id="3Y5tAPnkCYk" role="jymVt">
      <node concept="3cqZAl" id="3Y5tAPnkCYm" role="3clF45" />
      <node concept="3Tm1VV" id="3Y5tAPnkCYn" role="1B3o_S" />
      <node concept="3clFbS" id="3Y5tAPnkCYo" role="3clF47">
        <node concept="1VxSAg" id="3Y5tAPnkDCM" role="3cqZAp">
          <ref role="37wK5l" node="3Y5tAPnfl5U" resolve="MPSLightModelServer" />
          <node concept="37vLTw" id="3Y5tAPnkDEL" role="37wK5m">
            <ref role="3cqZAo" node="3Y5tAPnkDpT" resolve="repository" />
          </node>
          <node concept="3cmrfG" id="3Y5tAPnkDKt" role="37wK5m">
            <property role="3cmrfH" value="48302" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3Y5tAPnkDpT" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="3Y5tAPnkDpS" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3Y5tAPnkGan" role="jymVt" />
    <node concept="3clFbW" id="3Y5tAPnkGKX" role="jymVt">
      <node concept="37vLTG" id="3Y5tAPnkH6l" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="10Oyi0" id="3Y5tAPnkHjO" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="3Y5tAPnkGKZ" role="3clF45" />
      <node concept="3Tm1VV" id="3Y5tAPnkGL0" role="1B3o_S" />
      <node concept="3clFbS" id="3Y5tAPnkGL1" role="3clF47">
        <node concept="1VxSAg" id="3Y5tAPnkHxi" role="3cqZAp">
          <ref role="37wK5l" node="3Y5tAPnfl5U" resolve="MPSLightModelServer" />
          <node concept="2YIFZM" id="3Y5tAPnkHD4" role="37wK5m">
            <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
            <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
          </node>
          <node concept="37vLTw" id="3Y5tAPnkHFB" role="37wK5m">
            <ref role="3cqZAo" node="3Y5tAPnkH6l" resolve="port" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3Y5tAPnkBZh" role="jymVt" />
    <node concept="3clFbW" id="3Y5tAPnfl5U" role="jymVt">
      <node concept="37vLTG" id="3Y5tAPnfFr3" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="3Y5tAPnfFSk" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="3Y5tAPnkBFM" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="10Oyi0" id="3Y5tAPnkBSb" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="3Y5tAPnfl5V" role="3clF45" />
      <node concept="3Tm1VV" id="3Y5tAPnfl5W" role="1B3o_S" />
      <node concept="3clFbS" id="3Y5tAPnfl5Y" role="3clF47">
        <node concept="3clFbF" id="3Y5tAPnfJLQ" role="3cqZAp">
          <node concept="37vLTI" id="3Y5tAPnfKuQ" role="3clFbG">
            <node concept="37vLTw" id="3Y5tAPnfKBS" role="37vLTx">
              <ref role="3cqZAo" node="3Y5tAPnfFr3" resolve="repository" />
            </node>
            <node concept="2OqwBi" id="3Y5tAPnfK0b" role="37vLTJ">
              <node concept="Xjq3P" id="3Y5tAPnfJLO" role="2Oq$k0" />
              <node concept="2OwXpG" id="3Y5tAPnfKfM" role="2OqNvi">
                <ref role="2Oxat5" node="3Y5tAPnfJ6P" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3c186_EdOwc" role="3cqZAp" />
        <node concept="3cpWs8" id="3c186_EdsSq" role="3cqZAp">
          <node concept="3cpWsn" id="3c186_EdsSr" role="3cpWs9">
            <property role="TrG5h" value="ignoredRoles" />
            <node concept="2hMVRd" id="3c186_EdsSa" role="1tU5fm">
              <node concept="3uibUv" id="3c186_EdsSd" role="2hN53Y">
                <ref role="3uigEE" to="jks5:~IRole" resolve="IRole" />
              </node>
            </node>
            <node concept="2ShNRf" id="3c186_EdsSs" role="33vP2m">
              <node concept="2i4dXS" id="3c186_EdsSt" role="2ShVmc">
                <node concept="3uibUv" id="3c186_EdsSu" role="HW$YZ">
                  <ref role="3uigEE" to="jks5:~IRole" resolve="IRole" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3c186_EdOCZ" role="3cqZAp" />
        <node concept="3clFbF" id="3c186_EdOG5" role="3cqZAp">
          <node concept="2OqwBi" id="3c186_EdOG6" role="3clFbG">
            <node concept="37vLTw" id="3c186_EdOG7" role="2Oq$k0">
              <ref role="3cqZAo" node="3c186_EdsSr" resolve="ignoredRoles" />
            </node>
            <node concept="TSZUe" id="3c186_EdOG8" role="2OqNvi">
              <node concept="2ShNRf" id="3c186_EdOG9" role="25WWJ7">
                <node concept="1pGfFk" id="3c186_EdOGa" role="2ShVmc">
                  <ref role="37wK5l" to="xxte:2ePp5XuONiH" resolve="SContainmentLinkAdapter" />
                  <node concept="359W_D" id="3c186_EdOGb" role="37wK5m">
                    <ref role="359W_E" to="jh6v:qmkA5fOskm" resolve="Repository" />
                    <ref role="359W_F" to="jh6v:68axlwQ7jSc" resolve="projects" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5b1V23YeI7t" role="3cqZAp" />
        <node concept="3clFbF" id="5b1V23YeHJj" role="3cqZAp">
          <node concept="2OqwBi" id="5b1V23YeHJk" role="3clFbG">
            <node concept="37vLTw" id="5b1V23YeHJl" role="2Oq$k0">
              <ref role="3cqZAo" node="3c186_EdsSr" resolve="ignoredRoles" />
            </node>
            <node concept="TSZUe" id="5b1V23YeHJm" role="2OqNvi">
              <node concept="2ShNRf" id="5b1V23YeHJn" role="25WWJ7">
                <node concept="1pGfFk" id="5b1V23YeHJo" role="2ShVmc">
                  <ref role="37wK5l" to="xxte:2ePp5XuONiH" resolve="SContainmentLinkAdapter" />
                  <node concept="359W_D" id="5b1V23YeHJp" role="37wK5m">
                    <ref role="359W_E" to="jh6v:qmkA5fOskf" resolve="Module" />
                    <ref role="359W_F" to="jh6v:1UvRDkPap5T" resolve="dependencies" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3c186_EdGYX" role="3cqZAp">
          <node concept="2OqwBi" id="3c186_EdGYY" role="3clFbG">
            <node concept="37vLTw" id="3c186_EdGYZ" role="2Oq$k0">
              <ref role="3cqZAo" node="3c186_EdsSr" resolve="ignoredRoles" />
            </node>
            <node concept="TSZUe" id="3c186_EdGZ0" role="2OqNvi">
              <node concept="2ShNRf" id="3c186_EdGZ1" role="25WWJ7">
                <node concept="1pGfFk" id="3c186_EdGZ2" role="2ShVmc">
                  <ref role="37wK5l" to="xxte:2ePp5XuONiH" resolve="SContainmentLinkAdapter" />
                  <node concept="359W_D" id="3c186_EdGZ3" role="37wK5m">
                    <ref role="359W_E" to="jh6v:qmkA5fOskf" resolve="Module" />
                    <ref role="359W_F" to="jh6v:1UvRDkPap5G" resolve="facets" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3c186_EdHDZ" role="3cqZAp">
          <node concept="2OqwBi" id="3c186_EdHE0" role="3clFbG">
            <node concept="37vLTw" id="3c186_EdHE1" role="2Oq$k0">
              <ref role="3cqZAo" node="3c186_EdsSr" resolve="ignoredRoles" />
            </node>
            <node concept="TSZUe" id="3c186_EdHE2" role="2OqNvi">
              <node concept="2ShNRf" id="3c186_EdHE3" role="25WWJ7">
                <node concept="1pGfFk" id="3c186_EdHE4" role="2ShVmc">
                  <ref role="37wK5l" to="xxte:2ePp5XuONiH" resolve="SContainmentLinkAdapter" />
                  <node concept="359W_D" id="3c186_EdHE5" role="37wK5m">
                    <ref role="359W_E" to="jh6v:qmkA5fOskf" resolve="Module" />
                    <ref role="359W_F" to="jh6v:1UvRDkPap67" resolve="languageDependencies" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3c186_EdKKI" role="3cqZAp">
          <node concept="2OqwBi" id="3c186_EdKKJ" role="3clFbG">
            <node concept="37vLTw" id="3c186_EdKKK" role="2Oq$k0">
              <ref role="3cqZAo" node="3c186_EdsSr" resolve="ignoredRoles" />
            </node>
            <node concept="TSZUe" id="3c186_EdKKL" role="2OqNvi">
              <node concept="2ShNRf" id="3c186_EdKKM" role="25WWJ7">
                <node concept="1pGfFk" id="3c186_EdKKN" role="2ShVmc">
                  <ref role="37wK5l" to="xxte:2ePp5XuOMn2" resolve="SPropertyAdapter" />
                  <node concept="355D3s" id="3c186_EdLwa" role="37wK5m">
                    <ref role="355D3t" to="jh6v:qmkA5fOskf" resolve="Module" />
                    <ref role="355D3u" to="jh6v:1UvRDkPap55" resolve="compileInMPS" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3c186_EdMii" role="3cqZAp" />
        <node concept="3clFbF" id="3c186_EdIPJ" role="3cqZAp">
          <node concept="2OqwBi" id="3c186_EdIPK" role="3clFbG">
            <node concept="37vLTw" id="3c186_EdIPL" role="2Oq$k0">
              <ref role="3cqZAo" node="3c186_EdsSr" resolve="ignoredRoles" />
            </node>
            <node concept="TSZUe" id="3c186_EdIPM" role="2OqNvi">
              <node concept="2ShNRf" id="3c186_EdIPN" role="25WWJ7">
                <node concept="1pGfFk" id="3c186_EdIPO" role="2ShVmc">
                  <ref role="37wK5l" to="xxte:2ePp5XuONiH" resolve="SContainmentLinkAdapter" />
                  <node concept="359W_D" id="3c186_EdIPP" role="37wK5m">
                    <ref role="359W_E" to="jh6v:qmkA5fOskc" resolve="Model" />
                    <ref role="359W_F" to="jh6v:5zrTIjkWMUS" resolve="modelImports" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3c186_EdK03" role="3cqZAp">
          <node concept="2OqwBi" id="3c186_EdK04" role="3clFbG">
            <node concept="37vLTw" id="3c186_EdK05" role="2Oq$k0">
              <ref role="3cqZAo" node="3c186_EdsSr" resolve="ignoredRoles" />
            </node>
            <node concept="TSZUe" id="3c186_EdK06" role="2OqNvi">
              <node concept="2ShNRf" id="3c186_EdK07" role="25WWJ7">
                <node concept="1pGfFk" id="3c186_EdK08" role="2ShVmc">
                  <ref role="37wK5l" to="xxte:2ePp5XuONiH" resolve="SContainmentLinkAdapter" />
                  <node concept="359W_D" id="3c186_EdK09" role="37wK5m">
                    <ref role="359W_E" to="jh6v:qmkA5fOskc" resolve="Model" />
                    <ref role="359W_F" to="jh6v:4EJacWw$IAe" resolve="usedLanguages" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3c186_EdNbV" role="3cqZAp" />
        <node concept="3cpWs8" id="X55vO$hQtj" role="3cqZAp">
          <node concept="3cpWsn" id="X55vO$hQtm" role="3cpWs9">
            <property role="TrG5h" value="healthChecks" />
            <node concept="_YKpA" id="X55vO$hQtf" role="1tU5fm">
              <node concept="3uibUv" id="X55vO$hSpr" role="_ZDj9">
                <ref role="3uigEE" to="rdww:~LightModelServer$IHealthCheck" resolve="LightModelServer.IHealthCheck" />
              </node>
            </node>
            <node concept="2ShNRf" id="X55vO$hXwA" role="33vP2m">
              <node concept="Tc6Ow" id="X55vO$hXwk" role="2ShVmc">
                <node concept="3uibUv" id="X55vO$hXwl" role="HW$YZ">
                  <ref role="3uigEE" to="rdww:~LightModelServer$IHealthCheck" resolve="LightModelServer.IHealthCheck" />
                </node>
                <node concept="2ShNRf" id="X55vO$i3Xd" role="HW$Y0">
                  <node concept="YeOm9" id="X55vO$i4Fk" role="2ShVmc">
                    <node concept="1Y3b0j" id="X55vO$i4Fn" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="rdww:~LightModelServer$IHealthCheck" resolve="LightModelServer.IHealthCheck" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3Tm1VV" id="X55vO$i4Fo" role="1B3o_S" />
                      <node concept="3clFb_" id="X55vO$i4Ft" role="jymVt">
                        <property role="TrG5h" value="getId" />
                        <node concept="3Tm1VV" id="X55vO$i4Fu" role="1B3o_S" />
                        <node concept="2AHcQZ" id="X55vO$i4Fw" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        </node>
                        <node concept="17QB3L" id="X55vO$i6KL" role="3clF45" />
                        <node concept="3clFbS" id="X55vO$i4Fy" role="3clF47">
                          <node concept="3clFbF" id="X55vO$i8Fs" role="3cqZAp">
                            <node concept="Xl_RD" id="X55vO$i8Fr" role="3clFbG">
                              <property role="Xl_RC" value="virtualFolders" />
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="X55vO$i4F$" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="3clFb_" id="X55vO$k8qR" role="jymVt">
                        <property role="TrG5h" value="getEnabledByDefault" />
                        <node concept="3Tm1VV" id="X55vO$k8qS" role="1B3o_S" />
                        <node concept="10P_77" id="X55vO$k8qU" role="3clF45" />
                        <node concept="3clFbS" id="X55vO$k8qW" role="3clF47">
                          <node concept="3clFbF" id="X55vO$k8qZ" role="3cqZAp">
                            <node concept="3clFbT" id="X55vO$k8qY" role="3clFbG" />
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="X55vO$k8qX" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="3clFb_" id="X55vO$i4FA" role="jymVt">
                        <property role="TrG5h" value="run" />
                        <node concept="3Tm1VV" id="X55vO$i4FB" role="1B3o_S" />
                        <node concept="10P_77" id="X55vO$i4FD" role="3clF45" />
                        <node concept="37vLTG" id="X55vO$i4FE" role="3clF46">
                          <property role="TrG5h" value="output" />
                          <node concept="3uibUv" id="X55vO$i4FF" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                          </node>
                          <node concept="2AHcQZ" id="X55vO$i4FG" role="2AJF6D">
                            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="X55vO$i4FH" role="3clF47">
                          <node concept="3cpWs8" id="X55vO$ibBM" role="3cqZAp">
                            <node concept="3cpWsn" id="X55vO$ibBN" role="3cpWs9">
                              <property role="TrG5h" value="projects" />
                              <node concept="_YKpA" id="X55vO$ibBO" role="1tU5fm">
                                <node concept="3uibUv" id="X55vO$ibBP" role="_ZDj9">
                                  <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="X55vO$ibBQ" role="33vP2m">
                                <node concept="2YIFZM" id="X55vO$ibBR" role="2Oq$k0">
                                  <ref role="1Pybhc" to="z1c3:~ProjectManager" resolve="ProjectManager" />
                                  <ref role="37wK5l" to="z1c3:~ProjectManager.getInstance()" resolve="getInstance" />
                                </node>
                                <node concept="liA8E" id="X55vO$ibBS" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c3:~ProjectManager.getOpenedProjects()" resolve="getOpenedProjects" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="X55vO$ibBT" role="3cqZAp">
                            <node concept="3cpWsn" id="X55vO$ibBU" role="3cpWs9">
                              <property role="TrG5h" value="mpsProjects" />
                              <node concept="_YKpA" id="X55vO$ibBV" role="1tU5fm">
                                <node concept="3uibUv" id="X55vO$ibBW" role="_ZDj9">
                                  <ref role="3uigEE" to="z1c3:~ProjectBase" resolve="ProjectBase" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="X55vO$ibBX" role="33vP2m">
                                <node concept="2OqwBi" id="X55vO$ibBY" role="2Oq$k0">
                                  <node concept="37vLTw" id="X55vO$ibBZ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="X55vO$ibBN" resolve="projects" />
                                  </node>
                                  <node concept="UnYns" id="X55vO$ibC0" role="2OqNvi">
                                    <node concept="3uibUv" id="X55vO$ibC1" role="UnYnz">
                                      <ref role="3uigEE" to="z1c3:~ProjectBase" resolve="ProjectBase" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="ANE8D" id="X55vO$ibC2" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="X55vO$ibCd" role="3cqZAp" />
                          <node concept="3cpWs8" id="X55vO$ibCe" role="3cqZAp">
                            <node concept="3cpWsn" id="X55vO$ibCf" role="3cpWs9">
                              <property role="TrG5h" value="hasAnyVirtualFolders" />
                              <node concept="10P_77" id="X55vO$ibCg" role="1tU5fm" />
                              <node concept="2OqwBi" id="X55vO$ibCh" role="33vP2m">
                                <node concept="2OqwBi" id="X55vO$ibCi" role="2Oq$k0">
                                  <node concept="2OqwBi" id="X55vO$ibCj" role="2Oq$k0">
                                    <node concept="37vLTw" id="X55vO$ibCk" role="2Oq$k0">
                                      <ref role="3cqZAo" node="X55vO$ibBU" resolve="mpsProjects" />
                                    </node>
                                    <node concept="3zZkjj" id="X55vO$ibCl" role="2OqNvi">
                                      <node concept="1bVj0M" id="X55vO$ibCm" role="23t8la">
                                        <node concept="3clFbS" id="X55vO$ibCn" role="1bW5cS">
                                          <node concept="3cpWs8" id="X55vO$ibCo" role="3cqZAp">
                                            <node concept="3cpWsn" id="X55vO$ibCp" role="3cpWs9">
                                              <property role="TrG5h" value="projectModules" />
                                              <node concept="_YKpA" id="X55vO$ibCq" role="1tU5fm">
                                                <node concept="3uibUv" id="X55vO$ibCr" role="_ZDj9">
                                                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                                                </node>
                                              </node>
                                              <node concept="2OqwBi" id="X55vO$ibCs" role="33vP2m">
                                                <node concept="37vLTw" id="X55vO$ibCt" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="X55vO$ibDj" resolve="project" />
                                                </node>
                                                <node concept="liA8E" id="X55vO$ibCu" role="2OqNvi">
                                                  <ref role="37wK5l" to="z1c3:~ProjectBase.getProjectModules()" resolve="getProjectModules" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3cpWs8" id="X55vO$ibCv" role="3cqZAp">
                                            <node concept="3cpWsn" id="X55vO$ibCw" role="3cpWs9">
                                              <property role="TrG5h" value="virtualFolders" />
                                              <node concept="10Oyi0" id="X55vO$ibCx" role="1tU5fm" />
                                              <node concept="2OqwBi" id="X55vO$ibCy" role="33vP2m">
                                                <node concept="2OqwBi" id="X55vO$ibCz" role="2Oq$k0">
                                                  <node concept="37vLTw" id="X55vO$ibC$" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="X55vO$ibCp" resolve="projectModules" />
                                                  </node>
                                                  <node concept="3zZkjj" id="X55vO$ibC_" role="2OqNvi">
                                                    <node concept="1bVj0M" id="X55vO$ibCA" role="23t8la">
                                                      <node concept="3clFbS" id="X55vO$ibCB" role="1bW5cS">
                                                        <node concept="3clFbF" id="X55vO$ibCC" role="3cqZAp">
                                                          <node concept="2EnYce" id="X55vO$ibCD" role="3clFbG">
                                                            <node concept="2EnYce" id="X55vO$ibCE" role="2Oq$k0">
                                                              <node concept="2OqwBi" id="X55vO$ibCF" role="2Oq$k0">
                                                                <node concept="37vLTw" id="X55vO$ibCG" role="2Oq$k0">
                                                                  <ref role="3cqZAo" node="X55vO$ibDj" resolve="project" />
                                                                </node>
                                                                <node concept="liA8E" id="X55vO$ibCH" role="2OqNvi">
                                                                  <ref role="37wK5l" to="z1c3:~ProjectBase.getPath(org.jetbrains.mps.openapi.module.SModule)" resolve="getPath" />
                                                                  <node concept="37vLTw" id="X55vO$ibCI" role="37wK5m">
                                                                    <ref role="3cqZAo" node="X55vO$ibCL" resolve="module" />
                                                                  </node>
                                                                </node>
                                                              </node>
                                                              <node concept="liA8E" id="X55vO$ibCJ" role="2OqNvi">
                                                                <ref role="37wK5l" to="y8s3:~ModulePath.getVirtualFolder()" resolve="getVirtualFolder" />
                                                              </node>
                                                            </node>
                                                            <node concept="17RvpY" id="X55vO$ibCK" role="2OqNvi" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="Rh6nW" id="X55vO$ibCL" role="1bW2Oz">
                                                        <property role="TrG5h" value="module" />
                                                        <node concept="2jxLKc" id="X55vO$ibCM" role="1tU5fm" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="34oBXx" id="X55vO$ibCN" role="2OqNvi" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbF" id="X55vO$ibCO" role="3cqZAp">
                                            <node concept="2OqwBi" id="X55vO$ibCP" role="3clFbG">
                                              <node concept="2OqwBi" id="X55vO$ibCQ" role="2Oq$k0">
                                                <node concept="2OqwBi" id="X55vO$ibCR" role="2Oq$k0">
                                                  <node concept="2OqwBi" id="X55vO$ibCS" role="2Oq$k0">
                                                    <node concept="2OqwBi" id="X55vO$ibCT" role="2Oq$k0">
                                                      <node concept="2OqwBi" id="X55vO$ibCU" role="2Oq$k0">
                                                        <node concept="2OqwBi" id="X55vO$ibCV" role="2Oq$k0">
                                                          <node concept="37vLTw" id="X55vO$ibCW" role="2Oq$k0">
                                                            <ref role="3cqZAo" node="X55vO$i4FE" resolve="output" />
                                                          </node>
                                                          <node concept="liA8E" id="X55vO$ibCX" role="2OqNvi">
                                                            <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                                            <node concept="Xl_RD" id="X55vO$ibCY" role="37wK5m">
                                                              <property role="Xl_RC" value="  project '" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                        <node concept="liA8E" id="X55vO$ibCZ" role="2OqNvi">
                                                          <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                                          <node concept="2OqwBi" id="X55vO$ibD0" role="37wK5m">
                                                            <node concept="37vLTw" id="X55vO$ibD1" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="X55vO$ibDj" resolve="project" />
                                                            </node>
                                                            <node concept="liA8E" id="X55vO$ibD2" role="2OqNvi">
                                                              <ref role="37wK5l" to="z1c3:~Project.getName()" resolve="getName" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="liA8E" id="X55vO$ibD3" role="2OqNvi">
                                                        <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                                        <node concept="Xl_RD" id="X55vO$ibD4" role="37wK5m">
                                                          <property role="Xl_RC" value="' has " />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="liA8E" id="X55vO$ibD5" role="2OqNvi">
                                                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(int)" resolve="append" />
                                                      <node concept="2OqwBi" id="X55vO$ibD6" role="37wK5m">
                                                        <node concept="37vLTw" id="X55vO$ibD7" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="X55vO$ibCp" resolve="projectModules" />
                                                        </node>
                                                        <node concept="34oBXx" id="X55vO$ibD8" role="2OqNvi" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="liA8E" id="X55vO$ibD9" role="2OqNvi">
                                                    <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                                    <node concept="Xl_RD" id="X55vO$ibDa" role="37wK5m">
                                                      <property role="Xl_RC" value=" modules and " />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="liA8E" id="X55vO$ibDb" role="2OqNvi">
                                                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(int)" resolve="append" />
                                                  <node concept="37vLTw" id="X55vO$ibDc" role="37wK5m">
                                                    <ref role="3cqZAo" node="X55vO$ibCw" resolve="virtualFolders" />
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="liA8E" id="X55vO$ibDd" role="2OqNvi">
                                                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                                <node concept="Xl_RD" id="X55vO$ibDe" role="37wK5m">
                                                  <property role="Xl_RC" value=" virtual folders\n" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbF" id="X55vO$ibDf" role="3cqZAp">
                                            <node concept="3eOSWO" id="X55vO$ibDg" role="3clFbG">
                                              <node concept="3cmrfG" id="X55vO$ibDh" role="3uHU7w">
                                                <property role="3cmrfH" value="0" />
                                              </node>
                                              <node concept="37vLTw" id="X55vO$ibDi" role="3uHU7B">
                                                <ref role="3cqZAo" node="X55vO$ibCw" resolve="virtualFolders" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Rh6nW" id="X55vO$ibDj" role="1bW2Oz">
                                          <property role="TrG5h" value="project" />
                                          <node concept="2jxLKc" id="X55vO$ibDk" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="ANE8D" id="X55vO$ibDl" role="2OqNvi" />
                                </node>
                                <node concept="3GX2aA" id="X55vO$ibDm" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="X55vO$ibDn" role="3cqZAp">
                            <node concept="3clFbS" id="X55vO$ibDo" role="3clFbx">
                              <node concept="3clFbF" id="X55vO$j_$p" role="3cqZAp">
                                <node concept="2OqwBi" id="X55vO$jADa" role="3clFbG">
                                  <node concept="37vLTw" id="X55vO$j_$o" role="2Oq$k0">
                                    <ref role="3cqZAo" node="X55vO$i4FE" resolve="output" />
                                  </node>
                                  <node concept="liA8E" id="X55vO$jCV9" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                    <node concept="Xl_RD" id="X55vO$jDxU" role="37wK5m">
                                      <property role="Xl_RC" value="  no virtual folders found\n" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3fqX7Q" id="X55vO$ibDr" role="3clFbw">
                              <node concept="37vLTw" id="X55vO$ibDs" role="3fr31v">
                                <ref role="3cqZAo" node="X55vO$ibCf" resolve="hasAnyVirtualFolders" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="X55vO$jIWt" role="3cqZAp">
                            <node concept="37vLTw" id="X55vO$jKRW" role="3cqZAk">
                              <ref role="3cqZAo" node="X55vO$ibCf" resolve="hasAnyVirtualFolders" />
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="X55vO$i4FJ" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="X55vO$igmX" role="HW$Y0">
                  <node concept="YeOm9" id="X55vO$igmY" role="2ShVmc">
                    <node concept="1Y3b0j" id="X55vO$igmZ" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <ref role="1Y3XeK" to="rdww:~LightModelServer$IHealthCheck" resolve="LightModelServer.IHealthCheck" />
                      <node concept="3Tm1VV" id="X55vO$ign0" role="1B3o_S" />
                      <node concept="3clFb_" id="X55vO$ign1" role="jymVt">
                        <property role="TrG5h" value="getId" />
                        <node concept="3Tm1VV" id="X55vO$ign2" role="1B3o_S" />
                        <node concept="2AHcQZ" id="X55vO$ign3" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        </node>
                        <node concept="17QB3L" id="X55vO$ign4" role="3clF45" />
                        <node concept="3clFbS" id="X55vO$ign5" role="3clF47">
                          <node concept="3clFbF" id="X55vO$ign6" role="3cqZAp">
                            <node concept="Xl_RD" id="X55vO$ign7" role="3clFbG">
                              <property role="Xl_RC" value="projects" />
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="X55vO$ign8" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="3clFb_" id="X55vO$k1fL" role="jymVt">
                        <property role="TrG5h" value="getEnabledByDefault" />
                        <node concept="3Tm1VV" id="X55vO$k1fM" role="1B3o_S" />
                        <node concept="10P_77" id="X55vO$k1fO" role="3clF45" />
                        <node concept="3clFbS" id="X55vO$k1fQ" role="3clF47">
                          <node concept="3clFbF" id="X55vO$k5TM" role="3cqZAp">
                            <node concept="3clFbT" id="X55vO$k5TL" role="3clFbG">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="X55vO$k1fR" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="3clFb_" id="X55vO$igna" role="jymVt">
                        <property role="TrG5h" value="run" />
                        <node concept="3Tm1VV" id="X55vO$ignb" role="1B3o_S" />
                        <node concept="10P_77" id="X55vO$ignc" role="3clF45" />
                        <node concept="37vLTG" id="X55vO$ignd" role="3clF46">
                          <property role="TrG5h" value="output" />
                          <node concept="3uibUv" id="X55vO$igne" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                          </node>
                          <node concept="2AHcQZ" id="X55vO$ignf" role="2AJF6D">
                            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="X55vO$igng" role="3clF47">
                          <node concept="3cpWs8" id="X55vO$ignh" role="3cqZAp">
                            <node concept="3cpWsn" id="X55vO$igni" role="3cpWs9">
                              <property role="TrG5h" value="projects" />
                              <node concept="_YKpA" id="X55vO$ignj" role="1tU5fm">
                                <node concept="3uibUv" id="X55vO$ignk" role="_ZDj9">
                                  <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="X55vO$ignl" role="33vP2m">
                                <node concept="2YIFZM" id="X55vO$ignm" role="2Oq$k0">
                                  <ref role="1Pybhc" to="z1c3:~ProjectManager" resolve="ProjectManager" />
                                  <ref role="37wK5l" to="z1c3:~ProjectManager.getInstance()" resolve="getInstance" />
                                </node>
                                <node concept="liA8E" id="X55vO$ignn" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c3:~ProjectManager.getOpenedProjects()" resolve="getOpenedProjects" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="X55vO$igny" role="3cqZAp">
                            <node concept="2OqwBi" id="X55vO$ixUI" role="3clFbG">
                              <node concept="2OqwBi" id="X55vO$ignz" role="2Oq$k0">
                                <node concept="2OqwBi" id="X55vO$ign$" role="2Oq$k0">
                                  <node concept="2OqwBi" id="X55vO$jnep" role="2Oq$k0">
                                    <node concept="37vLTw" id="X55vO$ign_" role="2Oq$k0">
                                      <ref role="3cqZAo" node="X55vO$ignd" resolve="output" />
                                    </node>
                                    <node concept="liA8E" id="X55vO$joD6" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                      <node concept="Xl_RD" id="X55vO$jpf3" role="37wK5m">
                                        <property role="Xl_RC" value="  " />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="X55vO$ignA" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~StringBuilder.append(int)" resolve="append" />
                                    <node concept="2OqwBi" id="X55vO$ignB" role="37wK5m">
                                      <node concept="37vLTw" id="X55vO$ignC" role="2Oq$k0">
                                        <ref role="3cqZAo" node="X55vO$igni" resolve="projects" />
                                      </node>
                                      <node concept="34oBXx" id="X55vO$ignD" role="2OqNvi" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="X55vO$ignE" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                  <node concept="Xl_RD" id="X55vO$ignF" role="37wK5m">
                                    <property role="Xl_RC" value=" project(s) found: " />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="X55vO$i$qV" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                                <node concept="2OqwBi" id="X55vO$iP4U" role="37wK5m">
                                  <node concept="2OqwBi" id="X55vO$iInz" role="2Oq$k0">
                                    <node concept="37vLTw" id="X55vO$i_mi" role="2Oq$k0">
                                      <ref role="3cqZAo" node="X55vO$igni" resolve="projects" />
                                    </node>
                                    <node concept="3$u5V9" id="X55vO$iKmu" role="2OqNvi">
                                      <node concept="1bVj0M" id="X55vO$iKmw" role="23t8la">
                                        <node concept="3clFbS" id="X55vO$iKmx" role="1bW5cS">
                                          <node concept="3clFbF" id="X55vO$iLaE" role="3cqZAp">
                                            <node concept="2OqwBi" id="X55vO$iM1F" role="3clFbG">
                                              <node concept="37vLTw" id="X55vO$iLaD" role="2Oq$k0">
                                                <ref role="3cqZAo" node="X55vO$iKmy" resolve="it" />
                                              </node>
                                              <node concept="liA8E" id="X55vO$iNJi" role="2OqNvi">
                                                <ref role="37wK5l" to="z1c3:~Project.getName()" resolve="getName" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Rh6nW" id="X55vO$iKmy" role="1bW2Oz">
                                          <property role="TrG5h" value="it" />
                                          <node concept="2jxLKc" id="X55vO$iKmz" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3uJxvA" id="X55vO$iRkD" role="2OqNvi">
                                    <node concept="Xl_RD" id="X55vO$iV4G" role="3uJOhx">
                                      <property role="Xl_RC" value=", " />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="X55vO$iYgn" role="3cqZAp">
                            <node concept="2OqwBi" id="X55vO$j1n3" role="3cqZAk">
                              <node concept="37vLTw" id="X55vO$iZNr" role="2Oq$k0">
                                <ref role="3cqZAo" node="X55vO$igni" resolve="projects" />
                              </node>
                              <node concept="3GX2aA" id="X55vO$j9K$" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="X55vO$igoW" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Y5tAPnfHGg" role="3cqZAp">
          <node concept="37vLTI" id="3Y5tAPnfHU$" role="3clFbG">
            <node concept="37vLTw" id="3Y5tAPnfHG8" role="37vLTJ">
              <ref role="3cqZAo" node="3Y5tAPnfkFU" resolve="server" />
            </node>
            <node concept="2ShNRf" id="3Y5tAPnfI3e" role="37vLTx">
              <node concept="1pGfFk" id="X55vO$ikrE" role="2ShVmc">
                <ref role="37wK5l" to="rdww:~LightModelServer.&lt;init&gt;(int,org.modelix.model.api.INode,java.util.Set,java.util.List)" resolve="LightModelServer" />
                <node concept="37vLTw" id="3Y5tAPnkHNv" role="37wK5m">
                  <ref role="3cqZAo" node="3Y5tAPnkBFM" resolve="port" />
                </node>
                <node concept="2ShNRf" id="3Y5tAPnfI3h" role="37wK5m">
                  <node concept="1pGfFk" id="3Y5tAPnfI3i" role="2ShVmc">
                    <ref role="37wK5l" to="xxte:qmkA5fOYD8" resolve="SRepositoryAsNode" />
                    <node concept="37vLTw" id="3Y5tAPnfIsi" role="37wK5m">
                      <ref role="3cqZAo" node="3Y5tAPnfFr3" resolve="repository" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3c186_EdsWV" role="37wK5m">
                  <ref role="3cqZAo" node="3c186_EdsSr" resolve="ignoredRoles" />
                </node>
                <node concept="37vLTw" id="X55vO$ilYe" role="37wK5m">
                  <ref role="3cqZAo" node="X55vO$hQtm" resolve="healthChecks" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3Y5tAPnfFZK" role="jymVt" />
    <node concept="3clFb_" id="3Y5tAPnfyMg" role="jymVt">
      <property role="TrG5h" value="start" />
      <node concept="3cqZAl" id="3Y5tAPnfyMi" role="3clF45" />
      <node concept="3Tm1VV" id="3Y5tAPnfyMj" role="1B3o_S" />
      <node concept="3clFbS" id="3Y5tAPnfyMk" role="3clF47">
        <node concept="3clFbF" id="3Y5tAPnfEp2" role="3cqZAp">
          <node concept="2OqwBi" id="3Y5tAPnfEzY" role="3clFbG">
            <node concept="37vLTw" id="3Y5tAPnfEp0" role="2Oq$k0">
              <ref role="3cqZAo" node="3Y5tAPnfkFU" resolve="server" />
            </node>
            <node concept="liA8E" id="3Y5tAPnfENq" role="2OqNvi">
              <ref role="37wK5l" to="rdww:~LightModelServer.start()" resolve="start" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Y5tAPnfSVF" role="3cqZAp">
          <node concept="2OqwBi" id="3Y5tAPnfT4a" role="3clFbG">
            <node concept="37vLTw" id="3Y5tAPnfSVD" role="2Oq$k0">
              <ref role="3cqZAo" node="3Y5tAPnfQjO" resolve="globalModelListener" />
            </node>
            <node concept="liA8E" id="3Y5tAPnfTgl" role="2OqNvi">
              <ref role="37wK5l" to="slod:ncHX0OS6Ab" resolve="start" />
              <node concept="37vLTw" id="3Y5tAPnfTkk" role="37wK5m">
                <ref role="3cqZAo" node="3Y5tAPnfJ6P" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6g9f21tFpaX" role="3cqZAp">
          <node concept="2OqwBi" id="6g9f21tFpD1" role="3clFbG">
            <node concept="2OqwBi" id="6g9f21tFpoS" role="2Oq$k0">
              <node concept="37vLTw" id="6g9f21tFpaV" role="2Oq$k0">
                <ref role="3cqZAo" node="3Y5tAPnfJ6P" resolve="repository" />
              </node>
              <node concept="liA8E" id="6g9f21tFpyI" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="6g9f21tFpN3" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.addCommandListener(org.jetbrains.mps.openapi.repository.CommandListener)" resolve="addCommandListener" />
              <node concept="37vLTw" id="6g9f21tFxup" role="37wK5m">
                <ref role="3cqZAo" node="6g9f21tFocI" resolve="commandListener" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3Y5tAPnf$Z7" role="jymVt" />
    <node concept="3clFb_" id="3Y5tAPnf_nH" role="jymVt">
      <property role="TrG5h" value="stop" />
      <node concept="3cqZAl" id="3Y5tAPnf_nJ" role="3clF45" />
      <node concept="3Tm1VV" id="3Y5tAPnf_nK" role="1B3o_S" />
      <node concept="3clFbS" id="3Y5tAPnf_nL" role="3clF47">
        <node concept="3clFbF" id="6g9f21tFxDi" role="3cqZAp">
          <node concept="2OqwBi" id="6g9f21tFxDj" role="3clFbG">
            <node concept="2OqwBi" id="6g9f21tFxDk" role="2Oq$k0">
              <node concept="37vLTw" id="6g9f21tFxDl" role="2Oq$k0">
                <ref role="3cqZAo" node="3Y5tAPnfJ6P" resolve="repository" />
              </node>
              <node concept="liA8E" id="6g9f21tFxDm" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="6g9f21tFxDn" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.removeCommandListener(org.jetbrains.mps.openapi.repository.CommandListener)" resolve="removeCommandListener" />
              <node concept="37vLTw" id="6g9f21tFxDo" role="37wK5m">
                <ref role="3cqZAo" node="6g9f21tFocI" resolve="commandListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Y5tAPnfTFj" role="3cqZAp">
          <node concept="2OqwBi" id="3Y5tAPnfTMO" role="3clFbG">
            <node concept="37vLTw" id="3Y5tAPnfTFg" role="2Oq$k0">
              <ref role="3cqZAo" node="3Y5tAPnfQjO" resolve="globalModelListener" />
            </node>
            <node concept="liA8E" id="3Y5tAPnfTW9" role="2OqNvi">
              <ref role="37wK5l" to="slod:5m02zYhGCVO" resolve="stop" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Y5tAPnfESr" role="3cqZAp">
          <node concept="2OqwBi" id="3Y5tAPnfEZ7" role="3clFbG">
            <node concept="37vLTw" id="3Y5tAPnfESp" role="2Oq$k0">
              <ref role="3cqZAo" node="3Y5tAPnfkFU" resolve="server" />
            </node>
            <node concept="liA8E" id="3Y5tAPnfFeb" role="2OqNvi">
              <ref role="37wK5l" to="rdww:~LightModelServer.stop()" resolve="stop" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3Y5tAPnfjvJ" role="1B3o_S" />
  </node>
</model>

