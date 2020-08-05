<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a79f28f8-6055-40c6-bc5e-47a42a3b97e8(org.modelix.model.mps)">
  <persistence version="9" />
  <languages>
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="5dc5fc0d-37ef-4782-8192-8b5ce1f69f80" name="jetbrains.mps.baseLanguage.extensionMethods" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="jks5" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.api(org.modelix.model.client/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="3o3z" ref="ecfb9949-7433-4db5-85de-0f84d172e4ce/java:com.google.common.collect(de.q60.mps.libs/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="n7xv" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.util.pmap(org.modelix.model.client/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="dj5d" ref="r:8bca245c-17c6-44f4-9367-ad6ce25cabf5(de.q60.mps.shadowmodels.runtimelang.structure)" />
    <import index="3p1j" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.util(org.modelix.model.client/)" />
    <import index="tqvn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.tempmodel(MPS.Core/)" />
    <import index="xkhl" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.lazy(org.modelix.model.client/)" />
    <import index="vxxo" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure.concept(MPS.Core/)" />
    <import index="2k9e" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure(MPS.Core/)" />
    <import index="v18h" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:kotlin(org.modelix.model.client/)" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1238852151516" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType" flags="in" index="1LlUBW">
        <child id="1238852204892" name="componentType" index="1Lm7xW" />
      </concept>
      <concept id="1238853782547" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleLiteral" flags="nn" index="1Ls8ON">
        <child id="1238853845806" name="component" index="1Lso8e" />
      </concept>
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
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1177666668936" name="jetbrains.mps.baseLanguage.structure.DoWhileStatement" flags="nn" index="MpOyq">
        <child id="1177666688034" name="condition" index="MpTkK" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ">
        <child id="1214996921760" name="bound" index="3ztrMU" />
      </concept>
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
        <property id="4467513934994662256" name="forceOneLine" index="TyiWL" />
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="ng" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="1221737317277" name="jetbrains.mps.baseLanguage.structure.StaticInitializer" flags="lg" index="1Pe0a1">
        <child id="1221737317278" name="statementList" index="1Pe0a2" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
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
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <child id="2034914114981261755" name="throwable" index="RRSow" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1181949435690" name="jetbrains.mps.lang.smodel.structure.Concept_NewInstance" flags="nn" index="LFhST" />
      <concept id="2644386474302386080" name="jetbrains.mps.lang.smodel.structure.PropertyIdRefExpression" flags="nn" index="355D3s">
        <reference id="2644386474302386081" name="conceptDeclaration" index="355D3t" />
        <reference id="2644386474302386082" name="propertyDeclaration" index="355D3u" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
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
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="ng" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="ng" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414456414" name="elementType" index="kMuH3" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1171391069720" name="jetbrains.mps.baseLanguage.collections.structure.GetIndexOfOperation" flags="nn" index="2WmjW8" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1240824834947" name="jetbrains.mps.baseLanguage.collections.structure.ValueAccessOperation" flags="nn" index="3AV6Ez" />
      <concept id="1240825616499" name="jetbrains.mps.baseLanguage.collections.structure.KeyAccessOperation" flags="nn" index="3AY5_j" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="5gTrVpGjuL2">
    <property role="TrG5h" value="SConceptAdapter" />
    <node concept="2tJIrI" id="5gTrVpGjFmG" role="jymVt" />
    <node concept="1Pe0a1" id="1m9roGC3$t_" role="jymVt">
      <node concept="3clFbS" id="1m9roGC3$tB" role="1Pe0a2">
        <node concept="3clFbF" id="4SOqQDg$rv1" role="3cqZAp">
          <node concept="2OqwBi" id="4SOqQDg$rDL" role="3clFbG">
            <node concept="10M0yZ" id="4SOqQDg$ryo" role="2Oq$k0">
              <ref role="3cqZAo" to="xkhl:~IConceptSerializer.Companion" resolve="Companion" />
              <ref role="1PxDUh" to="xkhl:~IConceptSerializer" resolve="IConceptSerializer" />
            </node>
            <node concept="liA8E" id="4SOqQDg$rJm" role="2OqNvi">
              <ref role="37wK5l" to="xkhl:~IConceptSerializer$Companion.register(org.modelix.model.lazy.IConceptSerializer)" resolve="register" />
              <node concept="2ShNRf" id="1cGcLVgvDI$" role="37wK5m">
                <node concept="YeOm9" id="1cGcLVgvFr_" role="2ShVmc">
                  <node concept="1Y3b0j" id="1cGcLVgvFrC" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="xkhl:~IConceptSerializer" resolve="IConceptSerializer" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="1cGcLVgvFrD" role="1B3o_S" />
                    <node concept="3clFb_" id="1cGcLVgvFrI" role="jymVt">
                      <property role="TrG5h" value="serialize" />
                      <node concept="3Tm1VV" id="1cGcLVgvFrJ" role="1B3o_S" />
                      <node concept="2AHcQZ" id="1cGcLVgvFrL" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      </node>
                      <node concept="17QB3L" id="1cGcLVgvGst" role="3clF45" />
                      <node concept="37vLTG" id="1cGcLVgvFrN" role="3clF46">
                        <property role="TrG5h" value="concept" />
                        <node concept="3uibUv" id="1cGcLVgvFrO" role="1tU5fm">
                          <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
                        </node>
                        <node concept="2AHcQZ" id="1cGcLVgvFrP" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="1cGcLVgvFrQ" role="3clF47">
                        <node concept="3clFbF" id="1cGcLVgvIEd" role="3cqZAp">
                          <node concept="2EnYce" id="1cGcLVgvOkJ" role="3clFbG">
                            <node concept="1eOMI4" id="1cGcLVgvPoO" role="2Oq$k0">
                              <node concept="10QFUN" id="1cGcLVgvPoN" role="1eOMHV">
                                <node concept="2EnYce" id="1cGcLVgvPoI" role="10QFUP">
                                  <node concept="0kSF2" id="1cGcLVgvPoJ" role="2Oq$k0">
                                    <node concept="3uibUv" id="1cGcLVgvPoK" role="0kSFW">
                                      <ref role="3uigEE" node="5gTrVpGjuL2" resolve="SConceptAdapter" />
                                    </node>
                                    <node concept="37vLTw" id="1cGcLVgvPoL" role="0kSFX">
                                      <ref role="3cqZAo" node="1cGcLVgvFrN" resolve="concept" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="1cGcLVgvPoM" role="2OqNvi">
                                    <ref role="37wK5l" node="5gTrVpGqz6x" resolve="getAdapted" />
                                  </node>
                                </node>
                                <node concept="3uibUv" id="1cGcLVgvPP1" role="10QFUM">
                                  <ref role="3uigEE" to="vxxo:~SAbstractConceptAdapter" resolve="SAbstractConceptAdapter" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="1cGcLVgvOUv" role="2OqNvi">
                              <ref role="37wK5l" to="vxxo:~SAbstractConceptAdapter.serialize()" resolve="serialize" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="1cGcLVgvFrS" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="1cGcLVgvFrT" role="jymVt" />
                    <node concept="3clFb_" id="1cGcLVgvFrU" role="jymVt">
                      <property role="TrG5h" value="deserialize" />
                      <node concept="3Tm1VV" id="1cGcLVgvFrV" role="1B3o_S" />
                      <node concept="2AHcQZ" id="1cGcLVgvFrX" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      </node>
                      <node concept="3uibUv" id="1cGcLVgvFrY" role="3clF45">
                        <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
                      </node>
                      <node concept="37vLTG" id="1cGcLVgvFrZ" role="3clF46">
                        <property role="TrG5h" value="serialized" />
                        <node concept="17QB3L" id="1cGcLVgvG6r" role="1tU5fm" />
                        <node concept="2AHcQZ" id="1cGcLVgvFs1" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="1cGcLVgvFs2" role="3clF47">
                        <node concept="3J1_TO" id="1cGcLVgvSjO" role="3cqZAp">
                          <node concept="3uVAMA" id="1cGcLVgvSkj" role="1zxBo5">
                            <node concept="XOnhg" id="1cGcLVgvSkk" role="1zc67B">
                              <property role="TrG5h" value="ex" />
                              <node concept="nSUau" id="1cGcLVgvSkl" role="1tU5fm">
                                <node concept="3uibUv" id="1cGcLVgvSv$" role="nSUat">
                                  <ref role="3uigEE" to="2k9e:~FormatException" resolve="FormatException" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="1cGcLVgvSkm" role="1zc67A">
                              <node concept="3cpWs6" id="1cGcLVgvSEZ" role="3cqZAp">
                                <node concept="10Nm6u" id="1cGcLVgvSI2" role="3cqZAk" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="1cGcLVgvSjQ" role="1zxBo7">
                            <node concept="3cpWs6" id="1cGcLVgvTls" role="3cqZAp">
                              <node concept="1rXfSq" id="1cGcLVgvTlu" role="3cqZAk">
                                <ref role="37wK5l" node="3ECE8iPOmg5" resolve="wrap" />
                                <node concept="2YIFZM" id="1cGcLVgvTlv" role="37wK5m">
                                  <ref role="1Pybhc" to="vxxo:~SAbstractConceptAdapter" resolve="SAbstractConceptAdapter" />
                                  <ref role="37wK5l" to="vxxo:~SAbstractConceptAdapter.deserialize(java.lang.String)" resolve="deserialize" />
                                  <node concept="37vLTw" id="1cGcLVgvTlw" role="37wK5m">
                                    <ref role="3cqZAo" node="1cGcLVgvFrZ" resolve="serialized" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="1cGcLVgvFs4" role="2AJF6D">
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
    </node>
    <node concept="2tJIrI" id="1m9roGC3zKn" role="jymVt" />
    <node concept="2YIFZL" id="3ECE8iPIttW" role="jymVt">
      <property role="TrG5h" value="unwrap" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="3ECE8iPIorU" role="3clF47">
        <node concept="3clFbJ" id="3ECE8iPKhJ7" role="3cqZAp">
          <node concept="3clFbS" id="3ECE8iPKhJ9" role="3clFbx">
            <node concept="3cpWs6" id="3ECE8iPKhVK" role="3cqZAp">
              <node concept="10Nm6u" id="3ECE8iPKi6A" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="3ECE8iPKhSq" role="3clFbw">
            <node concept="10Nm6u" id="3ECE8iPKhUT" role="3uHU7w" />
            <node concept="37vLTw" id="3ECE8iPKhKI" role="3uHU7B">
              <ref role="3cqZAo" node="3ECE8iPIqvF" resolve="concept" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ECE8iPIrni" role="3cqZAp">
          <node concept="2OqwBi" id="3ECE8iPIrIt" role="3clFbG">
            <node concept="1eOMI4" id="3ECE8iPIrng" role="2Oq$k0">
              <node concept="10QFUN" id="3ECE8iPIrnd" role="1eOMHV">
                <node concept="3uibUv" id="3ECE8iPIrnL" role="10QFUM">
                  <ref role="3uigEE" node="5gTrVpGjuL2" resolve="SConceptAdapter" />
                </node>
                <node concept="37vLTw" id="3ECE8iPIrA6" role="10QFUP">
                  <ref role="3cqZAo" node="3ECE8iPIqvF" resolve="concept" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3ECE8iPIs2W" role="2OqNvi">
              <ref role="37wK5l" node="5gTrVpGqz6x" resolve="getAdapted" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3ECE8iPIqvF" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="3ECE8iPIraH" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
        </node>
      </node>
      <node concept="3uibUv" id="3ECE8iPIpPt" role="3clF45">
        <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
      </node>
      <node concept="3Tm1VV" id="3ECE8iPIorT" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3ECE8iPOn0U" role="jymVt" />
    <node concept="2YIFZL" id="3ECE8iPOmg5" role="jymVt">
      <property role="TrG5h" value="wrap" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="3ECE8iPOmg6" role="3clF47">
        <node concept="3clFbJ" id="3ECE8iPOmg7" role="3cqZAp">
          <node concept="3clFbS" id="3ECE8iPOmg8" role="3clFbx">
            <node concept="3cpWs6" id="3ECE8iPOmg9" role="3cqZAp">
              <node concept="10Nm6u" id="3ECE8iPOmga" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="3ECE8iPOmgb" role="3clFbw">
            <node concept="10Nm6u" id="3ECE8iPOmgc" role="3uHU7w" />
            <node concept="37vLTw" id="3ECE8iPOmgd" role="3uHU7B">
              <ref role="3cqZAo" node="3ECE8iPOmgl" resolve="concept" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ECE8iPOoQa" role="3cqZAp">
          <node concept="2ShNRf" id="3ECE8iPOoQ6" role="3clFbG">
            <node concept="1pGfFk" id="3ECE8iPOppV" role="2ShVmc">
              <ref role="37wK5l" node="5gTrVpGjFod" resolve="SConceptAdapter" />
              <node concept="37vLTw" id="3ECE8iPOp_1" role="37wK5m">
                <ref role="3cqZAo" node="3ECE8iPOmgl" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3ECE8iPOmgl" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="3ECE8iPOotS" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3uibUv" id="3ECE8iPOnKw" role="3clF45">
        <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
      </node>
      <node concept="3Tm1VV" id="3ECE8iPOmgo" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3ECE8iPInI0" role="jymVt" />
    <node concept="312cEg" id="5gTrVpGjFmW" role="jymVt">
      <property role="TrG5h" value="concept" />
      <node concept="3Tm6S6" id="5gTrVpGjFmX" role="1B3o_S" />
      <node concept="3uibUv" id="5gTrVpGjFnB" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gTrVpGjFmL" role="jymVt" />
    <node concept="3Tm1VV" id="5gTrVpGjuL3" role="1B3o_S" />
    <node concept="3uibUv" id="5gTrVpGjFmx" role="EKbjA">
      <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
    </node>
    <node concept="3clFbW" id="5gTrVpGjFod" role="jymVt">
      <node concept="3cqZAl" id="5gTrVpGjFoe" role="3clF45" />
      <node concept="3Tm1VV" id="5gTrVpGjFof" role="1B3o_S" />
      <node concept="3clFbS" id="5gTrVpGjFoh" role="3clF47">
        <node concept="3clFbF" id="5gTrVpGjFol" role="3cqZAp">
          <node concept="37vLTI" id="5gTrVpGjFon" role="3clFbG">
            <node concept="37vLTw" id="5gTrVpGjFor" role="37vLTJ">
              <ref role="3cqZAo" node="5gTrVpGjFmW" resolve="concept" />
            </node>
            <node concept="37vLTw" id="5gTrVpGjFos" role="37vLTx">
              <ref role="3cqZAo" node="5gTrVpGjFok" resolve="concept1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5gTrVpGjFok" role="3clF46">
        <property role="TrG5h" value="concept1" />
        <node concept="3uibUv" id="5gTrVpGjFoj" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5gTrVpGqyzq" role="jymVt" />
    <node concept="3clFb_" id="5gTrVpGqz6x" role="jymVt">
      <property role="TrG5h" value="getAdapted" />
      <node concept="3uibUv" id="5gTrVpGq$My" role="3clF45">
        <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
      </node>
      <node concept="3Tm1VV" id="5gTrVpGqz6$" role="1B3o_S" />
      <node concept="3clFbS" id="5gTrVpGqz6_" role="3clF47">
        <node concept="3clFbF" id="5gTrVpGq_g5" role="3cqZAp">
          <node concept="37vLTw" id="5gTrVpGq_g4" role="3clFbG">
            <ref role="3cqZAo" node="5gTrVpGjFmW" resolve="concept" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5gTrVpGjFsJ" role="jymVt" />
    <node concept="3clFb_" id="5gTrVpGjFwN" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isSubconceptOf" />
      <node concept="37vLTG" id="5gTrVpGjFwO" role="3clF46">
        <property role="TrG5h" value="superConcept" />
        <node concept="3uibUv" id="5gTrVpGjFwP" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
        </node>
      </node>
      <node concept="10P_77" id="5gTrVpGjFwQ" role="3clF45" />
      <node concept="3Tm1VV" id="5gTrVpGjFwR" role="1B3o_S" />
      <node concept="3clFbS" id="5gTrVpGjFwT" role="3clF47">
        <node concept="3clFbF" id="5gTrVpGjH9t" role="3cqZAp">
          <node concept="2OqwBi" id="5gTrVpGjHlq" role="3clFbG">
            <node concept="37vLTw" id="5gTrVpGjH9r" role="2Oq$k0">
              <ref role="3cqZAo" node="5gTrVpGjFmW" resolve="concept" />
            </node>
            <node concept="liA8E" id="5gTrVpGjHCZ" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
              <node concept="2OqwBi" id="5gTrVpGjHHS" role="37wK5m">
                <node concept="1eOMI4" id="5gTrVpGjHHT" role="2Oq$k0">
                  <node concept="10QFUN" id="5gTrVpGjHHU" role="1eOMHV">
                    <node concept="37vLTw" id="5gTrVpGjHHV" role="10QFUP">
                      <ref role="3cqZAo" node="5gTrVpGjFwO" resolve="superConcept" />
                    </node>
                    <node concept="3uibUv" id="5gTrVpGjHHW" role="10QFUM">
                      <ref role="3uigEE" node="5gTrVpGjuL2" resolve="SConceptAdapter" />
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="5gTrVpGjHHX" role="2OqNvi">
                  <ref role="2Oxat5" node="5gTrVpGjFmW" resolve="concept" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5gTrVpGjFwU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gTrVpGjJ_L" role="jymVt" />
    <node concept="3clFb_" id="5gTrVpGjFwX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isExactly" />
      <node concept="37vLTG" id="5gTrVpGjFwY" role="3clF46">
        <property role="TrG5h" value="otherConcept" />
        <node concept="3uibUv" id="5gTrVpGjFwZ" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
        </node>
      </node>
      <node concept="10P_77" id="5gTrVpGjFx0" role="3clF45" />
      <node concept="3Tm1VV" id="5gTrVpGjFx1" role="1B3o_S" />
      <node concept="3clFbS" id="5gTrVpGjFx3" role="3clF47">
        <node concept="3clFbF" id="5gTrVpGjJ7f" role="3cqZAp">
          <node concept="17R0WA" id="5gTrVpGjJpr" role="3clFbG">
            <node concept="37vLTw" id="5gTrVpGjJ74" role="3uHU7B">
              <ref role="3cqZAo" node="5gTrVpGjFmW" resolve="concept" />
            </node>
            <node concept="2OqwBi" id="5gTrVpGjHXM" role="3uHU7w">
              <node concept="1eOMI4" id="5gTrVpGjHXN" role="2Oq$k0">
                <node concept="10QFUN" id="5gTrVpGjHXO" role="1eOMHV">
                  <node concept="37vLTw" id="5gTrVpGjIfJ" role="10QFUP">
                    <ref role="3cqZAo" node="5gTrVpGjFwY" resolve="otherConcept" />
                  </node>
                  <node concept="3uibUv" id="5gTrVpGjHXQ" role="10QFUM">
                    <ref role="3uigEE" node="5gTrVpGjuL2" resolve="SConceptAdapter" />
                  </node>
                </node>
              </node>
              <node concept="2OwXpG" id="5gTrVpGjHXR" role="2OqNvi">
                <ref role="2Oxat5" node="5gTrVpGjFmW" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5gTrVpGjFx4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2ePp5XuOR3A" role="jymVt" />
    <node concept="3clFb_" id="2ePp5XuOQGK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getProperties" />
      <node concept="A3Dl8" id="2ePp5XuOQGL" role="3clF45">
        <node concept="3uibUv" id="2ePp5XuOQGM" role="A3Ik2">
          <ref role="3uigEE" to="jks5:~IProperty" resolve="IProperty" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2ePp5XuOQGN" role="1B3o_S" />
      <node concept="3clFbS" id="2ePp5XuOQGP" role="3clF47">
        <node concept="3cpWs8" id="2ePp5XuOSgc" role="3cqZAp">
          <node concept="3cpWsn" id="2ePp5XuOSgd" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <node concept="A3Dl8" id="2ePp5XuOSG4" role="1tU5fm">
              <node concept="3uibUv" id="2ePp5XuOSG6" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
              </node>
            </node>
            <node concept="2OqwBi" id="2ePp5XuOSge" role="33vP2m">
              <node concept="37vLTw" id="2ePp5XuOSgf" role="2Oq$k0">
                <ref role="3cqZAo" node="5gTrVpGjFmW" resolve="concept" />
              </node>
              <node concept="liA8E" id="2ePp5XuOSgg" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getProperties()" resolve="getProperties" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2ePp5XuORpS" role="3cqZAp">
          <node concept="2OqwBi" id="2ePp5XuOT0J" role="3clFbG">
            <node concept="37vLTw" id="2ePp5XuOSgh" role="2Oq$k0">
              <ref role="3cqZAo" node="2ePp5XuOSgd" resolve="properties" />
            </node>
            <node concept="3$u5V9" id="2ePp5XuOTk4" role="2OqNvi">
              <node concept="1bVj0M" id="2ePp5XuOTk6" role="23t8la">
                <node concept="3clFbS" id="2ePp5XuOTk7" role="1bW5cS">
                  <node concept="3clFbF" id="2ePp5XuOTo7" role="3cqZAp">
                    <node concept="2ShNRf" id="2ePp5XuOTo5" role="3clFbG">
                      <node concept="1pGfFk" id="2ePp5XuOTFS" role="2ShVmc">
                        <ref role="37wK5l" node="2ePp5XuOMn2" resolve="SPropertyAdapter" />
                        <node concept="37vLTw" id="2ePp5XuOTJh" role="37wK5m">
                          <ref role="3cqZAo" node="2ePp5XuOTk8" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2ePp5XuOTk8" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2ePp5XuOTk9" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2ePp5XuOQGQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2ePp5XuOZXc" role="jymVt" />
    <node concept="3clFb_" id="2ePp5XuOQGR" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getChildLinks" />
      <node concept="A3Dl8" id="2ePp5XuOQGS" role="3clF45">
        <node concept="3uibUv" id="2ePp5XuOQGT" role="A3Ik2">
          <ref role="3uigEE" to="jks5:~IChildLink" resolve="IChildLink" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2ePp5XuOQGU" role="1B3o_S" />
      <node concept="3clFbS" id="2ePp5XuOQGW" role="3clF47">
        <node concept="3cpWs8" id="2ePp5XuOUEM" role="3cqZAp">
          <node concept="3cpWsn" id="2ePp5XuOUEN" role="3cpWs9">
            <property role="TrG5h" value="link" />
            <node concept="A3Dl8" id="2ePp5XuOV6O" role="1tU5fm">
              <node concept="3uibUv" id="2ePp5XuOV6Q" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
              </node>
            </node>
            <node concept="2OqwBi" id="2ePp5XuOUEO" role="33vP2m">
              <node concept="37vLTw" id="2ePp5XuOUEP" role="2Oq$k0">
                <ref role="3cqZAo" node="5gTrVpGjFmW" resolve="concept" />
              </node>
              <node concept="liA8E" id="2ePp5XuOUEQ" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getContainmentLinks()" resolve="getContainmentLinks" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2ePp5XuOTPf" role="3cqZAp">
          <node concept="2OqwBi" id="2ePp5XuOVBP" role="3clFbG">
            <node concept="37vLTw" id="2ePp5XuOUER" role="2Oq$k0">
              <ref role="3cqZAo" node="2ePp5XuOUEN" resolve="link" />
            </node>
            <node concept="3$u5V9" id="2ePp5XuOVVa" role="2OqNvi">
              <node concept="1bVj0M" id="2ePp5XuOVVc" role="23t8la">
                <node concept="3clFbS" id="2ePp5XuOVVd" role="1bW5cS">
                  <node concept="3clFbF" id="2ePp5XuOVZE" role="3cqZAp">
                    <node concept="2ShNRf" id="2ePp5XuOVZC" role="3clFbG">
                      <node concept="1pGfFk" id="2ePp5XuOWjr" role="2ShVmc">
                        <ref role="37wK5l" node="2ePp5XuONiH" resolve="SContainmentLinkAdapter" />
                        <node concept="37vLTw" id="2ePp5XuOWmO" role="37wK5m">
                          <ref role="3cqZAo" node="2ePp5XuOVVe" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2ePp5XuOVVe" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2ePp5XuOVVf" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2ePp5XuOQGX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2ePp5XuOZg$" role="jymVt" />
    <node concept="3clFb_" id="2ePp5XuOQGY" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getReferenceLinks" />
      <node concept="A3Dl8" id="2ePp5XuOQGZ" role="3clF45">
        <node concept="3uibUv" id="2ePp5XuOQH0" role="A3Ik2">
          <ref role="3uigEE" to="jks5:~IReferenceLink" resolve="IReferenceLink" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2ePp5XuOQH1" role="1B3o_S" />
      <node concept="3clFbS" id="2ePp5XuOQH3" role="3clF47">
        <node concept="3cpWs8" id="2ePp5XuOXrD" role="3cqZAp">
          <node concept="3cpWsn" id="2ePp5XuOXrE" role="3cpWs9">
            <property role="TrG5h" value="link" />
            <node concept="A3Dl8" id="2ePp5XuOXRN" role="1tU5fm">
              <node concept="3uibUv" id="2ePp5XuOXRP" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
              </node>
            </node>
            <node concept="2OqwBi" id="2ePp5XuOXrF" role="33vP2m">
              <node concept="37vLTw" id="2ePp5XuOXrG" role="2Oq$k0">
                <ref role="3cqZAo" node="5gTrVpGjFmW" resolve="concept" />
              </node>
              <node concept="liA8E" id="2ePp5XuOXrH" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getReferenceLinks()" resolve="getReferenceLinks" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2ePp5XuOWsM" role="3cqZAp">
          <node concept="2OqwBi" id="2ePp5XuOYuZ" role="3clFbG">
            <node concept="37vLTw" id="2ePp5XuOXrI" role="2Oq$k0">
              <ref role="3cqZAo" node="2ePp5XuOXrE" resolve="link" />
            </node>
            <node concept="3$u5V9" id="2ePp5XuOYMk" role="2OqNvi">
              <node concept="1bVj0M" id="2ePp5XuOYMm" role="23t8la">
                <node concept="3clFbS" id="2ePp5XuOYMn" role="1bW5cS">
                  <node concept="3clFbF" id="2ePp5XuOYQn" role="3cqZAp">
                    <node concept="2ShNRf" id="2ePp5XuOYQl" role="3clFbG">
                      <node concept="1pGfFk" id="2ePp5XuOZa8" role="2ShVmc">
                        <ref role="37wK5l" node="2ePp5XuOPYa" resolve="SReferenceLinkAdapter" />
                        <node concept="37vLTw" id="2ePp5XuOZdx" role="37wK5m">
                          <ref role="3cqZAo" node="2ePp5XuOYMo" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2ePp5XuOYMo" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2ePp5XuOYMp" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2ePp5XuOQH4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gTrVpGltd8" role="jymVt" />
    <node concept="3clFb_" id="3Ezg1fMM6np" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getChildLink" />
      <node concept="37vLTG" id="3Ezg1fMM6nq" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="3Ezg1fMM6nr" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="3Ezg1fMM6ns" role="3clF45">
        <ref role="3uigEE" to="jks5:~IChildLink" resolve="IChildLink" />
      </node>
      <node concept="3Tm1VV" id="3Ezg1fMM6nt" role="1B3o_S" />
      <node concept="3clFbS" id="3Ezg1fMM6nv" role="3clF47">
        <node concept="3clFbF" id="3Ezg1fMMd56" role="3cqZAp">
          <node concept="2OqwBi" id="3Ezg1fMMdwT" role="3clFbG">
            <node concept="1rXfSq" id="3Ezg1fMMd55" role="2Oq$k0">
              <ref role="37wK5l" node="2ePp5XuOQGR" resolve="getChildLinks" />
            </node>
            <node concept="1z4cxt" id="3Ezg1fMMe3K" role="2OqNvi">
              <node concept="1bVj0M" id="3Ezg1fMMe3M" role="23t8la">
                <node concept="3clFbS" id="3Ezg1fMMe3N" role="1bW5cS">
                  <node concept="3clFbF" id="3Ezg1fMMeo6" role="3cqZAp">
                    <node concept="17R0WA" id="3Ezg1fMMghS" role="3clFbG">
                      <node concept="37vLTw" id="3Ezg1fMMgK5" role="3uHU7w">
                        <ref role="3cqZAo" node="3Ezg1fMM6nq" resolve="name" />
                      </node>
                      <node concept="2OqwBi" id="3Ezg1fMMfsr" role="3uHU7B">
                        <node concept="37vLTw" id="3Ezg1fMMf6W" role="2Oq$k0">
                          <ref role="3cqZAo" node="3Ezg1fMMe3O" resolve="it" />
                        </node>
                        <node concept="liA8E" id="3Ezg1fMMfFh" role="2OqNvi">
                          <ref role="37wK5l" to="jks5:~IChildLink.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3Ezg1fMMe3O" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="3Ezg1fMMe3P" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3Ezg1fMM6nw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3Ezg1fMM9Lt" role="jymVt" />
    <node concept="3clFb_" id="3Ezg1fMM6nz" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getProperty" />
      <node concept="37vLTG" id="3Ezg1fMM6n$" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="3Ezg1fMM6n_" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="3Ezg1fMM6nA" role="3clF45">
        <ref role="3uigEE" to="jks5:~IProperty" resolve="IProperty" />
      </node>
      <node concept="3Tm1VV" id="3Ezg1fMM6nB" role="1B3o_S" />
      <node concept="3clFbS" id="3Ezg1fMM6nD" role="3clF47">
        <node concept="3clFbF" id="3Ezg1fMMgZz" role="3cqZAp">
          <node concept="2OqwBi" id="3Ezg1fMMgZ$" role="3clFbG">
            <node concept="1rXfSq" id="3Ezg1fMMgZ_" role="2Oq$k0">
              <ref role="37wK5l" node="2ePp5XuOQGK" resolve="getProperties" />
            </node>
            <node concept="1z4cxt" id="3Ezg1fMMgZA" role="2OqNvi">
              <node concept="1bVj0M" id="3Ezg1fMMgZB" role="23t8la">
                <node concept="3clFbS" id="3Ezg1fMMgZC" role="1bW5cS">
                  <node concept="3clFbF" id="3Ezg1fMMgZD" role="3cqZAp">
                    <node concept="17R0WA" id="3Ezg1fMMgZE" role="3clFbG">
                      <node concept="37vLTw" id="3Ezg1fMMgZF" role="3uHU7w">
                        <ref role="3cqZAo" node="3Ezg1fMM6n$" resolve="name" />
                      </node>
                      <node concept="2OqwBi" id="3Ezg1fMMgZG" role="3uHU7B">
                        <node concept="37vLTw" id="3Ezg1fMMgZH" role="2Oq$k0">
                          <ref role="3cqZAo" node="3Ezg1fMMgZJ" resolve="it" />
                        </node>
                        <node concept="liA8E" id="3Ezg1fMMgZI" role="2OqNvi">
                          <ref role="37wK5l" to="jks5:~IProperty.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3Ezg1fMMgZJ" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="3Ezg1fMMgZK" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3Ezg1fMM6nE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3Ezg1fMM8DP" role="jymVt" />
    <node concept="3clFb_" id="3Ezg1fMM6nH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getReferenceLink" />
      <node concept="37vLTG" id="3Ezg1fMM6nI" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="3Ezg1fMM6nJ" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="3Ezg1fMM6nK" role="3clF45">
        <ref role="3uigEE" to="jks5:~IReferenceLink" resolve="IReferenceLink" />
      </node>
      <node concept="3Tm1VV" id="3Ezg1fMM6nL" role="1B3o_S" />
      <node concept="3clFbS" id="3Ezg1fMM6nN" role="3clF47">
        <node concept="3clFbF" id="3Ezg1fMMhOG" role="3cqZAp">
          <node concept="2OqwBi" id="3Ezg1fMMhOH" role="3clFbG">
            <node concept="1rXfSq" id="3Ezg1fMMhOI" role="2Oq$k0">
              <ref role="37wK5l" node="2ePp5XuOQGY" resolve="getReferenceLinks" />
            </node>
            <node concept="1z4cxt" id="3Ezg1fMMhOJ" role="2OqNvi">
              <node concept="1bVj0M" id="3Ezg1fMMhOK" role="23t8la">
                <node concept="3clFbS" id="3Ezg1fMMhOL" role="1bW5cS">
                  <node concept="3clFbF" id="3Ezg1fMMhOM" role="3cqZAp">
                    <node concept="17R0WA" id="3Ezg1fMMhON" role="3clFbG">
                      <node concept="37vLTw" id="3Ezg1fMMhOO" role="3uHU7w">
                        <ref role="3cqZAo" node="3Ezg1fMM6nI" resolve="name" />
                      </node>
                      <node concept="2OqwBi" id="3Ezg1fMMhOP" role="3uHU7B">
                        <node concept="37vLTw" id="3Ezg1fMMhOQ" role="2Oq$k0">
                          <ref role="3cqZAo" node="3Ezg1fMMhOS" resolve="it" />
                        </node>
                        <node concept="liA8E" id="3Ezg1fMMhOR" role="2OqNvi">
                          <ref role="37wK5l" to="jks5:~IReferenceLink.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3Ezg1fMMhOS" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="3Ezg1fMMhOT" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3Ezg1fMM6nO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3Ezg1fMM7yh" role="jymVt" />
    <node concept="3clFb_" id="5gTrVpGltkb" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="5gTrVpGltkc" role="3clF45" />
      <node concept="3Tm1VV" id="5gTrVpGltkd" role="1B3o_S" />
      <node concept="3clFbS" id="5gTrVpGltke" role="3clF47">
        <node concept="3clFbJ" id="5gTrVpGltkf" role="3cqZAp">
          <node concept="3clFbS" id="5gTrVpGltkg" role="3clFbx">
            <node concept="3cpWs6" id="5gTrVpGltkh" role="3cqZAp">
              <node concept="3clFbT" id="5gTrVpGltki" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5gTrVpGltkj" role="3clFbw">
            <node concept="Xjq3P" id="5gTrVpGltka" role="3uHU7B" />
            <node concept="37vLTw" id="5gTrVpGltkk" role="3uHU7w">
              <ref role="3cqZAo" node="5gTrVpGltkF" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5gTrVpGltkl" role="3cqZAp">
          <node concept="3clFbS" id="5gTrVpGltkm" role="3clFbx">
            <node concept="3cpWs6" id="5gTrVpGltkn" role="3cqZAp">
              <node concept="3clFbT" id="5gTrVpGltko" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="5gTrVpGltkp" role="3clFbw">
            <node concept="3clFbC" id="5gTrVpGltkq" role="3uHU7B">
              <node concept="37vLTw" id="5gTrVpGltkr" role="3uHU7B">
                <ref role="3cqZAo" node="5gTrVpGltkF" resolve="o" />
              </node>
              <node concept="10Nm6u" id="5gTrVpGltks" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="5gTrVpGltkt" role="3uHU7w">
              <node concept="2OqwBi" id="5gTrVpGltku" role="3uHU7B">
                <node concept="Xjq3P" id="5gTrVpGltkv" role="2Oq$k0" />
                <node concept="liA8E" id="5gTrVpGltkw" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="2OqwBi" id="5gTrVpGltkx" role="3uHU7w">
                <node concept="37vLTw" id="5gTrVpGltky" role="2Oq$k0">
                  <ref role="3cqZAo" node="5gTrVpGltkF" resolve="o" />
                </node>
                <node concept="liA8E" id="5gTrVpGltkz" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5gTrVpGltk$" role="3cqZAp" />
        <node concept="3cpWs8" id="5gTrVpGltk_" role="3cqZAp">
          <node concept="3cpWsn" id="5gTrVpGltkA" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="5gTrVpGltkB" role="1tU5fm">
              <ref role="3uigEE" node="5gTrVpGjuL2" resolve="SConceptAdapter" />
            </node>
            <node concept="10QFUN" id="5gTrVpGltkC" role="33vP2m">
              <node concept="3uibUv" id="5gTrVpGltkD" role="10QFUM">
                <ref role="3uigEE" node="5gTrVpGjuL2" resolve="SConceptAdapter" />
              </node>
              <node concept="37vLTw" id="5gTrVpGltkE" role="10QFUP">
                <ref role="3cqZAo" node="5gTrVpGltkF" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5gTrVpGltkP" role="3cqZAp">
          <node concept="3clFbS" id="5gTrVpGltkQ" role="3clFbx">
            <node concept="3cpWs6" id="5gTrVpGltkR" role="3cqZAp">
              <node concept="3clFbT" id="5gTrVpGltkS" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3K4zz7" id="5gTrVpGltkT" role="3clFbw">
            <node concept="3fqX7Q" id="5gTrVpGltkU" role="3K4E3e">
              <node concept="2OqwBi" id="5gTrVpGltkV" role="3fr31v">
                <node concept="liA8E" id="5gTrVpGltkW" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="5gTrVpGltkX" role="37wK5m">
                    <node concept="37vLTw" id="5gTrVpGltkI" role="2Oq$k0">
                      <ref role="3cqZAo" node="5gTrVpGltkA" resolve="that" />
                    </node>
                    <node concept="2OwXpG" id="5gTrVpGltkL" role="2OqNvi">
                      <ref role="2Oxat5" node="5gTrVpGjFmW" resolve="concept" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5gTrVpGltkM" role="2Oq$k0">
                  <ref role="3cqZAo" node="5gTrVpGjFmW" resolve="concept" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="5gTrVpGltkY" role="3K4Cdx">
              <node concept="10Nm6u" id="5gTrVpGltkZ" role="3uHU7w" />
              <node concept="37vLTw" id="5gTrVpGltkN" role="3uHU7B">
                <ref role="3cqZAo" node="5gTrVpGjFmW" resolve="concept" />
              </node>
            </node>
            <node concept="3y3z36" id="5gTrVpGltl0" role="3K4GZi">
              <node concept="10Nm6u" id="5gTrVpGltl1" role="3uHU7w" />
              <node concept="2OqwBi" id="5gTrVpGltl2" role="3uHU7B">
                <node concept="37vLTw" id="5gTrVpGltl3" role="2Oq$k0">
                  <ref role="3cqZAo" node="5gTrVpGltkA" resolve="that" />
                </node>
                <node concept="2OwXpG" id="5gTrVpGltkO" role="2OqNvi">
                  <ref role="2Oxat5" node="5gTrVpGjFmW" resolve="concept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5gTrVpGltl4" role="3cqZAp" />
        <node concept="3clFbF" id="5gTrVpGltl5" role="3cqZAp">
          <node concept="3clFbT" id="5gTrVpGltl6" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5gTrVpGltkF" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="5gTrVpGltkG" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5gTrVpGltkH" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gTrVpGlu0b" role="jymVt" />
    <node concept="3clFb_" id="5gTrVpGltl7" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="5gTrVpGltl8" role="3clF45" />
      <node concept="3Tm1VV" id="5gTrVpGltl9" role="1B3o_S" />
      <node concept="3clFbS" id="5gTrVpGltla" role="3clF47">
        <node concept="3cpWs8" id="5gTrVpGltlc" role="3cqZAp">
          <node concept="3cpWsn" id="5gTrVpGltld" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Oyi0" id="5gTrVpGltle" role="1tU5fm" />
            <node concept="3cmrfG" id="5gTrVpGltlf" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5gTrVpGltlp" role="3cqZAp">
          <node concept="37vLTI" id="5gTrVpGltlq" role="3clFbG">
            <node concept="3cpWs3" id="5gTrVpGltlr" role="37vLTx">
              <node concept="1eOMI4" id="5gTrVpGltls" role="3uHU7w">
                <node concept="3K4zz7" id="5gTrVpGltlt" role="1eOMHV">
                  <node concept="3cmrfG" id="5gTrVpGltlu" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3y3z36" id="5gTrVpGltlv" role="3K4Cdx">
                    <node concept="10Nm6u" id="5gTrVpGltlw" role="3uHU7w" />
                    <node concept="37vLTw" id="5gTrVpGltln" role="3uHU7B">
                      <ref role="3cqZAo" node="5gTrVpGjFmW" resolve="concept" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5gTrVpGltlx" role="3K4E3e">
                    <node concept="1eOMI4" id="5gTrVpGltly" role="2Oq$k0">
                      <node concept="10QFUN" id="5gTrVpGltlz" role="1eOMHV">
                        <node concept="3uibUv" id="5gTrVpGltl$" role="10QFUM">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                        <node concept="37vLTw" id="5gTrVpGltlo" role="10QFUP">
                          <ref role="3cqZAo" node="5gTrVpGjFmW" resolve="concept" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="5gTrVpGltl_" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17qRlL" id="5gTrVpGltll" role="3uHU7B">
                <node concept="3cmrfG" id="5gTrVpGltlm" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="5gTrVpGltlg" role="3uHU7w">
                  <ref role="3cqZAo" node="5gTrVpGltld" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5gTrVpGltlA" role="37vLTJ">
              <ref role="3cqZAo" node="5gTrVpGltld" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5gTrVpGltlB" role="3cqZAp">
          <node concept="37vLTw" id="5gTrVpGltlC" role="3clFbG">
            <ref role="3cqZAo" node="5gTrVpGltld" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5gTrVpGltlb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="Vl1zEECJLW" role="jymVt" />
    <node concept="3clFb_" id="Vl1zEECKwn" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="Vl1zEECKwo" role="1B3o_S" />
      <node concept="17QB3L" id="Vl1zEECLYX" role="3clF45" />
      <node concept="3clFbS" id="Vl1zEECKwr" role="3clF47">
        <node concept="3clFbF" id="Vl1zEECMRE" role="3cqZAp">
          <node concept="2OqwBi" id="Vl1zEECNgB" role="3clFbG">
            <node concept="37vLTw" id="Vl1zEECMRD" role="2Oq$k0">
              <ref role="3cqZAo" node="5gTrVpGjFmW" resolve="concept" />
            </node>
            <node concept="liA8E" id="Vl1zEECNHi" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="Vl1zEECKws" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2ePp5XuOMji">
    <property role="TrG5h" value="SPropertyAdapter" />
    <node concept="2tJIrI" id="2ePp5XuOMk6" role="jymVt" />
    <node concept="312cEg" id="2ePp5XuOMkx" role="jymVt">
      <property role="TrG5h" value="property" />
      <node concept="3Tm6S6" id="2ePp5XuOMky" role="1B3o_S" />
      <node concept="3uibUv" id="2ePp5XuOMkW" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
    </node>
    <node concept="2tJIrI" id="2ePp5XuOMlf" role="jymVt" />
    <node concept="3Tm1VV" id="2ePp5XuOMjj" role="1B3o_S" />
    <node concept="3uibUv" id="2ePp5XuOMjW" role="EKbjA">
      <ref role="3uigEE" to="jks5:~IProperty" resolve="IProperty" />
    </node>
    <node concept="3clFbW" id="2ePp5XuOMn2" role="jymVt">
      <node concept="3cqZAl" id="2ePp5XuOMn3" role="3clF45" />
      <node concept="3Tm1VV" id="2ePp5XuOMn4" role="1B3o_S" />
      <node concept="3clFbS" id="2ePp5XuOMn6" role="3clF47">
        <node concept="3clFbF" id="2ePp5XuOMna" role="3cqZAp">
          <node concept="37vLTI" id="2ePp5XuOMnc" role="3clFbG">
            <node concept="37vLTw" id="2ePp5XuOMng" role="37vLTJ">
              <ref role="3cqZAo" node="2ePp5XuOMkx" resolve="property" />
            </node>
            <node concept="37vLTw" id="2ePp5XuOMnh" role="37vLTx">
              <ref role="3cqZAo" node="2ePp5XuOMn9" resolve="property1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2ePp5XuOMn9" role="3clF46">
        <property role="TrG5h" value="property1" />
        <node concept="3uibUv" id="2ePp5XuOMn8" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4wrAhqcMFOm" role="jymVt" />
    <node concept="3clFb_" id="4wrAhqcMFpl" role="jymVt">
      <property role="TrG5h" value="getProperty" />
      <node concept="3uibUv" id="4wrAhqcMFFG" role="3clF45">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="3Tm1VV" id="4wrAhqcMFpo" role="1B3o_S" />
      <node concept="3clFbS" id="4wrAhqcMFpp" role="3clF47">
        <node concept="3clFbF" id="4wrAhqcMG3v" role="3cqZAp">
          <node concept="37vLTw" id="4wrAhqcMG3u" role="3clFbG">
            <ref role="3cqZAo" node="2ePp5XuOMkx" resolve="property" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4wrAhqcMFUC" role="jymVt" />
    <node concept="3clFb_" id="2ePp5XuOMvK" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getName" />
      <node concept="17QB3L" id="2ePp5XuOMvL" role="3clF45" />
      <node concept="3Tm1VV" id="2ePp5XuOMvM" role="1B3o_S" />
      <node concept="3clFbS" id="2ePp5XuOMvO" role="3clF47">
        <node concept="3clFbF" id="2ePp5XuOMCm" role="3cqZAp">
          <node concept="2OqwBi" id="2ePp5XuOMTr" role="3clFbG">
            <node concept="37vLTw" id="2ePp5XuOMCl" role="2Oq$k0">
              <ref role="3cqZAo" node="2ePp5XuOMkx" resolve="property" />
            </node>
            <node concept="liA8E" id="2ePp5XuON7k" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2ePp5XuOMvP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2ePp5XuOPY2">
    <property role="TrG5h" value="SReferenceLinkAdapter" />
    <node concept="2tJIrI" id="2ePp5XuOPY3" role="jymVt" />
    <node concept="312cEg" id="2ePp5XuOPY4" role="jymVt">
      <property role="TrG5h" value="link" />
      <node concept="3Tm6S6" id="2ePp5XuOPY5" role="1B3o_S" />
      <node concept="3uibUv" id="2ePp5XuOQoV" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
      </node>
    </node>
    <node concept="2tJIrI" id="2ePp5XuOPY7" role="jymVt" />
    <node concept="3Tm1VV" id="2ePp5XuOPY8" role="1B3o_S" />
    <node concept="3uibUv" id="2ePp5XuOQg6" role="EKbjA">
      <ref role="3uigEE" to="jks5:~IReferenceLink" resolve="IReferenceLink" />
    </node>
    <node concept="3clFbW" id="2ePp5XuOPYa" role="jymVt">
      <node concept="3cqZAl" id="2ePp5XuOPYb" role="3clF45" />
      <node concept="3Tm1VV" id="2ePp5XuOPYc" role="1B3o_S" />
      <node concept="3clFbS" id="2ePp5XuOPYd" role="3clF47">
        <node concept="3clFbF" id="2ePp5XuOPYe" role="3cqZAp">
          <node concept="37vLTI" id="2ePp5XuOPYf" role="3clFbG">
            <node concept="37vLTw" id="2ePp5XuOPYg" role="37vLTJ">
              <ref role="3cqZAo" node="2ePp5XuOPY4" resolve="link" />
            </node>
            <node concept="37vLTw" id="2ePp5XuOPYh" role="37vLTx">
              <ref role="3cqZAo" node="2ePp5XuOPYi" resolve="link1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2ePp5XuOPYi" role="3clF46">
        <property role="TrG5h" value="link1" />
        <node concept="3uibUv" id="2ePp5XuOQxD" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4wrAhqcLZON" role="jymVt" />
    <node concept="3clFb_" id="4wrAhqcLZWV" role="jymVt">
      <property role="TrG5h" value="getLink" />
      <node concept="3uibUv" id="4wrAhqcM0vB" role="3clF45">
        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
      </node>
      <node concept="3Tm1VV" id="4wrAhqcLZWY" role="1B3o_S" />
      <node concept="3clFbS" id="4wrAhqcLZWZ" role="3clF47">
        <node concept="3clFbF" id="4wrAhqcM0qg" role="3cqZAp">
          <node concept="37vLTw" id="4wrAhqcM0qf" role="3clFbG">
            <ref role="3cqZAo" node="2ePp5XuOPY4" resolve="link" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2ePp5XuOPYk" role="jymVt" />
    <node concept="3clFb_" id="2ePp5XuOPYl" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getName" />
      <node concept="17QB3L" id="2ePp5XuOPYm" role="3clF45" />
      <node concept="3Tm1VV" id="2ePp5XuOPYn" role="1B3o_S" />
      <node concept="3clFbS" id="2ePp5XuOPYo" role="3clF47">
        <node concept="3clFbF" id="2ePp5XuOPYp" role="3cqZAp">
          <node concept="2OqwBi" id="2ePp5XuOPYq" role="3clFbG">
            <node concept="37vLTw" id="2ePp5XuOPYr" role="2Oq$k0">
              <ref role="3cqZAo" node="2ePp5XuOPY4" resolve="link" />
            </node>
            <node concept="liA8E" id="2ePp5XuOPYs" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2ePp5XuOPYt" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2ePp5XuONi_">
    <property role="TrG5h" value="SContainmentLinkAdapter" />
    <node concept="2tJIrI" id="2ePp5XuONiA" role="jymVt" />
    <node concept="312cEg" id="2ePp5XuONiB" role="jymVt">
      <property role="TrG5h" value="link" />
      <node concept="3Tm6S6" id="2ePp5XuONiC" role="1B3o_S" />
      <node concept="3uibUv" id="2ePp5XuOOVb" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
    </node>
    <node concept="2tJIrI" id="2ePp5XuONiE" role="jymVt" />
    <node concept="3Tm1VV" id="2ePp5XuONiF" role="1B3o_S" />
    <node concept="3uibUv" id="2ePp5XuONrk" role="EKbjA">
      <ref role="3uigEE" to="jks5:~IChildLink" resolve="IChildLink" />
    </node>
    <node concept="3clFbW" id="2ePp5XuONiH" role="jymVt">
      <node concept="3cqZAl" id="2ePp5XuONiI" role="3clF45" />
      <node concept="3Tm1VV" id="2ePp5XuONiJ" role="1B3o_S" />
      <node concept="3clFbS" id="2ePp5XuONiK" role="3clF47">
        <node concept="3clFbF" id="2ePp5XuONiL" role="3cqZAp">
          <node concept="37vLTI" id="2ePp5XuONiM" role="3clFbG">
            <node concept="37vLTw" id="2ePp5XuONiN" role="37vLTJ">
              <ref role="3cqZAo" node="2ePp5XuONiB" resolve="link" />
            </node>
            <node concept="37vLTw" id="2ePp5XuONiO" role="37vLTx">
              <ref role="3cqZAo" node="2ePp5XuONiP" resolve="link1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2ePp5XuONiP" role="3clF46">
        <property role="TrG5h" value="link1" />
        <node concept="3uibUv" id="2ePp5XuOP7T" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4wrAhqcLu0t" role="jymVt" />
    <node concept="3clFb_" id="4wrAhqcLuj7" role="jymVt">
      <property role="TrG5h" value="getLink" />
      <node concept="3uibUv" id="4wrAhqcLwb4" role="3clF45">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
      <node concept="3Tm1VV" id="4wrAhqcLuja" role="1B3o_S" />
      <node concept="3clFbS" id="4wrAhqcLujb" role="3clF47">
        <node concept="3clFbF" id="4wrAhqcLw2N" role="3cqZAp">
          <node concept="37vLTw" id="4wrAhqcLw2M" role="3clFbG">
            <ref role="3cqZAo" node="2ePp5XuONiB" resolve="link" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2ePp5XuONiR" role="jymVt" />
    <node concept="3clFb_" id="2ePp5XuONiS" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getName" />
      <node concept="17QB3L" id="2ePp5XuONiT" role="3clF45" />
      <node concept="3Tm1VV" id="2ePp5XuONiU" role="1B3o_S" />
      <node concept="3clFbS" id="2ePp5XuONiV" role="3clF47">
        <node concept="3clFbF" id="2ePp5XuONiW" role="3cqZAp">
          <node concept="2OqwBi" id="2ePp5XuONiX" role="3clFbG">
            <node concept="37vLTw" id="2ePp5XuONiY" role="2Oq$k0">
              <ref role="3cqZAo" node="2ePp5XuONiB" resolve="link" />
            </node>
            <node concept="liA8E" id="2ePp5XuONiZ" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2ePp5XuONj0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3Ezg1fMI84X" role="jymVt" />
    <node concept="3clFb_" id="3Ezg1fMI7Sm" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isMultiple" />
      <node concept="10P_77" id="3Ezg1fMI7Sn" role="3clF45" />
      <node concept="3Tm1VV" id="3Ezg1fMI7So" role="1B3o_S" />
      <node concept="3clFbS" id="3Ezg1fMI7Sq" role="3clF47">
        <node concept="3clFbF" id="3Ezg1fMI8vN" role="3cqZAp">
          <node concept="2OqwBi" id="3Ezg1fMI8N9" role="3clFbG">
            <node concept="37vLTw" id="3Ezg1fMI8vM" role="2Oq$k0">
              <ref role="3cqZAo" node="2ePp5XuONiB" resolve="link" />
            </node>
            <node concept="liA8E" id="3Ezg1fMI95_" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractLink.isMultiple()" resolve="isMultiple" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3Ezg1fMI7Sr" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3Ezg1fMI$NI" role="jymVt" />
    <node concept="3clFb_" id="3Ezg1fMI$$b" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="3Ezg1fMI$$c" role="1B3o_S" />
      <node concept="17QB3L" id="3Ezg1fMI_65" role="3clF45" />
      <node concept="3clFbS" id="3Ezg1fMI$$f" role="3clF47">
        <node concept="3clFbF" id="3Ezg1fMI_$X" role="3cqZAp">
          <node concept="3cpWs3" id="3Ezg1fMIGk8" role="3clFbG">
            <node concept="2OqwBi" id="3Ezg1fMIJut" role="3uHU7w">
              <node concept="37vLTw" id="3Ezg1fMIIBT" role="2Oq$k0">
                <ref role="3cqZAo" node="2ePp5XuONiB" resolve="link" />
              </node>
              <node concept="liA8E" id="3Ezg1fMIK7U" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
              </node>
            </node>
            <node concept="3cpWs3" id="3Ezg1fMIDD7" role="3uHU7B">
              <node concept="2OqwBi" id="3Ezg1fMIALI" role="3uHU7B">
                <node concept="2OqwBi" id="3Ezg1fMI_Sj" role="2Oq$k0">
                  <node concept="37vLTw" id="3Ezg1fMI_$W" role="2Oq$k0">
                    <ref role="3cqZAo" node="2ePp5XuONiB" resolve="link" />
                  </node>
                  <node concept="liA8E" id="3Ezg1fMIAcq" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SConceptFeature.getOwner()" resolve="getOwner" />
                  </node>
                </node>
                <node concept="liA8E" id="3Ezg1fMICwo" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                </node>
              </node>
              <node concept="Xl_RD" id="3Ezg1fMIDOx" role="3uHU7w">
                <property role="Xl_RC" value="." />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3Ezg1fMI$$g" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5gTrVpGyZdS">
    <property role="2bfB8j" value="false" />
    <property role="TrG5h" value="SNodeReferenceAdapter" />
    <node concept="312cEg" id="5gTrVpGz1Wj" role="jymVt">
      <property role="TrG5h" value="ref" />
      <node concept="3Tm6S6" id="5gTrVpGz1Wk" role="1B3o_S" />
      <node concept="3uibUv" id="5gTrVpGz2tG" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
    </node>
    <node concept="3clFbW" id="5gTrVpGz3n8" role="jymVt">
      <node concept="3cqZAl" id="5gTrVpGz3n9" role="3clF45" />
      <node concept="3Tm1VV" id="QurUgiypsm" role="1B3o_S" />
      <node concept="3clFbS" id="5gTrVpGz3nc" role="3clF47">
        <node concept="3clFbF" id="5gTrVpGz3ng" role="3cqZAp">
          <node concept="37vLTI" id="5gTrVpGz3ni" role="3clFbG">
            <node concept="2OqwBi" id="QurUgiyxSS" role="37vLTJ">
              <node concept="Xjq3P" id="QurUgiyx$6" role="2Oq$k0" />
              <node concept="2OwXpG" id="QurUgiyy7_" role="2OqNvi">
                <ref role="2Oxat5" node="5gTrVpGz1Wj" resolve="ref" />
              </node>
            </node>
            <node concept="37vLTw" id="5gTrVpGz3nn" role="37vLTx">
              <ref role="3cqZAo" node="5gTrVpGz3nf" resolve="ref" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5gTrVpGz3nf" role="3clF46">
        <property role="TrG5h" value="ref" />
        <node concept="3uibUv" id="5gTrVpGz3ne" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
        <node concept="2AHcQZ" id="7gxeZuyeqq7" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="QurUgiyYbx" role="jymVt" />
    <node concept="3clFb_" id="QurUgiyYyg" role="jymVt">
      <property role="TrG5h" value="getReference" />
      <node concept="3uibUv" id="QurUgiz01d" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3Tm1VV" id="QurUgiyYyj" role="1B3o_S" />
      <node concept="3clFbS" id="QurUgiyYyk" role="3clF47">
        <node concept="3clFbF" id="QurUgiz0oQ" role="3cqZAp">
          <node concept="37vLTw" id="QurUgiz0oP" role="3clFbG">
            <ref role="3cqZAo" node="5gTrVpGz1Wj" resolve="ref" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="QurUgiyYfg" role="jymVt" />
    <node concept="3clFb_" id="5wi3nvJWXKw" role="jymVt">
      <property role="TrG5h" value="resolveNode" />
      <node concept="37vLTG" id="5wi3nvJWXKx" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="5wi3nvJWXKy" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INodeResolveContext" resolve="INodeResolveContext" />
        </node>
      </node>
      <node concept="3uibUv" id="5wi3nvJWXKz" role="3clF45">
        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
      </node>
      <node concept="3Tm1VV" id="5wi3nvJWXK$" role="1B3o_S" />
      <node concept="2AHcQZ" id="5wi3nvJWXKA" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="5wi3nvJWXKB" role="3clF47">
        <node concept="3clFbF" id="QurUgiyyw_" role="3cqZAp">
          <node concept="2OqwBi" id="QurUgiyyOP" role="3clFbG">
            <node concept="37vLTw" id="QurUgiyywz" role="2Oq$k0">
              <ref role="3cqZAo" node="5wi3nvJWXKx" resolve="context" />
            </node>
            <node concept="liA8E" id="QurUgiyzj_" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~INodeResolveContext.resolve(org.modelix.model.api.INodeReference)" resolve="resolve" />
              <node concept="Xjq3P" id="QurUgiyztA" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5wi3nvJWXKC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5gTrVpGz2u6" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="5gTrVpGz2u7" role="3clF45" />
      <node concept="3Tm1VV" id="5gTrVpGz2u8" role="1B3o_S" />
      <node concept="3clFbS" id="5gTrVpGz2u9" role="3clF47">
        <node concept="3clFbJ" id="5gTrVpGz2ua" role="3cqZAp">
          <node concept="3clFbS" id="5gTrVpGz2ub" role="3clFbx">
            <node concept="3cpWs6" id="5gTrVpGz2uc" role="3cqZAp">
              <node concept="3clFbT" id="5gTrVpGz2ud" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5gTrVpGz2ue" role="3clFbw">
            <node concept="Xjq3P" id="5gTrVpGz2u5" role="3uHU7B" />
            <node concept="37vLTw" id="5gTrVpGz2uf" role="3uHU7w">
              <ref role="3cqZAo" node="5gTrVpGz2uA" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5gTrVpGz2ug" role="3cqZAp">
          <node concept="3clFbS" id="5gTrVpGz2uh" role="3clFbx">
            <node concept="3cpWs6" id="5gTrVpGz2ui" role="3cqZAp">
              <node concept="3clFbT" id="5gTrVpGz2uj" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="5gTrVpGz2uk" role="3clFbw">
            <node concept="3clFbC" id="5gTrVpGz2ul" role="3uHU7B">
              <node concept="37vLTw" id="5gTrVpGz2um" role="3uHU7B">
                <ref role="3cqZAo" node="5gTrVpGz2uA" resolve="o" />
              </node>
              <node concept="10Nm6u" id="5gTrVpGz2un" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="5gTrVpGz2uo" role="3uHU7w">
              <node concept="2OqwBi" id="5gTrVpGz2up" role="3uHU7B">
                <node concept="Xjq3P" id="5gTrVpGz2uq" role="2Oq$k0" />
                <node concept="liA8E" id="5gTrVpGz2ur" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="2OqwBi" id="5gTrVpGz2us" role="3uHU7w">
                <node concept="37vLTw" id="5gTrVpGz2ut" role="2Oq$k0">
                  <ref role="3cqZAo" node="5gTrVpGz2uA" resolve="o" />
                </node>
                <node concept="liA8E" id="5gTrVpGz2uu" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5gTrVpGz2uv" role="3cqZAp" />
        <node concept="3cpWs8" id="5gTrVpGz2uw" role="3cqZAp">
          <node concept="3cpWsn" id="5gTrVpGz2ux" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="5gTrVpGz2uy" role="1tU5fm">
              <ref role="3uigEE" node="5gTrVpGyZdS" resolve="SNodeReferenceAdapter" />
            </node>
            <node concept="10QFUN" id="5gTrVpGz2uz" role="33vP2m">
              <node concept="3uibUv" id="5gTrVpGz2u$" role="10QFUM">
                <ref role="3uigEE" node="5gTrVpGyZdS" resolve="SNodeReferenceAdapter" />
              </node>
              <node concept="37vLTw" id="5gTrVpGz2u_" role="10QFUP">
                <ref role="3cqZAo" node="5gTrVpGz2uA" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5gTrVpGz2uK" role="3cqZAp">
          <node concept="3clFbS" id="5gTrVpGz2uL" role="3clFbx">
            <node concept="3cpWs6" id="5gTrVpGz2uM" role="3cqZAp">
              <node concept="3clFbT" id="5gTrVpGz2uN" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3K4zz7" id="5gTrVpGz2uO" role="3clFbw">
            <node concept="3fqX7Q" id="5gTrVpGz2uP" role="3K4E3e">
              <node concept="2OqwBi" id="5gTrVpGz2uQ" role="3fr31v">
                <node concept="liA8E" id="5gTrVpGz2uR" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="5gTrVpGz2uS" role="37wK5m">
                    <node concept="37vLTw" id="5gTrVpGz2uD" role="2Oq$k0">
                      <ref role="3cqZAo" node="5gTrVpGz2ux" resolve="that" />
                    </node>
                    <node concept="2OwXpG" id="5gTrVpGz2uG" role="2OqNvi">
                      <ref role="2Oxat5" node="5gTrVpGz1Wj" resolve="ref" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5gTrVpGz2uH" role="2Oq$k0">
                  <ref role="3cqZAo" node="5gTrVpGz1Wj" resolve="ref" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="5gTrVpGz2uT" role="3K4Cdx">
              <node concept="10Nm6u" id="5gTrVpGz2uU" role="3uHU7w" />
              <node concept="37vLTw" id="5gTrVpGz2uI" role="3uHU7B">
                <ref role="3cqZAo" node="5gTrVpGz1Wj" resolve="ref" />
              </node>
            </node>
            <node concept="3y3z36" id="5gTrVpGz2uV" role="3K4GZi">
              <node concept="10Nm6u" id="5gTrVpGz2uW" role="3uHU7w" />
              <node concept="2OqwBi" id="5gTrVpGz2uX" role="3uHU7B">
                <node concept="37vLTw" id="5gTrVpGz2uY" role="2Oq$k0">
                  <ref role="3cqZAo" node="5gTrVpGz2ux" resolve="that" />
                </node>
                <node concept="2OwXpG" id="5gTrVpGz2uJ" role="2OqNvi">
                  <ref role="2Oxat5" node="5gTrVpGz1Wj" resolve="ref" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5gTrVpGz2uZ" role="3cqZAp" />
        <node concept="3clFbF" id="5gTrVpGz2v0" role="3cqZAp">
          <node concept="3clFbT" id="5gTrVpGz2v1" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5gTrVpGz2uA" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="5gTrVpGz2uB" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5gTrVpGz2uC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5gTrVpGz2v2" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="5gTrVpGz2v3" role="3clF45" />
      <node concept="3Tm1VV" id="5gTrVpGz2v4" role="1B3o_S" />
      <node concept="3clFbS" id="5gTrVpGz2v5" role="3clF47">
        <node concept="3cpWs8" id="5gTrVpGz2v7" role="3cqZAp">
          <node concept="3cpWsn" id="5gTrVpGz2v8" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Oyi0" id="5gTrVpGz2v9" role="1tU5fm" />
            <node concept="3cmrfG" id="5gTrVpGz2va" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5gTrVpGz2vk" role="3cqZAp">
          <node concept="37vLTI" id="5gTrVpGz2vl" role="3clFbG">
            <node concept="3cpWs3" id="5gTrVpGz2vm" role="37vLTx">
              <node concept="1eOMI4" id="5gTrVpGz2vn" role="3uHU7w">
                <node concept="3K4zz7" id="5gTrVpGz2vo" role="1eOMHV">
                  <node concept="3cmrfG" id="5gTrVpGz2vp" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3y3z36" id="5gTrVpGz2vq" role="3K4Cdx">
                    <node concept="10Nm6u" id="5gTrVpGz2vr" role="3uHU7w" />
                    <node concept="37vLTw" id="5gTrVpGz2vi" role="3uHU7B">
                      <ref role="3cqZAo" node="5gTrVpGz1Wj" resolve="ref" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5gTrVpGz2vs" role="3K4E3e">
                    <node concept="1eOMI4" id="5gTrVpGz2vt" role="2Oq$k0">
                      <node concept="10QFUN" id="5gTrVpGz2vu" role="1eOMHV">
                        <node concept="3uibUv" id="5gTrVpGz2vv" role="10QFUM">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                        <node concept="37vLTw" id="5gTrVpGz2vj" role="10QFUP">
                          <ref role="3cqZAo" node="5gTrVpGz1Wj" resolve="ref" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="5gTrVpGz2vw" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17qRlL" id="5gTrVpGz2vg" role="3uHU7B">
                <node concept="3cmrfG" id="5gTrVpGz2vh" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="5gTrVpGz2vb" role="3uHU7w">
                  <ref role="3cqZAo" node="5gTrVpGz2v8" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5gTrVpGz2vx" role="37vLTJ">
              <ref role="3cqZAo" node="5gTrVpGz2v8" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5gTrVpGz2vy" role="3cqZAp">
          <node concept="37vLTw" id="5gTrVpGz2vz" role="3clFbG">
            <ref role="3cqZAo" node="5gTrVpGz2v8" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5gTrVpGz2v6" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5wism0x_$5j" role="jymVt" />
    <node concept="3uibUv" id="5gTrVpGz6dm" role="EKbjA">
      <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
    </node>
    <node concept="3Tm1VV" id="QurUgiyoAc" role="1B3o_S" />
    <node concept="3clFb_" id="5wism0x_zHH" role="jymVt">
      <property role="TrG5h" value="toString" />
      <node concept="17QB3L" id="5wism0x_zHI" role="3clF45" />
      <node concept="3Tm1VV" id="5wism0x_zHJ" role="1B3o_S" />
      <node concept="3clFbS" id="5wism0x_zHK" role="3clF47">
        <node concept="3clFbF" id="5wism0x_zHL" role="3cqZAp">
          <node concept="3cpWs3" id="5wism0x_zHF" role="3clFbG">
            <node concept="Xl_RD" id="5wism0x_zHG" role="3uHU7w">
              <property role="Xl_RC" value="}" />
            </node>
            <node concept="3cpWs3" id="5wism0x_zHE" role="3uHU7B">
              <node concept="37vLTw" id="5wism0x_zHA" role="3uHU7w">
                <ref role="3cqZAo" node="5gTrVpGz1Wj" resolve="ref" />
              </node>
              <node concept="3cpWs3" id="5wism0x_zHC" role="3uHU7B">
                <node concept="Xl_RD" id="5wism0x_zHD" role="3uHU7B">
                  <property role="Xl_RC" value="SNodeReferenceAdapter{" />
                </node>
                <node concept="Xl_RD" id="5wism0x_zHB" role="3uHU7w">
                  <property role="Xl_RC" value="ref=" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5wism0x_zHM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5gTrVpGjuLg">
    <property role="TrG5h" value="SNodeToNodeAdapter" />
    <node concept="2tJIrI" id="4YS7uhTwaKc" role="jymVt" />
    <node concept="2YIFZL" id="5gTrVpGyMwR" role="jymVt">
      <property role="TrG5h" value="wrap" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="5gTrVpGyFwz" role="3clF47">
        <node concept="3clFbJ" id="4EhVFrZhPYs" role="3cqZAp">
          <node concept="3clFbS" id="4EhVFrZhPYt" role="3clFbx">
            <node concept="3cpWs6" id="4EhVFrZhPYu" role="3cqZAp">
              <node concept="10Nm6u" id="4EhVFrZhPYv" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="4EhVFrZhPYw" role="3clFbw">
            <node concept="10Nm6u" id="4EhVFrZhPYx" role="3uHU7w" />
            <node concept="37vLTw" id="4EhVFrZhPYy" role="3uHU7B">
              <ref role="3cqZAo" node="5gTrVpGyKic" resolve="nodeToWrap" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4EhVFrZhPYz" role="3cqZAp">
          <node concept="3clFbS" id="4EhVFrZhPY$" role="3clFbx">
            <node concept="3cpWs6" id="4EhVFrZhPY_" role="3cqZAp">
              <node concept="2OqwBi" id="4EhVFrZhPYA" role="3cqZAk">
                <node concept="1eOMI4" id="4EhVFrZhPYB" role="2Oq$k0">
                  <node concept="10QFUN" id="4EhVFrZhPYC" role="1eOMHV">
                    <node concept="3uibUv" id="4EhVFrZhQo0" role="10QFUM">
                      <ref role="3uigEE" node="4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                    </node>
                    <node concept="37vLTw" id="4EhVFrZhPYE" role="10QFUP">
                      <ref role="3cqZAo" node="5gTrVpGyKic" resolve="nodeToWrap" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4EhVFrZhPYF" role="2OqNvi">
                  <ref role="37wK5l" node="4EhVFrZhzvo" resolve="getWrapped" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="4EhVFrZhPYG" role="3clFbw">
            <node concept="3uibUv" id="4EhVFrZjLZi" role="2ZW6by">
              <ref role="3uigEE" node="4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
            </node>
            <node concept="37vLTw" id="4EhVFrZhPYI" role="2ZW6bz">
              <ref role="3cqZAo" node="5gTrVpGyKic" resolve="nodeToWrap" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4EhVFrZhPYJ" role="3cqZAp">
          <node concept="2ShNRf" id="4EhVFrZhPYK" role="3clFbG">
            <node concept="1pGfFk" id="4EhVFrZhPYL" role="2ShVmc">
              <ref role="37wK5l" node="5gTrVpGjEP4" resolve="SNodeToNodeAdapter" />
              <node concept="37vLTw" id="4EhVFrZhPYM" role="37wK5m">
                <ref role="3cqZAo" node="5gTrVpGyKic" resolve="nodeToWrap" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5gTrVpGyKic" role="3clF46">
        <property role="TrG5h" value="nodeToWrap" />
        <node concept="3uibUv" id="5gTrVpGyLnc" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3uibUv" id="4EhVFrZhkmW" role="3clF45">
        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
      </node>
      <node concept="3Tm1VV" id="5gTrVpGyNFn" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1cIlazwUc5a" role="jymVt" />
    <node concept="2YIFZL" id="1cIlazwUde_" role="jymVt">
      <property role="TrG5h" value="wrap" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="1cIlazwUdeA" role="3clF47">
        <node concept="3SKdUt" id="1cIlazwUgOk" role="3cqZAp">
          <node concept="1PaTwC" id="7WTFIQIcYcY" role="1aUNEU">
            <node concept="3oM_SD" id="7WTFIQIcYcZ" role="1PaTwD">
              <property role="3oM_SC" value="Makes" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYd0" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYd1" role="1PaTwD">
              <property role="3oM_SC" value="generation" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYd2" role="1PaTwD">
              <property role="3oM_SC" value="easier." />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYd3" role="1PaTwD">
              <property role="3oM_SC" value="wrap" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYd4" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYd5" role="1PaTwD">
              <property role="3oM_SC" value="always" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYd6" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYd7" role="1PaTwD">
              <property role="3oM_SC" value="applied" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYd8" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYd9" role="1PaTwD">
              <property role="3oM_SC" value="ensure" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYda" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYdb" role="1PaTwD">
              <property role="3oM_SC" value="value" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYdc" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYdd" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYde" role="1PaTwD">
              <property role="3oM_SC" value="INode." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1cIlazwUgg9" role="3cqZAp">
          <node concept="37vLTw" id="1cIlazwUgg8" role="3clFbG">
            <ref role="3cqZAo" node="1cIlazwUdeY" resolve="nodeToWrap" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1cIlazwUdeY" role="3clF46">
        <property role="TrG5h" value="nodeToWrap" />
        <node concept="3uibUv" id="1cIlazwUf_t" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
      </node>
      <node concept="3uibUv" id="1cIlazwUdf0" role="3clF45">
        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
      </node>
      <node concept="3Tm1VV" id="1cIlazwUdf1" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4cPrGro4oxb" role="jymVt" />
    <node concept="312cEg" id="5gTrVpGjuMh" role="jymVt">
      <property role="TrG5h" value="node" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5gTrVpGjuMi" role="1B3o_S" />
      <node concept="3uibUv" id="5gTrVpGjEO8" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gTrVpGjEOF" role="jymVt" />
    <node concept="3Tm1VV" id="5gTrVpGjuLh" role="1B3o_S" />
    <node concept="3uibUv" id="5gTrVpGjuLJ" role="EKbjA">
      <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
    </node>
    <node concept="3clFbW" id="5gTrVpGjEP4" role="jymVt">
      <node concept="3cqZAl" id="5gTrVpGjEP5" role="3clF45" />
      <node concept="3Tm6S6" id="4EhVFrZi6lh" role="1B3o_S" />
      <node concept="3clFbS" id="5gTrVpGjEP8" role="3clF47">
        <node concept="3clFbF" id="5gTrVpGjEPc" role="3cqZAp">
          <node concept="37vLTI" id="5gTrVpGjEPe" role="3clFbG">
            <node concept="37vLTw" id="5gTrVpGjEPi" role="37vLTJ">
              <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
            </node>
            <node concept="37vLTw" id="5gTrVpGjEPj" role="37vLTx">
              <ref role="3cqZAo" node="5gTrVpGjEPb" resolve="node1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3zTK92LbE49" role="3cqZAp">
          <node concept="1rXfSq" id="3zTK92LbE4a" role="3clFbG">
            <ref role="37wK5l" node="3zTK92LatQ_" resolve="notifyModelContentDependency" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5gTrVpGjEPb" role="3clF46">
        <property role="TrG5h" value="node1" />
        <node concept="3uibUv" id="5gTrVpGjEPa" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5100827IsH3" role="jymVt" />
    <node concept="3clFb_" id="3zTK92LatQ_" role="jymVt">
      <property role="TrG5h" value="notifyModelContentDependency" />
      <node concept="3cqZAl" id="3zTK92LatQB" role="3clF45" />
      <node concept="3Tmbuc" id="3zTK92LaNVI" role="1B3o_S" />
      <node concept="3clFbS" id="3zTK92LatQD" role="3clF47">
        <node concept="3cpWs8" id="3zTK92Lbk98" role="3cqZAp">
          <node concept="3cpWsn" id="3zTK92Lbk99" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="3zTK92Lbk95" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="3zTK92Lbk9a" role="33vP2m">
              <node concept="37vLTw" id="3zTK92Lbk9b" role="2Oq$k0">
                <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
              </node>
              <node concept="liA8E" id="3zTK92Lbk9c" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3zTK92LblaQ" role="3cqZAp">
          <node concept="3clFbS" id="3zTK92LblaS" role="3clFbx">
            <node concept="3cpWs6" id="3zTK92Lbl_q" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="3zTK92Lbltq" role="3clFbw">
            <node concept="10Nm6u" id="3zTK92Lblz1" role="3uHU7w" />
            <node concept="37vLTw" id="3zTK92Lbliu" role="3uHU7B">
              <ref role="3cqZAo" node="3zTK92Lbk99" resolve="model" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1m9roGBsSdH" role="3cqZAp">
          <node concept="1PaTwC" id="1m9roGBsSdI" role="1aUNEU">
            <node concept="3oM_SD" id="1m9roGBsSdJ" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3zTK92LaqV9" role="jymVt" />
    <node concept="3clFb_" id="5100827IpTG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isValid" />
      <node concept="10P_77" id="5100827IpTH" role="3clF45" />
      <node concept="3Tm1VV" id="5100827IpTI" role="1B3o_S" />
      <node concept="3clFbS" id="5100827IpTK" role="3clF47">
        <node concept="3clFbF" id="5100827IvHC" role="3cqZAp">
          <node concept="3clFbT" id="5100827IvHB" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5100827IpTL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4EhVFrZhJMV" role="jymVt" />
    <node concept="3clFb_" id="4EhVFrZhIFH" role="jymVt">
      <property role="TrG5h" value="getWrapped" />
      <node concept="3uibUv" id="4EhVFrZhKS3" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm1VV" id="4EhVFrZhIFJ" role="1B3o_S" />
      <node concept="3clFbS" id="4EhVFrZhIFK" role="3clF47">
        <node concept="3clFbF" id="4EhVFrZhIFL" role="3cqZAp">
          <node concept="37vLTw" id="4EhVFrZhIFM" role="3clFbG">
            <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5gTrVpGqpzU" role="jymVt" />
    <node concept="3clFb_" id="5gTrVpGjESX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConcept" />
      <node concept="3uibUv" id="1m9roGBsShK" role="3clF45">
        <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
      </node>
      <node concept="3Tm1VV" id="5gTrVpGjESZ" role="1B3o_S" />
      <node concept="3clFbS" id="5gTrVpGjET1" role="3clF47">
        <node concept="3clFbF" id="5gTrVpGjJTk" role="3cqZAp">
          <node concept="2ShNRf" id="5gTrVpGjJTi" role="3clFbG">
            <node concept="1pGfFk" id="5gTrVpGjK1z" role="2ShVmc">
              <ref role="37wK5l" node="5gTrVpGjFod" resolve="SConceptAdapter" />
              <node concept="2OqwBi" id="5gTrVpGjKdC" role="37wK5m">
                <node concept="37vLTw" id="5gTrVpGjK3m" role="2Oq$k0">
                  <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
                </node>
                <node concept="liA8E" id="5gTrVpGjKAP" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5gTrVpGjET2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gTrVpGk5Mw" role="jymVt" />
    <node concept="3clFb_" id="5gTrVpGjOm7" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getRoleInParent" />
      <node concept="17QB3L" id="5gTrVpGjOm8" role="3clF45" />
      <node concept="3Tm1VV" id="5gTrVpGjOm9" role="1B3o_S" />
      <node concept="3clFbS" id="5gTrVpGjOmb" role="3clF47">
        <node concept="3clFbF" id="3zTK92Lbw0x" role="3cqZAp">
          <node concept="1rXfSq" id="3zTK92Lbw0v" role="3clFbG">
            <ref role="37wK5l" node="3zTK92LatQ_" resolve="notifyModelContentDependency" />
          </node>
        </node>
        <node concept="3cpWs8" id="qmkA5fSmJq" role="3cqZAp">
          <node concept="3cpWsn" id="qmkA5fSmJr" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3uibUv" id="qmkA5fSmJs" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2OqwBi" id="qmkA5fSmJt" role="33vP2m">
              <node concept="37vLTw" id="qmkA5fSmJu" role="2Oq$k0">
                <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
              </node>
              <node concept="liA8E" id="qmkA5fSmJv" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="qmkA5fSmJw" role="3cqZAp">
          <node concept="3clFbS" id="qmkA5fSmJx" role="3clFbx">
            <node concept="3cpWs6" id="qmkA5fSmJy" role="3cqZAp">
              <node concept="2OqwBi" id="qmkA5fSt1J" role="3cqZAk">
                <node concept="2OqwBi" id="qmkA5fSoNV" role="2Oq$k0">
                  <node concept="37vLTw" id="qmkA5fSnj1" role="2Oq$k0">
                    <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
                  </node>
                  <node concept="liA8E" id="qmkA5fSqGf" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getContainmentLink()" resolve="getContainmentLink" />
                  </node>
                </node>
                <node concept="liA8E" id="qmkA5fSv_o" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="qmkA5fSmJ_" role="3clFbw">
            <node concept="10Nm6u" id="qmkA5fSmJA" role="3uHU7w" />
            <node concept="37vLTw" id="qmkA5fSmJB" role="3uHU7B">
              <ref role="3cqZAo" node="qmkA5fSmJr" resolve="parent" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="qmkA5fSmJC" role="3cqZAp">
          <node concept="3cpWsn" id="qmkA5fSmJD" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="qmkA5fSmJE" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="qmkA5fSmJF" role="33vP2m">
              <node concept="37vLTw" id="qmkA5fSmJG" role="2Oq$k0">
                <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
              </node>
              <node concept="liA8E" id="qmkA5fSmJH" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="qmkA5fSmJI" role="3cqZAp">
          <node concept="3clFbS" id="qmkA5fSmJJ" role="3clFbx">
            <node concept="3cpWs6" id="qmkA5fSmJK" role="3cqZAp">
              <node concept="2OqwBi" id="qmkA5fSE8b" role="3cqZAk">
                <node concept="359W_D" id="qmkA5fSzIe" role="2Oq$k0">
                  <ref role="359W_E" to="dj5d:qmkA5fOskc" resolve="Model" />
                  <ref role="359W_F" to="dj5d:qmkA5fOskk" resolve="rootNodes" />
                </node>
                <node concept="liA8E" id="qmkA5fSGwO" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="qmkA5fSmJO" role="3clFbw">
            <node concept="10Nm6u" id="qmkA5fSmJP" role="3uHU7w" />
            <node concept="37vLTw" id="qmkA5fSmJQ" role="3uHU7B">
              <ref role="3cqZAo" node="qmkA5fSmJD" resolve="model" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="qmkA5fSmJR" role="3cqZAp">
          <node concept="10Nm6u" id="qmkA5fSmJS" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5gTrVpGjOmc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gTrVpGyBAG" role="jymVt" />
    <node concept="3clFb_" id="5gTrVpGyAEU" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getParent" />
      <node concept="3Tm1VV" id="5gTrVpGyAEW" role="1B3o_S" />
      <node concept="3uibUv" id="5gTrVpGyAEX" role="3clF45">
        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
      </node>
      <node concept="3clFbS" id="5gTrVpGyAEY" role="3clF47">
        <node concept="3clFbF" id="3zTK92LbyI9" role="3cqZAp">
          <node concept="1rXfSq" id="3zTK92LbyIa" role="3clFbG">
            <ref role="37wK5l" node="3zTK92LatQ_" resolve="notifyModelContentDependency" />
          </node>
        </node>
        <node concept="3cpWs8" id="qmkA5fROWM" role="3cqZAp">
          <node concept="3cpWsn" id="qmkA5fROWN" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3uibUv" id="qmkA5fROWL" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2OqwBi" id="qmkA5fROWO" role="33vP2m">
              <node concept="37vLTw" id="qmkA5fROWP" role="2Oq$k0">
                <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
              </node>
              <node concept="liA8E" id="qmkA5fROWQ" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getParent()" resolve="getParent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="qmkA5fRPo8" role="3cqZAp">
          <node concept="3clFbS" id="qmkA5fRPoa" role="3clFbx">
            <node concept="3cpWs6" id="qmkA5fRPGP" role="3cqZAp">
              <node concept="1rXfSq" id="qmkA5fRPGR" role="3cqZAk">
                <ref role="37wK5l" node="5gTrVpGyMwR" resolve="wrap" />
                <node concept="37vLTw" id="qmkA5fRPGS" role="37wK5m">
                  <ref role="3cqZAo" node="qmkA5fROWN" resolve="parent" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="qmkA5fRPC6" role="3clFbw">
            <node concept="10Nm6u" id="qmkA5fRPEw" role="3uHU7w" />
            <node concept="37vLTw" id="qmkA5fRPrD" role="3uHU7B">
              <ref role="3cqZAo" node="qmkA5fROWN" resolve="parent" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="qmkA5fS08S" role="3cqZAp">
          <node concept="3cpWsn" id="qmkA5fS08T" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="qmkA5fS08P" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="qmkA5fS08U" role="33vP2m">
              <node concept="37vLTw" id="qmkA5fS08V" role="2Oq$k0">
                <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
              </node>
              <node concept="liA8E" id="qmkA5fS08W" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="qmkA5fS61D" role="3cqZAp">
          <node concept="3clFbS" id="qmkA5fS61F" role="3clFbx">
            <node concept="3cpWs6" id="qmkA5fS8ev" role="3cqZAp">
              <node concept="2ShNRf" id="qmkA5fSaiB" role="3cqZAk">
                <node concept="1pGfFk" id="qmkA5fScKt" role="2ShVmc">
                  <ref role="37wK5l" node="qmkA5fOXr4" resolve="SModelAsNode" />
                  <node concept="37vLTw" id="qmkA5fSeLk" role="37wK5m">
                    <ref role="3cqZAo" node="qmkA5fS08T" resolve="model" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="qmkA5fS8a9" role="3clFbw">
            <node concept="10Nm6u" id="qmkA5fS8co" role="3uHU7w" />
            <node concept="37vLTw" id="qmkA5fS81f" role="3uHU7B">
              <ref role="3cqZAo" node="qmkA5fS08T" resolve="model" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="qmkA5fSiJd" role="3cqZAp">
          <node concept="10Nm6u" id="qmkA5fSkJa" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5gTrVpGyAEZ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gTrVpGyWTH" role="jymVt" />
    <node concept="3clFb_" id="5gTrVpGyVHM" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getReference" />
      <node concept="3Tm1VV" id="5gTrVpGyVHO" role="1B3o_S" />
      <node concept="3uibUv" id="5gTrVpGyVHP" role="3clF45">
        <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
      </node>
      <node concept="3clFbS" id="5gTrVpGyVHQ" role="3clF47">
        <node concept="3clFbF" id="5gTrVpGz4Ju" role="3cqZAp">
          <node concept="2ShNRf" id="5gTrVpGz4Js" role="3clFbG">
            <node concept="1pGfFk" id="5gTrVpGz4W9" role="2ShVmc">
              <ref role="37wK5l" node="5gTrVpGz3n8" resolve="SNodeReferenceAdapter" />
              <node concept="2OqwBi" id="5gTrVpGz59d" role="37wK5m">
                <node concept="37vLTw" id="5gTrVpGz4Zy" role="2Oq$k0">
                  <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
                </node>
                <node concept="liA8E" id="5gTrVpGz5Ft" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5gTrVpGyVHR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gTrVpGk6lj" role="jymVt" />
    <node concept="3clFb_" id="5gTrVpGjET5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getChildren" />
      <node concept="37vLTG" id="5gTrVpGjET6" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="5gTrVpGjET7" role="1tU5fm" />
      </node>
      <node concept="A3Dl8" id="1yReInJPpr" role="3clF45">
        <node concept="3uibUv" id="1yReInJSYb" role="A3Ik2">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5gTrVpGjETa" role="1B3o_S" />
      <node concept="3clFbS" id="5gTrVpGjETc" role="3clF47">
        <node concept="3clFbF" id="3zTK92Lb_s9" role="3cqZAp">
          <node concept="1rXfSq" id="3zTK92Lb_sa" role="3clFbG">
            <ref role="37wK5l" node="3zTK92LatQ_" resolve="notifyModelContentDependency" />
          </node>
        </node>
        <node concept="3clFbF" id="1m9roGBz4WM" role="3cqZAp">
          <node concept="2OqwBi" id="1yReInK2fl" role="3clFbG">
            <node concept="1rXfSq" id="1m9roGBz4WK" role="2Oq$k0">
              <ref role="37wK5l" node="5gTrVpGjETe" resolve="getAllChildren" />
            </node>
            <node concept="3zZkjj" id="1yReInK2UV" role="2OqNvi">
              <node concept="1bVj0M" id="1yReInK2UX" role="23t8la">
                <node concept="3clFbS" id="1yReInK2UY" role="1bW5cS">
                  <node concept="3clFbF" id="1yReInK3aP" role="3cqZAp">
                    <node concept="17R0WA" id="1yReInK3aR" role="3clFbG">
                      <node concept="37vLTw" id="1yReInK3aS" role="3uHU7w">
                        <ref role="3cqZAo" node="5gTrVpGjET6" resolve="role" />
                      </node>
                      <node concept="2OqwBi" id="1yReInK3aT" role="3uHU7B">
                        <node concept="37vLTw" id="1yReInK3aU" role="2Oq$k0">
                          <ref role="3cqZAo" node="1yReInK2UZ" resolve="it" />
                        </node>
                        <node concept="liA8E" id="1yReInK3aV" role="2OqNvi">
                          <ref role="37wK5l" to="jks5:~INode.getRoleInParent()" resolve="getRoleInParent" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1yReInK2UZ" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1yReInK2V0" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5gTrVpGjETd" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gTrVpGk6S7" role="jymVt" />
    <node concept="3clFb_" id="5gTrVpGjETe" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getAllChildren" />
      <node concept="A3Dl8" id="1yReInJWCM" role="3clF45">
        <node concept="3uibUv" id="1yReInJZNr" role="A3Ik2">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5gTrVpGjETh" role="1B3o_S" />
      <node concept="3clFbS" id="5gTrVpGjETj" role="3clF47">
        <node concept="3clFbF" id="3zTK92LbA01" role="3cqZAp">
          <node concept="1rXfSq" id="3zTK92LbA02" role="3clFbG">
            <ref role="37wK5l" node="3zTK92LatQ_" resolve="notifyModelContentDependency" />
          </node>
        </node>
        <node concept="3cpWs8" id="5gTrVpGjM7N" role="3cqZAp">
          <node concept="3cpWsn" id="5gTrVpGjM7O" role="3cpWs9">
            <property role="TrG5h" value="children" />
            <node concept="A3Dl8" id="5gTrVpGjM7P" role="1tU5fm">
              <node concept="3qUE_q" id="5gTrVpGjM7Q" role="A3Ik2">
                <node concept="3uibUv" id="5gTrVpGjM7R" role="3qUE_r">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5gTrVpGjM7S" role="33vP2m">
              <node concept="37vLTw" id="5gTrVpGjM7T" role="2Oq$k0">
                <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
              </node>
              <node concept="liA8E" id="5gTrVpGjM7U" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1m9roGBzeZV" role="3cqZAp">
          <node concept="2OqwBi" id="1m9roGBzfCa" role="3clFbG">
            <node concept="37vLTw" id="1m9roGBzfCb" role="2Oq$k0">
              <ref role="3cqZAo" node="5gTrVpGjM7O" resolve="children" />
            </node>
            <node concept="3$u5V9" id="1m9roGBzfCc" role="2OqNvi">
              <node concept="1bVj0M" id="1m9roGBzfCd" role="23t8la">
                <node concept="3clFbS" id="1m9roGBzfCe" role="1bW5cS">
                  <node concept="3cpWs8" id="1m9roGBzgYB" role="3cqZAp">
                    <node concept="3cpWsn" id="1m9roGBzgYC" role="3cpWs9">
                      <property role="TrG5h" value="n" />
                      <node concept="3uibUv" id="1m9roGBzhPe" role="1tU5fm">
                        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                      </node>
                      <node concept="2ShNRf" id="1m9roGBzgYD" role="33vP2m">
                        <node concept="1pGfFk" id="1m9roGBzgYE" role="2ShVmc">
                          <ref role="37wK5l" node="5gTrVpGjEP4" resolve="SNodeToNodeAdapter" />
                          <node concept="37vLTw" id="1m9roGBzgYF" role="37wK5m">
                            <ref role="3cqZAo" node="1m9roGBzfCj" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1m9roGBzfCf" role="3cqZAp">
                    <node concept="37vLTw" id="1m9roGBzgYG" role="3clFbG">
                      <ref role="3cqZAo" node="1m9roGBzgYC" resolve="n" />
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1m9roGBzfCj" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1m9roGBzfCk" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5gTrVpGjETk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gTrVpGk7qW" role="jymVt" />
    <node concept="3clFb_" id="5gTrVpGjETl" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addChild" />
      <node concept="37vLTG" id="5gTrVpGjETm" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="5gTrVpGjETn" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3ECE8iPHlIM" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="3ECE8iPHm2s" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5gTrVpGjETo" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="5gTrVpGjETp" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
      </node>
      <node concept="3cqZAl" id="5gTrVpGjETq" role="3clF45" />
      <node concept="3Tm1VV" id="5gTrVpGjETr" role="1B3o_S" />
      <node concept="3clFbS" id="5gTrVpGjETt" role="3clF47">
        <node concept="3cpWs8" id="4cPrGro4e6f" role="3cqZAp">
          <node concept="3cpWsn" id="4cPrGro4e6g" role="3cpWs9">
            <property role="TrG5h" value="links" />
            <node concept="A3Dl8" id="4cPrGro4e6h" role="1tU5fm">
              <node concept="3uibUv" id="4cPrGro4e6i" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
              </node>
            </node>
            <node concept="2OqwBi" id="4cPrGro4e6j" role="33vP2m">
              <node concept="2OqwBi" id="4cPrGro4e6k" role="2Oq$k0">
                <node concept="37vLTw" id="4cPrGro4e6l" role="2Oq$k0">
                  <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
                </node>
                <node concept="liA8E" id="4cPrGro4e6m" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                </node>
              </node>
              <node concept="liA8E" id="4cPrGro4e6n" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getContainmentLinks()" resolve="getContainmentLinks" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4cPrGro4e6o" role="3cqZAp">
          <node concept="3cpWsn" id="4cPrGro4e6p" role="3cpWs9">
            <property role="TrG5h" value="link" />
            <node concept="3uibUv" id="4cPrGro4e6q" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
            </node>
            <node concept="2OqwBi" id="4cPrGro4e6r" role="33vP2m">
              <node concept="37vLTw" id="4cPrGro4e6s" role="2Oq$k0">
                <ref role="3cqZAo" node="4cPrGro4e6g" resolve="links" />
              </node>
              <node concept="1z4cxt" id="4cPrGro4e6t" role="2OqNvi">
                <node concept="1bVj0M" id="4cPrGro4e6u" role="23t8la">
                  <node concept="3clFbS" id="4cPrGro4e6v" role="1bW5cS">
                    <node concept="3clFbF" id="4cPrGro4e6w" role="3cqZAp">
                      <node concept="17R0WA" id="4cPrGro4e6x" role="3clFbG">
                        <node concept="37vLTw" id="4cPrGro4e6y" role="3uHU7w">
                          <ref role="3cqZAo" node="5gTrVpGjETm" resolve="role" />
                        </node>
                        <node concept="2OqwBi" id="4cPrGro4e6z" role="3uHU7B">
                          <node concept="37vLTw" id="4cPrGro4e6$" role="2Oq$k0">
                            <ref role="3cqZAo" node="4cPrGro4e6A" resolve="it" />
                          </node>
                          <node concept="liA8E" id="4cPrGro4e6_" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="4cPrGro4e6A" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="4cPrGro4e6B" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4cPrGro4e6C" role="3cqZAp">
          <node concept="3clFbS" id="4cPrGro4e6D" role="3clFbx">
            <node concept="YS8fn" id="4cPrGro4e6E" role="3cqZAp">
              <node concept="2ShNRf" id="4cPrGro4e6F" role="YScLw">
                <node concept="1pGfFk" id="4cPrGro4e6G" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="3cpWs3" id="4cPrGro4e6H" role="37wK5m">
                    <node concept="3cpWs3" id="4cPrGro4e6I" role="3uHU7B">
                      <node concept="37vLTw" id="4cPrGro4e6J" role="3uHU7w">
                        <ref role="3cqZAo" node="5gTrVpGjETm" resolve="role" />
                      </node>
                      <node concept="3cpWs3" id="4cPrGro4e6K" role="3uHU7B">
                        <node concept="2OqwBi" id="4cPrGro4e6L" role="3uHU7B">
                          <node concept="37vLTw" id="4cPrGro4e6M" role="2Oq$k0">
                            <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
                          </node>
                          <node concept="liA8E" id="4cPrGro4e6N" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="4cPrGro4e6O" role="3uHU7w">
                          <property role="Xl_RC" value=" has no containment link '" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="4cPrGro4e6P" role="3uHU7w">
                      <property role="Xl_RC" value="'" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4cPrGro4e6Q" role="3clFbw">
            <node concept="10Nm6u" id="4cPrGro4e6R" role="3uHU7w" />
            <node concept="37vLTw" id="4cPrGro4e6S" role="3uHU7B">
              <ref role="3cqZAo" node="4cPrGro4e6p" resolve="link" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4cPrGro4e6T" role="3cqZAp">
          <node concept="3cpWsn" id="4cPrGro4e6U" role="3cpWs9">
            <property role="TrG5h" value="children_" />
            <node concept="A3Dl8" id="4cPrGro4e6V" role="1tU5fm">
              <node concept="3qUE_q" id="4cPrGro4e6W" role="A3Ik2">
                <node concept="3uibUv" id="4cPrGro4e6X" role="3qUE_r">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4cPrGro4e6Y" role="33vP2m">
              <node concept="37vLTw" id="4cPrGro4e6Z" role="2Oq$k0">
                <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
              </node>
              <node concept="liA8E" id="4cPrGro4e70" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                <node concept="37vLTw" id="4cPrGro4e71" role="37wK5m">
                  <ref role="3cqZAo" node="4cPrGro4e6p" resolve="link" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4cPrGro4e72" role="3cqZAp">
          <node concept="3cpWsn" id="4cPrGro4e73" role="3cpWs9">
            <property role="TrG5h" value="children" />
            <node concept="_YKpA" id="4cPrGro4e74" role="1tU5fm">
              <node concept="3qUE_q" id="4cPrGro4e75" role="_ZDj9">
                <node concept="3uibUv" id="4cPrGro4e76" role="3qUE_r">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4cPrGro4e77" role="33vP2m">
              <node concept="37vLTw" id="4cPrGro4e78" role="2Oq$k0">
                <ref role="3cqZAo" node="4cPrGro4e6U" resolve="children_" />
              </node>
              <node concept="ANE8D" id="4cPrGro4e79" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4cPrGro4e7a" role="3cqZAp">
          <node concept="3clFbS" id="4cPrGro4e7b" role="3clFbx">
            <node concept="YS8fn" id="4cPrGro4e7c" role="3cqZAp">
              <node concept="2ShNRf" id="4cPrGro4e7d" role="YScLw">
                <node concept="1pGfFk" id="4cPrGro4e7e" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IndexOutOfBoundsException.&lt;init&gt;(java.lang.String)" resolve="IndexOutOfBoundsException" />
                  <node concept="3cpWs3" id="4cPrGro4e7f" role="37wK5m">
                    <node concept="3cpWs3" id="4cPrGro4e7g" role="3uHU7B">
                      <node concept="37vLTw" id="4cPrGro4e7h" role="3uHU7B">
                        <ref role="3cqZAo" node="3ECE8iPHlIM" resolve="index" />
                      </node>
                      <node concept="Xl_RD" id="4cPrGro4e7i" role="3uHU7w">
                        <property role="Xl_RC" value=" &gt; " />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4cPrGro4e7j" role="3uHU7w">
                      <node concept="37vLTw" id="4cPrGro4e7k" role="2Oq$k0">
                        <ref role="3cqZAo" node="4cPrGro4e6U" resolve="children_" />
                      </node>
                      <node concept="34oBXx" id="4cPrGro4e7l" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="4cPrGro4e7m" role="3clFbw">
            <node concept="37vLTw" id="4cPrGro4e7n" role="3uHU7B">
              <ref role="3cqZAo" node="3ECE8iPHlIM" resolve="index" />
            </node>
            <node concept="2OqwBi" id="4cPrGro4e7o" role="3uHU7w">
              <node concept="37vLTw" id="4cPrGro4e7p" role="2Oq$k0">
                <ref role="3cqZAo" node="4cPrGro4e73" resolve="children" />
              </node>
              <node concept="34oBXx" id="4cPrGro4e7q" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4cPrGro4e7L" role="3cqZAp">
          <node concept="3clFbS" id="4cPrGro4e7M" role="3clFbx">
            <node concept="3clFbF" id="4cPrGro4e7N" role="3cqZAp">
              <node concept="2OqwBi" id="4cPrGro4e7O" role="3clFbG">
                <node concept="37vLTw" id="4cPrGro4e7P" role="2Oq$k0">
                  <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
                </node>
                <node concept="liA8E" id="4cPrGro4e7Q" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.addChild(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="addChild" />
                  <node concept="37vLTw" id="4cPrGro4e7R" role="37wK5m">
                    <ref role="3cqZAo" node="4cPrGro4e6p" resolve="link" />
                  </node>
                  <node concept="2YIFZM" id="4cPrGro4yUG" role="37wK5m">
                    <ref role="1Pybhc" node="4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                    <ref role="37wK5l" node="4EhVFrZ6z9$" resolve="wrap" />
                    <node concept="37vLTw" id="4cPrGro4z60" role="37wK5m">
                      <ref role="3cqZAo" node="5gTrVpGjETo" resolve="child" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="4cPrGro4e7T" role="3clFbw">
            <node concept="3clFbC" id="4cPrGro4e7U" role="3uHU7w">
              <node concept="2OqwBi" id="4cPrGro4e7V" role="3uHU7w">
                <node concept="37vLTw" id="4cPrGro4e7W" role="2Oq$k0">
                  <ref role="3cqZAo" node="4cPrGro4e73" resolve="children" />
                </node>
                <node concept="34oBXx" id="4cPrGro4e7X" role="2OqNvi" />
              </node>
              <node concept="37vLTw" id="4cPrGro4e7Y" role="3uHU7B">
                <ref role="3cqZAo" node="3ECE8iPHlIM" resolve="index" />
              </node>
            </node>
            <node concept="3clFbC" id="4cPrGro4e7Z" role="3uHU7B">
              <node concept="37vLTw" id="4cPrGro4e80" role="3uHU7B">
                <ref role="3cqZAo" node="3ECE8iPHlIM" resolve="index" />
              </node>
              <node concept="3cmrfG" id="4cPrGro4e81" role="3uHU7w">
                <property role="3cmrfH" value="-1" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4cPrGro4e82" role="9aQIa">
            <node concept="3clFbS" id="4cPrGro4e83" role="9aQI4">
              <node concept="3clFbF" id="4cPrGro4e84" role="3cqZAp">
                <node concept="2OqwBi" id="4cPrGro4e85" role="3clFbG">
                  <node concept="37vLTw" id="4cPrGro4e86" role="2Oq$k0">
                    <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
                  </node>
                  <node concept="liA8E" id="4cPrGro4e87" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.insertChildBefore(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode)" resolve="insertChildBefore" />
                    <node concept="37vLTw" id="4cPrGro4e88" role="37wK5m">
                      <ref role="3cqZAo" node="4cPrGro4e6p" resolve="link" />
                    </node>
                    <node concept="2YIFZM" id="4cPrGro4zAL" role="37wK5m">
                      <ref role="37wK5l" node="4EhVFrZ6z9$" resolve="wrap" />
                      <ref role="1Pybhc" node="4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                      <node concept="37vLTw" id="4cPrGro4zAM" role="37wK5m">
                        <ref role="3cqZAo" node="5gTrVpGjETo" resolve="child" />
                      </node>
                    </node>
                    <node concept="1y4W85" id="4cPrGro4e8a" role="37wK5m">
                      <node concept="37vLTw" id="4cPrGro4e8b" role="1y58nS">
                        <ref role="3cqZAo" node="3ECE8iPHlIM" resolve="index" />
                      </node>
                      <node concept="37vLTw" id="4cPrGro4e8c" role="1y566C">
                        <ref role="3cqZAo" node="4cPrGro4e73" resolve="children" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5gTrVpGjETu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gTrVpGk7XM" role="jymVt" />
    <node concept="3clFb_" id="3ECE8iPHOrt" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addNewChild" />
      <node concept="37vLTG" id="3ECE8iPHOru" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="3ECE8iPHOrv" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3ECE8iPHOrw" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="3ECE8iPHOrx" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3ECE8iPHOry" role="3clF46">
        <property role="TrG5h" value="concept_" />
        <node concept="3uibUv" id="3ECE8iPHOrz" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
        </node>
      </node>
      <node concept="3uibUv" id="3ECE8iPHOr$" role="3clF45">
        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
      </node>
      <node concept="3Tm1VV" id="3ECE8iPHOr_" role="1B3o_S" />
      <node concept="3clFbS" id="3ECE8iPHOrB" role="3clF47">
        <node concept="3cpWs8" id="3ECE8iPI316" role="3cqZAp">
          <node concept="3cpWsn" id="3ECE8iPI317" role="3cpWs9">
            <property role="TrG5h" value="links" />
            <node concept="A3Dl8" id="3ECE8iPI3LN" role="1tU5fm">
              <node concept="3uibUv" id="3ECE8iPI3LP" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
              </node>
            </node>
            <node concept="2OqwBi" id="3ECE8iPI318" role="33vP2m">
              <node concept="2OqwBi" id="3ECE8iPI319" role="2Oq$k0">
                <node concept="37vLTw" id="3ECE8iPI31a" role="2Oq$k0">
                  <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
                </node>
                <node concept="liA8E" id="3ECE8iPI31b" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                </node>
              </node>
              <node concept="liA8E" id="3ECE8iPI31c" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getContainmentLinks()" resolve="getContainmentLinks" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3ECE8iPI7gK" role="3cqZAp">
          <node concept="3cpWsn" id="3ECE8iPI7gL" role="3cpWs9">
            <property role="TrG5h" value="link" />
            <node concept="3uibUv" id="3ECE8iPI7gB" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
            </node>
            <node concept="2OqwBi" id="3ECE8iPI7gM" role="33vP2m">
              <node concept="37vLTw" id="3ECE8iPI7gN" role="2Oq$k0">
                <ref role="3cqZAo" node="3ECE8iPI317" resolve="links" />
              </node>
              <node concept="1z4cxt" id="3ECE8iPI7gO" role="2OqNvi">
                <node concept="1bVj0M" id="3ECE8iPI7gP" role="23t8la">
                  <node concept="3clFbS" id="3ECE8iPI7gQ" role="1bW5cS">
                    <node concept="3clFbF" id="3ECE8iPI7gR" role="3cqZAp">
                      <node concept="17R0WA" id="3ECE8iPI7gS" role="3clFbG">
                        <node concept="37vLTw" id="3ECE8iPI7gT" role="3uHU7w">
                          <ref role="3cqZAo" node="3ECE8iPHOru" resolve="role" />
                        </node>
                        <node concept="2OqwBi" id="3ECE8iPI7gU" role="3uHU7B">
                          <node concept="37vLTw" id="3ECE8iPI7gV" role="2Oq$k0">
                            <ref role="3cqZAo" node="3ECE8iPI7gX" resolve="it" />
                          </node>
                          <node concept="liA8E" id="3ECE8iPI7gW" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3ECE8iPI7gX" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3ECE8iPI7gY" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3ECE8iPI8vx" role="3cqZAp">
          <node concept="3clFbS" id="3ECE8iPI8vz" role="3clFbx">
            <node concept="YS8fn" id="3ECE8iPI9vM" role="3cqZAp">
              <node concept="2ShNRf" id="3ECE8iPI9x1" role="YScLw">
                <node concept="1pGfFk" id="3ECE8iPI9V3" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="3cpWs3" id="3ECE8iPIbRB" role="37wK5m">
                    <node concept="3cpWs3" id="3ECE8iPIddj" role="3uHU7B">
                      <node concept="37vLTw" id="3ECE8iPIdJW" role="3uHU7w">
                        <ref role="3cqZAo" node="3ECE8iPHOru" resolve="role" />
                      </node>
                      <node concept="3cpWs3" id="3ECE8iPIa0w" role="3uHU7B">
                        <node concept="2OqwBi" id="3ECE8iPIahM" role="3uHU7B">
                          <node concept="37vLTw" id="3ECE8iPIa3B" role="2Oq$k0">
                            <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
                          </node>
                          <node concept="liA8E" id="3ECE8iPIaOy" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="3ECE8iPIbRH" role="3uHU7w">
                          <property role="Xl_RC" value=" has no containment link '" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="3ECE8iPIbRJ" role="3uHU7w">
                      <property role="Xl_RC" value="'" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3ECE8iPI9gu" role="3clFbw">
            <node concept="10Nm6u" id="3ECE8iPI9ud" role="3uHU7w" />
            <node concept="37vLTw" id="3ECE8iPI8RU" role="3uHU7B">
              <ref role="3cqZAo" node="3ECE8iPI7gL" resolve="link" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3ECE8iPHT44" role="3cqZAp">
          <node concept="3cpWsn" id="3ECE8iPHT45" role="3cpWs9">
            <property role="TrG5h" value="children_" />
            <node concept="A3Dl8" id="3ECE8iPHU$j" role="1tU5fm">
              <node concept="3qUE_q" id="3ECE8iPHU$l" role="A3Ik2">
                <node concept="3uibUv" id="3ECE8iPHU$m" role="3qUE_r">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3ECE8iPHT46" role="33vP2m">
              <node concept="37vLTw" id="3ECE8iPHT47" role="2Oq$k0">
                <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
              </node>
              <node concept="liA8E" id="3ECE8iPHT48" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                <node concept="37vLTw" id="3ECE8iPIeQh" role="37wK5m">
                  <ref role="3cqZAo" node="3ECE8iPI7gL" resolve="link" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3ECE8iPJ6PG" role="3cqZAp">
          <node concept="3cpWsn" id="3ECE8iPJ6PJ" role="3cpWs9">
            <property role="TrG5h" value="children" />
            <node concept="_YKpA" id="3ECE8iPJ6PC" role="1tU5fm">
              <node concept="3qUE_q" id="3ECE8iPLGfm" role="_ZDj9">
                <node concept="3uibUv" id="3ECE8iPLGfn" role="3qUE_r">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3ECE8iPJ89a" role="33vP2m">
              <node concept="37vLTw" id="3ECE8iPJ7Tp" role="2Oq$k0">
                <ref role="3cqZAo" node="3ECE8iPHT45" resolve="children_" />
              </node>
              <node concept="ANE8D" id="3ECE8iPJ8vf" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3ECE8iPHWs5" role="3cqZAp">
          <node concept="3clFbS" id="3ECE8iPHWs7" role="3clFbx">
            <node concept="YS8fn" id="3ECE8iPIO3X" role="3cqZAp">
              <node concept="2ShNRf" id="3ECE8iPIO5t" role="YScLw">
                <node concept="1pGfFk" id="3ECE8iPIOvv" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IndexOutOfBoundsException.&lt;init&gt;(java.lang.String)" resolve="IndexOutOfBoundsException" />
                  <node concept="3cpWs3" id="3ECE8iPIQUG" role="37wK5m">
                    <node concept="3cpWs3" id="3ECE8iPIOCa" role="3uHU7B">
                      <node concept="37vLTw" id="3ECE8iPIOGt" role="3uHU7B">
                        <ref role="3cqZAo" node="3ECE8iPHOrw" resolve="index" />
                      </node>
                      <node concept="Xl_RD" id="3ECE8iPIO$l" role="3uHU7w">
                        <property role="Xl_RC" value=" &gt; " />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3ECE8iPIS7A" role="3uHU7w">
                      <node concept="37vLTw" id="3ECE8iPIR$T" role="2Oq$k0">
                        <ref role="3cqZAo" node="3ECE8iPHT45" resolve="children_" />
                      </node>
                      <node concept="34oBXx" id="3ECE8iPISCg" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="2REQR06mq6N" role="3clFbw">
            <node concept="37vLTw" id="3ECE8iPIIdc" role="3uHU7B">
              <ref role="3cqZAo" node="3ECE8iPHOrw" resolve="index" />
            </node>
            <node concept="2OqwBi" id="3ECE8iPHWO1" role="3uHU7w">
              <node concept="37vLTw" id="3ECE8iPJ8Is" role="2Oq$k0">
                <ref role="3cqZAo" node="3ECE8iPJ6PJ" resolve="children" />
              </node>
              <node concept="34oBXx" id="3ECE8iPHXa3" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3ECE8iPK5I3" role="3cqZAp">
          <node concept="3cpWsn" id="3ECE8iPK5I4" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3bZ5Sz" id="3ECE8iPK__l" role="1tU5fm" />
            <node concept="2YIFZM" id="3ECE8iPK5I6" role="33vP2m">
              <ref role="1Pybhc" node="5gTrVpGjuL2" resolve="SConceptAdapter" />
              <ref role="37wK5l" node="3ECE8iPIttW" resolve="unwrap" />
              <node concept="37vLTw" id="3ECE8iPK5I7" role="37wK5m">
                <ref role="3cqZAo" node="3ECE8iPHOry" resolve="concept_" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3ECE8iPKl$F" role="3cqZAp">
          <node concept="3clFbS" id="3ECE8iPKl$H" role="3clFbx">
            <node concept="3clFbF" id="3ECE8iPKsBu" role="3cqZAp">
              <node concept="37vLTI" id="3ECE8iPKsYw" role="3clFbG">
                <node concept="2OqwBi" id="3ECE8iPKtvd" role="37vLTx">
                  <node concept="37vLTw" id="3ECE8iPKthB" role="2Oq$k0">
                    <ref role="3cqZAo" node="3ECE8iPI7gL" resolve="link" />
                  </node>
                  <node concept="liA8E" id="3ECE8iPKtWl" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractLink.getTargetConcept()" resolve="getTargetConcept" />
                  </node>
                </node>
                <node concept="37vLTw" id="3ECE8iPKsBs" role="37vLTJ">
                  <ref role="3cqZAo" node="3ECE8iPK5I4" resolve="concept" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3ECE8iPKql8" role="3clFbw">
            <node concept="10Nm6u" id="3ECE8iPKs$C" role="3uHU7w" />
            <node concept="37vLTw" id="3ECE8iPKnP8" role="3uHU7B">
              <ref role="3cqZAo" node="3ECE8iPK5I4" resolve="concept" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3ECE8iPJbSP" role="3cqZAp">
          <node concept="3cpWsn" id="3ECE8iPJbSQ" role="3cpWs9">
            <property role="TrG5h" value="newChild" />
            <node concept="3uibUv" id="3ECE8iPKEh4" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2OqwBi" id="3ECE8iPKyT9" role="33vP2m">
              <node concept="37vLTw" id="3ECE8iPKwrm" role="2Oq$k0">
                <ref role="3cqZAo" node="3ECE8iPK5I4" resolve="concept" />
              </node>
              <node concept="LFhST" id="3ECE8iPKBXu" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3ECE8iPHY2b" role="3cqZAp">
          <node concept="3clFbS" id="3ECE8iPHY2d" role="3clFbx">
            <node concept="3clFbF" id="3ECE8iPI08e" role="3cqZAp">
              <node concept="2OqwBi" id="3ECE8iPI0hL" role="3clFbG">
                <node concept="37vLTw" id="3ECE8iPI08c" role="2Oq$k0">
                  <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
                </node>
                <node concept="liA8E" id="3ECE8iPI0N2" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.addChild(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="addChild" />
                  <node concept="37vLTw" id="3ECE8iPIiiR" role="37wK5m">
                    <ref role="3cqZAo" node="3ECE8iPI7gL" resolve="link" />
                  </node>
                  <node concept="37vLTw" id="3ECE8iPJbSX" role="37wK5m">
                    <ref role="3cqZAo" node="3ECE8iPJbSQ" resolve="newChild" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="3ECE8iPI$uK" role="3clFbw">
            <node concept="3clFbC" id="3ECE8iPIAZl" role="3uHU7w">
              <node concept="2OqwBi" id="3ECE8iPICe6" role="3uHU7w">
                <node concept="37vLTw" id="3ECE8iPJ8Qv" role="2Oq$k0">
                  <ref role="3cqZAo" node="3ECE8iPJ6PJ" resolve="children" />
                </node>
                <node concept="34oBXx" id="3ECE8iPICPA" role="2OqNvi" />
              </node>
              <node concept="37vLTw" id="3ECE8iPI_AV" role="3uHU7B">
                <ref role="3cqZAo" node="3ECE8iPHOrw" resolve="index" />
              </node>
            </node>
            <node concept="3clFbC" id="3ECE8iPHZgJ" role="3uHU7B">
              <node concept="37vLTw" id="3ECE8iPHY3O" role="3uHU7B">
                <ref role="3cqZAo" node="3ECE8iPHOrw" resolve="index" />
              </node>
              <node concept="3cmrfG" id="3ECE8iPHZP$" role="3uHU7w">
                <property role="3cmrfH" value="-1" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="3ECE8iPIVOc" role="9aQIa">
            <node concept="3clFbS" id="3ECE8iPIVOd" role="9aQI4">
              <node concept="3clFbF" id="3ECE8iPJaIX" role="3cqZAp">
                <node concept="2OqwBi" id="3ECE8iPJaSw" role="3clFbG">
                  <node concept="37vLTw" id="3ECE8iPJaIW" role="2Oq$k0">
                    <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
                  </node>
                  <node concept="liA8E" id="3ECE8iPJbpM" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.insertChildBefore(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode)" resolve="insertChildBefore" />
                    <node concept="37vLTw" id="3ECE8iPJbvb" role="37wK5m">
                      <ref role="3cqZAo" node="3ECE8iPI7gL" resolve="link" />
                    </node>
                    <node concept="37vLTw" id="3ECE8iPJfAU" role="37wK5m">
                      <ref role="3cqZAo" node="3ECE8iPJbSQ" resolve="newChild" />
                    </node>
                    <node concept="1y4W85" id="3ECE8iPJa3h" role="37wK5m">
                      <node concept="37vLTw" id="3ECE8iPJa6T" role="1y58nS">
                        <ref role="3cqZAo" node="3ECE8iPHOrw" resolve="index" />
                      </node>
                      <node concept="37vLTw" id="3ECE8iPJ9aj" role="1y566C">
                        <ref role="3cqZAo" node="3ECE8iPJ6PJ" resolve="children" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3ECE8iPJhw3" role="3cqZAp">
          <node concept="1rXfSq" id="3ECE8iPJmrQ" role="3cqZAk">
            <ref role="37wK5l" node="5gTrVpGyMwR" resolve="wrap" />
            <node concept="37vLTw" id="3ECE8iPJoD3" role="37wK5m">
              <ref role="3cqZAo" node="3ECE8iPJbSQ" resolve="newChild" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3ECE8iPHOrC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3ECE8iPHPPr" role="jymVt" />
    <node concept="3clFb_" id="7vWAzuF9QCW" role="jymVt">
      <property role="TrG5h" value="removeChild" />
      <node concept="37vLTG" id="7vWAzuF9QCX" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="7vWAzuF9QCY" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
      </node>
      <node concept="3cqZAl" id="7vWAzuF9QCZ" role="3clF45" />
      <node concept="3Tm1VV" id="7vWAzuF9QD0" role="1B3o_S" />
      <node concept="3clFbS" id="7vWAzuF9QD2" role="3clF47">
        <node concept="3clFbF" id="7vWAzuF9VRf" role="3cqZAp">
          <node concept="2OqwBi" id="7vWAzuF9W0Z" role="3clFbG">
            <node concept="37vLTw" id="7vWAzuF9VRe" role="2Oq$k0">
              <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
            </node>
            <node concept="liA8E" id="7vWAzuF9Yp7" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.removeChild(org.jetbrains.mps.openapi.model.SNode)" resolve="removeChild" />
              <node concept="2OqwBi" id="7vWAzuFa0OJ" role="37wK5m">
                <node concept="1eOMI4" id="7vWAzuF9Z5_" role="2Oq$k0">
                  <node concept="10QFUN" id="7vWAzuF9Z5y" role="1eOMHV">
                    <node concept="3uibUv" id="7vWAzuF9Zan" role="10QFUM">
                      <ref role="3uigEE" node="5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                    </node>
                    <node concept="37vLTw" id="7vWAzuFa0ef" role="10QFUP">
                      <ref role="3cqZAo" node="7vWAzuF9QCX" resolve="child" />
                    </node>
                  </node>
                </node>
                <node concept="2OwXpG" id="7vWAzuFa1YG" role="2OqNvi">
                  <ref role="2Oxat5" node="5gTrVpGjuMh" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7vWAzuF9QD3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7vWAzuF9SMz" role="jymVt" />
    <node concept="3clFb_" id="5gTrVpGjETv" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getReferenceTarget" />
      <node concept="37vLTG" id="5gTrVpGjETw" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="5gTrVpGjETx" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="5gTrVpGjETy" role="3clF45">
        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
      </node>
      <node concept="3Tm1VV" id="5gTrVpGjETz" role="1B3o_S" />
      <node concept="3clFbS" id="5gTrVpGjET_" role="3clF47">
        <node concept="3clFbF" id="3zTK92LbACI" role="3cqZAp">
          <node concept="1rXfSq" id="3zTK92LbACJ" role="3clFbG">
            <ref role="37wK5l" node="3zTK92LatQ_" resolve="notifyModelContentDependency" />
          </node>
        </node>
        <node concept="3cpWs8" id="5gTrVpGjVxz" role="3cqZAp">
          <node concept="3cpWsn" id="5gTrVpGjVx$" role="3cpWs9">
            <property role="TrG5h" value="references" />
            <node concept="A3Dl8" id="5gTrVpGjVPR" role="1tU5fm">
              <node concept="3qUE_q" id="5gTrVpGjVPT" role="A3Ik2">
                <node concept="3uibUv" id="5gTrVpGjVPU" role="3qUE_r">
                  <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5gTrVpGjVx_" role="33vP2m">
              <node concept="37vLTw" id="5gTrVpGjVxA" role="2Oq$k0">
                <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
              </node>
              <node concept="liA8E" id="5gTrVpGjVxB" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getReferences()" resolve="getReferences" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5gTrVpGk1Uw" role="3cqZAp">
          <node concept="3cpWsn" id="5gTrVpGk1Ux" role="3cpWs9">
            <property role="TrG5h" value="reference" />
            <node concept="3uibUv" id="5gTrVpGk1Uy" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
            </node>
            <node concept="2OqwBi" id="5gTrVpGk1Uz" role="33vP2m">
              <node concept="37vLTw" id="5gTrVpGk1U$" role="2Oq$k0">
                <ref role="3cqZAo" node="5gTrVpGjVx$" resolve="references" />
              </node>
              <node concept="1z4cxt" id="5gTrVpGk1U_" role="2OqNvi">
                <node concept="1bVj0M" id="5gTrVpGk1UA" role="23t8la">
                  <node concept="3clFbS" id="5gTrVpGk1UB" role="1bW5cS">
                    <node concept="3clFbF" id="5gTrVpGk1UC" role="3cqZAp">
                      <node concept="17R0WA" id="5gTrVpGk1UD" role="3clFbG">
                        <node concept="37vLTw" id="5gTrVpGk1UE" role="3uHU7w">
                          <ref role="3cqZAo" node="5gTrVpGjETw" resolve="role" />
                        </node>
                        <node concept="2OqwBi" id="5gTrVpGk1UF" role="3uHU7B">
                          <node concept="2OqwBi" id="5gTrVpGk1UG" role="2Oq$k0">
                            <node concept="37vLTw" id="5gTrVpGk1UH" role="2Oq$k0">
                              <ref role="3cqZAo" node="5gTrVpGk1UK" resolve="it" />
                            </node>
                            <node concept="liA8E" id="5gTrVpGk1UI" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SReference.getLink()" resolve="getLink" />
                            </node>
                          </node>
                          <node concept="liA8E" id="5gTrVpGk1UJ" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="5gTrVpGk1UK" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5gTrVpGk1UL" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5gTrVpGk3pL" role="3cqZAp">
          <node concept="3cpWsn" id="5gTrVpGk3pM" role="3cpWs9">
            <property role="TrG5h" value="targetNode" />
            <node concept="3uibUv" id="5gTrVpGk3oI" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2EnYce" id="5gTrVpGk3LJ" role="33vP2m">
              <node concept="37vLTw" id="5gTrVpGk3pO" role="2Oq$k0">
                <ref role="3cqZAo" node="5gTrVpGk1Ux" resolve="reference" />
              </node>
              <node concept="liA8E" id="5gTrVpGk3pP" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SReference.getTargetNode()" resolve="getTargetNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5gTrVpGjWhu" role="3cqZAp">
          <node concept="3K4zz7" id="5gTrVpGk54P" role="3clFbG">
            <node concept="10Nm6u" id="5gTrVpGk56$" role="3K4E3e" />
            <node concept="1rXfSq" id="3mxFqZU3LoQ" role="3K4GZi">
              <ref role="37wK5l" node="5gTrVpGyMwR" resolve="wrap" />
              <node concept="37vLTw" id="1m9roGBziRK" role="37wK5m">
                <ref role="3cqZAo" node="5gTrVpGk3pM" resolve="targetNode" />
              </node>
            </node>
            <node concept="3clFbC" id="5gTrVpGk4TJ" role="3K4Cdx">
              <node concept="10Nm6u" id="5gTrVpGk508" role="3uHU7w" />
              <node concept="37vLTw" id="5gTrVpGk4I8" role="3uHU7B">
                <ref role="3cqZAo" node="5gTrVpGk3pM" resolve="targetNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5gTrVpGjETA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gTrVpGk93x" role="jymVt" />
    <node concept="3clFb_" id="5gTrVpGjETD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setReferenceTarget" />
      <node concept="37vLTG" id="5gTrVpGjETE" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="5gTrVpGjETF" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5gTrVpGjETG" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="5gTrVpGjETH" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
      </node>
      <node concept="3cqZAl" id="5gTrVpGjETI" role="3clF45" />
      <node concept="3Tm1VV" id="5gTrVpGjETJ" role="1B3o_S" />
      <node concept="3clFbS" id="5gTrVpGjETL" role="3clF47">
        <node concept="3cpWs8" id="2FosA_pPG_x" role="3cqZAp">
          <node concept="3cpWsn" id="2FosA_pPG_y" role="3cpWs9">
            <property role="TrG5h" value="links" />
            <node concept="A3Dl8" id="2FosA_pPIQB" role="1tU5fm">
              <node concept="3uibUv" id="2FosA_pPIQD" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
              </node>
            </node>
            <node concept="2OqwBi" id="2FosA_pPG_z" role="33vP2m">
              <node concept="2OqwBi" id="2FosA_pPG_$" role="2Oq$k0">
                <node concept="37vLTw" id="2FosA_pPG__" role="2Oq$k0">
                  <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
                </node>
                <node concept="liA8E" id="2FosA_pPG_A" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                </node>
              </node>
              <node concept="liA8E" id="2FosA_pPG_B" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getReferenceLinks()" resolve="getReferenceLinks" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2FosA_pQdlE" role="3cqZAp">
          <node concept="3cpWsn" id="2FosA_pQdlF" role="3cpWs9">
            <property role="TrG5h" value="link" />
            <node concept="3uibUv" id="2FosA_pQdlD" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
            </node>
            <node concept="2OqwBi" id="2FosA_pQdlG" role="33vP2m">
              <node concept="37vLTw" id="2FosA_pQdlH" role="2Oq$k0">
                <ref role="3cqZAo" node="2FosA_pPG_y" resolve="links" />
              </node>
              <node concept="1z4cxt" id="2FosA_pQdlI" role="2OqNvi">
                <node concept="1bVj0M" id="2FosA_pQdlJ" role="23t8la">
                  <node concept="3clFbS" id="2FosA_pQdlK" role="1bW5cS">
                    <node concept="3clFbF" id="2FosA_pQdlL" role="3cqZAp">
                      <node concept="17R0WA" id="2FosA_pQdlM" role="3clFbG">
                        <node concept="37vLTw" id="2FosA_pQdlN" role="3uHU7w">
                          <ref role="3cqZAo" node="5gTrVpGjETE" resolve="role" />
                        </node>
                        <node concept="2OqwBi" id="2FosA_pQdlO" role="3uHU7B">
                          <node concept="37vLTw" id="2FosA_pQdlP" role="2Oq$k0">
                            <ref role="3cqZAo" node="2FosA_pQdlR" resolve="it" />
                          </node>
                          <node concept="liA8E" id="2FosA_pQdlQ" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="2FosA_pQdlR" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="2FosA_pQdlS" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2FosA_pQeHR" role="3cqZAp">
          <node concept="3clFbS" id="2FosA_pQeHT" role="3clFbx">
            <node concept="YS8fn" id="2FosA_pQfZr" role="3cqZAp">
              <node concept="2ShNRf" id="2FosA_pQg9C" role="YScLw">
                <node concept="1pGfFk" id="2FosA_pQmOq" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="3cpWs3" id="2FosA_pQtY1" role="37wK5m">
                    <node concept="37vLTw" id="2FosA_pQu8z" role="3uHU7w">
                      <ref role="3cqZAo" node="5gTrVpGjETE" resolve="role" />
                    </node>
                    <node concept="3cpWs3" id="2FosA_pQo2z" role="3uHU7B">
                      <node concept="2OqwBi" id="2FosA_pQot7" role="3uHU7B">
                        <node concept="37vLTw" id="2FosA_pQoeI" role="2Oq$k0">
                          <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
                        </node>
                        <node concept="liA8E" id="2FosA_pQrxW" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="2FosA_pQnsu" role="3uHU7w">
                        <property role="Xl_RC" value=" has no reference link " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2FosA_pQftn" role="3clFbw">
            <node concept="10Nm6u" id="2FosA_pQfOX" role="3uHU7w" />
            <node concept="37vLTw" id="2FosA_pQf1G" role="3uHU7B">
              <ref role="3cqZAo" node="2FosA_pQdlF" resolve="link" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2FosA_pQDIL" role="3cqZAp">
          <node concept="3cpWsn" id="2FosA_pQDIM" role="3cpWs9">
            <property role="TrG5h" value="snodeTarget" />
            <node concept="3uibUv" id="2FosA_pQDII" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2YIFZM" id="2FosA_pTcfD" role="33vP2m">
              <ref role="37wK5l" node="4EhVFrZ6z9$" resolve="wrap" />
              <ref role="1Pybhc" node="4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
              <node concept="37vLTw" id="2FosA_pTcfE" role="37wK5m">
                <ref role="3cqZAo" node="5gTrVpGjETG" resolve="target" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2FosA_pQwwn" role="3cqZAp">
          <node concept="2OqwBi" id="2FosA_pQwXL" role="3clFbG">
            <node concept="37vLTw" id="2FosA_pQwwl" role="2Oq$k0">
              <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
            </node>
            <node concept="liA8E" id="2FosA_pQ$kr" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
              <node concept="37vLTw" id="2FosA_pQ$M8" role="37wK5m">
                <ref role="3cqZAo" node="2FosA_pQdlF" resolve="link" />
              </node>
              <node concept="37vLTw" id="2FosA_pQGwR" role="37wK5m">
                <ref role="3cqZAo" node="2FosA_pQDIM" resolve="snodeTarget" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="3rBy5k_6VIF" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbJ" id="2FosA_pSZYv" role="8Wnug">
            <property role="TyiWK" value="true" />
            <node concept="3clFbS" id="2FosA_pSZYx" role="3clFbx">
              <node concept="YS8fn" id="2FosA_pRV0z" role="3cqZAp">
                <node concept="2ShNRf" id="2FosA_pRVaK" role="YScLw">
                  <node concept="1pGfFk" id="2FosA_pRWp8" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                    <node concept="3cpWs3" id="2FosA_pTPmr" role="37wK5m">
                      <node concept="2OqwBi" id="2FosA_pTVh9" role="3uHU7w">
                        <node concept="2OqwBi" id="2FosA_pTPNw" role="2Oq$k0">
                          <node concept="37vLTw" id="2FosA_pTPxd" role="2Oq$k0">
                            <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
                          </node>
                          <node concept="liA8E" id="2FosA_pTTbd" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                          </node>
                        </node>
                        <node concept="liA8E" id="2FosA_pU0Sb" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
                        </node>
                      </node>
                      <node concept="3cpWs3" id="2FosA_pTIg1" role="3uHU7B">
                        <node concept="3cpWs3" id="2FosA_pTx30" role="3uHU7B">
                          <node concept="Xl_RD" id="2FosA_pTvfV" role="3uHU7B">
                            <property role="Xl_RC" value="Cannot set a reference to an instance of " />
                          </node>
                          <node concept="2OqwBi" id="2FosA_pTLg0" role="3uHU7w">
                            <node concept="2OqwBi" id="2FosA_pTxyx" role="2Oq$k0">
                              <node concept="37vLTw" id="2FosA_pTxdg" role="2Oq$k0">
                                <ref role="3cqZAo" node="5gTrVpGjETG" resolve="target" />
                              </node>
                              <node concept="liA8E" id="2FosA_pTyFJ" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                              </node>
                            </node>
                            <node concept="liA8E" id="2FosA_pTOAZ" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="2FosA_pTIq9" role="3uHU7w">
                          <property role="Xl_RC" value=". Expected " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="2FosA_pU55k" role="3clFbw">
              <node concept="3y3z36" id="2FosA_pU8gD" role="3uHU7B">
                <node concept="10Nm6u" id="2FosA_pU8qT" role="3uHU7w" />
                <node concept="37vLTw" id="2FosA_pU7Te" role="3uHU7B">
                  <ref role="3cqZAo" node="2FosA_pQDIM" resolve="snodeTarget" />
                </node>
              </node>
              <node concept="17QLQc" id="2FosA_pTr4y" role="3uHU7w">
                <node concept="2OqwBi" id="2FosA_pT1iR" role="3uHU7B">
                  <node concept="37vLTw" id="2FosA_pT0MA" role="2Oq$k0">
                    <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
                  </node>
                  <node concept="liA8E" id="2FosA_pT4PR" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2FosA_pT9_H" role="3uHU7w">
                  <node concept="37vLTw" id="2FosA_pU1B6" role="2Oq$k0">
                    <ref role="3cqZAo" node="2FosA_pQDIM" resolve="snodeTarget" />
                  </node>
                  <node concept="liA8E" id="2FosA_pTaNh" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5gTrVpGjETM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gTrVpGk8wD" role="jymVt" />
    <node concept="3clFb_" id="5gTrVpGjETN" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPropertyValue" />
      <node concept="37vLTG" id="5gTrVpGjETO" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="5gTrVpGjETP" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="5gTrVpGjETQ" role="3clF45" />
      <node concept="3Tm1VV" id="5gTrVpGjETR" role="1B3o_S" />
      <node concept="3clFbS" id="5gTrVpGjETT" role="3clF47">
        <node concept="3clFbF" id="3zTK92LbBki" role="3cqZAp">
          <node concept="1rXfSq" id="3zTK92LbBkj" role="3clFbG">
            <ref role="37wK5l" node="3zTK92LatQ_" resolve="notifyModelContentDependency" />
          </node>
        </node>
        <node concept="3cpWs8" id="5gTrVpGkbI7" role="3cqZAp">
          <node concept="3cpWsn" id="5gTrVpGkbI8" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <node concept="A3Dl8" id="5gTrVpGkc2Z" role="1tU5fm">
              <node concept="3uibUv" id="5gTrVpGkc31" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
              </node>
            </node>
            <node concept="2OqwBi" id="5gTrVpGkbI9" role="33vP2m">
              <node concept="37vLTw" id="5gTrVpGkbIa" role="2Oq$k0">
                <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
              </node>
              <node concept="liA8E" id="5gTrVpGkbIb" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getProperties()" resolve="getProperties" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5gTrVpGkeGJ" role="3cqZAp">
          <node concept="3cpWsn" id="5gTrVpGkeGK" role="3cpWs9">
            <property role="TrG5h" value="property" />
            <node concept="3uibUv" id="5gTrVpGkeGz" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
            </node>
            <node concept="2OqwBi" id="5gTrVpGkeGL" role="33vP2m">
              <node concept="37vLTw" id="5gTrVpGkeGM" role="2Oq$k0">
                <ref role="3cqZAo" node="5gTrVpGkbI8" resolve="properties" />
              </node>
              <node concept="1z4cxt" id="5gTrVpGkeGN" role="2OqNvi">
                <node concept="1bVj0M" id="5gTrVpGkeGO" role="23t8la">
                  <node concept="3clFbS" id="5gTrVpGkeGP" role="1bW5cS">
                    <node concept="3clFbF" id="5gTrVpGkeGQ" role="3cqZAp">
                      <node concept="17R0WA" id="5gTrVpGkeGR" role="3clFbG">
                        <node concept="37vLTw" id="5gTrVpGkeGS" role="3uHU7w">
                          <ref role="3cqZAo" node="5gTrVpGjETO" resolve="role" />
                        </node>
                        <node concept="2OqwBi" id="5gTrVpGkeGT" role="3uHU7B">
                          <node concept="37vLTw" id="5gTrVpGkeGU" role="2Oq$k0">
                            <ref role="3cqZAo" node="5gTrVpGkeGW" resolve="it" />
                          </node>
                          <node concept="liA8E" id="5gTrVpGkeGV" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="5gTrVpGkeGW" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5gTrVpGkeGX" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5gTrVpGkfgK" role="3cqZAp">
          <node concept="3clFbS" id="5gTrVpGkfgM" role="3clFbx">
            <node concept="3cpWs6" id="5gTrVpGkfX6" role="3cqZAp">
              <node concept="10Nm6u" id="5gTrVpGkg0P" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="5gTrVpGkfMy" role="3clFbw">
            <node concept="10Nm6u" id="5gTrVpGkfTj" role="3uHU7w" />
            <node concept="37vLTw" id="5gTrVpGkfxg" role="3uHU7B">
              <ref role="3cqZAo" node="5gTrVpGkeGK" resolve="property" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5gTrVpGkjCg" role="3cqZAp">
          <node concept="2OqwBi" id="5gTrVpGkk8O" role="3clFbG">
            <node concept="37vLTw" id="5gTrVpGkjCe" role="2Oq$k0">
              <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
            </node>
            <node concept="liA8E" id="5gTrVpGkk$j" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
              <node concept="37vLTw" id="5gTrVpGkkU1" role="37wK5m">
                <ref role="3cqZAo" node="5gTrVpGkeGK" resolve="property" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5gTrVpGjETU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gTrVpGk9Aq" role="jymVt" />
    <node concept="3clFb_" id="5gTrVpGjETV" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setPropertyValue" />
      <node concept="37vLTG" id="5gTrVpGjETW" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="5gTrVpGjETX" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5gTrVpGjETY" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="5gTrVpGjETZ" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="5gTrVpGjEU0" role="3clF45" />
      <node concept="3Tm1VV" id="5gTrVpGjEU1" role="1B3o_S" />
      <node concept="3clFbS" id="5gTrVpGjEU3" role="3clF47">
        <node concept="3cpWs8" id="3ECE8iPGDEs" role="3cqZAp">
          <node concept="3cpWsn" id="3ECE8iPGDEt" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <node concept="A3Dl8" id="3ECE8iPGEb2" role="1tU5fm">
              <node concept="3uibUv" id="3ECE8iPGEb4" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
              </node>
            </node>
            <node concept="2OqwBi" id="3ECE8iPGDEu" role="33vP2m">
              <node concept="2OqwBi" id="3ECE8iPGDEv" role="2Oq$k0">
                <node concept="37vLTw" id="3ECE8iPGDEw" role="2Oq$k0">
                  <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
                </node>
                <node concept="liA8E" id="3ECE8iPGDEx" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                </node>
              </node>
              <node concept="liA8E" id="3ECE8iPGDEy" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getProperties()" resolve="getProperties" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3ECE8iPGHrL" role="3cqZAp">
          <node concept="3cpWsn" id="3ECE8iPGHrM" role="3cpWs9">
            <property role="TrG5h" value="property" />
            <node concept="3uibUv" id="3ECE8iPGHrk" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
            </node>
            <node concept="2OqwBi" id="3ECE8iPGHrN" role="33vP2m">
              <node concept="37vLTw" id="3ECE8iPGHrO" role="2Oq$k0">
                <ref role="3cqZAo" node="3ECE8iPGDEt" resolve="properties" />
              </node>
              <node concept="1z4cxt" id="3ECE8iPGHrP" role="2OqNvi">
                <node concept="1bVj0M" id="3ECE8iPGHrQ" role="23t8la">
                  <node concept="3clFbS" id="3ECE8iPGHrR" role="1bW5cS">
                    <node concept="3clFbF" id="3ECE8iPGHrS" role="3cqZAp">
                      <node concept="17R0WA" id="3ECE8iPGHrT" role="3clFbG">
                        <node concept="37vLTw" id="3ECE8iPGHrU" role="3uHU7w">
                          <ref role="3cqZAo" node="5gTrVpGjETW" resolve="role" />
                        </node>
                        <node concept="2OqwBi" id="3ECE8iPGHrV" role="3uHU7B">
                          <node concept="37vLTw" id="3ECE8iPGHrW" role="2Oq$k0">
                            <ref role="3cqZAo" node="3ECE8iPGHrY" resolve="it" />
                          </node>
                          <node concept="liA8E" id="3ECE8iPGHrX" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3ECE8iPGHrY" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3ECE8iPGHrZ" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3ECE8iPGI9O" role="3cqZAp">
          <node concept="3clFbS" id="3ECE8iPGI9Q" role="3clFbx">
            <node concept="YS8fn" id="3ECE8iPGJ3T" role="3cqZAp">
              <node concept="2ShNRf" id="3ECE8iPGJ52" role="YScLw">
                <node concept="1pGfFk" id="3ECE8iPGJUK" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="3cpWs3" id="3ECE8iPGLtK" role="37wK5m">
                    <node concept="37vLTw" id="3ECE8iPGLv3" role="3uHU7w">
                      <ref role="3cqZAo" node="5gTrVpGjETW" resolve="role" />
                    </node>
                    <node concept="3cpWs3" id="3ECE8iPGJZO" role="3uHU7B">
                      <node concept="2OqwBi" id="3ECE8iPGKh0" role="3uHU7B">
                        <node concept="37vLTw" id="3ECE8iPGK2P" role="2Oq$k0">
                          <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
                        </node>
                        <node concept="liA8E" id="3ECE8iPGKMd" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="3ECE8iPGJXr" role="3uHU7w">
                        <property role="Xl_RC" value=" has no property " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3ECE8iPGIQv" role="3clFbw">
            <node concept="10Nm6u" id="3ECE8iPGJ2q" role="3uHU7w" />
            <node concept="37vLTw" id="3ECE8iPGIvZ" role="3uHU7B">
              <ref role="3cqZAo" node="3ECE8iPGHrM" resolve="property" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ECE8iPGR2e" role="3cqZAp">
          <node concept="2OqwBi" id="3ECE8iPGRtZ" role="3clFbG">
            <node concept="37vLTw" id="3ECE8iPGR2c" role="2Oq$k0">
              <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
            </node>
            <node concept="liA8E" id="3ECE8iPGSgL" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
              <node concept="37vLTw" id="3ECE8iPGSmd" role="37wK5m">
                <ref role="3cqZAo" node="3ECE8iPGHrM" resolve="property" />
              </node>
              <node concept="37vLTw" id="3ECE8iPGSur" role="37wK5m">
                <ref role="3cqZAo" node="5gTrVpGjETY" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5gTrVpGjEU4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gTrVpGlrxN" role="jymVt" />
    <node concept="3clFb_" id="5gTrVpGlqof" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="5gTrVpGlqog" role="3clF45" />
      <node concept="3Tm1VV" id="5gTrVpGlqoh" role="1B3o_S" />
      <node concept="3clFbS" id="5gTrVpGlqoi" role="3clF47">
        <node concept="3clFbJ" id="5gTrVpGlqoj" role="3cqZAp">
          <node concept="3clFbS" id="5gTrVpGlqok" role="3clFbx">
            <node concept="3cpWs6" id="5gTrVpGlqol" role="3cqZAp">
              <node concept="3clFbT" id="5gTrVpGlqom" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5gTrVpGlqon" role="3clFbw">
            <node concept="Xjq3P" id="5gTrVpGlqoe" role="3uHU7B" />
            <node concept="37vLTw" id="5gTrVpGlqoo" role="3uHU7w">
              <ref role="3cqZAo" node="5gTrVpGlqoJ" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5gTrVpGlqop" role="3cqZAp">
          <node concept="3clFbS" id="5gTrVpGlqoq" role="3clFbx">
            <node concept="3cpWs6" id="5gTrVpGlqor" role="3cqZAp">
              <node concept="3clFbT" id="5gTrVpGlqos" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="5gTrVpGlqot" role="3clFbw">
            <node concept="3clFbC" id="5gTrVpGlqou" role="3uHU7B">
              <node concept="37vLTw" id="5gTrVpGlqov" role="3uHU7B">
                <ref role="3cqZAo" node="5gTrVpGlqoJ" resolve="o" />
              </node>
              <node concept="10Nm6u" id="5gTrVpGlqow" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="5gTrVpGlqox" role="3uHU7w">
              <node concept="2OqwBi" id="5gTrVpGlqoy" role="3uHU7B">
                <node concept="Xjq3P" id="5gTrVpGlqoz" role="2Oq$k0" />
                <node concept="liA8E" id="5gTrVpGlqo$" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="2OqwBi" id="5gTrVpGlqo_" role="3uHU7w">
                <node concept="37vLTw" id="5gTrVpGlqoA" role="2Oq$k0">
                  <ref role="3cqZAo" node="5gTrVpGlqoJ" resolve="o" />
                </node>
                <node concept="liA8E" id="5gTrVpGlqoB" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5gTrVpGlqoC" role="3cqZAp" />
        <node concept="3cpWs8" id="5gTrVpGlqoD" role="3cqZAp">
          <node concept="3cpWsn" id="5gTrVpGlqoE" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="5gTrVpGlqoF" role="1tU5fm">
              <ref role="3uigEE" node="5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
            </node>
            <node concept="10QFUN" id="5gTrVpGlqoG" role="33vP2m">
              <node concept="3uibUv" id="5gTrVpGlqoH" role="10QFUM">
                <ref role="3uigEE" node="5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
              </node>
              <node concept="37vLTw" id="5gTrVpGlqoI" role="10QFUP">
                <ref role="3cqZAo" node="5gTrVpGlqoJ" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5gTrVpGlqoT" role="3cqZAp">
          <node concept="3clFbS" id="5gTrVpGlqoU" role="3clFbx">
            <node concept="3cpWs6" id="5gTrVpGlqoV" role="3cqZAp">
              <node concept="3clFbT" id="5gTrVpGlqoW" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3K4zz7" id="5gTrVpGlqoX" role="3clFbw">
            <node concept="3fqX7Q" id="5gTrVpGlqoY" role="3K4E3e">
              <node concept="2OqwBi" id="5gTrVpGlqoZ" role="3fr31v">
                <node concept="liA8E" id="5gTrVpGlqp0" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="5gTrVpGlqp1" role="37wK5m">
                    <node concept="37vLTw" id="5gTrVpGlqoM" role="2Oq$k0">
                      <ref role="3cqZAo" node="5gTrVpGlqoE" resolve="that" />
                    </node>
                    <node concept="2OwXpG" id="5gTrVpGlqoP" role="2OqNvi">
                      <ref role="2Oxat5" node="5gTrVpGjuMh" resolve="node" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5gTrVpGlqoQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="5gTrVpGlqp2" role="3K4Cdx">
              <node concept="10Nm6u" id="5gTrVpGlqp3" role="3uHU7w" />
              <node concept="37vLTw" id="5gTrVpGlqoR" role="3uHU7B">
                <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
              </node>
            </node>
            <node concept="3y3z36" id="5gTrVpGlqp4" role="3K4GZi">
              <node concept="10Nm6u" id="5gTrVpGlqp5" role="3uHU7w" />
              <node concept="2OqwBi" id="5gTrVpGlqp6" role="3uHU7B">
                <node concept="37vLTw" id="5gTrVpGlqp7" role="2Oq$k0">
                  <ref role="3cqZAo" node="5gTrVpGlqoE" resolve="that" />
                </node>
                <node concept="2OwXpG" id="5gTrVpGlqoS" role="2OqNvi">
                  <ref role="2Oxat5" node="5gTrVpGjuMh" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5gTrVpGlqp8" role="3cqZAp" />
        <node concept="3clFbF" id="5gTrVpGlqp9" role="3cqZAp">
          <node concept="3clFbT" id="5gTrVpGlqpa" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5gTrVpGlqoJ" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="5gTrVpGlqoK" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5gTrVpGlqoL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gTrVpGlski" role="jymVt" />
    <node concept="3clFb_" id="5gTrVpGlqpb" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="5gTrVpGlqpc" role="3clF45" />
      <node concept="3Tm1VV" id="5gTrVpGlqpd" role="1B3o_S" />
      <node concept="3clFbS" id="5gTrVpGlqpe" role="3clF47">
        <node concept="3cpWs8" id="5gTrVpGlqpg" role="3cqZAp">
          <node concept="3cpWsn" id="5gTrVpGlqph" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Oyi0" id="5gTrVpGlqpi" role="1tU5fm" />
            <node concept="3cmrfG" id="5gTrVpGlqpj" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5gTrVpGlqpt" role="3cqZAp">
          <node concept="37vLTI" id="5gTrVpGlqpu" role="3clFbG">
            <node concept="3cpWs3" id="5gTrVpGlqpv" role="37vLTx">
              <node concept="1eOMI4" id="5gTrVpGlqpw" role="3uHU7w">
                <node concept="3K4zz7" id="5gTrVpGlqpx" role="1eOMHV">
                  <node concept="3cmrfG" id="5gTrVpGlqpy" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3y3z36" id="5gTrVpGlqpz" role="3K4Cdx">
                    <node concept="10Nm6u" id="5gTrVpGlqp$" role="3uHU7w" />
                    <node concept="37vLTw" id="5gTrVpGlqpr" role="3uHU7B">
                      <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5gTrVpGlqp_" role="3K4E3e">
                    <node concept="1eOMI4" id="5gTrVpGlqpA" role="2Oq$k0">
                      <node concept="10QFUN" id="5gTrVpGlqpB" role="1eOMHV">
                        <node concept="3uibUv" id="5gTrVpGlqpC" role="10QFUM">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                        <node concept="37vLTw" id="5gTrVpGlqps" role="10QFUP">
                          <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="5gTrVpGlqpD" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17qRlL" id="5gTrVpGlqpp" role="3uHU7B">
                <node concept="3cmrfG" id="5gTrVpGlqpq" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="5gTrVpGlqpk" role="3uHU7w">
                  <ref role="3cqZAo" node="5gTrVpGlqph" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="5gTrVpGlqpE" role="37vLTJ">
              <ref role="3cqZAo" node="5gTrVpGlqph" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5gTrVpGlqpF" role="3cqZAp">
          <node concept="37vLTw" id="5gTrVpGlqpG" role="3clFbG">
            <ref role="3cqZAo" node="5gTrVpGlqph" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5gTrVpGlqpf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gTrVpGxpqs" role="jymVt" />
    <node concept="3clFb_" id="5gTrVpGxovV" role="jymVt">
      <property role="TrG5h" value="toString" />
      <node concept="17QB3L" id="5gTrVpGxovW" role="3clF45" />
      <node concept="3Tm1VV" id="5gTrVpGxovX" role="1B3o_S" />
      <node concept="3clFbS" id="5gTrVpGxovY" role="3clF47">
        <node concept="3clFbF" id="5gTrVpGxq$o" role="3cqZAp">
          <node concept="3cpWs3" id="5gTrVpGxqPt" role="3clFbG">
            <node concept="37vLTw" id="5gTrVpGxqQB" role="3uHU7w">
              <ref role="3cqZAo" node="5gTrVpGjuMh" resolve="node" />
            </node>
            <node concept="Xl_RD" id="5gTrVpGxq$n" role="3uHU7B">
              <property role="Xl_RC" value="" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5gTrVpGxow0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5gTrVpGyEvZ" role="jymVt" />
  </node>
  <node concept="312cEu" id="4EhVFrZ3AjR">
    <property role="TrG5h" value="NodeToSNodeAdapter" />
    <node concept="2tJIrI" id="4YS7uhTx74b" role="jymVt" />
    <node concept="Wx3nA" id="56YPHTopiR0" role="jymVt">
      <property role="TrG5h" value="ourInstances" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="56YPHTooWJq" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="1LlUBW" id="56YPHTopK7t" role="11_B2D">
          <node concept="3uibUv" id="56YPHTopNaO" role="1Lm7xW">
            <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
          </node>
          <node concept="3uibUv" id="56YPHTopQel" role="1Lm7xW">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
        </node>
        <node concept="3uibUv" id="56YPHTop0YY" role="11_B2D">
          <ref role="3uigEE" node="4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
        </node>
      </node>
      <node concept="3Tm6S6" id="56YPHTooRvk" role="1B3o_S" />
      <node concept="2OqwBi" id="56YPHTopfr0" role="33vP2m">
        <node concept="2OqwBi" id="56YPHTopcxT" role="2Oq$k0">
          <node concept="2ShNRf" id="56YPHTop8Ea" role="2Oq$k0">
            <node concept="1pGfFk" id="56YPHTopb6k" role="2ShVmc">
              <ref role="37wK5l" to="3o3z:~MapMaker.&lt;init&gt;()" resolve="MapMaker" />
            </node>
          </node>
          <node concept="liA8E" id="56YPHTopdXD" role="2OqNvi">
            <ref role="37wK5l" to="3o3z:~MapMaker.weakValues()" resolve="weakValues" />
          </node>
        </node>
        <node concept="liA8E" id="56YPHTophtm" role="2OqNvi">
          <ref role="37wK5l" to="3o3z:~MapMaker.makeMap()" resolve="makeMap" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="56YPHTooLsd" role="jymVt" />
    <node concept="2YIFZL" id="56YPHToqKHJ" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="3clFbS" id="56YPHTopXDY" role="3clF47">
        <node concept="3cpWs8" id="56YPHToqjNE" role="3cqZAp">
          <node concept="3cpWsn" id="56YPHToqjNF" role="3cpWs9">
            <property role="TrG5h" value="key" />
            <node concept="1LlUBW" id="56YPHToqjNz" role="1tU5fm">
              <node concept="3uibUv" id="56YPHToqjND" role="1Lm7xW">
                <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
              </node>
              <node concept="3uibUv" id="56YPHToqjNC" role="1Lm7xW">
                <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
              </node>
            </node>
            <node concept="1Ls8ON" id="56YPHToqjNG" role="33vP2m">
              <node concept="37vLTw" id="56YPHToqjNH" role="1Lso8e">
                <ref role="3cqZAo" node="56YPHToq9Jh" resolve="node" />
              </node>
              <node concept="37vLTw" id="56YPHToqjNI" role="1Lso8e">
                <ref role="3cqZAo" node="56YPHToq9Jj" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="56YPHToqurR" role="3cqZAp">
          <node concept="3cpWsn" id="56YPHToqurS" role="3cpWs9">
            <property role="TrG5h" value="instance" />
            <node concept="3uibUv" id="56YPHToquqS" role="1tU5fm">
              <ref role="3uigEE" node="4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
            </node>
            <node concept="2OqwBi" id="56YPHToqurT" role="33vP2m">
              <node concept="37vLTw" id="1m9roGBsNIF" role="2Oq$k0">
                <ref role="3cqZAo" node="56YPHTopiR0" resolve="ourInstances" />
              </node>
              <node concept="liA8E" id="56YPHToqurV" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                <node concept="37vLTw" id="56YPHToqurW" role="37wK5m">
                  <ref role="3cqZAo" node="56YPHToqjNF" resolve="key" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="56YPHToqxnT" role="3cqZAp">
          <node concept="3clFbS" id="56YPHToqxnV" role="3clFbx">
            <node concept="3clFbF" id="56YPHToqyDr" role="3cqZAp">
              <node concept="37vLTI" id="56YPHToqzen" role="3clFbG">
                <node concept="2ShNRf" id="56YPHToqzui" role="37vLTx">
                  <node concept="1pGfFk" id="56YPHToqzlw" role="2ShVmc">
                    <ref role="37wK5l" node="4EhVFrZ5iKh" resolve="NodeToSNodeAdapter" />
                    <node concept="37vLTw" id="56YPHToq$VM" role="37wK5m">
                      <ref role="3cqZAo" node="56YPHToq9Jh" resolve="node" />
                    </node>
                    <node concept="37vLTw" id="56YPHToq_tt" role="37wK5m">
                      <ref role="3cqZAo" node="56YPHToq9Jj" resolve="repository" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="56YPHToqyDp" role="37vLTJ">
                  <ref role="3cqZAo" node="56YPHToqurS" resolve="instance" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="56YPHToq_TG" role="3cqZAp">
              <node concept="2OqwBi" id="56YPHToqC1Z" role="3clFbG">
                <node concept="37vLTw" id="1m9roGBsNIM" role="2Oq$k0">
                  <ref role="3cqZAo" node="56YPHTopiR0" resolve="ourInstances" />
                </node>
                <node concept="liA8E" id="56YPHToqIdt" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="37vLTw" id="56YPHToqJeK" role="37wK5m">
                    <ref role="3cqZAo" node="56YPHToqjNF" resolve="key" />
                  </node>
                  <node concept="37vLTw" id="56YPHToqIws" role="37wK5m">
                    <ref role="3cqZAo" node="56YPHToqurS" resolve="instance" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="56YPHToqyig" role="3clFbw">
            <node concept="10Nm6u" id="56YPHToqyvG" role="3uHU7w" />
            <node concept="37vLTw" id="56YPHToqxD$" role="3uHU7B">
              <ref role="3cqZAo" node="56YPHToqurS" resolve="instance" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="56YPHToqK7j" role="3cqZAp">
          <node concept="37vLTw" id="56YPHToqKxI" role="3clFbG">
            <ref role="3cqZAo" node="56YPHToqurS" resolve="instance" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="56YPHToq9Jh" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="56YPHToq9Ji" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
      </node>
      <node concept="37vLTG" id="56YPHToq9Jj" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="56YPHToq9Jk" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3uibUv" id="56YPHToqe$_" role="3clF45">
        <ref role="3uigEE" node="4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
      </node>
      <node concept="3Tm6S6" id="56YPHToqQtK" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3Gcr_8xKb_g" role="jymVt" />
    <node concept="2YIFZL" id="3Gcr_8xKHvg" role="jymVt">
      <property role="TrG5h" value="clearInstancesCache" />
      <node concept="3clFbS" id="3Gcr_8xKgAt" role="3clF47">
        <node concept="3clFbF" id="3Gcr_8xKO1H" role="3cqZAp">
          <node concept="2OqwBi" id="3Gcr_8xKQ62" role="3clFbG">
            <node concept="37vLTw" id="1m9roGBsNIT" role="2Oq$k0">
              <ref role="3cqZAo" node="56YPHTopiR0" resolve="ourInstances" />
            </node>
            <node concept="liA8E" id="3Gcr_8xKWqD" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.clear()" resolve="clear" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="3Gcr_8xKgAr" role="3clF45" />
      <node concept="3Tm1VV" id="3Gcr_8xKgAs" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="56YPHTopSp3" role="jymVt" />
    <node concept="2YIFZL" id="4EhVFrZ6z9$" role="jymVt">
      <property role="TrG5h" value="wrap" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="4EhVFrZ5ZpK" role="3clF47">
        <node concept="3clFbF" id="75046mm7Y1$" role="3cqZAp">
          <node concept="1rXfSq" id="75046mm7Y1z" role="3clFbG">
            <ref role="37wK5l" node="75046mm7IDU" resolve="wrap" />
            <node concept="37vLTw" id="75046mm7Zf4" role="37wK5m">
              <ref role="3cqZAo" node="4EhVFrZ69I$" resolve="nodeToWrap" />
            </node>
            <node concept="10Nm6u" id="75046mm7Zhh" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4EhVFrZ69I$" role="3clF46">
        <property role="TrG5h" value="nodeToWrap" />
        <node concept="3uibUv" id="4EhVFrZ6aSK" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
      </node>
      <node concept="3uibUv" id="4EhVFrZhlU$" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm1VV" id="4EhVFrZ6C6x" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="75046mm7P4S" role="jymVt" />
    <node concept="2YIFZL" id="75046mm7IDU" role="jymVt">
      <property role="TrG5h" value="wrap" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="75046mm7IDV" role="3clF47">
        <node concept="3clFbJ" id="75046mm7IDW" role="3cqZAp">
          <node concept="3clFbS" id="75046mm7IDX" role="3clFbx">
            <node concept="3cpWs6" id="75046mm7IDY" role="3cqZAp">
              <node concept="10Nm6u" id="75046mm7IDZ" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="75046mm7IE0" role="3clFbw">
            <node concept="10Nm6u" id="75046mm7IE1" role="3uHU7w" />
            <node concept="37vLTw" id="75046mm7IE2" role="3uHU7B">
              <ref role="3cqZAo" node="75046mm7IEk" resolve="nodeToWrap" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="75046mm7IE3" role="3cqZAp">
          <node concept="3clFbS" id="75046mm7IE4" role="3clFbx">
            <node concept="3cpWs6" id="75046mm7IE5" role="3cqZAp">
              <node concept="2OqwBi" id="75046mm7IE6" role="3cqZAk">
                <node concept="1eOMI4" id="75046mm7IE7" role="2Oq$k0">
                  <node concept="10QFUN" id="75046mm7IE8" role="1eOMHV">
                    <node concept="3uibUv" id="75046mm7IE9" role="10QFUM">
                      <ref role="3uigEE" node="5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                    </node>
                    <node concept="37vLTw" id="75046mm7IEa" role="10QFUP">
                      <ref role="3cqZAo" node="75046mm7IEk" resolve="nodeToWrap" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="75046mm7IEb" role="2OqNvi">
                  <ref role="37wK5l" node="4EhVFrZhIFH" resolve="getWrapped" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="75046mm7IEc" role="3clFbw">
            <node concept="3uibUv" id="75046mm7IEd" role="2ZW6by">
              <ref role="3uigEE" node="5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
            </node>
            <node concept="37vLTw" id="75046mm7IEe" role="2ZW6bz">
              <ref role="3cqZAo" node="75046mm7IEk" resolve="nodeToWrap" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="75046mm7IEf" role="3cqZAp">
          <node concept="1rXfSq" id="56YPHToqS4s" role="3clFbG">
            <ref role="37wK5l" node="56YPHToqKHJ" resolve="getInstance" />
            <node concept="37vLTw" id="75046mm7IEi" role="37wK5m">
              <ref role="3cqZAo" node="75046mm7IEk" resolve="nodeToWrap" />
            </node>
            <node concept="37vLTw" id="75046mm7IEj" role="37wK5m">
              <ref role="3cqZAo" node="75046mm7IEm" resolve="repository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="75046mm7IEk" role="3clF46">
        <property role="TrG5h" value="nodeToWrap" />
        <node concept="3uibUv" id="75046mm7IEl" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
      </node>
      <node concept="37vLTG" id="75046mm7IEm" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="75046mm7IEn" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3uibUv" id="75046mm7IEo" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm1VV" id="75046mm7IEp" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1cIlazwUiMO" role="jymVt" />
    <node concept="2YIFZL" id="1cIlazwUj6r" role="jymVt">
      <property role="TrG5h" value="wrap" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="1cIlazwUj6s" role="3clF47">
        <node concept="3SKdUt" id="1cIlazwUj6t" role="3cqZAp">
          <node concept="1PaTwC" id="7WTFIQIcYdt" role="1aUNEU">
            <node concept="3oM_SD" id="7WTFIQIcYdu" role="1PaTwD">
              <property role="3oM_SC" value="Makes" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYdv" role="1PaTwD">
              <property role="3oM_SC" value="code" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYdw" role="1PaTwD">
              <property role="3oM_SC" value="generation" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYdx" role="1PaTwD">
              <property role="3oM_SC" value="easier." />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYdy" role="1PaTwD">
              <property role="3oM_SC" value="wrap" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYdz" role="1PaTwD">
              <property role="3oM_SC" value="can" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYd$" role="1PaTwD">
              <property role="3oM_SC" value="always" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYd_" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYdA" role="1PaTwD">
              <property role="3oM_SC" value="applied" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYdB" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYdC" role="1PaTwD">
              <property role="3oM_SC" value="ensure" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYdD" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYdE" role="1PaTwD">
              <property role="3oM_SC" value="value" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYdF" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYdG" role="1PaTwD">
              <property role="3oM_SC" value="an" />
            </node>
            <node concept="3oM_SD" id="7WTFIQIcYdH" role="1PaTwD">
              <property role="3oM_SC" value="SNode." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1cIlazwUj6v" role="3cqZAp">
          <node concept="37vLTw" id="1cIlazwUj6w" role="3clFbG">
            <ref role="3cqZAo" node="1cIlazwUj6x" resolve="nodeToWrap" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1cIlazwUj6x" role="3clF46">
        <property role="TrG5h" value="nodeToWrap" />
        <node concept="3uibUv" id="1cIlazwUp3l" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3uibUv" id="1cIlazwUo69" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm1VV" id="1cIlazwUj6$" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4EhVFrZ6MRh" role="jymVt" />
    <node concept="312cEg" id="4EhVFrZ3AlB" role="jymVt">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="4EhVFrZ3AlC" role="1B3o_S" />
      <node concept="3uibUv" id="1m9roGBuUh1" role="1tU5fm">
        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
      </node>
    </node>
    <node concept="312cEg" id="75046mm5HR6" role="jymVt">
      <property role="TrG5h" value="repository" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="75046mm5HR7" role="1B3o_S" />
      <node concept="3uibUv" id="75046mm5HR9" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
    </node>
    <node concept="312cEg" id="2VTIUrj$b9G" role="jymVt">
      <property role="TrG5h" value="userObjects" />
      <node concept="3Tm6S6" id="2VTIUrj$b9H" role="1B3o_S" />
      <node concept="3uibUv" id="tYeZkDufW" role="1tU5fm">
        <ref role="3uigEE" to="n7xv:~CustomPMap" resolve="CustomPMap" />
        <node concept="3uibUv" id="tYeZkDxJI" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="3uibUv" id="tYeZkD$GX" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2OqwBi" id="1m9roGBuhzq" role="33vP2m">
        <node concept="10M0yZ" id="1m9roGBugjn" role="2Oq$k0">
          <ref role="3cqZAo" to="n7xv:~SmallPMap.Companion" resolve="Companion" />
          <ref role="1PxDUh" to="n7xv:~SmallPMap" resolve="SmallPMap" />
        </node>
        <node concept="liA8E" id="1m9roGBuiSf" role="2OqNvi">
          <ref role="37wK5l" to="n7xv:~SmallPMap$Companion.empty()" resolve="empty" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7c10t$73Ygj" role="jymVt">
      <property role="TrG5h" value="nodeReference" />
      <node concept="3Tm6S6" id="7c10t$73Ygk" role="1B3o_S" />
      <node concept="3uibUv" id="7c10t$747Bn" role="1tU5fm">
        <ref role="3uigEE" node="7c10t$724iy" resolve="NodeToSNodeAdapter.NodeReference" />
      </node>
      <node concept="2ShNRf" id="7c10t$74aNa" role="33vP2m">
        <node concept="HV5vD" id="7c10t$74jnz" role="2ShVmc">
          <ref role="HV5vE" node="7c10t$724iy" resolve="NodeToSNodeAdapter.NodeReference" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7c10t$74oxy" role="jymVt">
      <property role="TrG5h" value="nodeId" />
      <node concept="3Tm6S6" id="7c10t$74oxz" role="1B3o_S" />
      <node concept="3uibUv" id="7c10t$74xMs" role="1tU5fm">
        <ref role="3uigEE" node="7c10t$73n1t" resolve="NodeToSNodeAdapter.NodeId" />
      </node>
      <node concept="2ShNRf" id="7c10t$74A4g" role="33vP2m">
        <node concept="HV5vD" id="7c10t$74Cm6" role="2ShVmc">
          <ref role="HV5vE" node="7c10t$73n1t" resolve="NodeToSNodeAdapter.NodeId" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4EhVFrZ3Amb" role="jymVt" />
    <node concept="3clFbW" id="4EhVFrZ5iKh" role="jymVt">
      <node concept="3cqZAl" id="4EhVFrZ5iKi" role="3clF45" />
      <node concept="3clFbS" id="4EhVFrZ5iKl" role="3clF47">
        <node concept="3clFbJ" id="1m9roGC2Rv$" role="3cqZAp">
          <node concept="3clFbS" id="1m9roGC2RvA" role="3clFbx">
            <node concept="YS8fn" id="1m9roGC2Sad" role="3cqZAp">
              <node concept="2ShNRf" id="1m9roGC2SbX" role="YScLw">
                <node concept="1pGfFk" id="1m9roGC2SJX" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="3cpWs3" id="1m9roGC2TDn" role="37wK5m">
                    <node concept="37vLTw" id="1m9roGC2TGv" role="3uHU7w">
                      <ref role="3cqZAo" node="4EhVFrZ5iKo" resolve="node1" />
                    </node>
                    <node concept="Xl_RD" id="1m9roGC2SUq" role="3uHU7B">
                      <property role="Xl_RC" value="Node has no concept: " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1m9roGC2RXK" role="3clFbw">
            <node concept="10Nm6u" id="1m9roGC2S7X" role="3uHU7w" />
            <node concept="2OqwBi" id="1m9roGC2REA" role="3uHU7B">
              <node concept="37vLTw" id="1m9roGC2Ry1" role="2Oq$k0">
                <ref role="3cqZAo" node="4EhVFrZ5iKo" resolve="node1" />
              </node>
              <node concept="liA8E" id="1m9roGC2RL0" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~INode.getConcept()" resolve="getConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4EhVFrZ5iKp" role="3cqZAp">
          <node concept="37vLTI" id="4EhVFrZ5iKr" role="3clFbG">
            <node concept="37vLTw" id="4EhVFrZ5iKv" role="37vLTJ">
              <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
            </node>
            <node concept="37vLTw" id="4EhVFrZ5iKw" role="37vLTx">
              <ref role="3cqZAo" node="4EhVFrZ5iKo" resolve="node1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="75046mm5X3L" role="3cqZAp">
          <node concept="37vLTI" id="75046mm5Zxb" role="3clFbG">
            <node concept="37vLTw" id="75046mm60Hx" role="37vLTx">
              <ref role="3cqZAo" node="75046mm5UoV" resolve="repository" />
            </node>
            <node concept="2OqwBi" id="75046mm5Xz$" role="37vLTJ">
              <node concept="Xjq3P" id="75046mm5X3J" role="2Oq$k0" />
              <node concept="2OwXpG" id="75046mm5Y2a" role="2OqNvi">
                <ref role="2Oxat5" node="75046mm5HR6" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4EhVFrZ5iKo" role="3clF46">
        <property role="TrG5h" value="node1" />
        <node concept="3uibUv" id="4EhVFrZ5iKn" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
      </node>
      <node concept="37vLTG" id="75046mm5UoV" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="75046mm5VHd" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3Tmbuc" id="1zncNMQJsqb" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="75046mm6jd0" role="jymVt" />
    <node concept="3clFb_" id="75046mm6vCc" role="jymVt">
      <property role="TrG5h" value="wrap_" />
      <node concept="37vLTG" id="75046mm6FJw" role="3clF46">
        <property role="TrG5h" value="nodeToWrap" />
        <node concept="3uibUv" id="75046mm6I68" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
      </node>
      <node concept="3uibUv" id="75046mm6IfQ" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tmbuc" id="75046mm7E1m" role="1B3o_S" />
      <node concept="3clFbS" id="75046mm6vCg" role="3clF47">
        <node concept="3clFbF" id="1m9roGBuARs" role="3cqZAp">
          <node concept="1rXfSq" id="2VTIUrjqapH" role="3clFbG">
            <ref role="37wK5l" node="75046mm7IDU" resolve="wrap" />
            <node concept="37vLTw" id="2VTIUrjqapI" role="37wK5m">
              <ref role="3cqZAo" node="75046mm6FJw" resolve="nodeToWrap" />
            </node>
            <node concept="37vLTw" id="2VTIUrjqapJ" role="37wK5m">
              <ref role="3cqZAo" node="75046mm5HR6" resolve="repository" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4EhVFrZ5UFo" role="jymVt" />
    <node concept="3clFb_" id="4EhVFrZhzvo" role="jymVt">
      <property role="TrG5h" value="getWrapped" />
      <node concept="3uibUv" id="4EhVFrZhGem" role="3clF45">
        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
      </node>
      <node concept="3Tm1VV" id="4EhVFrZhzvr" role="1B3o_S" />
      <node concept="3clFbS" id="4EhVFrZhzvs" role="3clF47">
        <node concept="3clFbF" id="4EhVFrZhHoz" role="3cqZAp">
          <node concept="37vLTw" id="4EhVFrZhHoy" role="3clFbG">
            <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4EhVFrZhuBx" role="jymVt" />
    <node concept="3clFb_" id="4EhVFrZ3Amy" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getModel" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3Amz" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3Am_" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="4EhVFrZ3AmA" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
      <node concept="3clFbS" id="4EhVFrZ3AmB" role="3clF47">
        <node concept="3clFbF" id="1m9roGBtrBj" role="3cqZAp">
          <node concept="10Nm6u" id="1m9roGBtrBi" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3AmC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3AmF" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getNodeId" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3AmG" role="1B3o_S" />
      <node concept="3uibUv" id="4EhVFrZ3AmI" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
      </node>
      <node concept="3clFbS" id="4EhVFrZ3AmJ" role="3clF47">
        <node concept="3clFbF" id="7c10t$75noX" role="3cqZAp">
          <node concept="37vLTw" id="7c10t$75noW" role="3clFbG">
            <ref role="3cqZAo" node="7c10t$74oxy" resolve="nodeId" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3AmK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3AmN" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getReference" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3AmO" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3AmQ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="4EhVFrZ3AmR" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3clFbS" id="4EhVFrZ3AmS" role="3clF47">
        <node concept="3clFbF" id="7c10t$75p0B" role="3cqZAp">
          <node concept="37vLTw" id="7c10t$75p0A" role="3clFbG">
            <ref role="3cqZAo" node="7c10t$73Ygj" resolve="nodeReference" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3AmT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3AmW" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConcept" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3AmX" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3AmZ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="4EhVFrZ3An0" role="3clF45">
        <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
      </node>
      <node concept="3clFbS" id="4EhVFrZ3An1" role="3clF47">
        <node concept="3clFbF" id="4EhVFrZgAKR" role="3cqZAp">
          <node concept="10QFUN" id="4EhVFrZgF5$" role="3clFbG">
            <node concept="2OqwBi" id="4EhVFrZgF5s" role="10QFUP">
              <node concept="1eOMI4" id="4EhVFrZgF5t" role="2Oq$k0">
                <node concept="10QFUN" id="4EhVFrZgF5u" role="1eOMHV">
                  <node concept="2OqwBi" id="4EhVFrZgF5v" role="10QFUP">
                    <node concept="37vLTw" id="4EhVFrZgF5w" role="2Oq$k0">
                      <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
                    </node>
                    <node concept="liA8E" id="4EhVFrZgF5x" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~INode.getConcept()" resolve="getConcept" />
                    </node>
                  </node>
                  <node concept="3uibUv" id="4EhVFrZgF5y" role="10QFUM">
                    <ref role="3uigEE" node="5gTrVpGjuL2" resolve="SConceptAdapter" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4EhVFrZgF5z" role="2OqNvi">
                <ref role="37wK5l" node="5gTrVpGqz6x" resolve="getAdapted" />
              </node>
            </node>
            <node concept="3uibUv" id="4EhVFrZgG0b" role="10QFUM">
              <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3An2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3An5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isInstanceOfConcept" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3An6" role="1B3o_S" />
      <node concept="10P_77" id="4EhVFrZ3An8" role="3clF45" />
      <node concept="37vLTG" id="4EhVFrZ3An9" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="4EhVFrZ3Ana" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
        <node concept="2AHcQZ" id="4EhVFrZ3Anb" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3Anc" role="3clF47">
        <node concept="3clFbF" id="1apE37RmX0p" role="3cqZAp">
          <node concept="2OqwBi" id="1apE37RmYt$" role="3clFbG">
            <node concept="1rXfSq" id="1apE37RmX0n" role="2Oq$k0">
              <ref role="37wK5l" node="4EhVFrZ3AmW" resolve="getConcept" />
            </node>
            <node concept="liA8E" id="1apE37RmZXZ" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.isSubConceptOf(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isSubConceptOf" />
              <node concept="37vLTw" id="1apE37Rn01B" role="37wK5m">
                <ref role="3cqZAo" node="4EhVFrZ3An9" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3And" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3Ang" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPresentation" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3Anh" role="1B3o_S" />
      <node concept="17QB3L" id="2BHSBitU4Ms" role="3clF45" />
      <node concept="3clFbS" id="4EhVFrZ3Ank" role="3clF47">
        <node concept="3cpWs8" id="21SKqk9PDdF" role="3cqZAp">
          <node concept="3cpWsn" id="21SKqk9PDdG" role="3cpWs9">
            <property role="TrG5h" value="snode" />
            <node concept="3Tqbb2" id="21SKqk9PDdC" role="1tU5fm" />
            <node concept="Xjq3P" id="21SKqk9PDdJ" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="2BYLcdcjJp1" role="3cqZAp">
          <node concept="3cpWsn" id="2BYLcdcjJp2" role="3cpWs9">
            <property role="TrG5h" value="presentation" />
            <node concept="17QB3L" id="2BYLcdcjJoW" role="1tU5fm" />
            <node concept="10Nm6u" id="2BYLcdcJAN3" role="33vP2m" />
          </node>
        </node>
        <node concept="3J1_TO" id="2BYLcdcjYpC" role="3cqZAp">
          <node concept="3clFbS" id="2BYLcdcjYpE" role="1zxBo7">
            <node concept="3clFbF" id="2BYLcdcjP0S" role="3cqZAp">
              <node concept="37vLTI" id="2BYLcdcjP0U" role="3clFbG">
                <node concept="2OqwBi" id="2BYLcdcjJp3" role="37vLTx">
                  <node concept="37vLTw" id="2BYLcdcjJp4" role="2Oq$k0">
                    <ref role="3cqZAo" node="21SKqk9PDdG" resolve="snode" />
                  </node>
                  <node concept="2qgKlT" id="2BYLcdcjJp5" role="2OqNvi">
                    <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                  </node>
                </node>
                <node concept="37vLTw" id="2BYLcdcjP0Y" role="37vLTJ">
                  <ref role="3cqZAo" node="2BYLcdcjJp2" resolve="presentation" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="2BYLcdcjYpF" role="1zxBo5">
            <node concept="XOnhg" id="2BYLcdcjYpH" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="9hp2EyLu8Et" role="1tU5fm">
                <node concept="3uibUv" id="2BYLcdckdtd" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2BYLcdcjYpL" role="1zc67A">
              <node concept="RRSsy" id="2BYLcdckdPb" role="3cqZAp">
                <node concept="Xl_RD" id="2BYLcdckdPd" role="RRSoy" />
                <node concept="37vLTw" id="2BYLcdckdPf" role="RRSow">
                  <ref role="3cqZAo" node="2BYLcdcjYpH" resolve="ex" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2BYLcdcJ8f8" role="3cqZAp">
          <node concept="3clFbS" id="2BYLcdcJ8fa" role="1zxBo7">
            <node concept="3clFbJ" id="2BYLcdcBtY7" role="3cqZAp">
              <node concept="3clFbS" id="2BYLcdcBtY9" role="3clFbx">
                <node concept="3clFbF" id="2BYLcdcBxcD" role="3cqZAp">
                  <node concept="37vLTI" id="2BYLcdcBxCx" role="3clFbG">
                    <node concept="1rXfSq" id="2BYLcdcCDgs" role="37vLTx">
                      <ref role="37wK5l" node="4EhVFrZ3Ar1" resolve="getProperty" />
                      <node concept="355D3s" id="2BYLcdcCF0q" role="37wK5m">
                        <ref role="355D3t" to="tpck:h0TrEE$" resolve="INamedConcept" />
                        <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2BYLcdcBxcB" role="37vLTJ">
                      <ref role="3cqZAo" node="2BYLcdcjJp2" resolve="presentation" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="2BYLcdcC$OM" role="3clFbw">
                <node concept="2OqwBi" id="2BYLcdcC_rs" role="3uHU7w">
                  <node concept="Xjq3P" id="2BYLcdcC_0l" role="2Oq$k0" />
                  <node concept="liA8E" id="2BYLcdcC_OX" role="2OqNvi">
                    <ref role="37wK5l" node="4EhVFrZ3An5" resolve="isInstanceOfConcept" />
                    <node concept="35c_gC" id="2BYLcdcCBso" role="37wK5m">
                      <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="2BYLcdcBuPH" role="3uHU7B">
                  <node concept="37vLTw" id="2BYLcdcBulM" role="3uHU7B">
                    <ref role="3cqZAo" node="2BYLcdcjJp2" resolve="presentation" />
                  </node>
                  <node concept="10Nm6u" id="2BYLcdcBv8E" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="2BYLcdcJ8fb" role="1zxBo5">
            <node concept="XOnhg" id="2BYLcdcJ8fd" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="9hp2EyKB$7t" role="1tU5fm">
                <node concept="3uibUv" id="2BYLcdcJe0e" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2BYLcdcJ8fh" role="1zc67A">
              <node concept="RRSsy" id="2BYLcdcJlIl" role="3cqZAp">
                <node concept="Xl_RD" id="2BYLcdcJlIn" role="RRSoy" />
                <node concept="37vLTw" id="2BYLcdcJlIp" role="RRSow">
                  <ref role="3cqZAo" node="2BYLcdcJ8fd" resolve="ex" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2BYLcdcJs2x" role="3cqZAp">
          <node concept="3clFbS" id="2BYLcdcJs2z" role="3clFbx">
            <node concept="3clFbF" id="2BYLcdcJyZm" role="3cqZAp">
              <node concept="37vLTI" id="2BYLcdcJzvy" role="3clFbG">
                <node concept="1rXfSq" id="2BYLcdcJzSp" role="37vLTx">
                  <ref role="37wK5l" node="2deitUvWkXI" resolve="toString" />
                </node>
                <node concept="37vLTw" id="2BYLcdcJyZk" role="37vLTJ">
                  <ref role="3cqZAo" node="2BYLcdcjJp2" resolve="presentation" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2BYLcdcJyrI" role="3clFbw">
            <node concept="10Nm6u" id="2BYLcdcJy__" role="3uHU7w" />
            <node concept="37vLTw" id="2BYLcdcJxrx" role="3uHU7B">
              <ref role="3cqZAo" node="2BYLcdcjJp2" resolve="presentation" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="21SKqk9PF5o" role="3cqZAp">
          <node concept="37vLTw" id="2BYLcdcjJp6" role="3cqZAk">
            <ref role="3cqZAo" node="2BYLcdcjJp2" resolve="presentation" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3Anl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3Ano" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getName" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3Anp" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3Anr" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="4EhVFrZ3Ans" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="4EhVFrZ3Ant" role="3clF47">
        <node concept="3clFbF" id="2U$60wn93y2" role="3cqZAp">
          <node concept="2OqwBi" id="2U$60wn93Cc" role="3clFbG">
            <node concept="37vLTw" id="2U$60wn93y1" role="2Oq$k0">
              <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
            </node>
            <node concept="liA8E" id="2U$60wn9830" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~INode.getPropertyValue(java.lang.String)" resolve="getPropertyValue" />
              <node concept="Xl_RD" id="2U$60wn987S" role="37wK5m">
                <property role="Xl_RC" value="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3Anu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3Anx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addChild" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3Any" role="1B3o_S" />
      <node concept="3cqZAl" id="4EhVFrZ3An$" role="3clF45" />
      <node concept="37vLTG" id="4EhVFrZ3An_" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="4EhVFrZ3AnA" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
        <node concept="2AHcQZ" id="4EhVFrZ3AnB" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4EhVFrZ3AnC" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="4EhVFrZ3AnD" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="4EhVFrZ3AnE" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3AnF" role="3clF47">
        <node concept="3clFbF" id="35N923AyOUf" role="3cqZAp">
          <node concept="2OqwBi" id="35N923AyRpR" role="3clFbG">
            <node concept="2OqwBi" id="35N923AyPnh" role="2Oq$k0">
              <node concept="Xjq3P" id="35N923AyOUd" role="2Oq$k0" />
              <node concept="2OwXpG" id="35N923AyPPR" role="2OqNvi">
                <ref role="2Oxat5" node="4EhVFrZ3AlB" resolve="node" />
              </node>
            </node>
            <node concept="liA8E" id="35N923AySPg" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~INode.addChild(java.lang.String,int,org.modelix.model.api.INode)" resolve="addChild" />
              <node concept="2OqwBi" id="35N923AyTgR" role="37wK5m">
                <node concept="37vLTw" id="35N923AySZb" role="2Oq$k0">
                  <ref role="3cqZAo" node="4EhVFrZ3An_" resolve="link" />
                </node>
                <node concept="liA8E" id="35N923AyV1Q" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                </node>
              </node>
              <node concept="3cmrfG" id="35N923AyVqa" role="37wK5m">
                <property role="3cmrfH" value="-1" />
              </node>
              <node concept="2YIFZM" id="35N923AyWjy" role="37wK5m">
                <ref role="1Pybhc" node="5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                <ref role="37wK5l" node="5gTrVpGyMwR" resolve="wrap" />
                <node concept="37vLTw" id="35N923AyWAP" role="37wK5m">
                  <ref role="3cqZAo" node="4EhVFrZ3AnC" resolve="child" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3AnG" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3AnH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="insertChildBefore" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3AnI" role="1B3o_S" />
      <node concept="3cqZAl" id="4EhVFrZ3AnK" role="3clF45" />
      <node concept="37vLTG" id="4EhVFrZ3AnL" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="4EhVFrZ3AnM" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
        <node concept="2AHcQZ" id="4EhVFrZ3AnN" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4EhVFrZ3AnO" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="4EhVFrZ3AnP" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="4EhVFrZ3AnQ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4EhVFrZ3AnR" role="3clF46">
        <property role="TrG5h" value="node1" />
        <node concept="3uibUv" id="4EhVFrZ3AnS" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="4EhVFrZ3AnT" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3AnU" role="3clF47">
        <node concept="3clFbJ" id="4_SQzDOVwCU" role="3cqZAp">
          <node concept="3clFbS" id="4_SQzDOVwCW" role="3clFbx">
            <node concept="3clFbF" id="4_SQzDOV_uo" role="3cqZAp">
              <node concept="1rXfSq" id="4_SQzDOV_um" role="3clFbG">
                <ref role="37wK5l" node="4EhVFrZ3Anx" resolve="addChild" />
                <node concept="37vLTw" id="4_SQzDOVBhw" role="37wK5m">
                  <ref role="3cqZAo" node="4EhVFrZ3AnL" resolve="link" />
                </node>
                <node concept="37vLTw" id="4_SQzDOVDm0" role="37wK5m">
                  <ref role="3cqZAo" node="4EhVFrZ3AnO" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4_SQzDOVFaE" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="4_SQzDOVz2D" role="3clFbw">
            <node concept="10Nm6u" id="4_SQzDOVzlw" role="3uHU7w" />
            <node concept="37vLTw" id="4_SQzDOVx2s" role="3uHU7B">
              <ref role="3cqZAo" node="4EhVFrZ3AnR" resolve="node1" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4_SQzDOUCIR" role="3cqZAp">
          <node concept="3cpWsn" id="4_SQzDOUCIS" role="3cpWs9">
            <property role="TrG5h" value="children" />
            <node concept="A3Dl8" id="4_SQzDOUIvb" role="1tU5fm">
              <node concept="3uibUv" id="4_SQzDOV2Fz" role="A3Ik2">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="10QFUN" id="4_SQzDOV5_X" role="33vP2m">
              <node concept="1rXfSq" id="4_SQzDOV5_V" role="10QFUP">
                <ref role="37wK5l" node="4EhVFrZ3App" resolve="getChildren" />
                <node concept="37vLTw" id="4_SQzDOV5_W" role="37wK5m">
                  <ref role="3cqZAo" node="4EhVFrZ3AnL" resolve="link" />
                </node>
              </node>
              <node concept="A3Dl8" id="4_SQzDOV5_T" role="10QFUM">
                <node concept="3uibUv" id="4_SQzDOV5_U" role="A3Ik2">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4_SQzDOV8ve" role="3cqZAp">
          <node concept="3cpWsn" id="4_SQzDOV8vf" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <node concept="10Oyi0" id="4_SQzDOV8v1" role="1tU5fm" />
            <node concept="2OqwBi" id="4_SQzDOV8vg" role="33vP2m">
              <node concept="37vLTw" id="4_SQzDOV8vh" role="2Oq$k0">
                <ref role="3cqZAo" node="4_SQzDOUCIS" resolve="children" />
              </node>
              <node concept="2WmjW8" id="4_SQzDOV8vi" role="2OqNvi">
                <node concept="37vLTw" id="4_SQzDOV8vj" role="25WWJ7">
                  <ref role="3cqZAo" node="4EhVFrZ3AnR" resolve="node1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4_SQzDOVayg" role="3cqZAp">
          <node concept="2OqwBi" id="4_SQzDOVc9L" role="3clFbG">
            <node concept="2OqwBi" id="4_SQzDOVbmy" role="2Oq$k0">
              <node concept="Xjq3P" id="4_SQzDOVaye" role="2Oq$k0" />
              <node concept="2OwXpG" id="4_SQzDOVbGk" role="2OqNvi">
                <ref role="2Oxat5" node="4EhVFrZ3AlB" resolve="node" />
              </node>
            </node>
            <node concept="liA8E" id="4_SQzDOVdx0" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~INode.addChild(java.lang.String,int,org.modelix.model.api.INode)" resolve="addChild" />
              <node concept="2OqwBi" id="4_SQzDOVgQf" role="37wK5m">
                <node concept="37vLTw" id="4_SQzDOVett" role="2Oq$k0">
                  <ref role="3cqZAo" node="4EhVFrZ3AnL" resolve="link" />
                </node>
                <node concept="liA8E" id="4_SQzDOVj5c" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                </node>
              </node>
              <node concept="37vLTw" id="4_SQzDOVjHt" role="37wK5m">
                <ref role="3cqZAo" node="4_SQzDOV8vf" resolve="index" />
              </node>
              <node concept="2YIFZM" id="4_SQzDOVpoA" role="37wK5m">
                <ref role="37wK5l" node="5gTrVpGyMwR" resolve="wrap" />
                <ref role="1Pybhc" node="5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                <node concept="37vLTw" id="4_SQzDOVpOW" role="37wK5m">
                  <ref role="3cqZAo" node="4EhVFrZ3AnO" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3AnV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3AnW" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="insertChildAfter" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3AnX" role="1B3o_S" />
      <node concept="3cqZAl" id="4EhVFrZ3AnZ" role="3clF45" />
      <node concept="37vLTG" id="4EhVFrZ3Ao0" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="4EhVFrZ3Ao1" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
        <node concept="2AHcQZ" id="4EhVFrZ3Ao2" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4EhVFrZ3Ao3" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="4EhVFrZ3Ao4" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="4EhVFrZ3Ao5" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4EhVFrZ3Ao6" role="3clF46">
        <property role="TrG5h" value="node1" />
        <node concept="3uibUv" id="4EhVFrZ3Ao7" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="4EhVFrZ3Ao8" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3Ao9" role="3clF47">
        <node concept="3clFbJ" id="4_SQzDOVNxQ" role="3cqZAp">
          <node concept="3clFbS" id="4_SQzDOVNxR" role="3clFbx">
            <node concept="3clFbF" id="4_SQzDOVNxS" role="3cqZAp">
              <node concept="1rXfSq" id="4_SQzDOVNxT" role="3clFbG">
                <ref role="37wK5l" node="4EhVFrZ3Anx" resolve="addChild" />
                <node concept="37vLTw" id="4_SQzDOVNxU" role="37wK5m">
                  <ref role="3cqZAo" node="4EhVFrZ3Ao0" resolve="link" />
                </node>
                <node concept="37vLTw" id="4_SQzDOVRdC" role="37wK5m">
                  <ref role="3cqZAo" node="4EhVFrZ3Ao3" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4_SQzDOVNxW" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="4_SQzDOVNxX" role="3clFbw">
            <node concept="10Nm6u" id="4_SQzDOVNxY" role="3uHU7w" />
            <node concept="37vLTw" id="4_SQzDOVNxZ" role="3uHU7B">
              <ref role="3cqZAo" node="4EhVFrZ3Ao6" resolve="node1" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4_SQzDOVrIu" role="3cqZAp">
          <node concept="3cpWsn" id="4_SQzDOVrIv" role="3cpWs9">
            <property role="TrG5h" value="children" />
            <node concept="A3Dl8" id="4_SQzDOVrIw" role="1tU5fm">
              <node concept="3uibUv" id="4_SQzDOVrIx" role="A3Ik2">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="10QFUN" id="4_SQzDOVrIy" role="33vP2m">
              <node concept="1rXfSq" id="4_SQzDOVrIz" role="10QFUP">
                <ref role="37wK5l" node="4EhVFrZ3App" resolve="getChildren" />
                <node concept="37vLTw" id="4_SQzDOVrI$" role="37wK5m">
                  <ref role="3cqZAo" node="4EhVFrZ3Ao0" resolve="link" />
                </node>
              </node>
              <node concept="A3Dl8" id="4_SQzDOVrI_" role="10QFUM">
                <node concept="3uibUv" id="4_SQzDOVrIA" role="A3Ik2">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4_SQzDOVrIB" role="3cqZAp">
          <node concept="3cpWsn" id="4_SQzDOVrIC" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <node concept="10Oyi0" id="4_SQzDOVrID" role="1tU5fm" />
            <node concept="2OqwBi" id="4_SQzDOVrIE" role="33vP2m">
              <node concept="37vLTw" id="4_SQzDOVrIF" role="2Oq$k0">
                <ref role="3cqZAo" node="4_SQzDOVrIv" resolve="children" />
              </node>
              <node concept="2WmjW8" id="4_SQzDOVrIG" role="2OqNvi">
                <node concept="37vLTw" id="4_SQzDOVrIH" role="25WWJ7">
                  <ref role="3cqZAo" node="4EhVFrZ3Ao6" resolve="node1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4_SQzDOVrII" role="3cqZAp">
          <node concept="2OqwBi" id="4_SQzDOVrIJ" role="3clFbG">
            <node concept="2OqwBi" id="4_SQzDOVrIK" role="2Oq$k0">
              <node concept="Xjq3P" id="4_SQzDOVrIL" role="2Oq$k0" />
              <node concept="2OwXpG" id="4_SQzDOVrIM" role="2OqNvi">
                <ref role="2Oxat5" node="4EhVFrZ3AlB" resolve="node" />
              </node>
            </node>
            <node concept="liA8E" id="4_SQzDOVrIN" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~INode.addChild(java.lang.String,int,org.modelix.model.api.INode)" resolve="addChild" />
              <node concept="2OqwBi" id="4_SQzDOVrIO" role="37wK5m">
                <node concept="37vLTw" id="4_SQzDOVrIP" role="2Oq$k0">
                  <ref role="3cqZAo" node="4EhVFrZ3Ao0" resolve="link" />
                </node>
                <node concept="liA8E" id="4_SQzDOVrIQ" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                </node>
              </node>
              <node concept="3cpWs3" id="4_SQzDOVvE1" role="37wK5m">
                <node concept="3cmrfG" id="4_SQzDOVvWK" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="37vLTw" id="4_SQzDOVrIR" role="3uHU7B">
                  <ref role="3cqZAo" node="4_SQzDOVrIC" resolve="index" />
                </node>
              </node>
              <node concept="2YIFZM" id="4_SQzDOVrIS" role="37wK5m">
                <ref role="37wK5l" node="5gTrVpGyMwR" resolve="wrap" />
                <ref role="1Pybhc" node="5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                <node concept="37vLTw" id="4_SQzDOVT3o" role="37wK5m">
                  <ref role="3cqZAo" node="4EhVFrZ3Ao3" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3Aoa" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3Aob" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="removeChild" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3Aoc" role="1B3o_S" />
      <node concept="3cqZAl" id="4EhVFrZ3Aoe" role="3clF45" />
      <node concept="37vLTG" id="4EhVFrZ3Aof" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="4EhVFrZ3Aog" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="4EhVFrZ3Aoh" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3Aoi" role="3clF47">
        <node concept="3clFbF" id="4_SQzDOU4wn" role="3cqZAp">
          <node concept="2OqwBi" id="4_SQzDOU63Y" role="3clFbG">
            <node concept="2OqwBi" id="4_SQzDOU5ir" role="2Oq$k0">
              <node concept="Xjq3P" id="4_SQzDOU4wl" role="2Oq$k0" />
              <node concept="2OwXpG" id="4_SQzDOU5Cd" role="2OqNvi">
                <ref role="2Oxat5" node="4EhVFrZ3AlB" resolve="node" />
              </node>
            </node>
            <node concept="liA8E" id="4_SQzDOU84j" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~INode.removeChild(org.modelix.model.api.INode)" resolve="removeChild" />
              <node concept="2YIFZM" id="4_SQzDOUaBx" role="37wK5m">
                <ref role="1Pybhc" node="5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                <ref role="37wK5l" node="5gTrVpGyMwR" resolve="wrap" />
                <node concept="37vLTw" id="4_SQzDOUaZm" role="37wK5m">
                  <ref role="3cqZAo" node="4EhVFrZ3Aof" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3Aoj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3Aok" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="delete" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3Aol" role="1B3o_S" />
      <node concept="3cqZAl" id="4EhVFrZ3Aon" role="3clF45" />
      <node concept="3clFbS" id="4EhVFrZ3Aoo" role="3clF47">
        <node concept="3clFbF" id="7vWAzuFbhOm" role="3cqZAp">
          <node concept="2OqwBi" id="7vWAzuFblrA" role="3clFbG">
            <node concept="2OqwBi" id="7vWAzuFbhUu" role="2Oq$k0">
              <node concept="37vLTw" id="7vWAzuFbhOl" role="2Oq$k0">
                <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
              </node>
              <node concept="liA8E" id="7vWAzuFblaU" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~INode.getParent()" resolve="getParent" />
              </node>
            </node>
            <node concept="liA8E" id="7vWAzuFbpfO" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~INode.removeChild(org.modelix.model.api.INode)" resolve="removeChild" />
              <node concept="37vLTw" id="7vWAzuFbpAl" role="37wK5m">
                <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3Aop" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3Aoq" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getParent" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3Aor" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3Aot" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="4EhVFrZ3Aou" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3clFbS" id="4EhVFrZ3Aov" role="3clF47">
        <node concept="3cpWs8" id="1zncNMQRAdc" role="3cqZAp">
          <node concept="3cpWsn" id="1zncNMQRAdd" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3uibUv" id="1zncNMQRAda" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
            </node>
            <node concept="2OqwBi" id="1zncNMQRAde" role="33vP2m">
              <node concept="37vLTw" id="1zncNMQRAdf" role="2Oq$k0">
                <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
              </node>
              <node concept="liA8E" id="1zncNMQRAdg" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~INode.getParent()" resolve="getParent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="B8a55UnTDt" role="3cqZAp">
          <node concept="3cpWsn" id="B8a55UnTDu" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="1rXfSq" id="B8a55UnTDv" role="33vP2m">
              <ref role="37wK5l" node="75046mm6vCc" resolve="wrap_" />
              <node concept="37vLTw" id="1zncNMQRAdh" role="37wK5m">
                <ref role="3cqZAo" node="1zncNMQRAdd" resolve="parent" />
              </node>
            </node>
            <node concept="3Tqbb2" id="1zncNMQRUwE" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbF" id="1cIlazwUWxD" role="3cqZAp">
          <node concept="37vLTw" id="B8a55UnTDz" role="3clFbG">
            <ref role="3cqZAo" node="B8a55UnTDu" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3Aow" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3Aoz" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getContainingRoot" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3Ao$" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3AoA" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="75046mlWHfq" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3clFbS" id="4EhVFrZ3AoC" role="3clF47">
        <node concept="3cpWs8" id="7NatPTM3STI" role="3cqZAp">
          <node concept="3cpWsn" id="7NatPTM3STJ" role="3cpWs9">
            <property role="TrG5h" value="n1" />
            <node concept="3uibUv" id="7NatPTM3STF" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7NatPTM3UYu" role="3cqZAp">
          <node concept="3cpWsn" id="7NatPTM3UYv" role="3cpWs9">
            <property role="TrG5h" value="n2" />
            <node concept="3uibUv" id="7NatPTM3UYw" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
            </node>
            <node concept="37vLTw" id="7NatPTM3V0M" role="33vP2m">
              <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="MpOyq" id="7NatPTM3Ysq" role="3cqZAp">
          <node concept="3clFbS" id="7NatPTM3Yss" role="2LFqv$">
            <node concept="3clFbF" id="7NatPTM3WPn" role="3cqZAp">
              <node concept="37vLTI" id="7NatPTM3WVr" role="3clFbG">
                <node concept="37vLTw" id="7NatPTM3WW6" role="37vLTx">
                  <ref role="3cqZAo" node="7NatPTM3UYv" resolve="n2" />
                </node>
                <node concept="37vLTw" id="7NatPTM3WPm" role="37vLTJ">
                  <ref role="3cqZAo" node="7NatPTM3STJ" resolve="n1" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7NatPTM3WXf" role="3cqZAp">
              <node concept="37vLTI" id="7NatPTM3X4E" role="3clFbG">
                <node concept="37vLTw" id="7NatPTM3WXd" role="37vLTJ">
                  <ref role="3cqZAo" node="7NatPTM3UYv" resolve="n2" />
                </node>
                <node concept="2OqwBi" id="7NatPTM3Xbw" role="37vLTx">
                  <node concept="37vLTw" id="7NatPTM3X5l" role="2Oq$k0">
                    <ref role="3cqZAo" node="7NatPTM3STJ" resolve="n1" />
                  </node>
                  <node concept="liA8E" id="7NatPTM3XoZ" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~INode.getParent()" resolve="getParent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7NatPTM3YBf" role="MpTkK">
            <node concept="10Nm6u" id="7NatPTM3YCi" role="3uHU7w" />
            <node concept="37vLTw" id="7NatPTM3YvF" role="3uHU7B">
              <ref role="3cqZAo" node="7NatPTM3UYv" resolve="n2" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7NatPTM3RDh" role="3cqZAp">
          <node concept="1rXfSq" id="75046mlJFWK" role="3clFbG">
            <ref role="37wK5l" node="75046mm6vCc" resolve="wrap_" />
            <node concept="37vLTw" id="75046mlJFWL" role="37wK5m">
              <ref role="3cqZAo" node="7NatPTM3STJ" resolve="n1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3AoD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3AoG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getContainmentLink" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3AoH" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3AoJ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="4EhVFrZ3AoK" role="3clF45">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
      <node concept="3clFbS" id="4EhVFrZ3AoL" role="3clF47">
        <node concept="3cpWs8" id="Vl1zEEq5fQ" role="3cqZAp">
          <node concept="3cpWsn" id="Vl1zEEq5fR" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3uibUv" id="Vl1zEEqb91" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="1rXfSq" id="Vl1zEEq9eC" role="33vP2m">
              <ref role="37wK5l" node="75046mm6vCc" resolve="wrap_" />
              <node concept="2OqwBi" id="Vl1zEEq5fS" role="37wK5m">
                <node concept="37vLTw" id="Vl1zEEq5fT" role="2Oq$k0">
                  <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
                </node>
                <node concept="liA8E" id="Vl1zEEq5fU" role="2OqNvi">
                  <ref role="37wK5l" to="jks5:~INode.getParent()" resolve="getParent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Vl1zEEq6ky" role="3cqZAp">
          <node concept="3clFbS" id="Vl1zEEq6k$" role="3clFbx">
            <node concept="3cpWs6" id="Vl1zEEq6Mw" role="3cqZAp">
              <node concept="10Nm6u" id="Vl1zEEq6Rl" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="Vl1zEEq6BG" role="3clFbw">
            <node concept="10Nm6u" id="Vl1zEEq6Hx" role="3uHU7w" />
            <node concept="37vLTw" id="Vl1zEEq6rk" role="3uHU7B">
              <ref role="3cqZAo" node="Vl1zEEq5fR" resolve="parent" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Vl1zEEqdIz" role="3cqZAp">
          <node concept="3cpWsn" id="Vl1zEEqdI$" role="3cpWs9">
            <property role="TrG5h" value="links" />
            <node concept="A3Dl8" id="Vl1zEEqghl" role="1tU5fm">
              <node concept="3uibUv" id="Vl1zEEqghn" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
              </node>
            </node>
            <node concept="2OqwBi" id="Vl1zEEqdI_" role="33vP2m">
              <node concept="2OqwBi" id="Vl1zEEqdIA" role="2Oq$k0">
                <node concept="37vLTw" id="Vl1zEEqdIB" role="2Oq$k0">
                  <ref role="3cqZAo" node="Vl1zEEq5fR" resolve="parent" />
                </node>
                <node concept="liA8E" id="Vl1zEEqdIC" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                </node>
              </node>
              <node concept="liA8E" id="Vl1zEEqdID" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getContainmentLinks()" resolve="getContainmentLinks" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Vl1zEEq3P9" role="3cqZAp">
          <node concept="2OqwBi" id="Vl1zEEqigZ" role="3clFbG">
            <node concept="37vLTw" id="Vl1zEEqdIE" role="2Oq$k0">
              <ref role="3cqZAo" node="Vl1zEEqdI$" resolve="links" />
            </node>
            <node concept="1z4cxt" id="Vl1zEEqiI2" role="2OqNvi">
              <node concept="1bVj0M" id="Vl1zEEqiI4" role="23t8la">
                <node concept="3clFbS" id="Vl1zEEqiI5" role="1bW5cS">
                  <node concept="3clFbF" id="Vl1zEEqiT0" role="3cqZAp">
                    <node concept="17R0WA" id="Vl1zEEqk$i" role="3clFbG">
                      <node concept="2OqwBi" id="Vl1zEEqls2" role="3uHU7w">
                        <node concept="37vLTw" id="Vl1zEEqlfR" role="2Oq$k0">
                          <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
                        </node>
                        <node concept="liA8E" id="Vl1zEEqmBg" role="2OqNvi">
                          <ref role="37wK5l" to="jks5:~INode.getRoleInParent()" resolve="getRoleInParent" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="Vl1zEEqjgC" role="3uHU7B">
                        <node concept="37vLTw" id="Vl1zEEqiSZ" role="2Oq$k0">
                          <ref role="3cqZAo" node="Vl1zEEqiI6" resolve="it" />
                        </node>
                        <node concept="liA8E" id="Vl1zEEqjKE" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="Vl1zEEqiI6" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="Vl1zEEqiI7" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3AoM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3AoP" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getFirstChild" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3AoQ" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3AoS" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="4EhVFrZ3AoT" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3clFbS" id="4EhVFrZ3AoU" role="3clF47">
        <node concept="3cpWs8" id="1yReInJeJ2" role="3cqZAp">
          <node concept="3cpWsn" id="1yReInJeJ3" role="3cpWs9">
            <property role="TrG5h" value="allChildren" />
            <node concept="A3Dl8" id="1yReInJhSL" role="1tU5fm">
              <node concept="3uibUv" id="1yReInJhSN" role="A3Ik2">
                <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
              </node>
            </node>
            <node concept="2OqwBi" id="1yReInJeJ4" role="33vP2m">
              <node concept="37vLTw" id="1yReInJeJ5" role="2Oq$k0">
                <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
              </node>
              <node concept="liA8E" id="1yReInJeJ6" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~INode.getAllChildren()" resolve="getAllChildren" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1m9roGBvcFu" role="3cqZAp">
          <node concept="1rXfSq" id="B8a55UmvKM" role="3clFbG">
            <ref role="37wK5l" node="75046mm6vCc" resolve="wrap_" />
            <node concept="2OqwBi" id="1yReInJi_N" role="37wK5m">
              <node concept="37vLTw" id="1yReInJeJ7" role="2Oq$k0">
                <ref role="3cqZAo" node="1yReInJeJ3" resolve="allChildren" />
              </node>
              <node concept="1uHKPH" id="1yReInJiLm" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3AoV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3AoY" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getLastChild" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3AoZ" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3Ap1" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="4EhVFrZ3Ap2" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3clFbS" id="4EhVFrZ3Ap3" role="3clF47">
        <node concept="3cpWs8" id="1m9roGBviFE" role="3cqZAp">
          <node concept="3cpWsn" id="1m9roGBviFF" role="3cpWs9">
            <property role="TrG5h" value="allChildren" />
            <node concept="A3Dl8" id="1m9roGBvnHt" role="1tU5fm">
              <node concept="3uibUv" id="1m9roGBvoG3" role="A3Ik2">
                <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
              </node>
            </node>
            <node concept="2OqwBi" id="1m9roGBwNa0" role="33vP2m">
              <node concept="37vLTw" id="1m9roGBwOUJ" role="2Oq$k0">
                <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
              </node>
              <node concept="liA8E" id="1m9roGBwNa2" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~INode.getAllChildren()" resolve="getAllChildren" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1m9roGBvHRW" role="3cqZAp">
          <node concept="1rXfSq" id="B8a55UmBY4" role="3clFbG">
            <ref role="37wK5l" node="75046mm6vCc" resolve="wrap_" />
            <node concept="2OqwBi" id="B8a55UmBY5" role="37wK5m">
              <node concept="37vLTw" id="1m9roGBviFJ" role="2Oq$k0">
                <ref role="3cqZAo" node="1m9roGBviFF" resolve="allChildren" />
              </node>
              <node concept="1yVyf7" id="B8a55UmBY9" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3Ap4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3Ap7" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPrevSibling" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3uibUv" id="4EhVFrZ3Apb" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm1VV" id="4EhVFrZ3Ap8" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3Apa" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="4EhVFrZ3Apc" role="3clF47">
        <node concept="3cpWs8" id="Vl1zEEpJt0" role="3cqZAp">
          <node concept="3cpWsn" id="Vl1zEEpJt1" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3uibUv" id="Vl1zEEpJt2" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
            </node>
            <node concept="2OqwBi" id="Vl1zEEpJt3" role="33vP2m">
              <node concept="37vLTw" id="Vl1zEEpJt4" role="2Oq$k0">
                <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
              </node>
              <node concept="liA8E" id="Vl1zEEpJt5" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~INode.getParent()" resolve="getParent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Vl1zEEpJt6" role="3cqZAp">
          <node concept="3clFbS" id="Vl1zEEpJt7" role="3clFbx">
            <node concept="3cpWs6" id="Vl1zEEpJt8" role="3cqZAp">
              <node concept="10Nm6u" id="Vl1zEEpJt9" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="Vl1zEEpJta" role="3clFbw">
            <node concept="10Nm6u" id="Vl1zEEpJtb" role="3uHU7w" />
            <node concept="37vLTw" id="Vl1zEEpJtc" role="3uHU7B">
              <ref role="3cqZAo" node="Vl1zEEpJt1" resolve="parent" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Vl1zEEpJtd" role="3cqZAp">
          <node concept="3cpWsn" id="Vl1zEEpJte" role="3cpWs9">
            <property role="TrG5h" value="sibling1" />
            <node concept="3uibUv" id="Vl1zEEpJtf" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
            </node>
            <node concept="10Nm6u" id="Vl1zEEpJtg" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="Vl1zEEpJth" role="3cqZAp">
          <node concept="3cpWsn" id="Vl1zEEpJti" role="3cpWs9">
            <property role="TrG5h" value="sibling2" />
            <node concept="3uibUv" id="Vl1zEEpJtj" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
            </node>
            <node concept="10Nm6u" id="Vl1zEEpJtk" role="33vP2m" />
          </node>
        </node>
        <node concept="2Gpval" id="Vl1zEEpJtl" role="3cqZAp">
          <node concept="2GrKxI" id="Vl1zEEpJtm" role="2Gsz3X">
            <property role="TrG5h" value="sibling" />
          </node>
          <node concept="3clFbS" id="Vl1zEEpJtn" role="2LFqv$">
            <node concept="3clFbF" id="Vl1zEEpJto" role="3cqZAp">
              <node concept="37vLTI" id="Vl1zEEpJtp" role="3clFbG">
                <node concept="37vLTw" id="Vl1zEEpJtq" role="37vLTx">
                  <ref role="3cqZAo" node="Vl1zEEpJti" resolve="sibling2" />
                </node>
                <node concept="37vLTw" id="Vl1zEEpJtr" role="37vLTJ">
                  <ref role="3cqZAo" node="Vl1zEEpJte" resolve="sibling1" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="Vl1zEEpJts" role="3cqZAp">
              <node concept="37vLTI" id="Vl1zEEpJtt" role="3clFbG">
                <node concept="2GrUjf" id="Vl1zEEpJtu" role="37vLTx">
                  <ref role="2Gs0qQ" node="Vl1zEEpJtm" resolve="sibling" />
                </node>
                <node concept="37vLTw" id="Vl1zEEpJtv" role="37vLTJ">
                  <ref role="3cqZAo" node="Vl1zEEpJti" resolve="sibling2" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="Vl1zEEpJtw" role="3cqZAp">
              <node concept="3clFbS" id="Vl1zEEpJtx" role="3clFbx">
                <node concept="3cpWs8" id="B8a55UmZWl" role="3cqZAp">
                  <node concept="3cpWsn" id="B8a55UmZWm" role="3cpWs9">
                    <property role="TrG5h" value="result" />
                    <node concept="3uibUv" id="B8a55UmZWh" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="1rXfSq" id="B8a55UmZWn" role="33vP2m">
                      <ref role="37wK5l" node="75046mm6vCc" resolve="wrap_" />
                      <node concept="37vLTw" id="B8a55UmZWo" role="37wK5m">
                        <ref role="3cqZAo" node="Vl1zEEpJte" resolve="sibling1" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="Vl1zEEpJty" role="3cqZAp">
                  <node concept="37vLTw" id="B8a55UmZWp" role="3cqZAk">
                    <ref role="3cqZAo" node="B8a55UmZWm" resolve="result" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="Vl1zEEpJt_" role="3clFbw">
                <node concept="37vLTw" id="Vl1zEEpJtA" role="2Oq$k0">
                  <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
                </node>
                <node concept="liA8E" id="Vl1zEEpJtB" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="37vLTw" id="Vl1zEEpKAW" role="37wK5m">
                    <ref role="3cqZAo" node="Vl1zEEpJti" resolve="sibling2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="Vl1zEEpJtD" role="2GsD0m">
            <node concept="37vLTw" id="Vl1zEEpJtE" role="2Oq$k0">
              <ref role="3cqZAo" node="Vl1zEEpJt1" resolve="parent" />
            </node>
            <node concept="liA8E" id="Vl1zEEpJtF" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~INode.getAllChildren()" resolve="getAllChildren" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Vl1zEEpJtG" role="3cqZAp">
          <node concept="10Nm6u" id="Vl1zEEpJtH" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3Apd" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3Apg" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getNextSibling" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3uibUv" id="4EhVFrZ3Apk" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm1VV" id="4EhVFrZ3Aph" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3Apj" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="4EhVFrZ3Apl" role="3clF47">
        <node concept="3cpWs8" id="Vl1zEEpfqI" role="3cqZAp">
          <node concept="3cpWsn" id="Vl1zEEpfqJ" role="3cpWs9">
            <property role="TrG5h" value="parent" />
            <node concept="3uibUv" id="Vl1zEEpfqH" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
            </node>
            <node concept="2OqwBi" id="Vl1zEEpfqK" role="33vP2m">
              <node concept="37vLTw" id="Vl1zEEpfqL" role="2Oq$k0">
                <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
              </node>
              <node concept="liA8E" id="Vl1zEEpfqM" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~INode.getParent()" resolve="getParent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Vl1zEEpfll" role="3cqZAp">
          <node concept="3clFbS" id="Vl1zEEpfln" role="3clFbx">
            <node concept="3cpWs6" id="Vl1zEEpi$m" role="3cqZAp">
              <node concept="10Nm6u" id="Vl1zEEpjIR" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="Vl1zEEpisR" role="3clFbw">
            <node concept="10Nm6u" id="Vl1zEEpixf" role="3uHU7w" />
            <node concept="37vLTw" id="Vl1zEEpihO" role="3uHU7B">
              <ref role="3cqZAo" node="Vl1zEEpfqJ" resolve="parent" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Vl1zEEpsYU" role="3cqZAp">
          <node concept="3cpWsn" id="Vl1zEEpsYV" role="3cpWs9">
            <property role="TrG5h" value="sibling1" />
            <node concept="3uibUv" id="Vl1zEEpsYW" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
            </node>
            <node concept="10Nm6u" id="Vl1zEEpuiG" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="Vl1zEEpuj2" role="3cqZAp">
          <node concept="3cpWsn" id="Vl1zEEpuj3" role="3cpWs9">
            <property role="TrG5h" value="sibling2" />
            <node concept="3uibUv" id="Vl1zEEpuj4" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
            </node>
            <node concept="10Nm6u" id="Vl1zEEpuj5" role="33vP2m" />
          </node>
        </node>
        <node concept="2Gpval" id="Vl1zEEpp77" role="3cqZAp">
          <node concept="2GrKxI" id="Vl1zEEpp79" role="2Gsz3X">
            <property role="TrG5h" value="sibling" />
          </node>
          <node concept="3clFbS" id="Vl1zEEpp7d" role="2LFqv$">
            <node concept="3clFbF" id="Vl1zEEpwZg" role="3cqZAp">
              <node concept="37vLTI" id="Vl1zEEpx5k" role="3clFbG">
                <node concept="37vLTw" id="Vl1zEEpx7S" role="37vLTx">
                  <ref role="3cqZAo" node="Vl1zEEpuj3" resolve="sibling2" />
                </node>
                <node concept="37vLTw" id="Vl1zEEpwZf" role="37vLTJ">
                  <ref role="3cqZAo" node="Vl1zEEpsYV" resolve="sibling1" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="Vl1zEEpx9t" role="3cqZAp">
              <node concept="37vLTI" id="Vl1zEEpxgQ" role="3clFbG">
                <node concept="2GrUjf" id="Vl1zEEpxiZ" role="37vLTx">
                  <ref role="2Gs0qQ" node="Vl1zEEpp79" resolve="sibling" />
                </node>
                <node concept="37vLTw" id="Vl1zEEpx9r" role="37vLTJ">
                  <ref role="3cqZAo" node="Vl1zEEpuj3" resolve="sibling2" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="Vl1zEEpxls" role="3cqZAp">
              <node concept="3clFbS" id="Vl1zEEpxlu" role="3clFbx">
                <node concept="3cpWs8" id="B8a55UnwNH" role="3cqZAp">
                  <node concept="3cpWsn" id="B8a55UnwNI" role="3cpWs9">
                    <property role="TrG5h" value="result" />
                    <node concept="3uibUv" id="B8a55UnwND" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="1rXfSq" id="B8a55UnwNJ" role="33vP2m">
                      <ref role="37wK5l" node="75046mm6vCc" resolve="wrap_" />
                      <node concept="37vLTw" id="B8a55UnwNK" role="37wK5m">
                        <ref role="3cqZAo" node="Vl1zEEpuj3" resolve="sibling2" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="Vl1zEEpAfR" role="3cqZAp">
                  <node concept="37vLTw" id="B8a55UnwNL" role="3cqZAk">
                    <ref role="3cqZAo" node="B8a55UnwNI" resolve="result" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="Vl1zEEp$9y" role="3clFbw">
                <node concept="37vLTw" id="Vl1zEEp$21" role="2Oq$k0">
                  <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
                </node>
                <node concept="liA8E" id="Vl1zEEp_bl" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="37vLTw" id="Vl1zEEpAcl" role="37wK5m">
                    <ref role="3cqZAo" node="Vl1zEEpsYV" resolve="sibling1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="Vl1zEEpvCq" role="2GsD0m">
            <node concept="37vLTw" id="Vl1zEEpvCr" role="2Oq$k0">
              <ref role="3cqZAo" node="Vl1zEEpfqJ" resolve="parent" />
            </node>
            <node concept="liA8E" id="Vl1zEEpvCs" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~INode.getAllChildren()" resolve="getAllChildren" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Vl1zEEpFtR" role="3cqZAp">
          <node concept="10Nm6u" id="Vl1zEEpI4I" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3Apm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3App" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getChildren" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3uibUv" id="4EhVFrZ3Apt" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3qUE_q" id="4EhVFrZ3Apu" role="11_B2D">
          <node concept="3uibUv" id="4EhVFrZ3Apv" role="3qUE_r">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4EhVFrZ3Apq" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3Aps" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="4EhVFrZ3Apw" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="4EhVFrZ3Apx" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3Apy" role="3clF47">
        <node concept="3cpWs8" id="1yReInJtpB" role="3cqZAp">
          <node concept="3cpWsn" id="1yReInJtpC" role="3cpWs9">
            <property role="TrG5h" value="children" />
            <node concept="A3Dl8" id="1yReInJwLF" role="1tU5fm">
              <node concept="3uibUv" id="1yReInJwLH" role="A3Ik2">
                <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
              </node>
            </node>
            <node concept="2OqwBi" id="1yReInJtpD" role="33vP2m">
              <node concept="37vLTw" id="1yReInJtpE" role="2Oq$k0">
                <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
              </node>
              <node concept="liA8E" id="1yReInJtpF" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~INode.getChildren(java.lang.String)" resolve="getChildren" />
                <node concept="2OqwBi" id="1yReInJtpG" role="37wK5m">
                  <node concept="37vLTw" id="1yReInJtpH" role="2Oq$k0">
                    <ref role="3cqZAo" node="4EhVFrZ3Apw" resolve="link" />
                  </node>
                  <node concept="liA8E" id="1yReInJtpI" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1yReInJBZv" role="3cqZAp">
          <node concept="2OqwBi" id="1yReInJzoG" role="3clFbG">
            <node concept="37vLTw" id="1yReInJtpJ" role="2Oq$k0">
              <ref role="3cqZAo" node="1yReInJtpC" resolve="children" />
            </node>
            <node concept="3$u5V9" id="1yReInJzBn" role="2OqNvi">
              <node concept="1bVj0M" id="1yReInJzBp" role="23t8la">
                <node concept="3clFbS" id="1yReInJzBq" role="1bW5cS">
                  <node concept="3clFbF" id="1yReInJzHO" role="3cqZAp">
                    <node concept="1rXfSq" id="1m9roGBxtFt" role="3clFbG">
                      <ref role="37wK5l" node="75046mm6vCc" resolve="wrap_" />
                      <node concept="37vLTw" id="1yReInJ_8X" role="37wK5m">
                        <ref role="3cqZAo" node="1yReInJzBr" resolve="it" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1yReInJzBr" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1yReInJzBs" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3Apz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3ApA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getChildren" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3ApB" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3ApD" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="4EhVFrZ3ApH" role="3clF47">
        <node concept="3cpWs8" id="1yReInJDiH" role="3cqZAp">
          <node concept="3cpWsn" id="1yReInJDiI" role="3cpWs9">
            <property role="TrG5h" value="allChildren" />
            <node concept="A3Dl8" id="1yReInJGAT" role="1tU5fm">
              <node concept="3uibUv" id="1yReInJGAV" role="A3Ik2">
                <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
              </node>
            </node>
            <node concept="2OqwBi" id="1yReInJDiJ" role="33vP2m">
              <node concept="37vLTw" id="1yReInJDiK" role="2Oq$k0">
                <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
              </node>
              <node concept="liA8E" id="1yReInJDiL" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~INode.getAllChildren()" resolve="getAllChildren" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1yReInJH7d" role="3cqZAp">
          <node concept="2OqwBi" id="1yReInJH7e" role="3clFbG">
            <node concept="37vLTw" id="1yReInJIHv" role="2Oq$k0">
              <ref role="3cqZAo" node="1yReInJDiI" resolve="allChildren" />
            </node>
            <node concept="3$u5V9" id="1yReInJH7g" role="2OqNvi">
              <node concept="1bVj0M" id="1yReInJH7h" role="23t8la">
                <node concept="3clFbS" id="1yReInJH7i" role="1bW5cS">
                  <node concept="3clFbF" id="1yReInJH7j" role="3cqZAp">
                    <node concept="1rXfSq" id="1yReInJH7k" role="3clFbG">
                      <ref role="37wK5l" node="75046mm6vCc" resolve="wrap_" />
                      <node concept="37vLTw" id="1yReInJH7l" role="37wK5m">
                        <ref role="3cqZAo" node="1yReInJH7m" resolve="it" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1yReInJH7m" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1yReInJH7n" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1m9roGBxDR8" role="3cqZAp" />
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3ApI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3uibUv" id="75046mlGPBh" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3qUE_q" id="75046mlGPBj" role="11_B2D">
          <node concept="3uibUv" id="75046mlGPBi" role="3qUE_r">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3ApL" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setReferenceTarget" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3ApM" role="1B3o_S" />
      <node concept="3cqZAl" id="4EhVFrZ3ApO" role="3clF45" />
      <node concept="37vLTG" id="4EhVFrZ3ApP" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="4EhVFrZ3ApQ" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
        <node concept="2AHcQZ" id="4EhVFrZ3ApR" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4EhVFrZ3ApS" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="4EhVFrZ3ApT" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="4EhVFrZ3ApU" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3ApV" role="3clF47">
        <node concept="3clFbF" id="35N923ACZPZ" role="3cqZAp">
          <node concept="2OqwBi" id="35N923ACZW7" role="3clFbG">
            <node concept="37vLTw" id="35N923ACZPX" role="2Oq$k0">
              <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
            </node>
            <node concept="liA8E" id="35N923AD1n4" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~INode.setReferenceTarget(java.lang.String,org.modelix.model.api.INode)" resolve="setReferenceTarget" />
              <node concept="2OqwBi" id="35N923AD3fi" role="37wK5m">
                <node concept="37vLTw" id="35N923AD1uZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="4EhVFrZ3ApP" resolve="link" />
                </node>
                <node concept="liA8E" id="35N923AD4Ys" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                </node>
              </node>
              <node concept="2YIFZM" id="35N923AD5Hq" role="37wK5m">
                <ref role="1Pybhc" node="5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                <ref role="37wK5l" node="5gTrVpGyMwR" resolve="wrap" />
                <node concept="37vLTw" id="35N923AD5Z6" role="37wK5m">
                  <ref role="3cqZAo" node="4EhVFrZ3ApS" resolve="target" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3ApW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3ApX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getReferenceTarget" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3uibUv" id="4EhVFrZ3Aq1" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm1VV" id="4EhVFrZ3ApY" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3Aq0" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="37vLTG" id="4EhVFrZ3Aq2" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="4EhVFrZ3Aq3" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
        <node concept="2AHcQZ" id="4EhVFrZ3Aq4" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3Aq5" role="3clF47">
        <node concept="3clFbF" id="1m9roGBxL43" role="3cqZAp">
          <node concept="1rXfSq" id="B8a55Um22r" role="3clFbG">
            <ref role="37wK5l" node="75046mm6vCc" resolve="wrap_" />
            <node concept="2OqwBi" id="B8a55Um22s" role="37wK5m">
              <node concept="37vLTw" id="B8a55Um22t" role="2Oq$k0">
                <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
              </node>
              <node concept="liA8E" id="B8a55Um22u" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~INode.getReferenceTarget(java.lang.String)" resolve="getReferenceTarget" />
                <node concept="2OqwBi" id="B8a55Um22v" role="37wK5m">
                  <node concept="37vLTw" id="B8a55Um22w" role="2Oq$k0">
                    <ref role="3cqZAo" node="4EhVFrZ3Aq2" resolve="link" />
                  </node>
                  <node concept="liA8E" id="B8a55Um22x" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3Aq6" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3Aq9" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getReference" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3uibUv" id="4EhVFrZ3Aqd" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
      </node>
      <node concept="3Tm1VV" id="4EhVFrZ3Aqa" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3Aqc" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="37vLTG" id="4EhVFrZ3Aqe" role="3clF46">
        <property role="TrG5h" value="link" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4EhVFrZ3Aqf" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
        <node concept="2AHcQZ" id="4EhVFrZ3Aqg" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3Aqh" role="3clF47">
        <node concept="3cpWs6" id="5ndwm32Q9nx" role="3cqZAp">
          <node concept="2ShNRf" id="5ndwm32Q9JV" role="3cqZAk">
            <node concept="1pGfFk" id="5ndwm32Qgl8" role="2ShVmc">
              <ref role="37wK5l" node="5ndwm32Q3eQ" resolve="NodeToSNodeAdapter.Reference" />
              <node concept="37vLTw" id="5ndwm32QlBs" role="37wK5m">
                <ref role="3cqZAo" node="4EhVFrZ3Aqe" resolve="link" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3Aqi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3Aql" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setReference" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3Aqm" role="1B3o_S" />
      <node concept="3cqZAl" id="4EhVFrZ3Aqo" role="3clF45" />
      <node concept="37vLTG" id="4EhVFrZ3Aqp" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="4EhVFrZ3Aqq" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
        <node concept="2AHcQZ" id="4EhVFrZ3Aqr" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4EhVFrZ3Aqs" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3uibUv" id="4EhVFrZ3Aqt" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
        </node>
        <node concept="2AHcQZ" id="4EhVFrZ3Aqu" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3Aqv" role="3clF47">
        <node concept="YS8fn" id="4EhVFrZ5eGO" role="3cqZAp">
          <node concept="2ShNRf" id="4EhVFrZ5eGP" role="YScLw">
            <node concept="1pGfFk" id="4EhVFrZ5eGQ" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
              <node concept="Xl_RD" id="4EhVFrZ5eGR" role="37wK5m">
                <property role="Xl_RC" value="Not implemented" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3Aqw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3Aqx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getReferences" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3uibUv" id="4EhVFrZ3Aq_" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3qUE_q" id="4EhVFrZ3AqA" role="11_B2D">
          <node concept="3uibUv" id="4EhVFrZ3AqB" role="3qUE_r">
            <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4EhVFrZ3Aqy" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3Aq$" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="4EhVFrZ3AqC" role="3clF47">
        <node concept="3cpWs8" id="3PvZBOP9Mz2" role="3cqZAp">
          <node concept="3cpWsn" id="3PvZBOP9Mz3" role="3cpWs9">
            <property role="TrG5h" value="links" />
            <node concept="A3Dl8" id="3PvZBOP9MyR" role="1tU5fm">
              <node concept="3uibUv" id="3PvZBOPajCE" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
              </node>
            </node>
            <node concept="2OqwBi" id="3PvZBOP9Mz4" role="33vP2m">
              <node concept="2YIFZM" id="3PvZBOPanf9" role="2Oq$k0">
                <ref role="1Pybhc" node="5gTrVpGjuL2" resolve="SConceptAdapter" />
                <ref role="37wK5l" node="3ECE8iPIttW" resolve="unwrap" />
                <node concept="2OqwBi" id="3PvZBOP9Mz5" role="37wK5m">
                  <node concept="37vLTw" id="3PvZBOP9Mz6" role="2Oq$k0">
                    <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
                  </node>
                  <node concept="liA8E" id="3PvZBOP9Mz7" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~INode.getConcept()" resolve="getConcept" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3PvZBOP9Mz8" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getReferenceLinks()" resolve="getReferenceLinks" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3PvZBOPa0oS" role="3cqZAp">
          <node concept="2OqwBi" id="3PvZBOPa7C_" role="3clFbG">
            <node concept="2OqwBi" id="5ndwm32R4ie" role="2Oq$k0">
              <node concept="37vLTw" id="3PvZBOPa0oQ" role="2Oq$k0">
                <ref role="3cqZAo" node="3PvZBOP9Mz3" resolve="links" />
              </node>
              <node concept="3zZkjj" id="5ndwm32R4JU" role="2OqNvi">
                <node concept="1bVj0M" id="5ndwm32R4JW" role="23t8la">
                  <node concept="3clFbS" id="5ndwm32R4JX" role="1bW5cS">
                    <node concept="3clFbF" id="5ndwm32R58S" role="3cqZAp">
                      <node concept="3y3z36" id="5ndwm32R72A" role="3clFbG">
                        <node concept="10Nm6u" id="5ndwm32R8UZ" role="3uHU7w" />
                        <node concept="2OqwBi" id="5ndwm32R58U" role="3uHU7B">
                          <node concept="37vLTw" id="5ndwm32R58V" role="2Oq$k0">
                            <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
                          </node>
                          <node concept="liA8E" id="5ndwm32R58W" role="2OqNvi">
                            <ref role="37wK5l" to="jks5:~INode.getReferenceTarget(java.lang.String)" resolve="getReferenceTarget" />
                            <node concept="2OqwBi" id="5ndwm32R58X" role="37wK5m">
                              <node concept="37vLTw" id="5ndwm32R58Y" role="2Oq$k0">
                                <ref role="3cqZAo" node="5ndwm32R4JY" resolve="it" />
                              </node>
                              <node concept="liA8E" id="5ndwm32R58Z" role="2OqNvi">
                                <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="5ndwm32R4JY" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="5ndwm32R4JZ" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3$u5V9" id="3PvZBOPa9GH" role="2OqNvi">
              <node concept="1bVj0M" id="3PvZBOPa9GJ" role="23t8la">
                <node concept="3clFbS" id="3PvZBOPa9GK" role="1bW5cS">
                  <node concept="3cpWs6" id="5ndwm32QXfT" role="3cqZAp">
                    <node concept="2ShNRf" id="5ndwm32QXZx" role="3cqZAk">
                      <node concept="1pGfFk" id="5ndwm32QZLa" role="2ShVmc">
                        <ref role="37wK5l" node="5ndwm32Q3eQ" resolve="NodeToSNodeAdapter.Reference" />
                        <node concept="37vLTw" id="5ndwm32Rg3D" role="37wK5m">
                          <ref role="3cqZAo" node="3PvZBOPa9GL" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3PvZBOPa9GL" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="3PvZBOPa9GM" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3AqD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3AqG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getProperties" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3AqH" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3AqJ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="4EhVFrZ3AqK" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="4EhVFrZ3AqL" role="11_B2D">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3AqM" role="3clF47">
        <node concept="3cpWs8" id="3PvZBOP8tQK" role="3cqZAp">
          <node concept="3cpWsn" id="3PvZBOP8tQL" role="3cpWs9">
            <property role="TrG5h" value="allProperties" />
            <node concept="A3Dl8" id="3PvZBOP8wwL" role="1tU5fm">
              <node concept="3uibUv" id="3PvZBOP8wwN" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
              </node>
            </node>
            <node concept="2OqwBi" id="3PvZBOP8tQM" role="33vP2m">
              <node concept="2YIFZM" id="3PvZBOP8tQN" role="2Oq$k0">
                <ref role="1Pybhc" node="5gTrVpGjuL2" resolve="SConceptAdapter" />
                <ref role="37wK5l" node="3ECE8iPIttW" resolve="unwrap" />
                <node concept="2OqwBi" id="3PvZBOP8tQO" role="37wK5m">
                  <node concept="37vLTw" id="3PvZBOP8tQP" role="2Oq$k0">
                    <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
                  </node>
                  <node concept="liA8E" id="3PvZBOP8tQQ" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~INode.getConcept()" resolve="getConcept" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3PvZBOP8tQR" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getProperties()" resolve="getProperties" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3PvZBOP8qK3" role="3cqZAp">
          <node concept="2OqwBi" id="3PvZBOP8ynR" role="3clFbG">
            <node concept="37vLTw" id="3PvZBOP8tQS" role="2Oq$k0">
              <ref role="3cqZAo" node="3PvZBOP8tQL" resolve="allProperties" />
            </node>
            <node concept="3zZkjj" id="3PvZBOP8yKz" role="2OqNvi">
              <node concept="1bVj0M" id="3PvZBOP8yK_" role="23t8la">
                <node concept="3clFbS" id="3PvZBOP8yKA" role="1bW5cS">
                  <node concept="3clFbF" id="3PvZBOP8yOR" role="3cqZAp">
                    <node concept="3y3z36" id="3PvZBOP8A7D" role="3clFbG">
                      <node concept="10Nm6u" id="3PvZBOP8A8_" role="3uHU7w" />
                      <node concept="1rXfSq" id="B8a55UoiL5" role="3uHU7B">
                        <ref role="37wK5l" node="4EhVFrZ3Ar1" resolve="getProperty" />
                        <node concept="37vLTw" id="B8a55Uokca" role="37wK5m">
                          <ref role="3cqZAo" node="3PvZBOP8yKB" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3PvZBOP8yKB" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="3PvZBOP8yKC" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3AqN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3AqQ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hasProperty" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3AqR" role="1B3o_S" />
      <node concept="10P_77" id="4EhVFrZ3AqT" role="3clF45" />
      <node concept="37vLTG" id="4EhVFrZ3AqU" role="3clF46">
        <property role="TrG5h" value="property" />
        <node concept="3uibUv" id="4EhVFrZ3AqV" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
        </node>
        <node concept="2AHcQZ" id="4EhVFrZ3AqW" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3AqX" role="3clF47">
        <node concept="3clFbF" id="4_SQzDOTESK" role="3cqZAp">
          <node concept="3y3z36" id="4_SQzDOTIMN" role="3clFbG">
            <node concept="10Nm6u" id="4_SQzDOTJ5I" role="3uHU7w" />
            <node concept="1rXfSq" id="4_SQzDOTESJ" role="3uHU7B">
              <ref role="37wK5l" node="4EhVFrZ3Ar1" resolve="getProperty" />
              <node concept="37vLTw" id="4_SQzDOTH3W" role="37wK5m">
                <ref role="3cqZAo" node="4EhVFrZ3AqU" resolve="property" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3AqY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3Ar1" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getProperty" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3Ar2" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3Ar4" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="4EhVFrZ3Ar5" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="4EhVFrZ3Ar6" role="3clF46">
        <property role="TrG5h" value="property" />
        <node concept="3uibUv" id="4EhVFrZ3Ar7" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
        </node>
        <node concept="2AHcQZ" id="4EhVFrZ3Ar8" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3Ar9" role="3clF47">
        <node concept="3clFbF" id="1m9roGBxPLg" role="3cqZAp">
          <node concept="2OqwBi" id="B8a55Ump4y" role="3clFbG">
            <node concept="37vLTw" id="B8a55Ump4z" role="2Oq$k0">
              <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
            </node>
            <node concept="liA8E" id="B8a55Ump4$" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~INode.getPropertyValue(java.lang.String)" resolve="getPropertyValue" />
              <node concept="2OqwBi" id="B8a55Ump4_" role="37wK5m">
                <node concept="37vLTw" id="B8a55Ump4A" role="2Oq$k0">
                  <ref role="3cqZAo" node="4EhVFrZ3Ar6" resolve="property" />
                </node>
                <node concept="liA8E" id="B8a55Ump4B" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3Ara" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3Ard" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setProperty" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3Are" role="1B3o_S" />
      <node concept="3cqZAl" id="4EhVFrZ3Arg" role="3clF45" />
      <node concept="37vLTG" id="4EhVFrZ3Arh" role="3clF46">
        <property role="TrG5h" value="property" />
        <node concept="3uibUv" id="4EhVFrZ3Ari" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
        </node>
        <node concept="2AHcQZ" id="4EhVFrZ3Arj" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4EhVFrZ3Ark" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="4EhVFrZ3Arl" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="4EhVFrZ3Arm" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3Arn" role="3clF47">
        <node concept="3clFbF" id="3ECE8iPEkQu" role="3cqZAp">
          <node concept="2OqwBi" id="3ECE8iPEkWA" role="3clFbG">
            <node concept="37vLTw" id="3ECE8iPEkQt" role="2Oq$k0">
              <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
            </node>
            <node concept="liA8E" id="3ECE8iPEmlG" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~INode.setPropertyValue(java.lang.String,java.lang.String)" resolve="setPropertyValue" />
              <node concept="2OqwBi" id="3ECE8iPEnOP" role="37wK5m">
                <node concept="37vLTw" id="3ECE8iPEmqo" role="2Oq$k0">
                  <ref role="3cqZAo" node="4EhVFrZ3Arh" resolve="property" />
                </node>
                <node concept="liA8E" id="3ECE8iPEppi" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                </node>
              </node>
              <node concept="37vLTw" id="3ECE8iPEpyB" role="37wK5m">
                <ref role="3cqZAo" node="4EhVFrZ3Ark" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3Aro" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3Arp" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getUserObject" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3Arq" role="1B3o_S" />
      <node concept="3uibUv" id="4EhVFrZ3Ars" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="4EhVFrZ3Art" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="4EhVFrZ3Aru" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3Arv" role="3clF47">
        <node concept="3clFbF" id="2VTIUrj$yLH" role="3cqZAp">
          <node concept="2OqwBi" id="tYeZkE6w3" role="3clFbG">
            <node concept="37vLTw" id="2VTIUrj$yLG" role="2Oq$k0">
              <ref role="3cqZAo" node="2VTIUrj$b9G" resolve="userObjects" />
            </node>
            <node concept="liA8E" id="tYeZkEaut" role="2OqNvi">
              <ref role="37wK5l" to="n7xv:~CustomPMap.get(java.lang.Object)" resolve="get" />
              <node concept="37vLTw" id="tYeZkEaO7" role="37wK5m">
                <ref role="3cqZAo" node="4EhVFrZ3Art" resolve="key" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3Arw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3Arz" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="putUserObject" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3Ar$" role="1B3o_S" />
      <node concept="3cqZAl" id="4EhVFrZ3ArA" role="3clF45" />
      <node concept="37vLTG" id="4EhVFrZ3ArB" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="4EhVFrZ3ArC" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="4EhVFrZ3ArD" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="3uibUv" id="4EhVFrZ3ArE" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="2AHcQZ" id="4EhVFrZ3ArF" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3ArG" role="3clF47">
        <node concept="3clFbF" id="tYeZkEiR6" role="3cqZAp">
          <node concept="37vLTI" id="tYeZkEr72" role="3clFbG">
            <node concept="2OqwBi" id="tYeZkEv7B" role="37vLTx">
              <node concept="37vLTw" id="tYeZkEtgf" role="2Oq$k0">
                <ref role="3cqZAo" node="2VTIUrj$b9G" resolve="userObjects" />
              </node>
              <node concept="liA8E" id="tYeZkEyYG" role="2OqNvi">
                <ref role="37wK5l" to="n7xv:~CustomPMap.put(java.lang.Object,java.lang.Object)" resolve="put" />
                <node concept="37vLTw" id="tYeZkEzCJ" role="37wK5m">
                  <ref role="3cqZAo" node="4EhVFrZ3ArB" resolve="key" />
                </node>
                <node concept="37vLTw" id="tYeZkE_Ah" role="37wK5m">
                  <ref role="3cqZAo" node="4EhVFrZ3ArD" resolve="value" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="tYeZkEiR4" role="37vLTJ">
              <ref role="3cqZAo" node="2VTIUrj$b9G" resolve="userObjects" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3ArH" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3ArI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getUserObjectKeys" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3ArJ" role="1B3o_S" />
      <node concept="3uibUv" id="4EhVFrZ3ArL" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="4EhVFrZ3ArM" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3ArN" role="3clF47">
        <node concept="3clFbF" id="tYeZkEELe" role="3cqZAp">
          <node concept="2OqwBi" id="tYeZkEGFC" role="3clFbG">
            <node concept="37vLTw" id="tYeZkEELd" role="2Oq$k0">
              <ref role="3cqZAo" node="2VTIUrj$b9G" resolve="userObjects" />
            </node>
            <node concept="liA8E" id="tYeZkEIl5" role="2OqNvi">
              <ref role="37wK5l" to="n7xv:~CustomPMap.keys()" resolve="keys" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3ArO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3ArR" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getRoleInParent" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3ArS" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3ArU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
      <node concept="3uibUv" id="4EhVFrZ3ArY" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="4EhVFrZ3ArZ" role="3clF47">
        <node concept="3clFbF" id="B8a55Up5DP" role="3cqZAp">
          <node concept="2EnYce" id="B8a55UpabK" role="3clFbG">
            <node concept="1rXfSq" id="B8a55Up5DN" role="2Oq$k0">
              <ref role="37wK5l" node="4EhVFrZ3AoG" resolve="getContainmentLink" />
            </node>
            <node concept="liA8E" id="B8a55Up8O2" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3As0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3As3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hasProperty" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3As4" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3As6" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
      <node concept="10P_77" id="4EhVFrZ3Asa" role="3clF45" />
      <node concept="37vLTG" id="4EhVFrZ3Asb" role="3clF46">
        <property role="TrG5h" value="string" />
        <node concept="3uibUv" id="4EhVFrZ3Asc" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3Asd" role="3clF47">
        <node concept="3clFbF" id="4_SQzDOTh7i" role="3cqZAp">
          <node concept="1rXfSq" id="4_SQzDOTMD2" role="3clFbG">
            <ref role="37wK5l" node="4EhVFrZ3AqQ" resolve="hasProperty" />
            <node concept="1rXfSq" id="4_SQzDOTOIF" role="37wK5m">
              <ref role="37wK5l" node="4_SQzDOSa82" resolve="findProperty" />
              <node concept="37vLTw" id="4_SQzDOTQD7" role="37wK5m">
                <ref role="3cqZAo" node="4EhVFrZ3Asb" resolve="string" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3Ase" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3Ash" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getProperty" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3Asi" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3Ask" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
      <node concept="3uibUv" id="4EhVFrZ3Aso" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="4EhVFrZ3Asp" role="3clF46">
        <property role="TrG5h" value="string" />
        <node concept="3uibUv" id="4EhVFrZ3Asq" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3Asr" role="3clF47">
        <node concept="3clFbF" id="4_SQzDOT8d4" role="3cqZAp">
          <node concept="1rXfSq" id="4_SQzDOT8d3" role="3clFbG">
            <ref role="37wK5l" node="4EhVFrZ3Ar1" resolve="getProperty" />
            <node concept="1rXfSq" id="4_SQzDOTai2" role="37wK5m">
              <ref role="37wK5l" node="4_SQzDOSa82" resolve="findProperty" />
              <node concept="37vLTw" id="4_SQzDOTcb9" role="37wK5m">
                <ref role="3cqZAo" node="4EhVFrZ3Asp" resolve="string" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3Ass" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3Asv" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setProperty" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3Asw" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3Asy" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
      <node concept="3cqZAl" id="4EhVFrZ3AsA" role="3clF45" />
      <node concept="37vLTG" id="4EhVFrZ3AsB" role="3clF46">
        <property role="TrG5h" value="string" />
        <node concept="3uibUv" id="4EhVFrZ3AsC" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="4EhVFrZ3AsD" role="3clF46">
        <property role="TrG5h" value="string1" />
        <node concept="3uibUv" id="4EhVFrZ3AsE" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3AsF" role="3clF47">
        <node concept="3clFbF" id="4_SQzDOS7Q0" role="3cqZAp">
          <node concept="1rXfSq" id="4_SQzDOS7PZ" role="3clFbG">
            <ref role="37wK5l" node="4EhVFrZ3Ard" resolve="setProperty" />
            <node concept="1rXfSq" id="4_SQzDOT2zd" role="37wK5m">
              <ref role="37wK5l" node="4_SQzDOSa82" resolve="findProperty" />
              <node concept="37vLTw" id="4_SQzDOT4n6" role="37wK5m">
                <ref role="3cqZAo" node="4EhVFrZ3AsB" resolve="string" />
              </node>
            </node>
            <node concept="37vLTw" id="4_SQzDOT65Z" role="37wK5m">
              <ref role="3cqZAo" node="4EhVFrZ3AsD" resolve="string1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3AsG" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3AsH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPropertyNames" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3AsI" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3AsK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
      <node concept="3uibUv" id="4EhVFrZ3AsO" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="4EhVFrZ3AsP" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3AsQ" role="3clF47">
        <node concept="3cpWs8" id="4_SQzDORwiG" role="3cqZAp">
          <node concept="3cpWsn" id="4_SQzDORwiH" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <node concept="A3Dl8" id="4_SQzDORzDi" role="1tU5fm">
              <node concept="3uibUv" id="4_SQzDORzDk" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
              </node>
            </node>
            <node concept="1rXfSq" id="4_SQzDORwiI" role="33vP2m">
              <ref role="37wK5l" node="4EhVFrZ3AqG" resolve="getProperties" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4_SQzDORo7b" role="3cqZAp">
          <node concept="2OqwBi" id="4_SQzDOR_D6" role="3clFbG">
            <node concept="37vLTw" id="4_SQzDORwiJ" role="2Oq$k0">
              <ref role="3cqZAo" node="4_SQzDORwiH" resolve="properties" />
            </node>
            <node concept="3$u5V9" id="4_SQzDORIP9" role="2OqNvi">
              <node concept="1bVj0M" id="4_SQzDORIPb" role="23t8la">
                <node concept="3clFbS" id="4_SQzDORIPc" role="1bW5cS">
                  <node concept="3clFbF" id="4_SQzDORJaf" role="3cqZAp">
                    <node concept="2OqwBi" id="4_SQzDORJpK" role="3clFbG">
                      <node concept="37vLTw" id="4_SQzDORJae" role="2Oq$k0">
                        <ref role="3cqZAo" node="4_SQzDORIPd" resolve="it" />
                      </node>
                      <node concept="liA8E" id="4_SQzDORQnL" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="4_SQzDORIPd" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="4_SQzDORIPe" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3AsR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3AsU" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setReferenceTarget" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3AsV" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3AsX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
      <node concept="3cqZAl" id="4EhVFrZ3At1" role="3clF45" />
      <node concept="37vLTG" id="4EhVFrZ3At2" role="3clF46">
        <property role="TrG5h" value="string" />
        <node concept="3uibUv" id="4EhVFrZ3At3" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="4EhVFrZ3At4" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="4EhVFrZ3At5" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="4EhVFrZ3At6" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3At7" role="3clF47">
        <node concept="3clFbF" id="4_SQzDORUA7" role="3cqZAp">
          <node concept="1rXfSq" id="4_SQzDORUA5" role="3clFbG">
            <ref role="37wK5l" node="4EhVFrZ3ApL" resolve="setReferenceTarget" />
            <node concept="1rXfSq" id="4_SQzDORW_j" role="37wK5m">
              <ref role="37wK5l" node="B8a55UkytY" resolve="findReferenceLink" />
              <node concept="37vLTw" id="4_SQzDORYor" role="37wK5m">
                <ref role="3cqZAo" node="4EhVFrZ3At2" resolve="string" />
              </node>
            </node>
            <node concept="37vLTw" id="4_SQzDOS07n" role="37wK5m">
              <ref role="3cqZAo" node="4EhVFrZ3At4" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3At8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3At9" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getReferenceTarget" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3uibUv" id="4EhVFrZ3Atg" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm1VV" id="4EhVFrZ3Ata" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3Atc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
      <node concept="37vLTG" id="4EhVFrZ3Ath" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="3uibUv" id="4EhVFrZ3Ati" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3Atj" role="3clF47">
        <node concept="3clFbF" id="75046mm4GAB" role="3cqZAp">
          <node concept="1rXfSq" id="B8a55UksbI" role="3clFbG">
            <ref role="37wK5l" node="4EhVFrZ3ApX" resolve="getReferenceTarget" />
            <node concept="1rXfSq" id="B8a55Ul6j5" role="37wK5m">
              <ref role="37wK5l" node="B8a55UkytY" resolve="findReferenceLink" />
              <node concept="37vLTw" id="B8a55Ul7yc" role="37wK5m">
                <ref role="3cqZAo" node="4EhVFrZ3Ath" resolve="role" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3Atk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="B8a55UkytY" role="jymVt">
      <property role="TrG5h" value="findReferenceLink" />
      <node concept="37vLTG" id="B8a55UkQgj" role="3clF46">
        <property role="TrG5h" value="name" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="B8a55UkTGm" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="B8a55UkN1S" role="3clF45">
        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
      </node>
      <node concept="3Tmbuc" id="B8a55UkJIt" role="1B3o_S" />
      <node concept="3clFbS" id="B8a55Ukyu2" role="3clF47">
        <node concept="3cpWs8" id="B8a55UkTPJ" role="3cqZAp">
          <node concept="3cpWsn" id="B8a55UkTPK" role="3cpWs9">
            <property role="TrG5h" value="links" />
            <node concept="A3Dl8" id="B8a55UkTPL" role="1tU5fm">
              <node concept="3uibUv" id="B8a55UkTPM" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
              </node>
            </node>
            <node concept="2OqwBi" id="B8a55UkTPN" role="33vP2m">
              <node concept="1rXfSq" id="B8a55UkTPO" role="2Oq$k0">
                <ref role="37wK5l" node="4EhVFrZ3AmW" resolve="getConcept" />
              </node>
              <node concept="liA8E" id="B8a55UkTPP" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getReferenceLinks()" resolve="getReferenceLinks" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="B8a55UkTPQ" role="3cqZAp">
          <node concept="3cpWsn" id="B8a55UkTPR" role="3cpWs9">
            <property role="TrG5h" value="link" />
            <node concept="3uibUv" id="B8a55UkTPS" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
            </node>
            <node concept="2OqwBi" id="B8a55UkTPT" role="33vP2m">
              <node concept="37vLTw" id="B8a55UkTPU" role="2Oq$k0">
                <ref role="3cqZAo" node="B8a55UkTPK" resolve="links" />
              </node>
              <node concept="1z4cxt" id="B8a55UkTPV" role="2OqNvi">
                <node concept="1bVj0M" id="B8a55UkTPW" role="23t8la">
                  <node concept="3clFbS" id="B8a55UkTPX" role="1bW5cS">
                    <node concept="3clFbF" id="B8a55UkTPY" role="3cqZAp">
                      <node concept="17R0WA" id="B8a55UkTPZ" role="3clFbG">
                        <node concept="37vLTw" id="B8a55UkZAc" role="3uHU7w">
                          <ref role="3cqZAo" node="B8a55UkQgj" resolve="name" />
                        </node>
                        <node concept="2OqwBi" id="B8a55UkTQ1" role="3uHU7B">
                          <node concept="37vLTw" id="B8a55UkTQ2" role="2Oq$k0">
                            <ref role="3cqZAo" node="B8a55UkTQ4" resolve="it" />
                          </node>
                          <node concept="liA8E" id="B8a55UkTQ3" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="B8a55UkTQ4" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="B8a55UkTQ5" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="B8a55UkTQ6" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <property role="TyiWL" value="false" />
          <node concept="3clFbS" id="B8a55UkTQ7" role="3clFbx">
            <node concept="YS8fn" id="B8a55UkTQ8" role="3cqZAp">
              <node concept="2ShNRf" id="B8a55UkTQ9" role="YScLw">
                <node concept="1pGfFk" id="B8a55UkTQa" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="3cpWs3" id="B8a55UkTQb" role="37wK5m">
                    <node concept="Xl_RD" id="B8a55UkTQc" role="3uHU7w">
                      <property role="Xl_RC" value="'" />
                    </node>
                    <node concept="3cpWs3" id="B8a55UkTQd" role="3uHU7B">
                      <node concept="3cpWs3" id="B8a55UkTQe" role="3uHU7B">
                        <node concept="2OqwBi" id="B8a55UkTQf" role="3uHU7B">
                          <node concept="1rXfSq" id="B8a55UkTQg" role="2Oq$k0">
                            <ref role="37wK5l" node="4EhVFrZ3AmW" resolve="getConcept" />
                          </node>
                          <node concept="liA8E" id="B8a55UkTQh" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="B8a55UkTQi" role="3uHU7w">
                          <property role="Xl_RC" value=" doesn't have a reference link '" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="B8a55Umsa5" role="3uHU7w">
                        <ref role="3cqZAo" node="B8a55UkQgj" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="B8a55UkTQk" role="3clFbw">
            <node concept="37vLTw" id="B8a55UkTQl" role="3uHU7B">
              <ref role="3cqZAo" node="B8a55UkTPR" resolve="link" />
            </node>
            <node concept="10Nm6u" id="B8a55UkTQm" role="3uHU7w" />
          </node>
        </node>
        <node concept="3cpWs6" id="B8a55UkVVQ" role="3cqZAp">
          <node concept="37vLTw" id="B8a55UkWeN" role="3cqZAk">
            <ref role="3cqZAo" node="B8a55UkTPR" resolve="link" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7Dmu$hCTSih" role="jymVt">
      <property role="TrG5h" value="findChildLink" />
      <node concept="37vLTG" id="7Dmu$hCTSii" role="3clF46">
        <property role="TrG5h" value="name" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="7Dmu$hCTSij" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7Dmu$hCUkKy" role="3clF45">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
      <node concept="3Tmbuc" id="7Dmu$hCTSil" role="1B3o_S" />
      <node concept="3clFbS" id="7Dmu$hCTSim" role="3clF47">
        <node concept="3cpWs8" id="7Dmu$hCTSin" role="3cqZAp">
          <node concept="3cpWsn" id="7Dmu$hCTSio" role="3cpWs9">
            <property role="TrG5h" value="links" />
            <node concept="A3Dl8" id="7Dmu$hCTSip" role="1tU5fm">
              <node concept="3uibUv" id="7Dmu$hCU3ZZ" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
              </node>
            </node>
            <node concept="2OqwBi" id="7Dmu$hCTSir" role="33vP2m">
              <node concept="1rXfSq" id="7Dmu$hCTSis" role="2Oq$k0">
                <ref role="37wK5l" node="4EhVFrZ3AmW" resolve="getConcept" />
              </node>
              <node concept="liA8E" id="7Dmu$hCTSit" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getContainmentLinks()" resolve="getContainmentLinks" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Dmu$hCTSiu" role="3cqZAp">
          <node concept="3cpWsn" id="7Dmu$hCTSiv" role="3cpWs9">
            <property role="TrG5h" value="link" />
            <node concept="3uibUv" id="7Dmu$hCUdI$" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
            </node>
            <node concept="2OqwBi" id="7Dmu$hCTSix" role="33vP2m">
              <node concept="37vLTw" id="7Dmu$hCTSiy" role="2Oq$k0">
                <ref role="3cqZAo" node="7Dmu$hCTSio" resolve="links" />
              </node>
              <node concept="1z4cxt" id="7Dmu$hCTSiz" role="2OqNvi">
                <node concept="1bVj0M" id="7Dmu$hCTSi$" role="23t8la">
                  <node concept="3clFbS" id="7Dmu$hCTSi_" role="1bW5cS">
                    <node concept="3clFbF" id="7Dmu$hCTSiA" role="3cqZAp">
                      <node concept="17R0WA" id="7Dmu$hCTSiB" role="3clFbG">
                        <node concept="37vLTw" id="7Dmu$hCTSiC" role="3uHU7w">
                          <ref role="3cqZAo" node="7Dmu$hCTSii" resolve="name" />
                        </node>
                        <node concept="2OqwBi" id="7Dmu$hCTSiD" role="3uHU7B">
                          <node concept="37vLTw" id="7Dmu$hCTSiE" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Dmu$hCTSiG" resolve="it" />
                          </node>
                          <node concept="liA8E" id="7Dmu$hCTSiF" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="7Dmu$hCTSiG" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="7Dmu$hCTSiH" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Dmu$hCTSiI" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <property role="TyiWL" value="false" />
          <node concept="3clFbS" id="7Dmu$hCTSiJ" role="3clFbx">
            <node concept="YS8fn" id="7Dmu$hCTSiK" role="3cqZAp">
              <node concept="2ShNRf" id="7Dmu$hCTSiL" role="YScLw">
                <node concept="1pGfFk" id="7Dmu$hCTSiM" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="3cpWs3" id="7Dmu$hCTSiN" role="37wK5m">
                    <node concept="Xl_RD" id="7Dmu$hCTSiO" role="3uHU7w">
                      <property role="Xl_RC" value="'" />
                    </node>
                    <node concept="3cpWs3" id="7Dmu$hCTSiP" role="3uHU7B">
                      <node concept="3cpWs3" id="7Dmu$hCTSiQ" role="3uHU7B">
                        <node concept="2OqwBi" id="7Dmu$hCTSiR" role="3uHU7B">
                          <node concept="1rXfSq" id="7Dmu$hCTSiS" role="2Oq$k0">
                            <ref role="37wK5l" node="4EhVFrZ3AmW" resolve="getConcept" />
                          </node>
                          <node concept="liA8E" id="7Dmu$hCTSiT" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7Dmu$hCTSiU" role="3uHU7w">
                          <property role="Xl_RC" value=" doesn't have a child link '" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7Dmu$hCTSiV" role="3uHU7w">
                        <ref role="3cqZAo" node="7Dmu$hCTSii" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7Dmu$hCTSiW" role="3clFbw">
            <node concept="37vLTw" id="7Dmu$hCTSiX" role="3uHU7B">
              <ref role="3cqZAo" node="7Dmu$hCTSiv" resolve="link" />
            </node>
            <node concept="10Nm6u" id="7Dmu$hCTSiY" role="3uHU7w" />
          </node>
        </node>
        <node concept="3cpWs6" id="7Dmu$hCTSiZ" role="3cqZAp">
          <node concept="37vLTw" id="7Dmu$hCTSj0" role="3cqZAk">
            <ref role="3cqZAo" node="7Dmu$hCTSiv" resolve="link" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4_SQzDOSa82" role="jymVt">
      <property role="TrG5h" value="findProperty" />
      <node concept="37vLTG" id="4_SQzDOSa83" role="3clF46">
        <property role="TrG5h" value="name" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="4_SQzDOSa84" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4_SQzDOSVTv" role="3clF45">
        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
      </node>
      <node concept="3Tmbuc" id="4_SQzDOSa86" role="1B3o_S" />
      <node concept="3clFbS" id="4_SQzDOSa87" role="3clF47">
        <node concept="3cpWs8" id="4_SQzDOSa88" role="3cqZAp">
          <node concept="3cpWsn" id="4_SQzDOSa89" role="3cpWs9">
            <property role="TrG5h" value="properties" />
            <node concept="A3Dl8" id="4_SQzDOSa8a" role="1tU5fm">
              <node concept="3uibUv" id="4_SQzDOSyYg" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
              </node>
            </node>
            <node concept="2OqwBi" id="4_SQzDOSa8c" role="33vP2m">
              <node concept="1rXfSq" id="4_SQzDOSa8d" role="2Oq$k0">
                <ref role="37wK5l" node="4EhVFrZ3AmW" resolve="getConcept" />
              </node>
              <node concept="liA8E" id="4_SQzDOSa8e" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getProperties()" resolve="getProperties" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4_SQzDOSa8f" role="3cqZAp">
          <node concept="3cpWsn" id="4_SQzDOSa8g" role="3cpWs9">
            <property role="TrG5h" value="property" />
            <node concept="3uibUv" id="4_SQzDOSQRp" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
            </node>
            <node concept="2OqwBi" id="4_SQzDOSa8i" role="33vP2m">
              <node concept="37vLTw" id="4_SQzDOSa8j" role="2Oq$k0">
                <ref role="3cqZAo" node="4_SQzDOSa89" resolve="properties" />
              </node>
              <node concept="1z4cxt" id="4_SQzDOSa8k" role="2OqNvi">
                <node concept="1bVj0M" id="4_SQzDOSa8l" role="23t8la">
                  <node concept="3clFbS" id="4_SQzDOSa8m" role="1bW5cS">
                    <node concept="3clFbF" id="4_SQzDOSa8n" role="3cqZAp">
                      <node concept="17R0WA" id="4_SQzDOSa8o" role="3clFbG">
                        <node concept="37vLTw" id="4_SQzDOSa8p" role="3uHU7w">
                          <ref role="3cqZAo" node="4_SQzDOSa83" resolve="name" />
                        </node>
                        <node concept="2OqwBi" id="4_SQzDOSa8q" role="3uHU7B">
                          <node concept="37vLTw" id="4_SQzDOSa8r" role="2Oq$k0">
                            <ref role="3cqZAo" node="4_SQzDOSa8t" resolve="it" />
                          </node>
                          <node concept="liA8E" id="4_SQzDOSa8s" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="4_SQzDOSa8t" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="4_SQzDOSa8u" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4_SQzDOSa8v" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <property role="TyiWL" value="false" />
          <node concept="3clFbS" id="4_SQzDOSa8w" role="3clFbx">
            <node concept="YS8fn" id="4_SQzDOSa8x" role="3cqZAp">
              <node concept="2ShNRf" id="4_SQzDOSa8y" role="YScLw">
                <node concept="1pGfFk" id="4_SQzDOSa8z" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="3cpWs3" id="4_SQzDOSa8$" role="37wK5m">
                    <node concept="Xl_RD" id="4_SQzDOSa8_" role="3uHU7w">
                      <property role="Xl_RC" value="'" />
                    </node>
                    <node concept="3cpWs3" id="4_SQzDOSa8A" role="3uHU7B">
                      <node concept="3cpWs3" id="4_SQzDOSa8B" role="3uHU7B">
                        <node concept="2OqwBi" id="4_SQzDOSa8C" role="3uHU7B">
                          <node concept="1rXfSq" id="4_SQzDOSa8D" role="2Oq$k0">
                            <ref role="37wK5l" node="4EhVFrZ3AmW" resolve="getConcept" />
                          </node>
                          <node concept="liA8E" id="4_SQzDOSa8E" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="4_SQzDOSa8F" role="3uHU7w">
                          <property role="Xl_RC" value=" doesn't have a property '" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4_SQzDOSa8G" role="3uHU7w">
                        <ref role="3cqZAo" node="4_SQzDOSa83" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4_SQzDOSa8H" role="3clFbw">
            <node concept="37vLTw" id="4_SQzDOSa8I" role="3uHU7B">
              <ref role="3cqZAo" node="4_SQzDOSa8g" resolve="property" />
            </node>
            <node concept="10Nm6u" id="4_SQzDOSa8J" role="3uHU7w" />
          </node>
        </node>
        <node concept="3cpWs6" id="4_SQzDOSa8K" role="3cqZAp">
          <node concept="37vLTw" id="4_SQzDOSa8L" role="3cqZAk">
            <ref role="3cqZAo" node="4_SQzDOSa8g" resolve="property" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3Atn" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getReference" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3uibUv" id="4EhVFrZ3Atu" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
      </node>
      <node concept="3Tm1VV" id="4EhVFrZ3Ato" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3Atq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
      <node concept="37vLTG" id="4EhVFrZ3Atv" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="3uibUv" id="4EhVFrZ3Atw" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3Atx" role="3clF47">
        <node concept="3clFbF" id="4_SQzDOTpYx" role="3cqZAp">
          <node concept="1rXfSq" id="4_SQzDOTpYv" role="3clFbG">
            <ref role="37wK5l" node="4EhVFrZ3Aq9" resolve="getReference" />
            <node concept="1rXfSq" id="4_SQzDOTtfX" role="37wK5m">
              <ref role="37wK5l" node="B8a55UkytY" resolve="findReferenceLink" />
              <node concept="37vLTw" id="4_SQzDOTv81" role="37wK5m">
                <ref role="3cqZAo" node="4EhVFrZ3Atv" resolve="role" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3Aty" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3At_" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setReference" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3AtA" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3AtC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
      <node concept="3cqZAl" id="4EhVFrZ3AtG" role="3clF45" />
      <node concept="37vLTG" id="4EhVFrZ3AtH" role="3clF46">
        <property role="TrG5h" value="string" />
        <node concept="3uibUv" id="4EhVFrZ3AtI" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="4EhVFrZ3AtJ" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3uibUv" id="4EhVFrZ3AtK" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
        </node>
        <node concept="2AHcQZ" id="75046mlKBir" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3AtL" role="3clF47">
        <node concept="3clFbF" id="4_SQzDOTyJs" role="3cqZAp">
          <node concept="1rXfSq" id="4_SQzDOTyJr" role="3clFbG">
            <ref role="37wK5l" node="4EhVFrZ3Aql" resolve="setReference" />
            <node concept="1rXfSq" id="4_SQzDOT$M8" role="37wK5m">
              <ref role="37wK5l" node="B8a55UkytY" resolve="findReferenceLink" />
              <node concept="37vLTw" id="4_SQzDOTAD$" role="37wK5m">
                <ref role="3cqZAo" node="4EhVFrZ3AtH" resolve="string" />
              </node>
            </node>
            <node concept="37vLTw" id="4_SQzDOTCKG" role="37wK5m">
              <ref role="3cqZAo" node="4EhVFrZ3AtJ" resolve="reference" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3AtM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3AtN" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="insertChildBefore" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3AtO" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3AtQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
      <node concept="3cqZAl" id="4EhVFrZ3AtU" role="3clF45" />
      <node concept="37vLTG" id="4EhVFrZ3AtV" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="3uibUv" id="4EhVFrZ3AtW" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="4EhVFrZ3AtX" role="3clF46">
        <property role="TrG5h" value="newChild" />
        <node concept="3uibUv" id="4EhVFrZ3AtY" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="4EhVFrZ3AtZ" role="3clF46">
        <property role="TrG5h" value="anchor" />
        <node concept="3uibUv" id="4EhVFrZ3Au0" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="4EhVFrZ3Au1" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3Au2" role="3clF47">
        <node concept="3cpWs8" id="3ECE8iPNtBJ" role="3cqZAp">
          <node concept="3cpWsn" id="3ECE8iPNtBK" role="3cpWs9">
            <property role="TrG5h" value="children" />
            <node concept="A3Dl8" id="3ECE8iPNtB$" role="1tU5fm">
              <node concept="3uibUv" id="3ECE8iPNtBB" role="A3Ik2">
                <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
              </node>
            </node>
            <node concept="2YIFZM" id="1m9roGBxUo8" role="33vP2m">
              <ref role="37wK5l" to="18ew:~IterableUtil.asIterable(java.util.Iterator)" resolve="asIterable" />
              <ref role="1Pybhc" to="18ew:~IterableUtil" resolve="IterableUtil" />
              <node concept="2OqwBi" id="1m9roGBxW1a" role="37wK5m">
                <node concept="2OqwBi" id="3ECE8iPNtBL" role="2Oq$k0">
                  <node concept="37vLTw" id="3ECE8iPNtBM" role="2Oq$k0">
                    <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
                  </node>
                  <node concept="liA8E" id="3ECE8iPNtBN" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~INode.getChildren(java.lang.String)" resolve="getChildren" />
                    <node concept="37vLTw" id="3ECE8iPNtBO" role="37wK5m">
                      <ref role="3cqZAo" node="4EhVFrZ3AtV" resolve="role" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1m9roGBxXTs" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Iterable.iterator()" resolve="iterator" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3ECE8iPND25" role="3cqZAp">
          <node concept="3cpWsn" id="3ECE8iPND26" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <node concept="10Oyi0" id="3ECE8iPND1K" role="1tU5fm" />
            <node concept="3cmrfG" id="3ECE8iPNN1w" role="33vP2m">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3ECE8iPNOXb" role="3cqZAp">
          <node concept="3clFbS" id="3ECE8iPNOXd" role="3clFbx">
            <node concept="3clFbF" id="3ECE8iPNS1O" role="3cqZAp">
              <node concept="37vLTI" id="3ECE8iPNSHA" role="3clFbG">
                <node concept="37vLTw" id="3ECE8iPNS1M" role="37vLTJ">
                  <ref role="3cqZAo" node="3ECE8iPND26" resolve="index" />
                </node>
                <node concept="2OqwBi" id="3ECE8iPND27" role="37vLTx">
                  <node concept="37vLTw" id="3ECE8iPND28" role="2Oq$k0">
                    <ref role="3cqZAo" node="3ECE8iPNtBK" resolve="children" />
                  </node>
                  <node concept="2WmjW8" id="3ECE8iPND29" role="2OqNvi">
                    <node concept="2YIFZM" id="3ECE8iPND2a" role="25WWJ7">
                      <ref role="1Pybhc" node="5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                      <ref role="37wK5l" node="5gTrVpGyMwR" resolve="wrap" />
                      <node concept="37vLTw" id="3ECE8iPND2b" role="37wK5m">
                        <ref role="3cqZAo" node="4EhVFrZ3AtZ" resolve="anchor" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3ECE8iPNEli" role="3cqZAp">
              <node concept="3clFbS" id="3ECE8iPNElk" role="3clFbx">
                <node concept="YS8fn" id="3ECE8iPNF$m" role="3cqZAp">
                  <node concept="2ShNRf" id="3ECE8iPNFA2" role="YScLw">
                    <node concept="1pGfFk" id="3ECE8iPNG0M" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                      <node concept="3cpWs3" id="3ECE8iPNHOH" role="37wK5m">
                        <node concept="37vLTw" id="3ECE8iPNHP$" role="3uHU7w">
                          <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
                        </node>
                        <node concept="3cpWs3" id="3ECE8iPNG8F" role="3uHU7B">
                          <node concept="37vLTw" id="3ECE8iPNGbk" role="3uHU7B">
                            <ref role="3cqZAo" node="4EhVFrZ3AtZ" resolve="anchor" />
                          </node>
                          <node concept="Xl_RD" id="3ECE8iPNG2W" role="3uHU7w">
                            <property role="Xl_RC" value=" is not a child of " />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="3ECE8iPNFfJ" role="3clFbw">
                <node concept="3cmrfG" id="3ECE8iPNFgx" role="3uHU7w">
                  <property role="3cmrfH" value="-1" />
                </node>
                <node concept="37vLTw" id="3ECE8iPNEpP" role="3uHU7B">
                  <ref role="3cqZAo" node="3ECE8iPND26" resolve="index" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3ECE8iPNQNX" role="3clFbw">
            <node concept="10Nm6u" id="3ECE8iPNS0B" role="3uHU7w" />
            <node concept="37vLTw" id="3ECE8iPNPrK" role="3uHU7B">
              <ref role="3cqZAo" node="4EhVFrZ3AtZ" resolve="anchor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3ECE8iPNpkX" role="3cqZAp">
          <node concept="2OqwBi" id="3ECE8iPNpr5" role="3clFbG">
            <node concept="37vLTw" id="3ECE8iPNpkW" role="2Oq$k0">
              <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
            </node>
            <node concept="liA8E" id="3ECE8iPNqIn" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~INode.addNewChild(java.lang.String,int,org.modelix.model.api.IConcept)" resolve="addNewChild" />
              <node concept="37vLTw" id="3ECE8iPNKbi" role="37wK5m">
                <ref role="3cqZAo" node="4EhVFrZ3AtV" resolve="role" />
              </node>
              <node concept="37vLTw" id="3ECE8iPNLvZ" role="37wK5m">
                <ref role="3cqZAo" node="3ECE8iPND26" resolve="index" />
              </node>
              <node concept="2YIFZM" id="3ECE8iPOrdh" role="37wK5m">
                <ref role="1Pybhc" node="5gTrVpGjuL2" resolve="SConceptAdapter" />
                <ref role="37wK5l" node="3ECE8iPOmg5" resolve="wrap" />
                <node concept="2OqwBi" id="3ECE8iPOrdi" role="37wK5m">
                  <node concept="37vLTw" id="3ECE8iPOrdj" role="2Oq$k0">
                    <ref role="3cqZAo" node="4EhVFrZ3AtX" resolve="newChild" />
                  </node>
                  <node concept="liA8E" id="3ECE8iPOrdk" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3Au3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3Au4" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addChild" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3Au5" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3Au7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
      <node concept="3cqZAl" id="4EhVFrZ3Aub" role="3clF45" />
      <node concept="37vLTG" id="4EhVFrZ3Auc" role="3clF46">
        <property role="TrG5h" value="string" />
        <node concept="3uibUv" id="4EhVFrZ3Aud" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="4EhVFrZ3Aue" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="4EhVFrZ3Auf" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3Aug" role="3clF47">
        <node concept="3clFbF" id="4_SQzDOTTUj" role="3cqZAp">
          <node concept="1rXfSq" id="4_SQzDOTTUh" role="3clFbG">
            <ref role="37wK5l" node="4EhVFrZ3Anx" resolve="addChild" />
            <node concept="1rXfSq" id="4_SQzDOTWhf" role="37wK5m">
              <ref role="37wK5l" node="7Dmu$hCTSih" resolve="findChildLink" />
              <node concept="37vLTw" id="4_SQzDOTY9t" role="37wK5m">
                <ref role="3cqZAo" node="4EhVFrZ3Auc" resolve="string" />
              </node>
            </node>
            <node concept="37vLTw" id="4_SQzDOTZVD" role="37wK5m">
              <ref role="3cqZAo" node="4EhVFrZ3Aue" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3Auh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4EhVFrZ3Aui" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getChildren" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4EhVFrZ3Auj" role="1B3o_S" />
      <node concept="2AHcQZ" id="4EhVFrZ3Aul" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
      <node concept="3uibUv" id="75046mlKEAi" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="75046mlKHoo" role="11_B2D">
          <ref role="3uigEE" to="w1kc:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="4EhVFrZ3Aus" role="3clF46">
        <property role="TrG5h" value="string" />
        <node concept="3uibUv" id="4EhVFrZ3Aut" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="4EhVFrZ3Auu" role="3clF47">
        <node concept="3cpWs8" id="7Dmu$hCUzZE" role="3cqZAp">
          <node concept="3cpWsn" id="7Dmu$hCUzZF" role="3cpWs9">
            <property role="TrG5h" value="children" />
            <node concept="A3Dl8" id="7Dmu$hCUD8V" role="1tU5fm">
              <node concept="3uibUv" id="7Dmu$hCVd_y" role="A3Ik2">
                <ref role="3uigEE" to="w1kc:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="10QFUN" id="7Dmu$hCVgdH" role="33vP2m">
              <node concept="1rXfSq" id="7Dmu$hCVgdE" role="10QFUP">
                <ref role="37wK5l" node="4EhVFrZ3App" resolve="getChildren" />
                <node concept="1rXfSq" id="7Dmu$hCVgdF" role="37wK5m">
                  <ref role="37wK5l" node="7Dmu$hCTSih" resolve="findChildLink" />
                  <node concept="37vLTw" id="7Dmu$hCVgdG" role="37wK5m">
                    <ref role="3cqZAo" node="4EhVFrZ3Aus" resolve="string" />
                  </node>
                </node>
              </node>
              <node concept="A3Dl8" id="7Dmu$hCVgdC" role="10QFUM">
                <node concept="3uibUv" id="7Dmu$hCVgdD" role="A3Ik2">
                  <ref role="3uigEE" to="w1kc:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Dmu$hCTOZr" role="3cqZAp">
          <node concept="2OqwBi" id="7Dmu$hCUFZo" role="3clFbG">
            <node concept="37vLTw" id="7Dmu$hCUzZJ" role="2Oq$k0">
              <ref role="3cqZAo" node="7Dmu$hCUzZF" resolve="children" />
            </node>
            <node concept="ANE8D" id="7Dmu$hCV5H2" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4EhVFrZ3Auv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="75046mlKI$S" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4EhVFrZ3Ale" role="jymVt" />
    <node concept="3Tm1VV" id="4EhVFrZ3AjS" role="1B3o_S" />
    <node concept="3uibUv" id="4EhVFrZ3AkU" role="EKbjA">
      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
    </node>
    <node concept="3clFb_" id="Vl1zEEqLKU" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="Vl1zEEqLKV" role="3clF45" />
      <node concept="3Tm1VV" id="Vl1zEEqLKW" role="1B3o_S" />
      <node concept="3clFbS" id="Vl1zEEqLKX" role="3clF47">
        <node concept="3clFbJ" id="Vl1zEEqLKY" role="3cqZAp">
          <node concept="3clFbS" id="Vl1zEEqLKZ" role="3clFbx">
            <node concept="3cpWs6" id="Vl1zEEqLL0" role="3cqZAp">
              <node concept="3clFbT" id="Vl1zEEqLL1" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="Vl1zEEqLL2" role="3clFbw">
            <node concept="Xjq3P" id="Vl1zEEqLKT" role="3uHU7B" />
            <node concept="37vLTw" id="Vl1zEEqLL3" role="3uHU7w">
              <ref role="3cqZAo" node="Vl1zEEqLLq" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Vl1zEEqLL4" role="3cqZAp">
          <node concept="3clFbS" id="Vl1zEEqLL5" role="3clFbx">
            <node concept="3cpWs6" id="Vl1zEEqLL6" role="3cqZAp">
              <node concept="3clFbT" id="Vl1zEEqLL7" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="Vl1zEEqLL8" role="3clFbw">
            <node concept="3clFbC" id="Vl1zEEqLL9" role="3uHU7B">
              <node concept="37vLTw" id="Vl1zEEqLLa" role="3uHU7B">
                <ref role="3cqZAo" node="Vl1zEEqLLq" resolve="o" />
              </node>
              <node concept="10Nm6u" id="Vl1zEEqLLb" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="Vl1zEEqLLc" role="3uHU7w">
              <node concept="2OqwBi" id="Vl1zEEqLLd" role="3uHU7B">
                <node concept="Xjq3P" id="Vl1zEEqLLe" role="2Oq$k0" />
                <node concept="liA8E" id="Vl1zEEqLLf" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="2OqwBi" id="Vl1zEEqLLg" role="3uHU7w">
                <node concept="37vLTw" id="Vl1zEEqLLh" role="2Oq$k0">
                  <ref role="3cqZAo" node="Vl1zEEqLLq" resolve="o" />
                </node>
                <node concept="liA8E" id="Vl1zEEqLLi" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Vl1zEEqLLj" role="3cqZAp" />
        <node concept="3cpWs8" id="Vl1zEEqLLk" role="3cqZAp">
          <node concept="3cpWsn" id="Vl1zEEqLLl" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="Vl1zEEqLLm" role="1tU5fm">
              <ref role="3uigEE" node="4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
            </node>
            <node concept="10QFUN" id="Vl1zEEqLLn" role="33vP2m">
              <node concept="3uibUv" id="Vl1zEEqLLo" role="10QFUM">
                <ref role="3uigEE" node="4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
              </node>
              <node concept="37vLTw" id="Vl1zEEqLLp" role="10QFUP">
                <ref role="3cqZAo" node="Vl1zEEqLLq" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Vl1zEEqLL$" role="3cqZAp">
          <node concept="3clFbS" id="Vl1zEEqLL_" role="3clFbx">
            <node concept="3cpWs6" id="Vl1zEEqLLA" role="3cqZAp">
              <node concept="3clFbT" id="Vl1zEEqLLB" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3K4zz7" id="Vl1zEEqLLC" role="3clFbw">
            <node concept="3fqX7Q" id="Vl1zEEqLLD" role="3K4E3e">
              <node concept="2OqwBi" id="Vl1zEEqLLE" role="3fr31v">
                <node concept="liA8E" id="Vl1zEEqLLF" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="Vl1zEEqLLG" role="37wK5m">
                    <node concept="37vLTw" id="Vl1zEEqLLt" role="2Oq$k0">
                      <ref role="3cqZAo" node="Vl1zEEqLLl" resolve="that" />
                    </node>
                    <node concept="2OwXpG" id="Vl1zEEqLLw" role="2OqNvi">
                      <ref role="2Oxat5" node="4EhVFrZ3AlB" resolve="node" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="Vl1zEEqLLx" role="2Oq$k0">
                  <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="Vl1zEEqLLH" role="3K4Cdx">
              <node concept="10Nm6u" id="Vl1zEEqLLI" role="3uHU7w" />
              <node concept="37vLTw" id="Vl1zEEqLLy" role="3uHU7B">
                <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
              </node>
            </node>
            <node concept="3y3z36" id="Vl1zEEqLLJ" role="3K4GZi">
              <node concept="10Nm6u" id="Vl1zEEqLLK" role="3uHU7w" />
              <node concept="2OqwBi" id="Vl1zEEqLLL" role="3uHU7B">
                <node concept="37vLTw" id="Vl1zEEqLLM" role="2Oq$k0">
                  <ref role="3cqZAo" node="Vl1zEEqLLl" resolve="that" />
                </node>
                <node concept="2OwXpG" id="Vl1zEEqLLz" role="2OqNvi">
                  <ref role="2Oxat5" node="4EhVFrZ3AlB" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Vl1zEEqLLN" role="3cqZAp" />
        <node concept="3clFbF" id="Vl1zEEqLLO" role="3cqZAp">
          <node concept="3clFbT" id="Vl1zEEqLLP" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="Vl1zEEqLLq" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="Vl1zEEqLLr" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="Vl1zEEqLLs" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="Vl1zEEqO2n" role="jymVt" />
    <node concept="3clFb_" id="Vl1zEEqLLQ" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="Vl1zEEqLLR" role="3clF45" />
      <node concept="3Tm1VV" id="Vl1zEEqLLS" role="1B3o_S" />
      <node concept="3clFbS" id="Vl1zEEqLLT" role="3clF47">
        <node concept="3cpWs8" id="Vl1zEEqLLV" role="3cqZAp">
          <node concept="3cpWsn" id="Vl1zEEqLLW" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Oyi0" id="Vl1zEEqLLX" role="1tU5fm" />
            <node concept="3cmrfG" id="Vl1zEEqLLY" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Vl1zEEqLM8" role="3cqZAp">
          <node concept="37vLTI" id="Vl1zEEqLM9" role="3clFbG">
            <node concept="3cpWs3" id="Vl1zEEqLMa" role="37vLTx">
              <node concept="1eOMI4" id="Vl1zEEqLMb" role="3uHU7w">
                <node concept="3K4zz7" id="Vl1zEEqLMc" role="1eOMHV">
                  <node concept="3cmrfG" id="Vl1zEEqLMd" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3y3z36" id="Vl1zEEqLMe" role="3K4Cdx">
                    <node concept="10Nm6u" id="Vl1zEEqLMf" role="3uHU7w" />
                    <node concept="37vLTw" id="Vl1zEEqLM6" role="3uHU7B">
                      <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="Vl1zEEqLMg" role="3K4E3e">
                    <node concept="1eOMI4" id="Vl1zEEqLMh" role="2Oq$k0">
                      <node concept="10QFUN" id="Vl1zEEqLMi" role="1eOMHV">
                        <node concept="3uibUv" id="Vl1zEEqLMj" role="10QFUM">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                        <node concept="37vLTw" id="Vl1zEEqLM7" role="10QFUP">
                          <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="Vl1zEEqLMk" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17qRlL" id="Vl1zEEqLM4" role="3uHU7B">
                <node concept="3cmrfG" id="Vl1zEEqLM5" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="Vl1zEEqLLZ" role="3uHU7w">
                  <ref role="3cqZAo" node="Vl1zEEqLLW" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="Vl1zEEqLMl" role="37vLTJ">
              <ref role="3cqZAo" node="Vl1zEEqLLW" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Vl1zEEqLMm" role="3cqZAp">
          <node concept="37vLTw" id="Vl1zEEqLMn" role="3clFbG">
            <ref role="3cqZAo" node="Vl1zEEqLLW" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="Vl1zEEqLLU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7NatPTM4puc" role="jymVt" />
    <node concept="3clFb_" id="2deitUvWkXI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="2deitUvWkXJ" role="1B3o_S" />
      <node concept="17QB3L" id="2deitUvWp6$" role="3clF45" />
      <node concept="3clFbS" id="2deitUvWkXM" role="3clF47">
        <node concept="3clFbF" id="2deitUvWtAW" role="3cqZAp">
          <node concept="3cpWs3" id="2deitUvWu3Z" role="3clFbG">
            <node concept="Xl_RD" id="2deitUvWtUL" role="3uHU7w">
              <property role="Xl_RC" value="]" />
            </node>
            <node concept="3cpWs3" id="2deitUvWtTj" role="3uHU7B">
              <node concept="Xl_RD" id="2deitUvWtAV" role="3uHU7B">
                <property role="Xl_RC" value="NodeToSNodeAdapter[" />
              </node>
              <node concept="2OqwBi" id="2deitUvWuFy" role="3uHU7w">
                <node concept="Xjq3P" id="2deitUvWuak" role="2Oq$k0" />
                <node concept="2OwXpG" id="2deitUvWuV8" role="2OqNvi">
                  <ref role="2Oxat5" node="4EhVFrZ3AlB" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2deitUvWkXN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7NatPTM4pFU" role="jymVt" />
    <node concept="312cEu" id="7c10t$724iy" role="jymVt">
      <property role="TrG5h" value="NodeReference" />
      <property role="2bfB8j" value="true" />
      <node concept="3clFb_" id="7NatPTM4r_Y" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="resolve" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="7NatPTM4r_Z" role="1B3o_S" />
        <node concept="2AHcQZ" id="7NatPTM4rA1" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="7NatPTM4rA2" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="37vLTG" id="7NatPTM4rA3" role="3clF46">
          <property role="TrG5h" value="repository" />
          <node concept="3uibUv" id="7NatPTM4rA4" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
        </node>
        <node concept="3clFbS" id="7NatPTM4rA5" role="3clF47">
          <node concept="3clFbF" id="7c10t$72PaE" role="3cqZAp">
            <node concept="Xjq3P" id="7c10t$72VkV" role="3clFbG">
              <ref role="1HBi2w" node="4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7NatPTM4rA6" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="7NatPTM4tK9" role="jymVt" />
      <node concept="3clFb_" id="7NatPTM4rA9" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getModelReference" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="7NatPTM4rAa" role="1B3o_S" />
        <node concept="2AHcQZ" id="7NatPTM4rAc" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="7NatPTM4rAd" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
        <node concept="3clFbS" id="7NatPTM4rAe" role="3clF47">
          <node concept="3clFbF" id="7NatPTM4rAh" role="3cqZAp">
            <node concept="10Nm6u" id="7NatPTM4rAg" role="3clFbG" />
          </node>
        </node>
        <node concept="2AHcQZ" id="7NatPTM4rAf" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="7c10t$735kP" role="jymVt" />
      <node concept="3clFb_" id="7c10t$730Le" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getNodeId" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="7c10t$730Lf" role="1B3o_S" />
        <node concept="3uibUv" id="7c10t$730Lg" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
        <node concept="3clFbS" id="7c10t$730Lh" role="3clF47">
          <node concept="3clFbF" id="7c10t$74EeS" role="3cqZAp">
            <node concept="37vLTw" id="7c10t$74EeR" role="3clFbG">
              <ref role="3cqZAo" node="7c10t$74oxy" resolve="nodeId" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7c10t$730Lk" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="7c10t$75qkV" role="jymVt">
        <property role="TrG5h" value="toString" />
        <node concept="3Tm1VV" id="7c10t$75qkW" role="1B3o_S" />
        <node concept="17QB3L" id="7c10t$75v7q" role="3clF45" />
        <node concept="3clFbS" id="7c10t$75qkZ" role="3clF47">
          <node concept="3clFbF" id="7c10t$75qMv" role="3cqZAp">
            <node concept="3cpWs3" id="7c10t$75y09" role="3clFbG">
              <node concept="2OqwBi" id="7c10t$75AIv" role="3uHU7w">
                <node concept="2OqwBi" id="7c10t$75z4T" role="2Oq$k0">
                  <node concept="37vLTw" id="7c10t$75yB9" role="2Oq$k0">
                    <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
                  </node>
                  <node concept="liA8E" id="7c10t$75Ao2" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~INode.getReference()" resolve="getReference" />
                  </node>
                </node>
                <node concept="liA8E" id="7c10t$75EB1" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                </node>
              </node>
              <node concept="Xl_RD" id="7c10t$75qMu" role="3uHU7B">
                <property role="Xl_RC" value=":" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7c10t$75ql0" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="NTNBKlsl72" role="jymVt">
        <property role="TrG5h" value="hashCode" />
        <node concept="3Tm1VV" id="NTNBKlsl73" role="1B3o_S" />
        <node concept="10Oyi0" id="NTNBKlsl75" role="3clF45" />
        <node concept="3clFbS" id="NTNBKlsl76" role="3clF47">
          <node concept="3clFbF" id="NTNBKlspP_" role="3cqZAp">
            <node concept="2OqwBi" id="NTNBKlss9J" role="3clFbG">
              <node concept="Xjq3P" id="NTNBKlspP$" role="2Oq$k0">
                <ref role="1HBi2w" node="4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
              </node>
              <node concept="liA8E" id="NTNBKlsu_s" role="2OqNvi">
                <ref role="37wK5l" node="Vl1zEEqLLQ" resolve="hashCode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="NTNBKlsl77" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="NTNBKlsl7a" role="jymVt">
        <property role="TrG5h" value="equals" />
        <node concept="3Tm1VV" id="NTNBKlsl7b" role="1B3o_S" />
        <node concept="10P_77" id="NTNBKlsl7d" role="3clF45" />
        <node concept="37vLTG" id="NTNBKlsl7e" role="3clF46">
          <property role="TrG5h" value="otherObject" />
          <node concept="3uibUv" id="NTNBKlsl7f" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3clFbS" id="NTNBKlsl7g" role="3clF47">
          <node concept="3clFbJ" id="NTNBKlsw7r" role="3cqZAp">
            <node concept="3clFbS" id="NTNBKlsw7t" role="3clFbx">
              <node concept="3cpWs8" id="NTNBKls$gi" role="3cqZAp">
                <node concept="3cpWsn" id="NTNBKls$gj" role="3cpWs9">
                  <property role="TrG5h" value="otherRef" />
                  <node concept="3uibUv" id="NTNBKls$ge" role="1tU5fm">
                    <ref role="3uigEE" node="7c10t$724iy" resolve="NodeToSNodeAdapter.NodeReference" />
                  </node>
                  <node concept="1eOMI4" id="NTNBKls$gk" role="33vP2m">
                    <node concept="10QFUN" id="NTNBKls$gl" role="1eOMHV">
                      <node concept="3uibUv" id="NTNBKls$gm" role="10QFUM">
                        <ref role="3uigEE" node="7c10t$724iy" resolve="NodeToSNodeAdapter.NodeReference" />
                      </node>
                      <node concept="37vLTw" id="NTNBKls$gn" role="10QFUP">
                        <ref role="3cqZAo" node="NTNBKlsl7e" resolve="otherObject" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="NTNBKlsV8B" role="3cqZAp">
                <node concept="2OqwBi" id="NTNBKlsV8D" role="3cqZAk">
                  <node concept="1rXfSq" id="NTNBKlsV8E" role="2Oq$k0">
                    <ref role="37wK5l" node="NTNBKlsH4$" resolve="getNode" />
                  </node>
                  <node concept="liA8E" id="NTNBKlsV8F" role="2OqNvi">
                    <ref role="37wK5l" node="Vl1zEEqLKU" resolve="equals" />
                    <node concept="2OqwBi" id="NTNBKlsV8G" role="37wK5m">
                      <node concept="37vLTw" id="NTNBKlsV8H" role="2Oq$k0">
                        <ref role="3cqZAo" node="NTNBKls$gj" resolve="otherRef" />
                      </node>
                      <node concept="liA8E" id="NTNBKlsV8I" role="2OqNvi">
                        <ref role="37wK5l" node="NTNBKlsH4$" resolve="getNode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="NTNBKlswD6" role="3clFbw">
              <node concept="3uibUv" id="NTNBKlswPZ" role="2ZW6by">
                <ref role="3uigEE" node="7c10t$724iy" resolve="NodeToSNodeAdapter.NodeReference" />
              </node>
              <node concept="37vLTw" id="NTNBKlswjx" role="2ZW6bz">
                <ref role="3cqZAo" node="NTNBKlsl7e" resolve="otherObject" />
              </node>
            </node>
            <node concept="9aQIb" id="NTNBKlsyfj" role="9aQIa">
              <node concept="3clFbS" id="NTNBKlsyfk" role="9aQI4">
                <node concept="3cpWs6" id="NTNBKlsyl$" role="3cqZAp">
                  <node concept="3clFbT" id="NTNBKlsyrn" role="3cqZAk" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="NTNBKlsl7h" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="NTNBKlsH4$" role="jymVt">
        <property role="TrG5h" value="getNode" />
        <node concept="3uibUv" id="NTNBKlsNGP" role="3clF45">
          <ref role="3uigEE" node="4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
        </node>
        <node concept="3Tm1VV" id="NTNBKlsH4B" role="1B3o_S" />
        <node concept="3clFbS" id="NTNBKlsH4C" role="3clF47">
          <node concept="3clFbF" id="NTNBKlsQfe" role="3cqZAp">
            <node concept="Xjq3P" id="NTNBKlsQfd" role="3clFbG">
              <ref role="1HBi2w" node="4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7c10t$724iz" role="1B3o_S" />
      <node concept="3uibUv" id="7c10t$72tzm" role="EKbjA">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
    </node>
    <node concept="2tJIrI" id="7c10t$73h9i" role="jymVt" />
    <node concept="312cEu" id="7c10t$73n1t" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="NodeId" />
      <node concept="3clFb_" id="75046mlHW$O" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getType" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="75046mlHW$P" role="1B3o_S" />
        <node concept="17QB3L" id="75046mlI0Lw" role="3clF45" />
        <node concept="3clFbS" id="75046mlHW$S" role="3clF47">
          <node concept="3clFbF" id="75046mlI2AI" role="3cqZAp">
            <node concept="Xl_RD" id="75046mlI2AH" role="3clFbG">
              <property role="Xl_RC" value="shadowmodelsAdapter" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="75046mlHW$T" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="7c10t$76CEh" role="jymVt">
        <property role="TrG5h" value="toString" />
        <node concept="3Tm1VV" id="7c10t$76CEi" role="1B3o_S" />
        <node concept="17QB3L" id="7c10t$76CEj" role="3clF45" />
        <node concept="3clFbS" id="7c10t$76CEk" role="3clF47">
          <node concept="3clFbF" id="7c10t$76CEl" role="3cqZAp">
            <node concept="3cpWs3" id="7c10t$76CEm" role="3clFbG">
              <node concept="2OqwBi" id="7c10t$76CEn" role="3uHU7w">
                <node concept="2OqwBi" id="7c10t$76CEo" role="2Oq$k0">
                  <node concept="37vLTw" id="7c10t$76CEp" role="2Oq$k0">
                    <ref role="3cqZAo" node="4EhVFrZ3AlB" resolve="node" />
                  </node>
                  <node concept="liA8E" id="7c10t$76CEq" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~INode.getReference()" resolve="getReference" />
                  </node>
                </node>
                <node concept="liA8E" id="7c10t$76CEr" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                </node>
              </node>
              <node concept="Xl_RD" id="7c10t$76CEs" role="3uHU7B">
                <property role="Xl_RC" value=":" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7c10t$76CEt" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7c10t$73n1u" role="1B3o_S" />
      <node concept="3uibUv" id="7c10t$73xS2" role="EKbjA">
        <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
      </node>
    </node>
    <node concept="2tJIrI" id="5ndwm32QQCP" role="jymVt" />
    <node concept="312cEu" id="5ndwm32PJ1Q" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Reference" />
      <node concept="312cEg" id="5ndwm32PYuE" role="jymVt">
        <property role="TrG5h" value="link" />
        <node concept="3Tm6S6" id="5ndwm32PYuF" role="1B3o_S" />
        <node concept="3uibUv" id="5ndwm32Q03K" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
      <node concept="3clFbW" id="5ndwm32Q3eQ" role="jymVt">
        <node concept="3cqZAl" id="5ndwm32Q3eR" role="3clF45" />
        <node concept="3Tm1VV" id="5ndwm32Q3eS" role="1B3o_S" />
        <node concept="3clFbS" id="5ndwm32Q3eU" role="3clF47">
          <node concept="3clFbF" id="5ndwm32Q3eY" role="3cqZAp">
            <node concept="37vLTI" id="5ndwm32Q3f0" role="3clFbG">
              <node concept="2OqwBi" id="5ndwm32Q3f4" role="37vLTJ">
                <node concept="Xjq3P" id="5ndwm32Q3f5" role="2Oq$k0" />
                <node concept="2OwXpG" id="5ndwm32Q3f6" role="2OqNvi">
                  <ref role="2Oxat5" node="5ndwm32PYuE" resolve="link" />
                </node>
              </node>
              <node concept="37vLTw" id="5ndwm32Q3f7" role="37vLTx">
                <ref role="3cqZAo" node="5ndwm32Q3eX" resolve="link" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="5ndwm32Q3eX" role="3clF46">
          <property role="TrG5h" value="link" />
          <node concept="3uibUv" id="5ndwm32Q3eW" role="1tU5fm">
            <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5ndwm32PTWf" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getRole" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5ndwm32PTWg" role="1B3o_S" />
        <node concept="2AHcQZ" id="5ndwm32PTWh" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
        </node>
        <node concept="17QB3L" id="5ndwm32Q59x" role="3clF45" />
        <node concept="3clFbS" id="5ndwm32PTWj" role="3clF47">
          <node concept="3clFbF" id="5ndwm32PTWk" role="3cqZAp">
            <node concept="2OqwBi" id="5ndwm32PTWl" role="3clFbG">
              <node concept="1rXfSq" id="5ndwm32PTWm" role="2Oq$k0">
                <ref role="37wK5l" node="5ndwm32PTWo" resolve="getLink" />
              </node>
              <node concept="liA8E" id="5ndwm32PTWn" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5ndwm32PTWo" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getLink" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5ndwm32PTWp" role="1B3o_S" />
        <node concept="3uibUv" id="5ndwm32PTWq" role="3clF45">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
        <node concept="3clFbS" id="5ndwm32PTWr" role="3clF47">
          <node concept="3clFbF" id="5ndwm32PTWs" role="3cqZAp">
            <node concept="37vLTw" id="5ndwm32PTWt" role="3clFbG">
              <ref role="3cqZAo" node="5ndwm32PYuE" resolve="link" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5ndwm32PTWu" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getSourceNode" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5ndwm32PTWv" role="1B3o_S" />
        <node concept="3uibUv" id="5ndwm32PTWw" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="3clFbS" id="5ndwm32PTWx" role="3clF47">
          <node concept="3clFbF" id="5ndwm32PTWy" role="3cqZAp">
            <node concept="Xjq3P" id="5ndwm32PTWz" role="3clFbG">
              <ref role="1HBi2w" node="4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5ndwm32PTW$" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getTargetNode" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5ndwm32PTW_" role="1B3o_S" />
        <node concept="3uibUv" id="5ndwm32PTWA" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="3clFbS" id="5ndwm32PTWB" role="3clF47">
          <node concept="3clFbF" id="5ndwm32PTWC" role="3cqZAp">
            <node concept="1rXfSq" id="5ndwm32PTWD" role="3clFbG">
              <ref role="37wK5l" node="4EhVFrZ3ApX" resolve="getReferenceTarget" />
              <node concept="37vLTw" id="5ndwm32PTWE" role="37wK5m">
                <ref role="3cqZAo" node="5ndwm32PYuE" resolve="link" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5ndwm32PTWF" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getTargetNodeReference" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5ndwm32PTWG" role="1B3o_S" />
        <node concept="3uibUv" id="5ndwm32PTWH" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
        <node concept="3clFbS" id="5ndwm32PTWI" role="3clF47">
          <node concept="3cpWs8" id="5ndwm32PTWJ" role="3cqZAp">
            <node concept="3cpWsn" id="5ndwm32PTWK" role="3cpWs9">
              <property role="TrG5h" value="targetNode" />
              <node concept="3uibUv" id="5ndwm32PTWL" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="1rXfSq" id="5ndwm32PTWM" role="33vP2m">
                <ref role="37wK5l" node="5ndwm32PTW$" resolve="getTargetNode" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5ndwm32PTWN" role="3cqZAp">
            <node concept="2EnYce" id="5ndwm32PTWO" role="3clFbG">
              <node concept="37vLTw" id="5ndwm32PTWP" role="2Oq$k0">
                <ref role="3cqZAo" node="5ndwm32PTWK" resolve="targetNode" />
              </node>
              <node concept="liA8E" id="5ndwm32PTWQ" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5ndwm32PTWR" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getTargetSModelReference" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5ndwm32PTWS" role="1B3o_S" />
        <node concept="2AHcQZ" id="5ndwm32PTWT" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="5ndwm32PTWU" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
        <node concept="3clFbS" id="5ndwm32PTWV" role="3clF47">
          <node concept="3cpWs8" id="5ndwm32PTWW" role="3cqZAp">
            <node concept="3cpWsn" id="5ndwm32PTWX" role="3cpWs9">
              <property role="TrG5h" value="targetNode" />
              <node concept="3uibUv" id="5ndwm32PTWY" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="1rXfSq" id="5ndwm32PTWZ" role="33vP2m">
                <ref role="37wK5l" node="5ndwm32PTW$" resolve="getTargetNode" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="5ndwm32PTX0" role="3cqZAp">
            <node concept="3cpWsn" id="5ndwm32PTX1" role="3cpWs9">
              <property role="TrG5h" value="model" />
              <node concept="3uibUv" id="5ndwm32PTX2" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
              <node concept="2EnYce" id="5ndwm32PTX3" role="33vP2m">
                <node concept="37vLTw" id="5ndwm32PTX4" role="2Oq$k0">
                  <ref role="3cqZAo" node="5ndwm32PTWX" resolve="targetNode" />
                </node>
                <node concept="liA8E" id="5ndwm32PTX5" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5ndwm32PTX6" role="3cqZAp">
            <node concept="3K4zz7" id="5ndwm32PTX7" role="3clFbG">
              <node concept="10Nm6u" id="5ndwm32PTX8" role="3K4E3e" />
              <node concept="2OqwBi" id="5ndwm32PTX9" role="3K4GZi">
                <node concept="37vLTw" id="5ndwm32PTXa" role="2Oq$k0">
                  <ref role="3cqZAo" node="5ndwm32PTX1" resolve="model" />
                </node>
                <node concept="liA8E" id="5ndwm32PTXb" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                </node>
              </node>
              <node concept="3clFbC" id="5ndwm32PTXc" role="3K4Cdx">
                <node concept="10Nm6u" id="5ndwm32PTXd" role="3uHU7w" />
                <node concept="37vLTw" id="5ndwm32PTXe" role="3uHU7B">
                  <ref role="3cqZAo" node="5ndwm32PTX1" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5ndwm32PTXf" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getTargetNodeId" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="5ndwm32PTXg" role="1B3o_S" />
        <node concept="2AHcQZ" id="5ndwm32PTXh" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="5ndwm32PTXi" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
        <node concept="3clFbS" id="5ndwm32PTXj" role="3clF47">
          <node concept="3clFbF" id="5ndwm32PTXk" role="3cqZAp">
            <node concept="2OqwBi" id="5ndwm32PTXl" role="3clFbG">
              <node concept="1rXfSq" id="5ndwm32PTXm" role="2Oq$k0">
                <ref role="37wK5l" node="5ndwm32PTW$" resolve="getTargetNode" />
              </node>
              <node concept="liA8E" id="5ndwm32PTXn" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getNodeId()" resolve="getNodeId" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="5ndwm32PSQV" role="jymVt" />
      <node concept="3Tm1VV" id="5ndwm32PJ1R" role="1B3o_S" />
      <node concept="3uibUv" id="5ndwm32PRf$" role="EKbjA">
        <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
      </node>
    </node>
    <node concept="2tJIrI" id="5ndwm32QGhr" role="jymVt" />
  </node>
  <node concept="312cEu" id="qmkA5fOOmI">
    <property role="3GE5qa" value="treeAdapters" />
    <property role="TrG5h" value="TreeElementAsNode" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="qmkA5fRiag" role="jymVt" />
    <node concept="Wx3nA" id="qmkA5fVP4Z" role="jymVt">
      <property role="TrG5h" value="dummyPropertyAccessor" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="qmkA5fVKTK" role="1tU5fm">
        <ref role="3uigEE" node="qmkA5fP_R1" resolve="TreeElementAsNode.IPropertyAccessor" />
      </node>
      <node concept="3Tmbuc" id="qmkA5fW8BY" role="1B3o_S" />
      <node concept="2ShNRf" id="qmkA5fVMQG" role="33vP2m">
        <node concept="YeOm9" id="qmkA5fVNEe" role="2ShVmc">
          <node concept="1Y3b0j" id="qmkA5fVNEh" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" node="qmkA5fP_R1" resolve="TreeElementAsNode.IPropertyAccessor" />
            <node concept="3Tm1VV" id="qmkA5fVNEi" role="1B3o_S" />
            <node concept="3clFb_" id="qmkA5fVNEj" role="jymVt">
              <property role="TrG5h" value="get" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="qmkA5fVNEk" role="3clF46">
                <property role="TrG5h" value="element" />
                <node concept="3uibUv" id="qmkA5fVNEB" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="17QB3L" id="qmkA5fVNEm" role="3clF45" />
              <node concept="3Tm1VV" id="qmkA5fVNEn" role="1B3o_S" />
              <node concept="3clFbS" id="qmkA5fVNEp" role="3clF47">
                <node concept="3clFbF" id="qmkA5fVOiJ" role="3cqZAp">
                  <node concept="10Nm6u" id="qmkA5fVOiI" role="3clFbG" />
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="qmkA5fVNEr" role="jymVt">
              <property role="TrG5h" value="set" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="qmkA5fVNEs" role="3clF46">
                <property role="TrG5h" value="element" />
                <node concept="3uibUv" id="qmkA5fVNEC" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="37vLTG" id="qmkA5fVNEu" role="3clF46">
                <property role="TrG5h" value="value" />
                <node concept="17QB3L" id="qmkA5fVNEv" role="1tU5fm" />
              </node>
              <node concept="17QB3L" id="qmkA5fVNEw" role="3clF45" />
              <node concept="3Tm1VV" id="qmkA5fVNEx" role="1B3o_S" />
              <node concept="3clFbS" id="qmkA5fVNEz" role="3clF47">
                <node concept="YS8fn" id="qmkA5fVOmU" role="3cqZAp">
                  <node concept="2ShNRf" id="qmkA5fVOq7" role="YScLw">
                    <node concept="1pGfFk" id="qmkA5fVOZl" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="qmkA5fVNEA" role="2Ghqu4">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="qmkA5fVZSO" role="jymVt">
      <property role="TrG5h" value="dummyChildAccessor" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="qmkA5fVVSU" role="1tU5fm">
        <ref role="3uigEE" node="qmkA5fPD_t" resolve="TreeElementAsNode.IChildAccessor" />
      </node>
      <node concept="3Tmbuc" id="qmkA5fW7or" role="1B3o_S" />
      <node concept="2ShNRf" id="qmkA5fVY4s" role="33vP2m">
        <node concept="YeOm9" id="qmkA5fVYAP" role="2ShVmc">
          <node concept="1Y3b0j" id="qmkA5fVYAS" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" node="qmkA5fPD_t" resolve="TreeElementAsNode.IChildAccessor" />
            <node concept="3Tm1VV" id="qmkA5fVYAT" role="1B3o_S" />
            <node concept="3clFb_" id="qmkA5fVYAU" role="jymVt">
              <property role="TrG5h" value="get" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="qmkA5fVYAV" role="3clF46">
                <property role="TrG5h" value="element" />
                <node concept="3uibUv" id="qmkA5fVYB5" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
              <node concept="A3Dl8" id="qmkA5fVYAX" role="3clF45">
                <node concept="3uibUv" id="qmkA5fVYAY" role="A3Ik2">
                  <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                </node>
              </node>
              <node concept="3Tm1VV" id="qmkA5fVYAZ" role="1B3o_S" />
              <node concept="3clFbS" id="qmkA5fVYB1" role="3clF47">
                <node concept="3clFbF" id="qmkA5fVZft" role="3cqZAp">
                  <node concept="2ShNRf" id="qmkA5fVZfr" role="3clFbG">
                    <node concept="kMnCb" id="qmkA5fVZyb" role="2ShVmc">
                      <node concept="3uibUv" id="qmkA5fVZz5" role="kMuH3">
                        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="qmkA5fVYB4" role="2Ghqu4">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="qmkA5fVIqh" role="jymVt" />
    <node concept="312cEg" id="qmkA5fOSRB" role="jymVt">
      <property role="TrG5h" value="element" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="qmkA5fQItb" role="1B3o_S" />
      <node concept="16syzq" id="qmkA5fOTbo" role="1tU5fm">
        <ref role="16sUi3" node="qmkA5fOOnx" resolve="E" />
      </node>
    </node>
    <node concept="2tJIrI" id="qmkA5fOZNq" role="jymVt" />
    <node concept="3clFbW" id="qmkA5fOTCH" role="jymVt">
      <node concept="3cqZAl" id="qmkA5fOTCI" role="3clF45" />
      <node concept="3Tm1VV" id="qmkA5fOTCJ" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fOTCL" role="3clF47">
        <node concept="3clFbF" id="qmkA5fOTCP" role="3cqZAp">
          <node concept="37vLTI" id="qmkA5fOTCR" role="3clFbG">
            <node concept="37vLTw" id="qmkA5fOTCV" role="37vLTJ">
              <ref role="3cqZAo" node="qmkA5fOSRB" resolve="element" />
            </node>
            <node concept="37vLTw" id="qmkA5fOTCW" role="37vLTx">
              <ref role="3cqZAo" node="qmkA5fOTCO" resolve="element1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="qmkA5fOTCO" role="3clF46">
        <property role="TrG5h" value="element1" />
        <node concept="16syzq" id="qmkA5fOTCN" role="1tU5fm">
          <ref role="16sUi3" node="qmkA5fOOnx" resolve="E" />
        </node>
        <node concept="2AHcQZ" id="43OnoQAWYXQ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="qmkA5fOOX4" role="jymVt" />
    <node concept="3clFb_" id="5100827IjFa" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isValid" />
      <node concept="10P_77" id="5100827IjFb" role="3clF45" />
      <node concept="3Tm1VV" id="5100827IjFc" role="1B3o_S" />
      <node concept="3clFbS" id="5100827IjFe" role="3clF47">
        <node concept="3clFbF" id="5100827In2h" role="3cqZAp">
          <node concept="3clFbT" id="5100827In2g" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5100827IjFf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5100827Ile$" role="jymVt" />
    <node concept="3clFb_" id="qmkA5fQ9uX" role="jymVt">
      <property role="TrG5h" value="getPropertyAccessor" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="qmkA5fQfJw" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="qmkA5fQgpO" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="qmkA5fQf6x" role="3clF45">
        <ref role="3uigEE" node="qmkA5fP_R1" resolve="TreeElementAsNode.IPropertyAccessor" />
        <node concept="16syzq" id="qmkA5fQPx9" role="11_B2D">
          <ref role="16sUi3" node="qmkA5fOOnx" resolve="E" />
        </node>
      </node>
      <node concept="3Tmbuc" id="qmkA5fQetv" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fQ9v1" role="3clF47">
        <node concept="3clFbJ" id="qmkA5fVQ8Z" role="3cqZAp">
          <node concept="3clFbS" id="qmkA5fVQ91" role="3clFbx">
            <node concept="3cpWs6" id="qmkA5fVRAM" role="3cqZAp">
              <node concept="37vLTw" id="qmkA5fVSFt" role="3cqZAk">
                <ref role="3cqZAo" node="qmkA5fVP4Z" resolve="dummyPropertyAccessor" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="qmkA5fVQzv" role="3clFbw">
            <node concept="37vLTw" id="qmkA5fVQbJ" role="2Oq$k0">
              <ref role="3cqZAo" node="qmkA5fQfJw" resolve="role" />
            </node>
            <node concept="liA8E" id="qmkA5fVR1C" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="qmkA5fWIVS" role="37wK5m">
                <node concept="355D3s" id="qmkA5fVR7g" role="2Oq$k0">
                  <ref role="355D3t" to="tpck:gw2VY9q" resolve="BaseConcept" />
                  <ref role="355D3u" to="tpck:gOOYnlO" resolve="shortDescription" />
                </node>
                <node concept="liA8E" id="qmkA5fWJij" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="qmkA5fXnrH" role="3cqZAp">
          <node concept="3clFbS" id="qmkA5fXnrI" role="3clFbx">
            <node concept="3cpWs6" id="qmkA5fXnrJ" role="3cqZAp">
              <node concept="37vLTw" id="qmkA5fXnrK" role="3cqZAk">
                <ref role="3cqZAo" node="qmkA5fVP4Z" resolve="dummyPropertyAccessor" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="qmkA5fXnrL" role="3clFbw">
            <node concept="37vLTw" id="qmkA5fXnrM" role="2Oq$k0">
              <ref role="3cqZAo" node="qmkA5fQfJw" resolve="role" />
            </node>
            <node concept="liA8E" id="qmkA5fXnrN" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="qmkA5fXnrO" role="37wK5m">
                <node concept="355D3s" id="qmkA5fXnrP" role="2Oq$k0">
                  <ref role="355D3t" to="tpck:gw2VY9q" resolve="BaseConcept" />
                  <ref role="355D3u" to="tpck:hnGE5uv" resolve="virtualPackage" />
                </node>
                <node concept="liA8E" id="qmkA5fXnrQ" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="qmkA5fVuyx" role="3cqZAp">
          <node concept="10Nm6u" id="qmkA5fVuyw" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="qmkA5fQh7n" role="jymVt">
      <property role="TrG5h" value="getChildAccessor" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="qmkA5fQh7o" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="qmkA5fQh7p" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="qmkA5fQji9" role="3clF45">
        <ref role="3uigEE" node="qmkA5fPD_t" resolve="TreeElementAsNode.IChildAccessor" />
        <node concept="16syzq" id="qmkA5fQPWu" role="11_B2D">
          <ref role="16sUi3" node="qmkA5fOOnx" resolve="E" />
        </node>
      </node>
      <node concept="3Tmbuc" id="qmkA5fQh7r" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fQh7s" role="3clF47">
        <node concept="3clFbJ" id="qmkA5fW1G_" role="3cqZAp">
          <node concept="3clFbS" id="qmkA5fW1GB" role="3clFbx">
            <node concept="3cpWs6" id="qmkA5fW3$W" role="3cqZAp">
              <node concept="37vLTw" id="qmkA5fW4Th" role="3cqZAk">
                <ref role="3cqZAo" node="qmkA5fVZSO" resolve="dummyChildAccessor" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="qmkA5fW275" role="3clFbw">
            <node concept="37vLTw" id="qmkA5fW1Jl" role="2Oq$k0">
              <ref role="3cqZAo" node="qmkA5fQh7o" resolve="role" />
            </node>
            <node concept="liA8E" id="qmkA5fW2_e" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="qmkA5fWJye" role="37wK5m">
                <node concept="359W_D" id="qmkA5fW31p" role="2Oq$k0">
                  <ref role="359W_E" to="tpck:gw2VY9q" resolve="BaseConcept" />
                  <ref role="359W_F" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
                </node>
                <node concept="liA8E" id="qmkA5fWJXi" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="qmkA5fVuvC" role="3cqZAp">
          <node concept="10Nm6u" id="qmkA5fVuvB" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="qmkA5fQhcY" role="jymVt">
      <property role="TrG5h" value="getReferenceAccessor" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="qmkA5fQhcZ" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="qmkA5fQhd0" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="qmkA5fQsZm" role="3clF45">
        <ref role="3uigEE" node="qmkA5fPGEo" resolve="TreeElementAsNode.IReferenceAccessor" />
        <node concept="16syzq" id="qmkA5fQQo2" role="11_B2D">
          <ref role="16sUi3" node="qmkA5fOOnx" resolve="E" />
        </node>
      </node>
      <node concept="3Tmbuc" id="qmkA5fQhd2" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fQhd3" role="3clF47">
        <node concept="3clFbF" id="qmkA5fVusJ" role="3cqZAp">
          <node concept="10Nm6u" id="qmkA5fVusI" role="3clFbG" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="qmkA5fQ8KV" role="jymVt" />
    <node concept="3clFb_" id="qmkA5fQFVR" role="jymVt">
      <property role="TrG5h" value="getElement" />
      <node concept="16syzq" id="qmkA5fQH$l" role="3clF45">
        <ref role="16sUi3" node="qmkA5fOOnx" resolve="E" />
      </node>
      <node concept="3Tm1VV" id="qmkA5fQFVU" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fQFVV" role="3clF47">
        <node concept="3clFbF" id="qmkA5fQIc7" role="3cqZAp">
          <node concept="37vLTw" id="qmkA5fQIc6" role="3clFbG">
            <ref role="3cqZAo" node="qmkA5fOSRB" resolve="element" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="qmkA5fQFj0" role="jymVt" />
    <node concept="3clFb_" id="qmkA5fOOXS" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addChild" />
      <node concept="37vLTG" id="qmkA5fOOXT" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="qmkA5fOOXU" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="qmkA5fOOXV" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="qmkA5fOOXW" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="qmkA5fOOXX" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="qmkA5fOOXY" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
      </node>
      <node concept="3cqZAl" id="qmkA5fOOXZ" role="3clF45" />
      <node concept="3Tm1VV" id="qmkA5fOOY0" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fOOY1" role="3clF47">
        <node concept="YS8fn" id="qmkA5fOOY2" role="3cqZAp">
          <node concept="2ShNRf" id="qmkA5fOOY3" role="YScLw">
            <node concept="1pGfFk" id="qmkA5fOOY4" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fOOY5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="qmkA5fOOY6" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addNewChild" />
      <node concept="37vLTG" id="qmkA5fOOY7" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="qmkA5fOOY8" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="qmkA5fOOY9" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="qmkA5fOOYa" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="qmkA5fOOYb" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="qmkA5fOOYc" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
        </node>
        <node concept="2AHcQZ" id="qmkA5fOOYd" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3uibUv" id="qmkA5fOOYe" role="3clF45">
        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
      </node>
      <node concept="3Tm1VV" id="qmkA5fOOYf" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fOOYg" role="3clF47">
        <node concept="YS8fn" id="qmkA5fOOYh" role="3cqZAp">
          <node concept="2ShNRf" id="qmkA5fOOYi" role="YScLw">
            <node concept="1pGfFk" id="qmkA5fOOYj" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fOOYk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7vWAzuF7Bjm" role="jymVt">
      <property role="TrG5h" value="removeChild" />
      <node concept="37vLTG" id="7vWAzuF7Bjn" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="7vWAzuF7Bjo" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
      </node>
      <node concept="3cqZAl" id="7vWAzuF7Bjp" role="3clF45" />
      <node concept="3Tm1VV" id="7vWAzuF7Bjq" role="1B3o_S" />
      <node concept="3clFbS" id="7vWAzuF7Bjs" role="3clF47">
        <node concept="YS8fn" id="7vWAzuF7D6b" role="3cqZAp">
          <node concept="2ShNRf" id="7vWAzuF7D6c" role="YScLw">
            <node concept="1pGfFk" id="7vWAzuF7D6d" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7vWAzuF7Bjt" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="qmkA5fOOYl" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getAllChildren" />
      <node concept="3uibUv" id="1m9roGBz$lS" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="1m9roGBzAom" role="11_B2D">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
      </node>
      <node concept="3Tm1VV" id="qmkA5fOOYo" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fOOYp" role="3clF47">
        <node concept="3cpWs8" id="1m9roGBzrN$" role="3cqZAp">
          <node concept="3cpWsn" id="1m9roGBzrN_" role="3cpWs9">
            <property role="TrG5h" value="links" />
            <node concept="A3Dl8" id="1m9roGBzsWT" role="1tU5fm">
              <node concept="3uibUv" id="1m9roGBzsWV" role="A3Ik2">
                <ref role="3uigEE" to="jks5:~IChildLink" resolve="IChildLink" />
              </node>
            </node>
            <node concept="2OqwBi" id="1m9roGBzrNA" role="33vP2m">
              <node concept="1rXfSq" id="1m9roGBzrNB" role="2Oq$k0">
                <ref role="37wK5l" to="jks5:~INode.getConcept()" resolve="getConcept" />
              </node>
              <node concept="liA8E" id="1m9roGBzrNC" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~IConcept.getChildLinks()" resolve="getChildLinks" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="qmkA5fQll6" role="3cqZAp">
          <node concept="2OqwBi" id="qmkA5fQohx" role="3clFbG">
            <node concept="2OqwBi" id="qmkA5fQmo_" role="2Oq$k0">
              <node concept="37vLTw" id="1m9roGBzrND" role="2Oq$k0">
                <ref role="3cqZAo" node="1m9roGBzrN_" resolve="links" />
              </node>
              <node concept="3$u5V9" id="qmkA5fQn1e" role="2OqNvi">
                <node concept="1bVj0M" id="qmkA5fQn1g" role="23t8la">
                  <node concept="3clFbS" id="qmkA5fQn1h" role="1bW5cS">
                    <node concept="3clFbF" id="qmkA5fQn8d" role="3cqZAp">
                      <node concept="1rXfSq" id="qmkA5fQn8c" role="3clFbG">
                        <ref role="37wK5l" node="qmkA5fQh7n" resolve="getChildAccessor" />
                        <node concept="2OqwBi" id="qmkA5fQnFU" role="37wK5m">
                          <node concept="37vLTw" id="qmkA5fQnuh" role="2Oq$k0">
                            <ref role="3cqZAo" node="qmkA5fQn1i" resolve="it" />
                          </node>
                          <node concept="liA8E" id="qmkA5fQnYE" role="2OqNvi">
                            <ref role="37wK5l" to="jks5:~IChildLink.getName()" resolve="getName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="qmkA5fQn1i" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="qmkA5fQn1j" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3goQfb" id="qmkA5fQp7C" role="2OqNvi">
              <node concept="1bVj0M" id="qmkA5fQp7E" role="23t8la">
                <node concept="3clFbS" id="qmkA5fQp7F" role="1bW5cS">
                  <node concept="3clFbF" id="qmkA5fQpi_" role="3cqZAp">
                    <node concept="2OqwBi" id="qmkA5fQpxs" role="3clFbG">
                      <node concept="37vLTw" id="qmkA5fQpi$" role="2Oq$k0">
                        <ref role="3cqZAo" node="qmkA5fQp7G" resolve="it" />
                      </node>
                      <node concept="liA8E" id="qmkA5fQpVJ" role="2OqNvi">
                        <ref role="37wK5l" node="qmkA5fPFjP" resolve="get" />
                        <node concept="37vLTw" id="qmkA5fQRBa" role="37wK5m">
                          <ref role="3cqZAo" node="qmkA5fOSRB" resolve="element" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="qmkA5fQp7G" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="qmkA5fQp7H" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fOOYt" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="qmkA5fOOYu" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getChildren" />
      <node concept="37vLTG" id="qmkA5fOOYv" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="qmkA5fOOYw" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="1m9roGBzuNa" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="1m9roGBzwM$" role="11_B2D">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
      </node>
      <node concept="3Tm1VV" id="qmkA5fOOYz" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fOOY$" role="3clF47">
        <node concept="3cpWs8" id="qmkA5fPocr" role="3cqZAp">
          <node concept="3cpWsn" id="qmkA5fPocs" role="3cpWs9">
            <property role="TrG5h" value="accessor" />
            <node concept="3uibUv" id="qmkA5fPocj" role="1tU5fm">
              <ref role="3uigEE" node="qmkA5fPD_t" resolve="TreeElementAsNode.IChildAccessor" />
            </node>
            <node concept="1rXfSq" id="qmkA5fQqE8" role="33vP2m">
              <ref role="37wK5l" node="qmkA5fQh7n" resolve="getChildAccessor" />
              <node concept="37vLTw" id="qmkA5fQqX_" role="37wK5m">
                <ref role="3cqZAo" node="qmkA5fOOYv" resolve="role" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="qmkA5fPoAN" role="3cqZAp">
          <node concept="3clFbS" id="qmkA5fPoAP" role="3clFbx">
            <node concept="YS8fn" id="qmkA5fPp3C" role="3cqZAp">
              <node concept="2ShNRf" id="qmkA5fPp7d" role="YScLw">
                <node concept="1pGfFk" id="qmkA5fPpEk" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="3cpWs3" id="qmkA5fPqAa" role="37wK5m">
                    <node concept="Xl_RD" id="qmkA5fPqlV" role="3uHU7w">
                      <property role="Xl_RC" value="'" />
                    </node>
                    <node concept="3cpWs3" id="qmkA5fPqlN" role="3uHU7B">
                      <node concept="Xl_RD" id="qmkA5fPqlT" role="3uHU7B">
                        <property role="Xl_RC" value="No accessor defined for child '" />
                      </node>
                      <node concept="37vLTw" id="qmkA5fPqSp" role="3uHU7w">
                        <ref role="3cqZAo" node="qmkA5fOOYv" resolve="role" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="qmkA5fPoUp" role="3clFbw">
            <node concept="10Nm6u" id="qmkA5fPoZP" role="3uHU7w" />
            <node concept="37vLTw" id="qmkA5fPoJo" role="3uHU7B">
              <ref role="3cqZAo" node="qmkA5fPocs" resolve="accessor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1m9roGBzy3O" role="3cqZAp">
          <node concept="2OqwBi" id="qmkA5fPrqd" role="3clFbG">
            <node concept="37vLTw" id="qmkA5fPocw" role="2Oq$k0">
              <ref role="3cqZAo" node="qmkA5fPocs" resolve="accessor" />
            </node>
            <node concept="liA8E" id="qmkA5fPrA$" role="2OqNvi">
              <ref role="37wK5l" node="qmkA5fPFjP" resolve="get" />
              <node concept="37vLTw" id="qmkA5fQQFN" role="37wK5m">
                <ref role="3cqZAo" node="qmkA5fOSRB" resolve="element" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fOOYC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="qmkA5fOOYT" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPropertyValue" />
      <node concept="37vLTG" id="qmkA5fOOYU" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="qmkA5fOOYV" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="qmkA5fOOYW" role="3clF45" />
      <node concept="3Tm1VV" id="qmkA5fOOYX" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fOOYY" role="3clF47">
        <node concept="3cpWs8" id="qmkA5fPRL$" role="3cqZAp">
          <node concept="3cpWsn" id="qmkA5fPRL_" role="3cpWs9">
            <property role="TrG5h" value="accessor" />
            <node concept="3uibUv" id="qmkA5fPSVb" role="1tU5fm">
              <ref role="3uigEE" node="qmkA5fP_R1" resolve="TreeElementAsNode.IPropertyAccessor" />
            </node>
            <node concept="1rXfSq" id="qmkA5fQrzd" role="33vP2m">
              <ref role="37wK5l" node="qmkA5fQ9uX" resolve="getPropertyAccessor" />
              <node concept="37vLTw" id="qmkA5fQrQ2" role="37wK5m">
                <ref role="3cqZAo" node="qmkA5fOOYU" resolve="role" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="qmkA5fPRLE" role="3cqZAp">
          <node concept="3clFbS" id="qmkA5fPRLF" role="3clFbx">
            <node concept="YS8fn" id="qmkA5fPRLG" role="3cqZAp">
              <node concept="2ShNRf" id="qmkA5fPRLH" role="YScLw">
                <node concept="1pGfFk" id="qmkA5fPRLI" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="3cpWs3" id="qmkA5fPRLJ" role="37wK5m">
                    <node concept="Xl_RD" id="qmkA5fPRLK" role="3uHU7w">
                      <property role="Xl_RC" value="'" />
                    </node>
                    <node concept="3cpWs3" id="qmkA5fPRLL" role="3uHU7B">
                      <node concept="Xl_RD" id="qmkA5fPRLM" role="3uHU7B">
                        <property role="Xl_RC" value="No accessor defined for property '" />
                      </node>
                      <node concept="37vLTw" id="qmkA5fPRLN" role="3uHU7w">
                        <ref role="3cqZAo" node="qmkA5fOOYU" resolve="role" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="qmkA5fPRLO" role="3clFbw">
            <node concept="10Nm6u" id="qmkA5fPRLP" role="3uHU7w" />
            <node concept="37vLTw" id="qmkA5fPRLQ" role="3uHU7B">
              <ref role="3cqZAo" node="qmkA5fPRL_" resolve="accessor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="qmkA5fPRLR" role="3cqZAp">
          <node concept="2OqwBi" id="qmkA5fPRLS" role="3clFbG">
            <node concept="37vLTw" id="qmkA5fPRLT" role="2Oq$k0">
              <ref role="3cqZAo" node="qmkA5fPRL_" resolve="accessor" />
            </node>
            <node concept="liA8E" id="qmkA5fPRLU" role="2OqNvi">
              <ref role="37wK5l" node="qmkA5fPCdI" resolve="get" />
              <node concept="37vLTw" id="qmkA5fQR7G" role="37wK5m">
                <ref role="3cqZAo" node="qmkA5fOSRB" resolve="element" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fOOZ2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="qmkA5fOOZ3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getReference" />
      <node concept="3Tm1VV" id="qmkA5fOOZ4" role="1B3o_S" />
      <node concept="3uibUv" id="qmkA5fOOZ5" role="3clF45">
        <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
      </node>
      <node concept="3clFbS" id="qmkA5fOOZ6" role="3clF47">
        <node concept="3clFbF" id="qmkA5fUVNg" role="3cqZAp">
          <node concept="Xjq3P" id="qmkA5fUVNf" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fOOZa" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5wi3nvJXmV2" role="jymVt">
      <property role="TrG5h" value="resolveNode" />
      <node concept="37vLTG" id="5wi3nvJXmV3" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="5wi3nvJXmV4" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INodeResolveContext" resolve="INodeResolveContext" />
        </node>
      </node>
      <node concept="3uibUv" id="5wi3nvJXmV5" role="3clF45">
        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
      </node>
      <node concept="3Tm1VV" id="5wi3nvJXmV6" role="1B3o_S" />
      <node concept="2AHcQZ" id="5wi3nvJXmV8" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="5wi3nvJXmV9" role="3clF47">
        <node concept="3clFbF" id="5wi3nvJXoR5" role="3cqZAp">
          <node concept="Xjq3P" id="5wi3nvJXoR2" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5wi3nvJXmVa" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="qmkA5fOOZb" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getReferenceTarget" />
      <node concept="37vLTG" id="qmkA5fOOZc" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="qmkA5fOOZd" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="qmkA5fOOZe" role="3clF45">
        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
      </node>
      <node concept="3Tm1VV" id="qmkA5fOOZf" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fOOZg" role="3clF47">
        <node concept="3cpWs8" id="qmkA5fPUXd" role="3cqZAp">
          <node concept="3cpWsn" id="qmkA5fPUXe" role="3cpWs9">
            <property role="TrG5h" value="accessor" />
            <node concept="3uibUv" id="qmkA5fPVCQ" role="1tU5fm">
              <ref role="3uigEE" node="qmkA5fPGEo" resolve="TreeElementAsNode.IReferenceAccessor" />
            </node>
            <node concept="1rXfSq" id="qmkA5fQsri" role="33vP2m">
              <ref role="37wK5l" node="qmkA5fQhcY" resolve="getReferenceAccessor" />
              <node concept="37vLTw" id="qmkA5fQsI7" role="37wK5m">
                <ref role="3cqZAo" node="qmkA5fOOZc" resolve="role" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="qmkA5fPUXj" role="3cqZAp">
          <node concept="3clFbS" id="qmkA5fPUXk" role="3clFbx">
            <node concept="YS8fn" id="qmkA5fPUXl" role="3cqZAp">
              <node concept="2ShNRf" id="qmkA5fPUXm" role="YScLw">
                <node concept="1pGfFk" id="qmkA5fPUXn" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="3cpWs3" id="qmkA5fPUXo" role="37wK5m">
                    <node concept="Xl_RD" id="qmkA5fPUXp" role="3uHU7w">
                      <property role="Xl_RC" value="'" />
                    </node>
                    <node concept="3cpWs3" id="qmkA5fPUXq" role="3uHU7B">
                      <node concept="Xl_RD" id="qmkA5fPUXr" role="3uHU7B">
                        <property role="Xl_RC" value="No accessor defined for reference '" />
                      </node>
                      <node concept="37vLTw" id="qmkA5fPUXs" role="3uHU7w">
                        <ref role="3cqZAo" node="qmkA5fOOZc" resolve="role" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="qmkA5fPUXt" role="3clFbw">
            <node concept="10Nm6u" id="qmkA5fPUXu" role="3uHU7w" />
            <node concept="37vLTw" id="qmkA5fPUXv" role="3uHU7B">
              <ref role="3cqZAo" node="qmkA5fPUXe" resolve="accessor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="qmkA5fPUXw" role="3cqZAp">
          <node concept="2OqwBi" id="qmkA5fPUXx" role="3clFbG">
            <node concept="37vLTw" id="qmkA5fPUXy" role="2Oq$k0">
              <ref role="3cqZAo" node="qmkA5fPUXe" resolve="accessor" />
            </node>
            <node concept="liA8E" id="qmkA5fPUXz" role="2OqNvi">
              <ref role="37wK5l" node="qmkA5fPGEp" resolve="get" />
              <node concept="37vLTw" id="qmkA5fQP9U" role="37wK5m">
                <ref role="3cqZAo" node="qmkA5fOSRB" resolve="element" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fOOZk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="qmkA5fPXWS" role="jymVt" />
    <node concept="3clFb_" id="qmkA5fOOZt" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setPropertyValue" />
      <node concept="37vLTG" id="qmkA5fOOZu" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="qmkA5fOOZv" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="qmkA5fOOZw" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="17QB3L" id="qmkA5fOOZx" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="qmkA5fOOZy" role="3clF45" />
      <node concept="3Tm1VV" id="qmkA5fOOZz" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fOOZ$" role="3clF47">
        <node concept="YS8fn" id="qmkA5fOOZ_" role="3cqZAp">
          <node concept="2ShNRf" id="qmkA5fOOZA" role="YScLw">
            <node concept="1pGfFk" id="qmkA5fOOZB" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fOOZC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="qmkA5fOOZD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setReferenceTarget" />
      <node concept="37vLTG" id="qmkA5fOOZE" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="qmkA5fOOZF" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="qmkA5fOOZG" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="qmkA5fOOZH" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
      </node>
      <node concept="3cqZAl" id="qmkA5fOOZI" role="3clF45" />
      <node concept="3Tm1VV" id="qmkA5fOOZJ" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fOOZK" role="3clF47">
        <node concept="YS8fn" id="qmkA5fOOZL" role="3cqZAp">
          <node concept="2ShNRf" id="qmkA5fOOZM" role="YScLw">
            <node concept="1pGfFk" id="qmkA5fOOZN" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fOOZO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="qmkA5fOOZP" role="jymVt" />
    <node concept="3Tm1VV" id="qmkA5fOOmJ" role="1B3o_S" />
    <node concept="16euLQ" id="qmkA5fOOnx" role="16eVyc">
      <property role="TrG5h" value="E" />
    </node>
    <node concept="3uibUv" id="qmkA5fOOnV" role="EKbjA">
      <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
    </node>
    <node concept="3uibUv" id="qmkA5fUUYF" role="EKbjA">
      <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
    </node>
    <node concept="3clFb_" id="qmkA5fQ5ch" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="qmkA5fQ5ci" role="3clF45" />
      <node concept="3Tm1VV" id="qmkA5fQ5cj" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fQ5ck" role="3clF47">
        <node concept="3clFbJ" id="qmkA5fQ5cl" role="3cqZAp">
          <node concept="3clFbS" id="qmkA5fQ5cm" role="3clFbx">
            <node concept="3cpWs6" id="qmkA5fQ5cn" role="3cqZAp">
              <node concept="3clFbT" id="qmkA5fQ5co" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="qmkA5fQ5cp" role="3clFbw">
            <node concept="Xjq3P" id="qmkA5fQ5cg" role="3uHU7B" />
            <node concept="37vLTw" id="qmkA5fQ5cq" role="3uHU7w">
              <ref role="3cqZAo" node="qmkA5fQ5cL" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="qmkA5fQ5cr" role="3cqZAp">
          <node concept="3clFbS" id="qmkA5fQ5cs" role="3clFbx">
            <node concept="3cpWs6" id="qmkA5fQ5ct" role="3cqZAp">
              <node concept="3clFbT" id="qmkA5fQ5cu" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="qmkA5fQ5cv" role="3clFbw">
            <node concept="3clFbC" id="qmkA5fQ5cw" role="3uHU7B">
              <node concept="37vLTw" id="qmkA5fQ5cx" role="3uHU7B">
                <ref role="3cqZAo" node="qmkA5fQ5cL" resolve="o" />
              </node>
              <node concept="10Nm6u" id="qmkA5fQ5cy" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="qmkA5fQ5cz" role="3uHU7w">
              <node concept="2OqwBi" id="qmkA5fQ5c$" role="3uHU7B">
                <node concept="Xjq3P" id="qmkA5fQ5c_" role="2Oq$k0" />
                <node concept="liA8E" id="qmkA5fQ5cA" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="2OqwBi" id="qmkA5fQ5cB" role="3uHU7w">
                <node concept="37vLTw" id="qmkA5fQ5cC" role="2Oq$k0">
                  <ref role="3cqZAo" node="qmkA5fQ5cL" resolve="o" />
                </node>
                <node concept="liA8E" id="qmkA5fQ5cD" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="qmkA5fQ5cE" role="3cqZAp" />
        <node concept="3cpWs8" id="qmkA5fQ5cF" role="3cqZAp">
          <node concept="3cpWsn" id="qmkA5fQ5cG" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="qmkA5fQ5cH" role="1tU5fm">
              <ref role="3uigEE" node="qmkA5fOOmI" resolve="TreeElementAsNode" />
            </node>
            <node concept="10QFUN" id="qmkA5fQ5cI" role="33vP2m">
              <node concept="3uibUv" id="qmkA5fQ5cJ" role="10QFUM">
                <ref role="3uigEE" node="qmkA5fOOmI" resolve="TreeElementAsNode" />
              </node>
              <node concept="37vLTw" id="qmkA5fQ5cK" role="10QFUP">
                <ref role="3cqZAo" node="qmkA5fQ5cL" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="qmkA5fQ5cV" role="3cqZAp">
          <node concept="3clFbS" id="qmkA5fQ5cW" role="3clFbx">
            <node concept="3cpWs6" id="qmkA5fQ5cX" role="3cqZAp">
              <node concept="3clFbT" id="qmkA5fQ5cY" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3K4zz7" id="qmkA5fQ5cZ" role="3clFbw">
            <node concept="3fqX7Q" id="qmkA5fQ5d0" role="3K4E3e">
              <node concept="2OqwBi" id="qmkA5fQ5d1" role="3fr31v">
                <node concept="liA8E" id="qmkA5fQ5d2" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="qmkA5fQ5d3" role="37wK5m">
                    <node concept="37vLTw" id="qmkA5fQ5cO" role="2Oq$k0">
                      <ref role="3cqZAo" node="qmkA5fQ5cG" resolve="that" />
                    </node>
                    <node concept="2OwXpG" id="qmkA5fQ5cR" role="2OqNvi">
                      <ref role="2Oxat5" node="qmkA5fOSRB" resolve="element" />
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="qmkA5fQ5d4" role="2Oq$k0">
                  <node concept="10QFUN" id="qmkA5fQ5d5" role="1eOMHV">
                    <node concept="3uibUv" id="qmkA5fQ5d6" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="37vLTw" id="qmkA5fQ5cS" role="10QFUP">
                      <ref role="3cqZAo" node="qmkA5fOSRB" resolve="element" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="qmkA5fQ5d7" role="3K4Cdx">
              <node concept="10Nm6u" id="qmkA5fQ5d8" role="3uHU7w" />
              <node concept="37vLTw" id="qmkA5fQ5cT" role="3uHU7B">
                <ref role="3cqZAo" node="qmkA5fOSRB" resolve="element" />
              </node>
            </node>
            <node concept="3y3z36" id="qmkA5fQ5d9" role="3K4GZi">
              <node concept="10Nm6u" id="qmkA5fQ5da" role="3uHU7w" />
              <node concept="2OqwBi" id="qmkA5fQ5db" role="3uHU7B">
                <node concept="37vLTw" id="qmkA5fQ5dc" role="2Oq$k0">
                  <ref role="3cqZAo" node="qmkA5fQ5cG" resolve="that" />
                </node>
                <node concept="2OwXpG" id="qmkA5fQ5cU" role="2OqNvi">
                  <ref role="2Oxat5" node="qmkA5fOSRB" resolve="element" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="qmkA5fQ5dd" role="3cqZAp" />
        <node concept="3clFbF" id="qmkA5fQ5de" role="3cqZAp">
          <node concept="3clFbT" id="qmkA5fQ5df" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="qmkA5fQ5cL" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="qmkA5fQ5cM" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fQ5cN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="qmkA5fQ5dg" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="qmkA5fQ5dh" role="3clF45" />
      <node concept="3Tm1VV" id="qmkA5fQ5di" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fQ5dj" role="3clF47">
        <node concept="3cpWs8" id="qmkA5fQ5dl" role="3cqZAp">
          <node concept="3cpWsn" id="qmkA5fQ5dm" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Oyi0" id="qmkA5fQ5dn" role="1tU5fm" />
            <node concept="3cmrfG" id="qmkA5fQ5do" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="qmkA5fQ5dy" role="3cqZAp">
          <node concept="37vLTI" id="qmkA5fQ5dz" role="3clFbG">
            <node concept="3cpWs3" id="qmkA5fQ5d$" role="37vLTx">
              <node concept="1eOMI4" id="qmkA5fQ5d_" role="3uHU7w">
                <node concept="3K4zz7" id="qmkA5fQ5dA" role="1eOMHV">
                  <node concept="3cmrfG" id="qmkA5fQ5dB" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3y3z36" id="qmkA5fQ5dC" role="3K4Cdx">
                    <node concept="10Nm6u" id="qmkA5fQ5dD" role="3uHU7w" />
                    <node concept="37vLTw" id="qmkA5fQ5dw" role="3uHU7B">
                      <ref role="3cqZAo" node="qmkA5fOSRB" resolve="element" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="qmkA5fQ5dE" role="3K4E3e">
                    <node concept="1eOMI4" id="qmkA5fQ5dF" role="2Oq$k0">
                      <node concept="10QFUN" id="qmkA5fQ5dG" role="1eOMHV">
                        <node concept="3uibUv" id="qmkA5fQ5dH" role="10QFUM">
                          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                        </node>
                        <node concept="37vLTw" id="qmkA5fQ5dx" role="10QFUP">
                          <ref role="3cqZAo" node="qmkA5fOSRB" resolve="element" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="qmkA5fQ5dI" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17qRlL" id="qmkA5fQ5du" role="3uHU7B">
                <node concept="3cmrfG" id="qmkA5fQ5dv" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="qmkA5fQ5dp" role="3uHU7w">
                  <ref role="3cqZAo" node="qmkA5fQ5dm" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="qmkA5fQ5dJ" role="37vLTJ">
              <ref role="3cqZAo" node="qmkA5fQ5dm" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="qmkA5fQ5dK" role="3cqZAp">
          <node concept="37vLTw" id="qmkA5fQ5dL" role="3clFbG">
            <ref role="3cqZAo" node="qmkA5fQ5dm" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fQ5dk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="qmkA5fQOsC" role="jymVt" />
    <node concept="3HP615" id="qmkA5fP_R1" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="IPropertyAccessor" />
      <node concept="3clFb_" id="qmkA5fPCdI" role="jymVt">
        <property role="TrG5h" value="get" />
        <node concept="37vLTG" id="qmkA5fQN9v" role="3clF46">
          <property role="TrG5h" value="element" />
          <node concept="16syzq" id="qmkA5fQN9w" role="1tU5fm">
            <ref role="16sUi3" node="qmkA5fQLtY" resolve="E" />
          </node>
        </node>
        <node concept="17QB3L" id="qmkA5fPCdJ" role="3clF45" />
        <node concept="3Tm1VV" id="qmkA5fPCdK" role="1B3o_S" />
        <node concept="3clFbS" id="qmkA5fPCdL" role="3clF47" />
      </node>
      <node concept="3clFb_" id="qmkA5fPCdM" role="jymVt">
        <property role="TrG5h" value="set" />
        <node concept="37vLTG" id="qmkA5fQNmV" role="3clF46">
          <property role="TrG5h" value="element" />
          <node concept="16syzq" id="qmkA5fQNmW" role="1tU5fm">
            <ref role="16sUi3" node="qmkA5fQLtY" resolve="E" />
          </node>
        </node>
        <node concept="37vLTG" id="qmkA5fPCdN" role="3clF46">
          <property role="TrG5h" value="value" />
          <node concept="17QB3L" id="qmkA5fPCdO" role="1tU5fm" />
        </node>
        <node concept="17QB3L" id="qmkA5fPCdP" role="3clF45" />
        <node concept="3Tm1VV" id="qmkA5fPCdQ" role="1B3o_S" />
        <node concept="3clFbS" id="qmkA5fPCdR" role="3clF47" />
      </node>
      <node concept="3Tm1VV" id="qmkA5fP_R2" role="1B3o_S" />
      <node concept="16euLQ" id="qmkA5fQLtY" role="16eVyc">
        <property role="TrG5h" value="E" />
      </node>
    </node>
    <node concept="3HP615" id="qmkA5fPD_t" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="IChildAccessor" />
      <node concept="3clFb_" id="qmkA5fPFjP" role="jymVt">
        <property role="TrG5h" value="get" />
        <node concept="37vLTG" id="qmkA5fQMxI" role="3clF46">
          <property role="TrG5h" value="element" />
          <node concept="16syzq" id="qmkA5fQMN1" role="1tU5fm">
            <ref role="16sUi3" node="qmkA5fQLKo" resolve="E" />
          </node>
        </node>
        <node concept="A3Dl8" id="qmkA5fPFjQ" role="3clF45">
          <node concept="3uibUv" id="qmkA5fPFjR" role="A3Ik2">
            <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
          </node>
        </node>
        <node concept="3Tm1VV" id="qmkA5fPFjS" role="1B3o_S" />
        <node concept="3clFbS" id="qmkA5fPFjT" role="3clF47" />
      </node>
      <node concept="3Tm1VV" id="qmkA5fPD_u" role="1B3o_S" />
      <node concept="16euLQ" id="qmkA5fQLKo" role="16eVyc">
        <property role="TrG5h" value="E" />
      </node>
    </node>
    <node concept="3HP615" id="qmkA5fPGEo" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="TrG5h" value="IReferenceAccessor" />
      <node concept="3clFb_" id="qmkA5fPGEp" role="jymVt">
        <property role="TrG5h" value="get" />
        <node concept="37vLTG" id="qmkA5fQNsb" role="3clF46">
          <property role="TrG5h" value="element" />
          <node concept="16syzq" id="qmkA5fQNsc" role="1tU5fm">
            <ref role="16sUi3" node="qmkA5fQMfn" resolve="E" />
          </node>
        </node>
        <node concept="3uibUv" id="qmkA5fPH$G" role="3clF45">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
        <node concept="3Tm1VV" id="qmkA5fPGEs" role="1B3o_S" />
        <node concept="3clFbS" id="qmkA5fPGEt" role="3clF47" />
      </node>
      <node concept="3clFb_" id="qmkA5fPHNC" role="jymVt">
        <property role="TrG5h" value="set" />
        <node concept="37vLTG" id="qmkA5fQNBb" role="3clF46">
          <property role="TrG5h" value="element" />
          <node concept="16syzq" id="qmkA5fQNBc" role="1tU5fm">
            <ref role="16sUi3" node="qmkA5fQMfn" resolve="E" />
          </node>
        </node>
        <node concept="37vLTG" id="qmkA5fPIae" role="3clF46">
          <property role="TrG5h" value="target" />
          <node concept="3uibUv" id="qmkA5fPIcw" role="1tU5fm">
            <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
          </node>
        </node>
        <node concept="3uibUv" id="qmkA5fPHND" role="3clF45">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
        <node concept="3Tm1VV" id="qmkA5fPHNE" role="1B3o_S" />
        <node concept="3clFbS" id="qmkA5fPHNF" role="3clF47" />
      </node>
      <node concept="3Tm1VV" id="qmkA5fPGEu" role="1B3o_S" />
      <node concept="16euLQ" id="qmkA5fQMfn" role="16eVyc">
        <property role="TrG5h" value="E" />
      </node>
    </node>
    <node concept="2tJIrI" id="2fAW4kXeit" role="jymVt" />
    <node concept="3clFb_" id="2fAW4kXcm_" role="jymVt">
      <property role="TrG5h" value="toString" />
      <node concept="17QB3L" id="2fAW4kXcmA" role="3clF45" />
      <node concept="3Tm1VV" id="2fAW4kXcmB" role="1B3o_S" />
      <node concept="3clFbS" id="2fAW4kXcmC" role="3clF47">
        <node concept="3clFbF" id="2fAW4kXcmD" role="3cqZAp">
          <node concept="3cpWs3" id="2fAW4kXcmz" role="3clFbG">
            <node concept="Xl_RD" id="2fAW4kXcm$" role="3uHU7w">
              <property role="Xl_RC" value="]" />
            </node>
            <node concept="3cpWs3" id="2fAW4kXcmy" role="3uHU7B">
              <node concept="37vLTw" id="2fAW4kXcmu" role="3uHU7w">
                <ref role="3cqZAo" node="qmkA5fOSRB" resolve="element" />
              </node>
              <node concept="3cpWs3" id="2fAW4kXg1O" role="3uHU7B">
                <node concept="2OqwBi" id="2fAW4kXhkf" role="3uHU7B">
                  <node concept="1rXfSq" id="2fAW4kXgd_" role="2Oq$k0">
                    <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                  </node>
                  <node concept="liA8E" id="2fAW4kXjmR" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
                  </node>
                </node>
                <node concept="Xl_RD" id="2fAW4kXcmx" role="3uHU7w">
                  <property role="Xl_RC" value="[" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2fAW4kXcmE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="qmkA5fOvE2">
    <property role="TrG5h" value="SRepositoryAsNode" />
    <property role="3GE5qa" value="treeAdapters" />
    <node concept="2tJIrI" id="qmkA5fQzls" role="jymVt" />
    <node concept="2YIFZL" id="5nA3diwVeVs" role="jymVt">
      <property role="TrG5h" value="isVisible" />
      <node concept="3clFbS" id="5nA3diwVbt3" role="3clF47">
        <node concept="3cpWs6" id="2fAW4kYGjz" role="3cqZAp">
          <node concept="3clFbT" id="2fAW4kYGpR" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="10P_77" id="5nA3diwVf_l" role="3clF45" />
      <node concept="3Tm1VV" id="5nA3diwVbt2" role="1B3o_S" />
      <node concept="37vLTG" id="5nA3diwVfS1" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="5nA3diwVfS0" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5nA3diwVlyV" role="jymVt" />
    <node concept="Wx3nA" id="qmkA5fQTJs" role="jymVt">
      <property role="TrG5h" value="modulesAccessor" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="qmkA5fQ_jr" role="1tU5fm">
        <ref role="3uigEE" node="qmkA5fPD_t" resolve="TreeElementAsNode.IChildAccessor" />
        <node concept="3uibUv" id="qmkA5fQSWC" role="11_B2D">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3Tm6S6" id="qmkA5fQ_3m" role="1B3o_S" />
      <node concept="2ShNRf" id="qmkA5fQAyD" role="33vP2m">
        <node concept="YeOm9" id="qmkA5fQB07" role="2ShVmc">
          <node concept="1Y3b0j" id="qmkA5fQB0a" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="qmkA5fPD_t" resolve="TreeElementAsNode.IChildAccessor" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="qmkA5fQB0b" role="1B3o_S" />
            <node concept="3clFb_" id="qmkA5fQB0c" role="jymVt">
              <property role="TrG5h" value="get" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="qmkA5fQW0Q" role="3clF46">
                <property role="TrG5h" value="repository" />
                <node concept="3uibUv" id="qmkA5fQWnB" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                </node>
              </node>
              <node concept="A3Dl8" id="qmkA5fQB0d" role="3clF45">
                <node concept="3uibUv" id="qmkA5fQB0e" role="A3Ik2">
                  <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                </node>
              </node>
              <node concept="3Tm1VV" id="qmkA5fQB0f" role="1B3o_S" />
              <node concept="3clFbS" id="qmkA5fQB0h" role="3clF47">
                <node concept="3cpWs8" id="qmkA5fQXvq" role="3cqZAp">
                  <node concept="3cpWsn" id="qmkA5fQXvr" role="3cpWs9">
                    <property role="TrG5h" value="modules" />
                    <node concept="A3Dl8" id="qmkA5fQXDm" role="1tU5fm">
                      <node concept="3uibUv" id="qmkA5fQXDo" role="A3Ik2">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="qmkA5fQXvs" role="33vP2m">
                      <node concept="37vLTw" id="qmkA5fQXvt" role="2Oq$k0">
                        <ref role="3cqZAo" node="qmkA5fQW0Q" resolve="repository" />
                      </node>
                      <node concept="liA8E" id="qmkA5fQXvu" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SRepository.getModules()" resolve="getModules" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="qmkA5fQC2k" role="3cqZAp">
                  <node concept="2OqwBi" id="qmkA5fQXUm" role="3clFbG">
                    <node concept="3$u5V9" id="qmkA5fQYed" role="2OqNvi">
                      <node concept="1bVj0M" id="qmkA5fQYef" role="23t8la">
                        <node concept="3clFbS" id="qmkA5fQYeg" role="1bW5cS">
                          <node concept="3clFbF" id="qmkA5fQYl4" role="3cqZAp">
                            <node concept="2ShNRf" id="qmkA5fQYl2" role="3clFbG">
                              <node concept="1pGfFk" id="qmkA5fQYV5" role="2ShVmc">
                                <ref role="37wK5l" node="qmkA5fOXYb" resolve="SModuleAsNode" />
                                <node concept="37vLTw" id="qmkA5fQZ2g" role="37wK5m">
                                  <ref role="3cqZAo" node="qmkA5fQYeh" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="qmkA5fQYeh" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="qmkA5fQYei" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="78D6RWLiSc9" role="2Oq$k0">
                      <node concept="2OqwBi" id="3vsFnFV70HR" role="2Oq$k0">
                        <node concept="37vLTw" id="qmkA5fQXvv" role="2Oq$k0">
                          <ref role="3cqZAo" node="qmkA5fQXvr" resolve="modules" />
                        </node>
                        <node concept="3zZkjj" id="3vsFnFV716m" role="2OqNvi">
                          <node concept="1bVj0M" id="3vsFnFV716o" role="23t8la">
                            <node concept="3clFbS" id="3vsFnFV716p" role="1bW5cS">
                              <node concept="3clFbF" id="3vsFnFV71Wc" role="3cqZAp">
                                <node concept="1rXfSq" id="5nA3diwViKB" role="3clFbG">
                                  <ref role="37wK5l" node="5nA3diwVeVs" resolve="isVisible" />
                                  <node concept="37vLTw" id="5nA3diwVjfi" role="37wK5m">
                                    <ref role="3cqZAo" node="3vsFnFV716q" resolve="it" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="3vsFnFV716q" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="3vsFnFV716r" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3zZkjj" id="78D6RWLj3Lx" role="2OqNvi">
                        <node concept="1bVj0M" id="78D6RWLj3Lz" role="23t8la">
                          <node concept="3clFbS" id="78D6RWLj3L$" role="1bW5cS">
                            <node concept="3clFbF" id="78D6RWLj4x_" role="3cqZAp">
                              <node concept="3fqX7Q" id="78D6RWLj5Qt" role="3clFbG">
                                <node concept="2YIFZM" id="78D6RWLj5Qv" role="3fr31v">
                                  <ref role="37wK5l" node="78D6RWLixiq" resolve="isTempModule" />
                                  <ref role="1Pybhc" node="qmkA5fOuCN" resolve="SModuleAsNode" />
                                  <node concept="37vLTw" id="78D6RWLj5Qw" role="37wK5m">
                                    <ref role="3cqZAo" node="78D6RWLj3L_" resolve="it" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="78D6RWLj3L_" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="78D6RWLj3LA" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="qmkA5fQVGM" role="2Ghqu4">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="78D6RWLi7M8" role="jymVt">
      <property role="TrG5h" value="tempModulesAccessor" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="78D6RWLi7M9" role="1tU5fm">
        <ref role="3uigEE" node="qmkA5fPD_t" resolve="TreeElementAsNode.IChildAccessor" />
        <node concept="3uibUv" id="78D6RWLi7Ma" role="11_B2D">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3Tm6S6" id="78D6RWLi7Mb" role="1B3o_S" />
      <node concept="2ShNRf" id="78D6RWLi7Mc" role="33vP2m">
        <node concept="YeOm9" id="78D6RWLi7Md" role="2ShVmc">
          <node concept="1Y3b0j" id="78D6RWLi7Me" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" node="qmkA5fPD_t" resolve="TreeElementAsNode.IChildAccessor" />
            <node concept="3Tm1VV" id="78D6RWLi7Mf" role="1B3o_S" />
            <node concept="3clFb_" id="78D6RWLi7Mg" role="jymVt">
              <property role="TrG5h" value="get" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="78D6RWLi7Mh" role="3clF46">
                <property role="TrG5h" value="repository" />
                <node concept="3uibUv" id="78D6RWLi7Mi" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                </node>
              </node>
              <node concept="A3Dl8" id="78D6RWLi7Mj" role="3clF45">
                <node concept="3uibUv" id="78D6RWLi7Mk" role="A3Ik2">
                  <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                </node>
              </node>
              <node concept="3Tm1VV" id="78D6RWLi7Ml" role="1B3o_S" />
              <node concept="3clFbS" id="78D6RWLi7Mm" role="3clF47">
                <node concept="3cpWs8" id="78D6RWLi7Mn" role="3cqZAp">
                  <node concept="3cpWsn" id="78D6RWLi7Mo" role="3cpWs9">
                    <property role="TrG5h" value="modules" />
                    <node concept="A3Dl8" id="78D6RWLi7Mp" role="1tU5fm">
                      <node concept="3uibUv" id="78D6RWLi7Mq" role="A3Ik2">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="78D6RWLi7Mr" role="33vP2m">
                      <node concept="37vLTw" id="78D6RWLi7Ms" role="2Oq$k0">
                        <ref role="3cqZAo" node="78D6RWLi7Mh" resolve="repository" />
                      </node>
                      <node concept="liA8E" id="78D6RWLi7Mt" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SRepository.getModules()" resolve="getModules" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="78D6RWLi7Mu" role="3cqZAp">
                  <node concept="2OqwBi" id="78D6RWLi7Mv" role="3clFbG">
                    <node concept="2OqwBi" id="78D6RWLi7Mw" role="2Oq$k0">
                      <node concept="2OqwBi" id="2fAW4kZYvD" role="2Oq$k0">
                        <node concept="37vLTw" id="78D6RWLi7Mx" role="2Oq$k0">
                          <ref role="3cqZAo" node="78D6RWLi7Mo" resolve="modules" />
                        </node>
                        <node concept="3zZkjj" id="2fAW4l08rT" role="2OqNvi">
                          <node concept="1bVj0M" id="2fAW4l08rV" role="23t8la">
                            <node concept="3clFbS" id="2fAW4l08rW" role="1bW5cS">
                              <node concept="3clFbF" id="2fAW4l08SN" role="3cqZAp">
                                <node concept="1rXfSq" id="2fAW4l08SM" role="3clFbG">
                                  <ref role="37wK5l" node="5nA3diwVeVs" resolve="isVisible" />
                                  <node concept="37vLTw" id="2fAW4l09wf" role="37wK5m">
                                    <ref role="3cqZAo" node="2fAW4l08rX" resolve="it" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="2fAW4l08rX" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="2fAW4l08rY" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3zZkjj" id="78D6RWLi7My" role="2OqNvi">
                        <node concept="1bVj0M" id="78D6RWLi7Mz" role="23t8la">
                          <node concept="3clFbS" id="78D6RWLi7M$" role="1bW5cS">
                            <node concept="3clFbF" id="78D6RWLi7M_" role="3cqZAp">
                              <node concept="2YIFZM" id="78D6RWLiEcc" role="3clFbG">
                                <ref role="1Pybhc" node="qmkA5fOuCN" resolve="SModuleAsNode" />
                                <ref role="37wK5l" node="78D6RWLixiq" resolve="isTempModule" />
                                <node concept="37vLTw" id="78D6RWLiEcd" role="37wK5m">
                                  <ref role="3cqZAo" node="78D6RWLi7MC" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="78D6RWLi7MC" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="78D6RWLi7MD" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3$u5V9" id="78D6RWLi7ME" role="2OqNvi">
                      <node concept="1bVj0M" id="78D6RWLi7MF" role="23t8la">
                        <node concept="3clFbS" id="78D6RWLi7MG" role="1bW5cS">
                          <node concept="3clFbF" id="78D6RWLi7MH" role="3cqZAp">
                            <node concept="2ShNRf" id="78D6RWLi7MI" role="3clFbG">
                              <node concept="1pGfFk" id="78D6RWLi7MJ" role="2ShVmc">
                                <ref role="37wK5l" node="qmkA5fOXYb" resolve="SModuleAsNode" />
                                <node concept="37vLTw" id="78D6RWLi7MK" role="37wK5m">
                                  <ref role="3cqZAo" node="78D6RWLi7ML" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="78D6RWLi7ML" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="78D6RWLi7MM" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="78D6RWLi7MN" role="2Ghqu4">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="qmkA5fQ$kZ" role="jymVt" />
    <node concept="3clFbW" id="qmkA5fOYD8" role="jymVt">
      <node concept="3cqZAl" id="qmkA5fOYD9" role="3clF45" />
      <node concept="3Tm1VV" id="qmkA5fOYDa" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fOYDb" role="3clF47">
        <node concept="XkiVB" id="qmkA5fOYDc" role="3cqZAp">
          <ref role="37wK5l" node="qmkA5fOTCH" resolve="TreeElementAsNode" />
          <node concept="37vLTw" id="qmkA5fOYDd" role="37wK5m">
            <ref role="3cqZAo" node="qmkA5fOYDe" resolve="repository" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="qmkA5fOYDe" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="qmkA5fOYGt" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="qmkA5fOYDg" role="jymVt" />
    <node concept="3clFb_" id="qmkA5fQ3I3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConcept" />
      <node concept="3uibUv" id="qmkA5fQ3I4" role="3clF45">
        <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
      </node>
      <node concept="3Tm1VV" id="qmkA5fQ3I5" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fQ3I8" role="3clF47">
        <node concept="3clFbF" id="qmkA5fQ3Wk" role="3cqZAp">
          <node concept="2YIFZM" id="qmkA5fQ3YU" role="3clFbG">
            <ref role="1Pybhc" node="5gTrVpGjuL2" resolve="SConceptAdapter" />
            <ref role="37wK5l" node="3ECE8iPOmg5" resolve="wrap" />
            <node concept="35c_gC" id="qmkA5fOYDm" role="37wK5m">
              <ref role="35c_gD" to="dj5d:qmkA5fOskm" resolve="Repository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fQ3I9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="qmkA5fOvE3" role="jymVt" />
    <node concept="3clFb_" id="qmkA5fQtBz" role="jymVt">
      <property role="TrG5h" value="getChildAccessor" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="qmkA5fQtB$" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="qmkA5fQtB_" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="qmkA5fQtBA" role="3clF45">
        <ref role="3uigEE" node="qmkA5fPD_t" resolve="TreeElementAsNode.IChildAccessor" />
      </node>
      <node concept="3Tmbuc" id="qmkA5fQtBB" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fQtBD" role="3clF47">
        <node concept="3clFbJ" id="qmkA5fQv0Q" role="3cqZAp">
          <node concept="2OqwBi" id="qmkA5fQvBo" role="3clFbw">
            <node concept="37vLTw" id="qmkA5fQv3l" role="2Oq$k0">
              <ref role="3cqZAo" node="qmkA5fQtB$" resolve="role" />
            </node>
            <node concept="liA8E" id="qmkA5fQwhv" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="qmkA5fQx4G" role="37wK5m">
                <node concept="359W_D" id="qmkA5fQwmN" role="2Oq$k0">
                  <ref role="359W_E" to="dj5d:qmkA5fOskm" resolve="Repository" />
                  <ref role="359W_F" to="dj5d:qmkA5fOskn" resolve="modules" />
                </node>
                <node concept="liA8E" id="qmkA5fQxvy" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="qmkA5fQv0S" role="3clFbx">
            <node concept="3cpWs6" id="qmkA5fQx$g" role="3cqZAp">
              <node concept="37vLTw" id="qmkA5fQZ8R" role="3cqZAk">
                <ref role="3cqZAo" node="qmkA5fQTJs" resolve="modulesAccessor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="78D6RWLiF2W" role="3cqZAp">
          <node concept="2OqwBi" id="78D6RWLiF2X" role="3clFbw">
            <node concept="37vLTw" id="78D6RWLiF2Y" role="2Oq$k0">
              <ref role="3cqZAo" node="qmkA5fQtB$" resolve="role" />
            </node>
            <node concept="liA8E" id="78D6RWLiF2Z" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="78D6RWLiF30" role="37wK5m">
                <node concept="359W_D" id="78D6RWLiF31" role="2Oq$k0">
                  <ref role="359W_E" to="dj5d:qmkA5fOskm" resolve="Repository" />
                  <ref role="359W_F" to="dj5d:78D6RWLi6Va" resolve="tempModules" />
                </node>
                <node concept="liA8E" id="78D6RWLiF32" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="78D6RWLiF33" role="3clFbx">
            <node concept="3cpWs6" id="78D6RWLiF34" role="3cqZAp">
              <node concept="37vLTw" id="78D6RWLiG2p" role="3cqZAk">
                <ref role="3cqZAo" node="78D6RWLi7M8" resolve="tempModulesAccessor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="qmkA5fVyDz" role="3cqZAp">
          <node concept="3nyPlj" id="qmkA5fVyDx" role="3clFbG">
            <ref role="37wK5l" node="qmkA5fQh7n" resolve="getChildAccessor" />
            <node concept="37vLTw" id="qmkA5fVzyZ" role="37wK5m">
              <ref role="3cqZAo" node="qmkA5fQtB$" resolve="role" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fQtBE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="qmkA5fQtBQ" role="jymVt">
      <property role="TrG5h" value="getPropertyAccessor" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="qmkA5fQtBR" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="qmkA5fQtBS" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="qmkA5fQtBT" role="3clF45">
        <ref role="3uigEE" node="qmkA5fP_R1" resolve="TreeElementAsNode.IPropertyAccessor" />
      </node>
      <node concept="3Tmbuc" id="qmkA5fQtBU" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fQtBW" role="3clF47">
        <node concept="3clFbF" id="qmkA5fVzRc" role="3cqZAp">
          <node concept="3nyPlj" id="qmkA5fVzRb" role="3clFbG">
            <ref role="37wK5l" node="qmkA5fQ9uX" resolve="getPropertyAccessor" />
            <node concept="37vLTw" id="qmkA5fV$da" role="37wK5m">
              <ref role="3cqZAo" node="qmkA5fQtBR" resolve="role" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fQtBX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="qmkA5fQtC0" role="jymVt">
      <property role="TrG5h" value="getReferenceAccessor" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="qmkA5fQtC1" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="qmkA5fQtC2" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="qmkA5fQtC3" role="3clF45">
        <ref role="3uigEE" node="qmkA5fPGEo" resolve="TreeElementAsNode.IReferenceAccessor" />
      </node>
      <node concept="3Tmbuc" id="qmkA5fQtC4" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fQtC6" role="3clF47">
        <node concept="3clFbF" id="qmkA5fV$wF" role="3cqZAp">
          <node concept="3nyPlj" id="qmkA5fV$wE" role="3clFbG">
            <ref role="37wK5l" node="qmkA5fQhcY" resolve="getReferenceAccessor" />
            <node concept="37vLTw" id="qmkA5fV$QD" role="37wK5m">
              <ref role="3cqZAo" node="qmkA5fQtC1" resolve="role" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fQtC7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="qmkA5fQtBH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getParent" />
      <node concept="3Tm1VV" id="qmkA5fQtBJ" role="1B3o_S" />
      <node concept="3uibUv" id="qmkA5fQtBK" role="3clF45">
        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
      </node>
      <node concept="3clFbS" id="qmkA5fQtBM" role="3clF47">
        <node concept="3clFbF" id="qmkA5fQtBP" role="3cqZAp">
          <node concept="10Nm6u" id="qmkA5fQtBO" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fQtBN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="qmkA5fQtCa" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getRoleInParent" />
      <node concept="17QB3L" id="qmkA5fQtCb" role="3clF45" />
      <node concept="3Tm1VV" id="qmkA5fQtCc" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fQtCf" role="3clF47">
        <node concept="3clFbF" id="qmkA5fQZ$a" role="3cqZAp">
          <node concept="10Nm6u" id="qmkA5fQZ$9" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fQtCg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2BHSBisk4kW" role="jymVt">
      <property role="TrG5h" value="toString" />
      <node concept="3Tm1VV" id="2BHSBisk4kX" role="1B3o_S" />
      <node concept="17QB3L" id="2BHSBisk5ON" role="3clF45" />
      <node concept="3clFbS" id="2BHSBisk4l2" role="3clF47">
        <node concept="3clFbF" id="2BHSBisk5Jh" role="3cqZAp">
          <node concept="Xl_RD" id="2BHSBisk5Jg" role="3clFbG">
            <property role="Xl_RC" value="repository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2BHSBisk4l3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="qmkA5fOvG5" role="1B3o_S" />
    <node concept="3uibUv" id="qmkA5fOYHD" role="1zkMxy">
      <ref role="3uigEE" node="qmkA5fOOmI" resolve="TreeElementAsNode" />
      <node concept="3uibUv" id="qmkA5fOYQu" role="11_B2D">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="qmkA5fOuCN">
    <property role="TrG5h" value="SModuleAsNode" />
    <property role="3GE5qa" value="treeAdapters" />
    <node concept="2YIFZL" id="78D6RWLixiq" role="jymVt">
      <property role="TrG5h" value="isTempModule" />
      <node concept="3clFbS" id="78D6RWLisre" role="3clF47">
        <node concept="3clFbF" id="78D6RWLiySH" role="3cqZAp">
          <node concept="22lmx$" id="78D6RWLizXw" role="3clFbG">
            <node concept="2ZW3vV" id="78D6RWLi$$E" role="3uHU7w">
              <node concept="3uibUv" id="78D6RWLi$IQ" role="2ZW6by">
                <ref role="3uigEE" to="tqvn:~TempModule2" resolve="TempModule2" />
              </node>
              <node concept="37vLTw" id="78D6RWLi$e8" role="2ZW6bz">
                <ref role="3cqZAo" node="78D6RWLiwd7" resolve="module" />
              </node>
            </node>
            <node concept="2ZW3vV" id="78D6RWLizf1" role="3uHU7B">
              <node concept="3uibUv" id="78D6RWLizoX" role="2ZW6by">
                <ref role="3uigEE" to="tqvn:~TempModule" resolve="TempModule" />
              </node>
              <node concept="37vLTw" id="78D6RWLiySG" role="2ZW6bz">
                <ref role="3cqZAo" node="78D6RWLiwd7" resolve="module" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="78D6RWLiwd7" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="78D6RWLix6s" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="10P_77" id="78D6RWLiygh" role="3clF45" />
      <node concept="3Tm1VV" id="78D6RWLisrd" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="78D6RWLiD0o" role="jymVt" />
    <node concept="Wx3nA" id="qmkA5fRuqT" role="jymVt">
      <property role="TrG5h" value="nameAccessor" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="qmkA5fRuqU" role="1tU5fm">
        <ref role="3uigEE" node="qmkA5fP_R1" resolve="TreeElementAsNode.IPropertyAccessor" />
        <node concept="3uibUv" id="qmkA5fRv5Q" role="11_B2D">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3Tm6S6" id="qmkA5fRuqW" role="1B3o_S" />
      <node concept="2ShNRf" id="qmkA5fRuqX" role="33vP2m">
        <node concept="YeOm9" id="qmkA5fRuqY" role="2ShVmc">
          <node concept="1Y3b0j" id="qmkA5fRuqZ" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" node="qmkA5fP_R1" resolve="TreeElementAsNode.IPropertyAccessor" />
            <node concept="3Tm1VV" id="qmkA5fRur0" role="1B3o_S" />
            <node concept="3clFb_" id="qmkA5fRur1" role="jymVt">
              <property role="TrG5h" value="get" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="qmkA5fRur2" role="3clF46">
                <property role="TrG5h" value="element" />
                <node concept="3uibUv" id="qmkA5fRvKO" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
              <node concept="17QB3L" id="qmkA5fRur4" role="3clF45" />
              <node concept="3Tm1VV" id="qmkA5fRur5" role="1B3o_S" />
              <node concept="3clFbS" id="qmkA5fRur6" role="3clF47">
                <node concept="3clFbF" id="qmkA5fRur7" role="3cqZAp">
                  <node concept="2OqwBi" id="qmkA5fRur9" role="3clFbG">
                    <node concept="37vLTw" id="qmkA5fRura" role="2Oq$k0">
                      <ref role="3cqZAo" node="qmkA5fRur2" resolve="element" />
                    </node>
                    <node concept="liA8E" id="qmkA5fRxoV" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="qmkA5fRurd" role="jymVt">
              <property role="TrG5h" value="set" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="qmkA5fRure" role="3clF46">
                <property role="TrG5h" value="element" />
                <node concept="3uibUv" id="qmkA5fRwWJ" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
              <node concept="37vLTG" id="qmkA5fRurg" role="3clF46">
                <property role="TrG5h" value="value" />
                <node concept="17QB3L" id="qmkA5fRurh" role="1tU5fm" />
              </node>
              <node concept="17QB3L" id="qmkA5fRuri" role="3clF45" />
              <node concept="3Tm1VV" id="qmkA5fRurj" role="1B3o_S" />
              <node concept="3clFbS" id="qmkA5fRurk" role="3clF47">
                <node concept="YS8fn" id="qmkA5fRurl" role="3cqZAp">
                  <node concept="2ShNRf" id="qmkA5fRurm" role="YScLw">
                    <node concept="1pGfFk" id="qmkA5fRurn" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                      <node concept="Xl_RD" id="qmkA5fRuro" role="37wK5m">
                        <property role="Xl_RC" value="Module name is read only" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="qmkA5fRvs2" role="2Ghqu4">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="3Ezg1fME41B" role="jymVt">
      <property role="TrG5h" value="idAccessor" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="3Ezg1fME41C" role="1tU5fm">
        <ref role="3uigEE" node="qmkA5fP_R1" resolve="TreeElementAsNode.IPropertyAccessor" />
        <node concept="3uibUv" id="3Ezg1fME41D" role="11_B2D">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3Ezg1fME41E" role="1B3o_S" />
      <node concept="2ShNRf" id="3Ezg1fME41F" role="33vP2m">
        <node concept="YeOm9" id="3Ezg1fME41G" role="2ShVmc">
          <node concept="1Y3b0j" id="3Ezg1fME41H" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" node="qmkA5fP_R1" resolve="TreeElementAsNode.IPropertyAccessor" />
            <node concept="3Tm1VV" id="3Ezg1fME41I" role="1B3o_S" />
            <node concept="3clFb_" id="3Ezg1fME41J" role="jymVt">
              <property role="TrG5h" value="get" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="3Ezg1fME41K" role="3clF46">
                <property role="TrG5h" value="element" />
                <node concept="3uibUv" id="3Ezg1fME41L" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
              <node concept="17QB3L" id="3Ezg1fME41M" role="3clF45" />
              <node concept="3Tm1VV" id="3Ezg1fME41N" role="1B3o_S" />
              <node concept="3clFbS" id="3Ezg1fME41O" role="3clF47">
                <node concept="3clFbF" id="3Ezg1fME41P" role="3cqZAp">
                  <node concept="2OqwBi" id="3Ezg1fME7aD" role="3clFbG">
                    <node concept="2OqwBi" id="3Ezg1fME41Q" role="2Oq$k0">
                      <node concept="37vLTw" id="3Ezg1fME41R" role="2Oq$k0">
                        <ref role="3cqZAo" node="3Ezg1fME41K" resolve="element" />
                      </node>
                      <node concept="liA8E" id="3Ezg1fME72G" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModule.getModuleId()" resolve="getModuleId" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3Ezg1fME7t9" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="3Ezg1fME41T" role="jymVt">
              <property role="TrG5h" value="set" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="3Ezg1fME41U" role="3clF46">
                <property role="TrG5h" value="element" />
                <node concept="3uibUv" id="3Ezg1fME41V" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
              <node concept="37vLTG" id="3Ezg1fME41W" role="3clF46">
                <property role="TrG5h" value="value" />
                <node concept="17QB3L" id="3Ezg1fME41X" role="1tU5fm" />
              </node>
              <node concept="17QB3L" id="3Ezg1fME41Y" role="3clF45" />
              <node concept="3Tm1VV" id="3Ezg1fME41Z" role="1B3o_S" />
              <node concept="3clFbS" id="3Ezg1fME420" role="3clF47">
                <node concept="YS8fn" id="3Ezg1fME421" role="3cqZAp">
                  <node concept="2ShNRf" id="3Ezg1fME422" role="YScLw">
                    <node concept="1pGfFk" id="3Ezg1fME423" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                      <node concept="Xl_RD" id="3Ezg1fME424" role="37wK5m">
                        <property role="Xl_RC" value="Module ID is read only" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="3Ezg1fME425" role="2Ghqu4">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="qmkA5fR2wm" role="jymVt" />
    <node concept="Wx3nA" id="qmkA5fR24J" role="jymVt">
      <property role="TrG5h" value="modelsAccessor" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="qmkA5fR24K" role="1tU5fm">
        <ref role="3uigEE" node="qmkA5fPD_t" resolve="TreeElementAsNode.IChildAccessor" />
        <node concept="3uibUv" id="qmkA5fR3al" role="11_B2D">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3Tm6S6" id="qmkA5fR24M" role="1B3o_S" />
      <node concept="2ShNRf" id="qmkA5fR24N" role="33vP2m">
        <node concept="YeOm9" id="qmkA5fR24O" role="2ShVmc">
          <node concept="1Y3b0j" id="qmkA5fR24P" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" node="qmkA5fPD_t" resolve="TreeElementAsNode.IChildAccessor" />
            <node concept="3Tm1VV" id="qmkA5fR24Q" role="1B3o_S" />
            <node concept="3clFb_" id="qmkA5fR24R" role="jymVt">
              <property role="TrG5h" value="get" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="qmkA5fR24S" role="3clF46">
                <property role="TrG5h" value="module" />
                <node concept="3uibUv" id="qmkA5fR3Jx" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
              <node concept="A3Dl8" id="qmkA5fR24U" role="3clF45">
                <node concept="3uibUv" id="qmkA5fR24V" role="A3Ik2">
                  <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                </node>
              </node>
              <node concept="3Tm1VV" id="qmkA5fR24W" role="1B3o_S" />
              <node concept="3clFbS" id="qmkA5fR24X" role="3clF47">
                <node concept="3cpWs8" id="qmkA5fR24Y" role="3cqZAp">
                  <node concept="3cpWsn" id="qmkA5fR24Z" role="3cpWs9">
                    <property role="TrG5h" value="models" />
                    <node concept="A3Dl8" id="qmkA5fR250" role="1tU5fm">
                      <node concept="3uibUv" id="qmkA5fR4Bp" role="A3Ik2">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="qmkA5fR252" role="33vP2m">
                      <node concept="37vLTw" id="qmkA5fR253" role="2Oq$k0">
                        <ref role="3cqZAo" node="qmkA5fR24S" resolve="module" />
                      </node>
                      <node concept="liA8E" id="qmkA5fR254" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="qmkA5fR255" role="3cqZAp">
                  <node concept="2OqwBi" id="qmkA5fR256" role="3clFbG">
                    <node concept="37vLTw" id="qmkA5fR257" role="2Oq$k0">
                      <ref role="3cqZAo" node="qmkA5fR24Z" resolve="models" />
                    </node>
                    <node concept="3$u5V9" id="qmkA5fR258" role="2OqNvi">
                      <node concept="1bVj0M" id="qmkA5fR259" role="23t8la">
                        <node concept="3clFbS" id="qmkA5fR25a" role="1bW5cS">
                          <node concept="3clFbF" id="qmkA5fR25b" role="3cqZAp">
                            <node concept="2ShNRf" id="qmkA5fR25c" role="3clFbG">
                              <node concept="1pGfFk" id="qmkA5fR25d" role="2ShVmc">
                                <ref role="37wK5l" node="qmkA5fOXr4" resolve="SModelAsNode" />
                                <node concept="37vLTw" id="qmkA5fR25e" role="37wK5m">
                                  <ref role="3cqZAo" node="qmkA5fR25f" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="qmkA5fR25f" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="qmkA5fR25g" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="qmkA5fR3th" role="2Ghqu4">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="qmkA5fR1di" role="jymVt" />
    <node concept="2YIFZL" id="43OnoQAXzNC" role="jymVt">
      <property role="TrG5h" value="wrap" />
      <node concept="3clFbS" id="43OnoQAXvCY" role="3clF47">
        <node concept="3clFbF" id="43OnoQAX_OG" role="3cqZAp">
          <node concept="3K4zz7" id="43OnoQAXB2B" role="3clFbG">
            <node concept="10Nm6u" id="43OnoQAXBpE" role="3K4E3e" />
            <node concept="2ShNRf" id="43OnoQAXBGr" role="3K4GZi">
              <node concept="1pGfFk" id="43OnoQAXWce" role="2ShVmc">
                <ref role="37wK5l" node="qmkA5fOXYb" resolve="SModuleAsNode" />
                <node concept="37vLTw" id="43OnoQAXX4r" role="37wK5m">
                  <ref role="3cqZAo" node="43OnoQAXyc5" resolve="module" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="43OnoQAXAgL" role="3K4Cdx">
              <node concept="10Nm6u" id="43OnoQAXAGo" role="3uHU7w" />
              <node concept="37vLTw" id="43OnoQAX_OF" role="3uHU7B">
                <ref role="3cqZAo" node="43OnoQAXyc5" resolve="module" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="43OnoQAXyc5" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="43OnoQAXzcB" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3uibUv" id="43OnoQAX$Rw" role="3clF45">
        <ref role="3uigEE" node="qmkA5fOuCN" resolve="SModuleAsNode" />
      </node>
      <node concept="3Tm1VV" id="43OnoQAXvCX" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="qmkA5fR1eg" role="jymVt" />
    <node concept="3clFbW" id="qmkA5fOXYb" role="jymVt">
      <node concept="3cqZAl" id="qmkA5fOXYc" role="3clF45" />
      <node concept="3Tm1VV" id="43OnoQAY1u$" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fOXYe" role="3clF47">
        <node concept="XkiVB" id="qmkA5fOXYf" role="3cqZAp">
          <ref role="37wK5l" node="qmkA5fOTCH" resolve="TreeElementAsNode" />
          <node concept="37vLTw" id="qmkA5fOXYg" role="37wK5m">
            <ref role="3cqZAo" node="qmkA5fOXYh" resolve="module" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="qmkA5fOXYh" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="qmkA5fOY1s" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
        <node concept="2AHcQZ" id="43OnoQAXXao" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="qmkA5fOXYj" role="jymVt" />
    <node concept="3clFb_" id="qmkA5fQ46S" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConcept" />
      <node concept="3uibUv" id="qmkA5fQ46T" role="3clF45">
        <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
      </node>
      <node concept="3Tm1VV" id="qmkA5fQ46U" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fQ46V" role="3clF47">
        <node concept="3clFbF" id="qmkA5fQ46W" role="3cqZAp">
          <node concept="2YIFZM" id="qmkA5fQ46X" role="3clFbG">
            <ref role="1Pybhc" node="5gTrVpGjuL2" resolve="SConceptAdapter" />
            <ref role="37wK5l" node="3ECE8iPOmg5" resolve="wrap" />
            <node concept="35c_gC" id="qmkA5fQ46Y" role="37wK5m">
              <ref role="35c_gD" to="dj5d:qmkA5fOskf" resolve="Module" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fQ46Z" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="qmkA5fOuCO" role="jymVt" />
    <node concept="3clFb_" id="qmkA5fR0C0" role="jymVt">
      <property role="TrG5h" value="getChildAccessor" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="qmkA5fR0C1" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="qmkA5fR0C2" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="qmkA5fR0C3" role="3clF45">
        <ref role="3uigEE" node="qmkA5fPD_t" resolve="TreeElementAsNode.IChildAccessor" />
        <node concept="3uibUv" id="qmkA5fR0C7" role="11_B2D">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3Tmbuc" id="qmkA5fR0C5" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fR0C8" role="3clF47">
        <node concept="3clFbJ" id="qmkA5fR5PT" role="3cqZAp">
          <node concept="2OqwBi" id="qmkA5fR5PU" role="3clFbw">
            <node concept="37vLTw" id="qmkA5fR5PV" role="2Oq$k0">
              <ref role="3cqZAo" node="qmkA5fR0C1" resolve="role" />
            </node>
            <node concept="liA8E" id="qmkA5fR5PW" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="qmkA5fR5PX" role="37wK5m">
                <node concept="359W_D" id="qmkA5fR5PY" role="2Oq$k0">
                  <ref role="359W_E" to="dj5d:qmkA5fOskf" resolve="Module" />
                  <ref role="359W_F" to="dj5d:qmkA5fOski" resolve="models" />
                </node>
                <node concept="liA8E" id="qmkA5fR5PZ" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="qmkA5fR5Q0" role="3clFbx">
            <node concept="3cpWs6" id="qmkA5fR5Q1" role="3cqZAp">
              <node concept="37vLTw" id="qmkA5fR6Kp" role="3cqZAk">
                <ref role="3cqZAo" node="qmkA5fR24J" resolve="modelsAccessor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="qmkA5fV_V9" role="3cqZAp">
          <node concept="3nyPlj" id="qmkA5fV_V6" role="3clFbG">
            <ref role="37wK5l" node="qmkA5fQh7n" resolve="getChildAccessor" />
            <node concept="37vLTw" id="qmkA5fVALB" role="37wK5m">
              <ref role="3cqZAo" node="qmkA5fR0C1" resolve="role" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fR0C9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="qmkA5fR0Cl" role="jymVt">
      <property role="TrG5h" value="getPropertyAccessor" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="qmkA5fR0Cm" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="qmkA5fR0Cn" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="qmkA5fR0Co" role="3clF45">
        <ref role="3uigEE" node="qmkA5fP_R1" resolve="TreeElementAsNode.IPropertyAccessor" />
        <node concept="3uibUv" id="qmkA5fR0Cs" role="11_B2D">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3Tmbuc" id="qmkA5fR0Cq" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fR0Ct" role="3clF47">
        <node concept="3clFbJ" id="qmkA5fRyyF" role="3cqZAp">
          <node concept="3clFbS" id="qmkA5fRyyG" role="3clFbx">
            <node concept="3cpWs6" id="qmkA5fRyyH" role="3cqZAp">
              <node concept="37vLTw" id="qmkA5fRztF" role="3cqZAk">
                <ref role="3cqZAo" node="qmkA5fRuqT" resolve="nameAccessor" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="qmkA5fRyyI" role="3clFbw">
            <node concept="37vLTw" id="qmkA5fRyyJ" role="2Oq$k0">
              <ref role="3cqZAo" node="qmkA5fR0Cm" resolve="role" />
            </node>
            <node concept="liA8E" id="qmkA5fRyyK" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="qmkA5fRyyL" role="37wK5m">
                <node concept="355D3s" id="qmkA5fRyyM" role="2Oq$k0">
                  <ref role="355D3t" to="tpck:h0TrEE$" resolve="INamedConcept" />
                  <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                </node>
                <node concept="liA8E" id="qmkA5fRyyN" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3Ezg1fME3lH" role="3cqZAp">
          <node concept="3clFbS" id="3Ezg1fME3lI" role="3clFbx">
            <node concept="3cpWs6" id="3Ezg1fME3lJ" role="3cqZAp">
              <node concept="37vLTw" id="3Ezg1fME5YB" role="3cqZAk">
                <ref role="3cqZAo" node="3Ezg1fME41B" resolve="idAccessor" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3Ezg1fME3lL" role="3clFbw">
            <node concept="37vLTw" id="3Ezg1fME3lM" role="2Oq$k0">
              <ref role="3cqZAo" node="qmkA5fR0Cm" resolve="role" />
            </node>
            <node concept="liA8E" id="3Ezg1fME3lN" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="3Ezg1fME3lO" role="37wK5m">
                <node concept="355D3s" id="3Ezg1fME3lP" role="2Oq$k0">
                  <ref role="355D3t" to="dj5d:qmkA5fOskf" resolve="Module" />
                  <ref role="355D3u" to="dj5d:3Ezg1fME0bw" resolve="id" />
                </node>
                <node concept="liA8E" id="3Ezg1fME3lQ" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="qmkA5fVB4_" role="3cqZAp">
          <node concept="3nyPlj" id="qmkA5fVB4y" role="3clFbG">
            <ref role="37wK5l" node="qmkA5fQ9uX" resolve="getPropertyAccessor" />
            <node concept="37vLTw" id="qmkA5fVBVq" role="37wK5m">
              <ref role="3cqZAo" node="qmkA5fR0Cm" resolve="role" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fR0Cu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="qmkA5fR0Cx" role="jymVt">
      <property role="TrG5h" value="getReferenceAccessor" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="qmkA5fR0Cy" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="qmkA5fR0Cz" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="qmkA5fR0C$" role="3clF45">
        <ref role="3uigEE" node="qmkA5fPGEo" resolve="TreeElementAsNode.IReferenceAccessor" />
        <node concept="3uibUv" id="qmkA5fR0CC" role="11_B2D">
          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
        </node>
      </node>
      <node concept="3Tmbuc" id="qmkA5fR0CA" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fR0CD" role="3clF47">
        <node concept="3clFbF" id="qmkA5fVCei" role="3cqZAp">
          <node concept="3nyPlj" id="qmkA5fVCeh" role="3clFbG">
            <ref role="37wK5l" node="qmkA5fQhcY" resolve="getReferenceAccessor" />
            <node concept="37vLTw" id="qmkA5fVCyZ" role="37wK5m">
              <ref role="3cqZAo" node="qmkA5fR0Cy" resolve="role" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fR0CE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="qmkA5fR0Cc" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getParent" />
      <node concept="3Tm1VV" id="qmkA5fR0Ce" role="1B3o_S" />
      <node concept="3uibUv" id="qmkA5fR0Cf" role="3clF45">
        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
      </node>
      <node concept="3clFbS" id="qmkA5fR0Ch" role="3clF47">
        <node concept="3clFbJ" id="2fAW4l0bij" role="3cqZAp">
          <node concept="3clFbS" id="2fAW4l0bil" role="3clFbx">
            <node concept="3cpWs6" id="2fAW4l0izu" role="3cqZAp">
              <node concept="10Nm6u" id="2fAW4l0iFI" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="2fAW4l0i3b" role="3clFbw">
            <node concept="2YIFZM" id="2fAW4l0i3d" role="3fr31v">
              <ref role="1Pybhc" node="qmkA5fOvE2" resolve="SRepositoryAsNode" />
              <ref role="37wK5l" node="5nA3diwVeVs" resolve="isVisible" />
              <node concept="1rXfSq" id="2fAW4l0i3e" role="37wK5m">
                <ref role="37wK5l" node="qmkA5fQFVR" resolve="getElement" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="qmkA5fR7bo" role="3cqZAp">
          <node concept="2ShNRf" id="qmkA5fR7bm" role="3clFbG">
            <node concept="1pGfFk" id="qmkA5fR7H1" role="2ShVmc">
              <ref role="37wK5l" node="qmkA5fOYD8" resolve="SRepositoryAsNode" />
              <node concept="2OqwBi" id="qmkA5fR9mN" role="37wK5m">
                <node concept="1rXfSq" id="qmkA5fR8X0" role="2Oq$k0">
                  <ref role="37wK5l" node="qmkA5fQFVR" resolve="getElement" />
                </node>
                <node concept="liA8E" id="qmkA5fR9Q$" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fR0Ci" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="qmkA5fR0CH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getRoleInParent" />
      <node concept="17QB3L" id="qmkA5fR0CI" role="3clF45" />
      <node concept="3Tm1VV" id="qmkA5fR0CJ" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fR0CM" role="3clF47">
        <node concept="3clFbJ" id="2fAW4l0jvf" role="3cqZAp">
          <node concept="3clFbS" id="2fAW4l0jvg" role="3clFbx">
            <node concept="3cpWs6" id="2fAW4l0jvh" role="3cqZAp">
              <node concept="10Nm6u" id="2fAW4l0jvi" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="2fAW4l0jvj" role="3clFbw">
            <node concept="2YIFZM" id="2fAW4l0jvk" role="3fr31v">
              <ref role="37wK5l" node="5nA3diwVeVs" resolve="isVisible" />
              <ref role="1Pybhc" node="qmkA5fOvE2" resolve="SRepositoryAsNode" />
              <node concept="1rXfSq" id="2fAW4l0jvl" role="37wK5m">
                <ref role="37wK5l" node="qmkA5fQFVR" resolve="getElement" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="78D6RWLiHyp" role="3cqZAp">
          <node concept="2OqwBi" id="78D6RWLiOZp" role="3clFbG">
            <node concept="1eOMI4" id="78D6RWLiOgT" role="2Oq$k0">
              <node concept="3K4zz7" id="78D6RWLiLKS" role="1eOMHV">
                <node concept="1rXfSq" id="78D6RWLiHyn" role="3K4Cdx">
                  <ref role="37wK5l" node="78D6RWLixiq" resolve="isTempModule" />
                  <node concept="1rXfSq" id="78D6RWLiKXf" role="37wK5m">
                    <ref role="37wK5l" node="qmkA5fQFVR" resolve="getElement" />
                  </node>
                </node>
                <node concept="359W_D" id="78D6RWLiMch" role="3K4GZi">
                  <ref role="359W_E" to="dj5d:qmkA5fOskm" resolve="Repository" />
                  <ref role="359W_F" to="dj5d:qmkA5fOskn" resolve="modules" />
                </node>
                <node concept="359W_D" id="78D6RWLiMvL" role="3K4E3e">
                  <ref role="359W_E" to="dj5d:qmkA5fOskm" resolve="Repository" />
                  <ref role="359W_F" to="dj5d:78D6RWLi6Va" resolve="tempModules" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="78D6RWLiR0X" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fR0CN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="qmkA5fOuEQ" role="1B3o_S" />
    <node concept="3uibUv" id="qmkA5fOY3o" role="1zkMxy">
      <ref role="3uigEE" node="qmkA5fOOmI" resolve="TreeElementAsNode" />
      <node concept="3uibUv" id="qmkA5fOY8u" role="11_B2D">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5ATQqVBu_0y">
    <property role="TrG5h" value="SModelAsNode" />
    <property role="3GE5qa" value="treeAdapters" />
    <node concept="2tJIrI" id="qmkA5fOGSP" role="jymVt" />
    <node concept="Wx3nA" id="qmkA5fRq4G" role="jymVt">
      <property role="TrG5h" value="nameAccessor" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="qmkA5fRl60" role="1tU5fm">
        <ref role="3uigEE" node="qmkA5fP_R1" resolve="TreeElementAsNode.IPropertyAccessor" />
        <node concept="3uibUv" id="qmkA5fRmJJ" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3Tm6S6" id="qmkA5fRkQm" role="1B3o_S" />
      <node concept="2ShNRf" id="qmkA5fRmb$" role="33vP2m">
        <node concept="YeOm9" id="qmkA5fRnb2" role="2ShVmc">
          <node concept="1Y3b0j" id="qmkA5fRnb5" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="qmkA5fP_R1" resolve="TreeElementAsNode.IPropertyAccessor" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="qmkA5fRnb6" role="1B3o_S" />
            <node concept="3clFb_" id="qmkA5fRnb7" role="jymVt">
              <property role="TrG5h" value="get" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="qmkA5fRnb8" role="3clF46">
                <property role="TrG5h" value="element" />
                <node concept="3uibUv" id="qmkA5fRnbs" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
              <node concept="17QB3L" id="qmkA5fRnba" role="3clF45" />
              <node concept="3Tm1VV" id="qmkA5fRnbb" role="1B3o_S" />
              <node concept="3clFbS" id="qmkA5fRnbd" role="3clF47">
                <node concept="3clFbF" id="qmkA5fRnDk" role="3cqZAp">
                  <node concept="2OqwBi" id="qmkA5fRodb" role="3clFbG">
                    <node concept="2OqwBi" id="qmkA5fRnQw" role="2Oq$k0">
                      <node concept="37vLTw" id="qmkA5fRnDj" role="2Oq$k0">
                        <ref role="3cqZAo" node="qmkA5fRnb8" resolve="element" />
                      </node>
                      <node concept="liA8E" id="qmkA5fRo5y" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                      </node>
                    </node>
                    <node concept="liA8E" id="qmkA5fRonq" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModelName.getLongName()" resolve="getLongName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="qmkA5fRnbf" role="jymVt">
              <property role="TrG5h" value="set" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="qmkA5fRnbg" role="3clF46">
                <property role="TrG5h" value="element" />
                <node concept="3uibUv" id="qmkA5fRnbt" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
              <node concept="37vLTG" id="qmkA5fRnbi" role="3clF46">
                <property role="TrG5h" value="value" />
                <node concept="17QB3L" id="qmkA5fRnbj" role="1tU5fm" />
              </node>
              <node concept="17QB3L" id="qmkA5fRnbk" role="3clF45" />
              <node concept="3Tm1VV" id="qmkA5fRnbl" role="1B3o_S" />
              <node concept="3clFbS" id="qmkA5fRnbn" role="3clF47">
                <node concept="YS8fn" id="qmkA5fRp5c" role="3cqZAp">
                  <node concept="2ShNRf" id="qmkA5fRp8v" role="YScLw">
                    <node concept="1pGfFk" id="qmkA5fRpGP" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                      <node concept="Xl_RD" id="qmkA5fRpNy" role="37wK5m">
                        <property role="Xl_RC" value="Model name is read only" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="qmkA5fRnbr" role="2Ghqu4">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="qmkA5fR$h4" role="jymVt" />
    <node concept="Wx3nA" id="qmkA5fRHN2" role="jymVt">
      <property role="TrG5h" value="rootNodesAccessor" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="qmkA5fR_3B" role="1tU5fm">
        <ref role="3uigEE" node="qmkA5fPD_t" resolve="TreeElementAsNode.IChildAccessor" />
        <node concept="3uibUv" id="qmkA5fR_ox" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3Tm6S6" id="qmkA5fR$F6" role="1B3o_S" />
      <node concept="2ShNRf" id="qmkA5fRAxS" role="33vP2m">
        <node concept="YeOm9" id="qmkA5fRBtA" role="2ShVmc">
          <node concept="1Y3b0j" id="qmkA5fRBtD" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" node="qmkA5fPD_t" resolve="TreeElementAsNode.IChildAccessor" />
            <node concept="3Tm1VV" id="qmkA5fRBtE" role="1B3o_S" />
            <node concept="3clFb_" id="qmkA5fRBtF" role="jymVt">
              <property role="TrG5h" value="get" />
              <property role="1EzhhJ" value="false" />
              <node concept="37vLTG" id="qmkA5fRBtG" role="3clF46">
                <property role="TrG5h" value="element" />
                <node concept="3uibUv" id="qmkA5fRBtR" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
              <node concept="A3Dl8" id="qmkA5fRBtI" role="3clF45">
                <node concept="3uibUv" id="qmkA5fRBtJ" role="A3Ik2">
                  <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                </node>
              </node>
              <node concept="3Tm1VV" id="qmkA5fRBtK" role="1B3o_S" />
              <node concept="3clFbS" id="qmkA5fRBtM" role="3clF47">
                <node concept="3cpWs8" id="qmkA5fRCn6" role="3cqZAp">
                  <node concept="3cpWsn" id="qmkA5fRCn7" role="3cpWs9">
                    <property role="TrG5h" value="nodes" />
                    <node concept="A3Dl8" id="qmkA5fRC_W" role="1tU5fm">
                      <node concept="3uibUv" id="qmkA5fRC_Y" role="A3Ik2">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="qmkA5fRCn8" role="33vP2m">
                      <node concept="37vLTw" id="qmkA5fRCn9" role="2Oq$k0">
                        <ref role="3cqZAo" node="qmkA5fRBtG" resolve="element" />
                      </node>
                      <node concept="liA8E" id="qmkA5fRCna" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="qmkA5fRBVn" role="3cqZAp">
                  <node concept="2OqwBi" id="qmkA5fRCRt" role="3clFbG">
                    <node concept="37vLTw" id="qmkA5fRCnb" role="2Oq$k0">
                      <ref role="3cqZAo" node="qmkA5fRCn7" resolve="nodes" />
                    </node>
                    <node concept="3$u5V9" id="qmkA5fRDbt" role="2OqNvi">
                      <node concept="1bVj0M" id="qmkA5fRDbv" role="23t8la">
                        <node concept="3clFbS" id="qmkA5fRDbw" role="1bW5cS">
                          <node concept="3clFbF" id="qmkA5fRDiE" role="3cqZAp">
                            <node concept="2YIFZM" id="qmkA5fRDST" role="3clFbG">
                              <ref role="1Pybhc" node="5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                              <ref role="37wK5l" node="5gTrVpGyMwR" resolve="wrap" />
                              <node concept="37vLTw" id="qmkA5fRDYH" role="37wK5m">
                                <ref role="3cqZAo" node="qmkA5fRDbx" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="qmkA5fRDbx" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="qmkA5fRDby" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="qmkA5fRBtQ" role="2Ghqu4">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="qmkA5fRkBs" role="jymVt" />
    <node concept="2YIFZL" id="43OnoQAYfH_" role="jymVt">
      <property role="TrG5h" value="wrap" />
      <node concept="3clFbS" id="43OnoQAYbGZ" role="3clF47">
        <node concept="3clFbF" id="43OnoQAYh7p" role="3cqZAp">
          <node concept="3K4zz7" id="43OnoQAYimA" role="3clFbG">
            <node concept="10Nm6u" id="43OnoQAYiId" role="3K4E3e" />
            <node concept="2ShNRf" id="43OnoQAYj0Y" role="3K4GZi">
              <node concept="1pGfFk" id="43OnoQAYkKM" role="2ShVmc">
                <ref role="37wK5l" node="qmkA5fOXr4" resolve="SModelAsNode" />
                <node concept="37vLTw" id="43OnoQAYl_r" role="37wK5m">
                  <ref role="3cqZAo" node="43OnoQAYdjz" resolve="model" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="43OnoQAYh$a" role="3K4Cdx">
              <node concept="10Nm6u" id="43OnoQAYi0n" role="3uHU7w" />
              <node concept="37vLTw" id="43OnoQAYh7o" role="3uHU7B">
                <ref role="3cqZAo" node="43OnoQAYdjz" resolve="model" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="43OnoQAYdjz" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="43OnoQAYegk" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3uibUv" id="43OnoQAYeWX" role="3clF45">
        <ref role="3uigEE" node="5ATQqVBu_0y" resolve="SModelAsNode" />
      </node>
      <node concept="3Tm1VV" id="43OnoQAYbGY" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="43OnoQAYaOA" role="jymVt" />
    <node concept="3Tm1VV" id="5ATQqVBu_0z" role="1B3o_S" />
    <node concept="3uibUv" id="5ATQqVBu_L3" role="EKbjA">
      <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
    </node>
    <node concept="3uibUv" id="qmkA5fOWmm" role="1zkMxy">
      <ref role="3uigEE" node="qmkA5fOOmI" resolve="TreeElementAsNode" />
      <node concept="3uibUv" id="qmkA5fOWZE" role="11_B2D">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
    </node>
    <node concept="3clFbW" id="qmkA5fOXr4" role="jymVt">
      <node concept="3cqZAl" id="qmkA5fOXr5" role="3clF45" />
      <node concept="3Tm1VV" id="qmkA5fOXr6" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fOXr8" role="3clF47">
        <node concept="XkiVB" id="qmkA5fOXra" role="3cqZAp">
          <ref role="37wK5l" node="qmkA5fOTCH" resolve="TreeElementAsNode" />
          <node concept="37vLTw" id="qmkA5fOXre" role="37wK5m">
            <ref role="3cqZAo" node="qmkA5fOXrb" resolve="model" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="qmkA5fOXrb" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="qmkA5fOXDG" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
        <node concept="2AHcQZ" id="43OnoQAYlFW" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="qmkA5fOX$X" role="jymVt" />
    <node concept="3clFb_" id="qmkA5fQ4hm" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConcept" />
      <node concept="3uibUv" id="qmkA5fQ4hn" role="3clF45">
        <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
      </node>
      <node concept="3Tm1VV" id="qmkA5fQ4ho" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fQ4hp" role="3clF47">
        <node concept="3clFbF" id="qmkA5fQ4hq" role="3cqZAp">
          <node concept="2YIFZM" id="qmkA5fQ4hr" role="3clFbG">
            <ref role="1Pybhc" node="5gTrVpGjuL2" resolve="SConceptAdapter" />
            <ref role="37wK5l" node="3ECE8iPOmg5" resolve="wrap" />
            <node concept="35c_gC" id="qmkA5fQ4hs" role="37wK5m">
              <ref role="35c_gD" to="dj5d:qmkA5fOskc" resolve="Model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fQ4ht" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="qmkA5fQ4wb" role="jymVt" />
    <node concept="3clFb_" id="qmkA5fRbci" role="jymVt">
      <property role="TrG5h" value="getChildAccessor" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="qmkA5fRbcj" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="qmkA5fRbck" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="qmkA5fRbcl" role="3clF45">
        <ref role="3uigEE" node="qmkA5fPD_t" resolve="TreeElementAsNode.IChildAccessor" />
        <node concept="3uibUv" id="qmkA5fRbcp" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3Tmbuc" id="qmkA5fRbcn" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fRbcq" role="3clF47">
        <node concept="3clFbJ" id="qmkA5fREv8" role="3cqZAp">
          <node concept="3clFbS" id="qmkA5fREva" role="3clFbx">
            <node concept="3cpWs6" id="qmkA5fRHgq" role="3cqZAp">
              <node concept="37vLTw" id="qmkA5fRHme" role="3cqZAk">
                <ref role="3cqZAo" node="qmkA5fRHN2" resolve="rootNodesAccessor" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="qmkA5fRFk_" role="3clFbw">
            <node concept="37vLTw" id="qmkA5fREWr" role="2Oq$k0">
              <ref role="3cqZAo" node="qmkA5fRbcj" resolve="role" />
            </node>
            <node concept="liA8E" id="qmkA5fRFUT" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="qmkA5fRGJV" role="37wK5m">
                <node concept="359W_D" id="qmkA5fRG1N" role="2Oq$k0">
                  <ref role="359W_E" to="dj5d:qmkA5fOskc" resolve="Model" />
                  <ref role="359W_F" to="dj5d:qmkA5fOskk" resolve="rootNodes" />
                </node>
                <node concept="liA8E" id="qmkA5fRHaQ" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="qmkA5fVEoC" role="3cqZAp">
          <node concept="3nyPlj" id="qmkA5fVEoA" role="3clFbG">
            <ref role="37wK5l" node="qmkA5fQh7n" resolve="getChildAccessor" />
            <node concept="37vLTw" id="qmkA5fVF84" role="37wK5m">
              <ref role="3cqZAo" node="qmkA5fRbcj" resolve="role" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fRbcr" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="qmkA5fRbcB" role="jymVt">
      <property role="TrG5h" value="getPropertyAccessor" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="qmkA5fRbcC" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="qmkA5fRbcD" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="qmkA5fRbcE" role="3clF45">
        <ref role="3uigEE" node="qmkA5fP_R1" resolve="TreeElementAsNode.IPropertyAccessor" />
        <node concept="3uibUv" id="qmkA5fRbcI" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3Tmbuc" id="qmkA5fRbcG" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fRbcJ" role="3clF47">
        <node concept="3clFbJ" id="qmkA5fRq_0" role="3cqZAp">
          <node concept="3clFbS" id="qmkA5fRq_2" role="3clFbx">
            <node concept="3cpWs6" id="qmkA5fRsKE" role="3cqZAp">
              <node concept="37vLTw" id="qmkA5fRtRo" role="3cqZAk">
                <ref role="3cqZAo" node="qmkA5fRq4G" resolve="nameAccessor" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="qmkA5fRr0k" role="3clFbw">
            <node concept="37vLTw" id="qmkA5fRqCa" role="2Oq$k0">
              <ref role="3cqZAo" node="qmkA5fRbcC" resolve="role" />
            </node>
            <node concept="liA8E" id="qmkA5fRrB6" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="qmkA5fRslb" role="37wK5m">
                <node concept="355D3s" id="qmkA5fRrHx" role="2Oq$k0">
                  <ref role="355D3t" to="tpck:h0TrEE$" resolve="INamedConcept" />
                  <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                </node>
                <node concept="liA8E" id="qmkA5fRsFk" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="qmkA5fVGgF" role="3cqZAp">
          <node concept="3nyPlj" id="qmkA5fVGgD" role="3clFbG">
            <ref role="37wK5l" node="qmkA5fQ9uX" resolve="getPropertyAccessor" />
            <node concept="37vLTw" id="qmkA5fVH0u" role="37wK5m">
              <ref role="3cqZAo" node="qmkA5fRbcC" resolve="role" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fRbcK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="qmkA5fRbcN" role="jymVt">
      <property role="TrG5h" value="getReferenceAccessor" />
      <property role="1EzhhJ" value="false" />
      <node concept="37vLTG" id="qmkA5fRbcO" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="qmkA5fRbcP" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="qmkA5fRbcQ" role="3clF45">
        <ref role="3uigEE" node="qmkA5fPGEo" resolve="TreeElementAsNode.IReferenceAccessor" />
        <node concept="3uibUv" id="qmkA5fRbcU" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3Tmbuc" id="qmkA5fRbcS" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fRbcV" role="3clF47">
        <node concept="3clFbF" id="qmkA5fVHg6" role="3cqZAp">
          <node concept="3nyPlj" id="qmkA5fVHg5" role="3clFbG">
            <ref role="37wK5l" node="qmkA5fQhcY" resolve="getReferenceAccessor" />
            <node concept="37vLTw" id="qmkA5fVHxo" role="37wK5m">
              <ref role="3cqZAo" node="qmkA5fRbcO" resolve="role" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fRbcW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="qmkA5fRbcu" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getParent" />
      <node concept="3Tm1VV" id="qmkA5fRbcw" role="1B3o_S" />
      <node concept="3uibUv" id="qmkA5fRbcx" role="3clF45">
        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
      </node>
      <node concept="3clFbS" id="qmkA5fRbcz" role="3clF47">
        <node concept="3clFbF" id="43OnoQAY3Ho" role="3cqZAp">
          <node concept="2YIFZM" id="43OnoQAY4aC" role="3clFbG">
            <ref role="1Pybhc" node="qmkA5fOuCN" resolve="SModuleAsNode" />
            <ref role="37wK5l" node="43OnoQAXzNC" resolve="wrap" />
            <node concept="2OqwBi" id="43OnoQAY4jb" role="37wK5m">
              <node concept="1rXfSq" id="43OnoQAY4jc" role="2Oq$k0">
                <ref role="37wK5l" node="qmkA5fQFVR" resolve="getElement" />
              </node>
              <node concept="liA8E" id="43OnoQAY4jd" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fRbc$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="qmkA5fRbcZ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getRoleInParent" />
      <node concept="17QB3L" id="qmkA5fRbd0" role="3clF45" />
      <node concept="3Tm1VV" id="qmkA5fRbd1" role="1B3o_S" />
      <node concept="3clFbS" id="qmkA5fRbd4" role="3clF47">
        <node concept="3clFbF" id="qmkA5fRbWD" role="3cqZAp">
          <node concept="2OqwBi" id="qmkA5fRc$S" role="3clFbG">
            <node concept="359W_D" id="qmkA5fRbWC" role="2Oq$k0">
              <ref role="359W_E" to="dj5d:qmkA5fOskf" resolve="Module" />
              <ref role="359W_F" to="dj5d:qmkA5fOski" resolve="models" />
            </node>
            <node concept="liA8E" id="qmkA5fRcYN" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="qmkA5fRbd5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7gxeZuyfxKE">
    <property role="TrG5h" value="SRepositoryResolveContext" />
    <node concept="312cEg" id="7gxeZuyfxNm" role="jymVt">
      <property role="TrG5h" value="repository" />
      <node concept="3Tm6S6" id="7gxeZuyfxNn" role="1B3o_S" />
      <node concept="3uibUv" id="7gxeZuyfxQF" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="7gxeZuyfxR4" role="jymVt" />
    <node concept="3Tm1VV" id="7gxeZuyfxKF" role="1B3o_S" />
    <node concept="3clFbW" id="7gxeZuyfxRC" role="jymVt">
      <node concept="3cqZAl" id="7gxeZuyfxRD" role="3clF45" />
      <node concept="3Tm1VV" id="7gxeZuyfxRE" role="1B3o_S" />
      <node concept="3clFbS" id="7gxeZuyfxRG" role="3clF47">
        <node concept="3clFbF" id="7gxeZuyfxRK" role="3cqZAp">
          <node concept="37vLTI" id="7gxeZuyfxRM" role="3clFbG">
            <node concept="2OqwBi" id="7gxeZuyfxRQ" role="37vLTJ">
              <node concept="Xjq3P" id="7gxeZuyfxRR" role="2Oq$k0" />
              <node concept="2OwXpG" id="7gxeZuyfxRS" role="2OqNvi">
                <ref role="2Oxat5" node="7gxeZuyfxNm" resolve="repository" />
              </node>
            </node>
            <node concept="37vLTw" id="7gxeZuyfxRT" role="37vLTx">
              <ref role="3cqZAo" node="7gxeZuyfxRJ" resolve="repository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7gxeZuyfxRJ" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="7gxeZuyfxRI" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7gxeZuyfxVk" role="jymVt" />
    <node concept="3clFb_" id="7gxeZuyfxZD" role="jymVt">
      <property role="TrG5h" value="resolve" />
      <node concept="37vLTG" id="7gxeZuyfxZE" role="3clF46">
        <property role="TrG5h" value="ref" />
        <node concept="3uibUv" id="7gxeZuyfxZF" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
        </node>
      </node>
      <node concept="3uibUv" id="7gxeZuyfxZG" role="3clF45">
        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
      </node>
      <node concept="3Tm1VV" id="7gxeZuyfxZH" role="1B3o_S" />
      <node concept="3clFbS" id="7gxeZuyfxZJ" role="3clF47">
        <node concept="3clFbJ" id="7gxeZuyfyfe" role="3cqZAp">
          <node concept="2ZW3vV" id="7gxeZuyfyJL" role="3clFbw">
            <node concept="3uibUv" id="7gxeZuyfyU9" role="2ZW6by">
              <ref role="3uigEE" node="5gTrVpGyZdS" resolve="SNodeReferenceAdapter" />
            </node>
            <node concept="37vLTw" id="7gxeZuyfyoD" role="2ZW6bz">
              <ref role="3cqZAo" node="7gxeZuyfxZE" resolve="ref" />
            </node>
          </node>
          <node concept="3clFbS" id="7gxeZuyfyfg" role="3clFbx">
            <node concept="3cpWs6" id="7gxeZuyfCE0" role="3cqZAp">
              <node concept="2YIFZM" id="7gxeZuyfCE2" role="3cqZAk">
                <ref role="1Pybhc" node="5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                <ref role="37wK5l" node="5gTrVpGyMwR" resolve="wrap" />
                <node concept="2OqwBi" id="7gxeZuyfCE3" role="37wK5m">
                  <node concept="2OqwBi" id="7gxeZuyfCE4" role="2Oq$k0">
                    <node concept="1eOMI4" id="7gxeZuyfCE5" role="2Oq$k0">
                      <node concept="10QFUN" id="7gxeZuyfCE6" role="1eOMHV">
                        <node concept="3uibUv" id="7gxeZuyfCE7" role="10QFUM">
                          <ref role="3uigEE" node="5gTrVpGyZdS" resolve="SNodeReferenceAdapter" />
                        </node>
                        <node concept="37vLTw" id="7gxeZuyfCE8" role="10QFUP">
                          <ref role="3cqZAo" node="7gxeZuyfxZE" resolve="ref" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7gxeZuyfCE9" role="2OqNvi">
                      <ref role="37wK5l" node="QurUgiyYyg" resolve="getReference" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7gxeZuyfCEa" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                    <node concept="37vLTw" id="7gxeZuyfCEb" role="37wK5m">
                      <ref role="3cqZAo" node="7gxeZuyfxNm" resolve="repository" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="7gxeZuyfz3Q" role="9aQIa">
            <node concept="3clFbS" id="7gxeZuyfz3R" role="9aQI4">
              <node concept="3cpWs6" id="6TdxBJ4kknL" role="3cqZAp">
                <node concept="10Nm6u" id="6TdxBJ4kkA5" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7gxeZuyfxZK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3uibUv" id="7gxeZuyfxYl" role="EKbjA">
      <ref role="3uigEE" to="jks5:~INodeResolveContext" resolve="INodeResolveContext" />
    </node>
  </node>
  <node concept="312cEu" id="30TKBrMa5zj">
    <property role="TrG5h" value="SNodeAPI" />
    <node concept="2tJIrI" id="30TKBrMa5A0" role="jymVt" />
    <node concept="2YIFZL" id="5X1StJF1bgV" role="jymVt">
      <property role="TrG5h" value="clearChildren" />
      <node concept="3clFbS" id="5X1StJF1b4D" role="3clF47">
        <node concept="2$JKZl" id="5X1StJF1bzp" role="3cqZAp">
          <node concept="3clFbS" id="5X1StJF1bzq" role="2LFqv$">
            <node concept="3clFbF" id="5X1StJF1dpv" role="3cqZAp">
              <node concept="2OqwBi" id="5X1StJF1dHX" role="3clFbG">
                <node concept="37vLTw" id="5X1StJF1dpt" role="2Oq$k0">
                  <ref role="3cqZAo" node="5X1StJF1bdW" resolve="parent" />
                </node>
                <node concept="liA8E" id="5X1StJF1dJU" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.removeChild(org.jetbrains.mps.openapi.model.SNode)" resolve="removeChild" />
                  <node concept="2OqwBi" id="5X1StJF1eVu" role="37wK5m">
                    <node concept="2OqwBi" id="5X1StJF1eJn" role="2Oq$k0">
                      <node concept="2OqwBi" id="5X1StJF1eJo" role="2Oq$k0">
                        <node concept="37vLTw" id="5X1StJF1eJp" role="2Oq$k0">
                          <ref role="3cqZAo" node="5X1StJF1bdW" resolve="parent" />
                        </node>
                        <node concept="liA8E" id="5X1StJF1eJq" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                          <node concept="37vLTw" id="5X1StJF1eJr" role="37wK5m">
                            <ref role="3cqZAo" node="5X1StJF1bqf" resolve="role" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="5X1StJF1eJs" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Iterable.iterator()" resolve="iterator" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5X1StJF1fby" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Iterator.next()" resolve="next" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5X1StJF1en9" role="2$JKZa">
            <node concept="2OqwBi" id="5X1StJF1dTI" role="2Oq$k0">
              <node concept="2OqwBi" id="5X1StJF1cUH" role="2Oq$k0">
                <node concept="37vLTw" id="5X1StJF1bDE" role="2Oq$k0">
                  <ref role="3cqZAo" node="5X1StJF1bdW" resolve="parent" />
                </node>
                <node concept="liA8E" id="5X1StJF1d5Z" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                  <node concept="37vLTw" id="5X1StJF1dfx" role="37wK5m">
                    <ref role="3cqZAo" node="5X1StJF1bqf" resolve="role" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5X1StJF1e77" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Iterable.iterator()" resolve="iterator" />
              </node>
            </node>
            <node concept="liA8E" id="5X1StJF1eFZ" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Iterator.hasNext()" resolve="hasNext" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5X1StJF1bdW" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="5X1StJF1bgQ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="5X1StJF1bqf" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="3uibUv" id="5X1StJF1btb" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="3cqZAl" id="5X1StJF1b4B" role="3clF45" />
      <node concept="3Tm1VV" id="5X1StJF1b4C" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5X1StJF1feV" role="jymVt" />
    <node concept="2YIFZL" id="5X1StJF1jI6" role="jymVt">
      <property role="TrG5h" value="replaceWithNewChild" />
      <node concept="3clFbS" id="5X1StJF1fzP" role="3clF47">
        <node concept="3clFbF" id="5X1StJF1g5M" role="3cqZAp">
          <node concept="1rXfSq" id="5X1StJF1g5L" role="3clFbG">
            <ref role="37wK5l" node="5X1StJF1bgV" resolve="clearChildren" />
            <node concept="37vLTw" id="5X1StJF1gc1" role="37wK5m">
              <ref role="3cqZAo" node="5X1StJF1fNn" resolve="parent" />
            </node>
            <node concept="37vLTw" id="5X1StJF1gjy" role="37wK5m">
              <ref role="3cqZAo" node="5X1StJF1fNr" resolve="role" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5X1StJF1hdW" role="3cqZAp">
          <node concept="1rXfSq" id="5X1StJF1hdY" role="3cqZAk">
            <ref role="37wK5l" node="30TKBrMe336" resolve="addNewChild" />
            <node concept="37vLTw" id="5X1StJF1hdZ" role="37wK5m">
              <ref role="3cqZAo" node="5X1StJF1fNn" resolve="parent" />
            </node>
            <node concept="37vLTw" id="5X1StJF1he0" role="37wK5m">
              <ref role="3cqZAo" node="5X1StJF1fNr" resolve="role" />
            </node>
            <node concept="3cmrfG" id="5X1StJF1he2" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="5X1StJF1he1" role="37wK5m">
              <ref role="3cqZAo" node="5X1StJF1fQq" resolve="childConcept" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5X1StJF1fNn" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="5X1StJF1fNm" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="5X1StJF1fNr" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="3uibUv" id="5X1StJF1fQn" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="37vLTG" id="5X1StJF1fQq" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <node concept="3uibUv" id="5X1StJF1fTo" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3uibUv" id="5X1StJF1fKt" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm1VV" id="5X1StJF1fzO" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5X1StJF1hed" role="jymVt" />
    <node concept="2YIFZL" id="5X1StJF1jyg" role="jymVt">
      <property role="TrG5h" value="replaceWithCopy" />
      <node concept="3clFbS" id="5X1StJF1hzL" role="3clF47">
        <node concept="3clFbF" id="5X1StJF1hU_" role="3cqZAp">
          <node concept="1rXfSq" id="5X1StJF1hU$" role="3clFbG">
            <ref role="37wK5l" node="5X1StJF1bgV" resolve="clearChildren" />
            <node concept="37vLTw" id="5X1StJF1i6Z" role="37wK5m">
              <ref role="3cqZAo" node="5X1StJF1hHU" resolve="targetParent" />
            </node>
            <node concept="37vLTw" id="5X1StJF1iy_" role="37wK5m">
              <ref role="3cqZAo" node="5X1StJF1hHW" resolve="targetRole" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5X1StJF1iJ7" role="3cqZAp">
          <node concept="1rXfSq" id="5X1StJF1iJ5" role="3clFbG">
            <ref role="37wK5l" node="6IHVO0th1QC" resolve="copyTo" />
            <node concept="37vLTw" id="5X1StJF1iV_" role="37wK5m">
              <ref role="3cqZAo" node="5X1StJF1hHS" resolve="sourceNode" />
            </node>
            <node concept="37vLTw" id="5X1StJF1j9i" role="37wK5m">
              <ref role="3cqZAo" node="5X1StJF1hHU" resolve="targetParent" />
            </node>
            <node concept="37vLTw" id="5X1StJF1jpK" role="37wK5m">
              <ref role="3cqZAo" node="5X1StJF1hHW" resolve="targetRole" />
            </node>
            <node concept="3cmrfG" id="5X1StJF1jwI" role="37wK5m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5X1StJF1hHS" role="3clF46">
        <property role="TrG5h" value="sourceNode" />
        <node concept="16syzq" id="5X1StJF1v7d" role="1tU5fm">
          <ref role="16sUi3" node="5X1StJF1v1g" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="5X1StJF1hHU" role="3clF46">
        <property role="TrG5h" value="targetParent" />
        <node concept="3uibUv" id="5X1StJF1hHV" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="5X1StJF1hHW" role="3clF46">
        <property role="TrG5h" value="targetRole" />
        <node concept="3uibUv" id="5X1StJF1hHX" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="16syzq" id="5X1StJF1v5I" role="3clF45">
        <ref role="16sUi3" node="5X1StJF1v1g" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="5X1StJF1hzK" role="1B3o_S" />
      <node concept="16euLQ" id="5X1StJF1v1g" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3Tqbb2" id="5X1StJF1v4f" role="3ztrMU" />
      </node>
    </node>
    <node concept="2tJIrI" id="5X1StJF17zb" role="jymVt" />
    <node concept="2YIFZL" id="30TKBrMa8hW" role="jymVt">
      <property role="TrG5h" value="addNewChild" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="30TKBrMa5AP" role="3clF47">
        <node concept="3clFbF" id="30TKBrMab7M" role="3cqZAp">
          <node concept="1rXfSq" id="30TKBrMab7L" role="3clFbG">
            <ref role="37wK5l" node="30TKBrMe336" resolve="addNewChild" />
            <node concept="37vLTw" id="30TKBrMab92" role="37wK5m">
              <ref role="3cqZAo" node="30TKBrMa5IR" resolve="parent" />
            </node>
            <node concept="37vLTw" id="30TKBrMabcF" role="37wK5m">
              <ref role="3cqZAo" node="30TKBrMa5MU" resolve="role" />
            </node>
            <node concept="3cmrfG" id="30TKBrMabf0" role="37wK5m">
              <property role="3cmrfH" value="-1" />
            </node>
            <node concept="37vLTw" id="30TKBrMablN" role="37wK5m">
              <ref role="3cqZAo" node="30TKBrMa5Re" resolve="childConcept" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="30TKBrMa5IR" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="30TKBrMa5Kv" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="30TKBrMa5MU" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="3uibUv" id="30TKBrMa5OE" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="37vLTG" id="30TKBrMa5Re" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <node concept="3uibUv" id="30TKBrMa5T4" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3uibUv" id="30TKBrMa5Vx" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm1VV" id="30TKBrMa5AO" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="30TKBrMe2q8" role="jymVt" />
    <node concept="2YIFZL" id="30TKBrMe2kz" role="jymVt">
      <property role="TrG5h" value="addNewChild" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="30TKBrMe2k$" role="3clF47">
        <node concept="3clFbF" id="30TKBrMe2k_" role="3cqZAp">
          <node concept="1rXfSq" id="30TKBrMe2kA" role="3clFbG">
            <ref role="37wK5l" node="30TKBrMe336" resolve="addNewChild" />
            <node concept="37vLTw" id="30TKBrMe2kB" role="37wK5m">
              <ref role="3cqZAo" node="30TKBrMe2kF" resolve="parent" />
            </node>
            <node concept="37vLTw" id="30TKBrMe2kC" role="37wK5m">
              <ref role="3cqZAo" node="30TKBrMe2kH" resolve="role" />
            </node>
            <node concept="3cmrfG" id="30TKBrMe2kD" role="37wK5m">
              <property role="3cmrfH" value="-1" />
            </node>
            <node concept="2OqwBi" id="30TKBrMe2L7" role="37wK5m">
              <node concept="37vLTw" id="30TKBrMe2yE" role="2Oq$k0">
                <ref role="3cqZAo" node="30TKBrMe2kH" resolve="role" />
              </node>
              <node concept="liA8E" id="30TKBrMe30S" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractLink.getTargetConcept()" resolve="getTargetConcept" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="30TKBrMe2kF" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="30TKBrMe2kG" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="30TKBrMe2kH" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="3uibUv" id="30TKBrMe2kI" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="3uibUv" id="30TKBrMe2kL" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm1VV" id="30TKBrMe2kM" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="30TKBrMaaHk" role="jymVt" />
    <node concept="2YIFZL" id="30TKBrMaab5" role="jymVt">
      <property role="TrG5h" value="addNewChild" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="30TKBrMaab6" role="3clF47">
        <node concept="3clFbF" id="30TKBrMe4d3" role="3cqZAp">
          <node concept="1rXfSq" id="30TKBrMe4d2" role="3clFbG">
            <ref role="37wK5l" node="30TKBrMe336" resolve="addNewChild" />
            <node concept="37vLTw" id="30TKBrMe4eq" role="37wK5m">
              <ref role="3cqZAo" node="30TKBrMaabn" resolve="parent" />
            </node>
            <node concept="37vLTw" id="30TKBrMe4ih" role="37wK5m">
              <ref role="3cqZAo" node="30TKBrMaabp" resolve="role" />
            </node>
            <node concept="37vLTw" id="30TKBrMe4x3" role="37wK5m">
              <ref role="3cqZAo" node="30TKBrMaabr" resolve="index" />
            </node>
            <node concept="2OqwBi" id="30TKBrMe4RD" role="37wK5m">
              <node concept="37vLTw" id="30TKBrMe4Dd" role="2Oq$k0">
                <ref role="3cqZAo" node="30TKBrMaabp" resolve="role" />
              </node>
              <node concept="liA8E" id="30TKBrMe5kn" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractLink.getTargetConcept()" resolve="getTargetConcept" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="30TKBrMaabn" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="30TKBrMaabo" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="30TKBrMaabp" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="3uibUv" id="30TKBrMaabq" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="37vLTG" id="30TKBrMaabr" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="30TKBrMaabs" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="30TKBrMaabv" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm1VV" id="30TKBrMaabw" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="30TKBrMe3B7" role="jymVt" />
    <node concept="2YIFZL" id="30TKBrMe336" role="jymVt">
      <property role="TrG5h" value="addNewChild" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="30TKBrMe337" role="3clF47">
        <node concept="3cpWs8" id="30TKBrMe338" role="3cqZAp">
          <node concept="3cpWsn" id="30TKBrMe339" role="3cpWs9">
            <property role="TrG5h" value="newChild" />
            <node concept="3uibUv" id="30TKBrMe33a" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
            </node>
            <node concept="2OqwBi" id="30TKBrMe33b" role="33vP2m">
              <node concept="2YIFZM" id="30TKBrMe33c" role="2Oq$k0">
                <ref role="1Pybhc" node="5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                <ref role="37wK5l" node="5gTrVpGyMwR" resolve="wrap" />
                <node concept="37vLTw" id="6iwFuQBlIPX" role="37wK5m">
                  <ref role="3cqZAo" node="30TKBrMe33o" resolve="parent" />
                </node>
              </node>
              <node concept="liA8E" id="30TKBrMe33e" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~INode.addNewChild(java.lang.String,int,org.modelix.model.api.IConcept)" resolve="addNewChild" />
                <node concept="2OqwBi" id="30TKBrMe33f" role="37wK5m">
                  <node concept="37vLTw" id="30TKBrMe33g" role="2Oq$k0">
                    <ref role="3cqZAo" node="30TKBrMe33q" resolve="role" />
                  </node>
                  <node concept="liA8E" id="30TKBrMe33h" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="37vLTw" id="30TKBrMe33i" role="37wK5m">
                  <ref role="3cqZAo" node="30TKBrMe33s" resolve="index" />
                </node>
                <node concept="2YIFZM" id="30TKBrMe33j" role="37wK5m">
                  <ref role="1Pybhc" node="5gTrVpGjuL2" resolve="SConceptAdapter" />
                  <ref role="37wK5l" node="3ECE8iPOmg5" resolve="wrap" />
                  <node concept="37vLTw" id="30TKBrMe33k" role="37wK5m">
                    <ref role="3cqZAo" node="30TKBrMe33u" resolve="childConcept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="35N923A$lmU" role="3cqZAp">
          <node concept="3clFbS" id="35N923A$lmW" role="3clFbx">
            <node concept="YS8fn" id="35N923A$lNs" role="3cqZAp">
              <node concept="2ShNRf" id="35N923A$lOK" role="YScLw">
                <node concept="1pGfFk" id="35N923A$mlQ" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="Xl_RD" id="35N923A$mpB" role="37wK5m">
                    <property role="Xl_RC" value="addNewChild has to return the created child node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="35N923A$lEO" role="3clFbw">
            <node concept="10Nm6u" id="35N923A$lMu" role="3uHU7w" />
            <node concept="37vLTw" id="35N923A$lu1" role="3uHU7B">
              <ref role="3cqZAo" node="30TKBrMe339" resolve="newChild" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="30TKBrMe33l" role="3cqZAp">
          <node concept="2YIFZM" id="30TKBrMe33m" role="3clFbG">
            <ref role="1Pybhc" node="4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
            <ref role="37wK5l" node="4EhVFrZ6z9$" resolve="wrap" />
            <node concept="37vLTw" id="30TKBrMe33n" role="37wK5m">
              <ref role="3cqZAo" node="30TKBrMe339" resolve="newChild" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="30TKBrMe33o" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="30TKBrMe33p" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="30TKBrMe33q" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="3uibUv" id="30TKBrMe33r" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="37vLTG" id="30TKBrMe33s" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="30TKBrMe33t" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="30TKBrMe33u" role="3clF46">
        <property role="TrG5h" value="childConcept" />
        <node concept="3uibUv" id="30TKBrMe33v" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3uibUv" id="30TKBrMe33w" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm1VV" id="30TKBrMe33x" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5Nhi$S9SI$P" role="jymVt" />
    <node concept="2YIFZL" id="6IHVO0thumm" role="jymVt">
      <property role="TrG5h" value="copyAsMPSNode" />
      <node concept="3clFbS" id="6IHVO0tgY6h" role="3clF47">
        <node concept="3clFbF" id="6IHVO0tgY6i" role="3cqZAp">
          <node concept="10QFUN" id="2jBAMx3De_4" role="3clFbG">
            <node concept="1rXfSq" id="2jBAMx3De$V" role="10QFUP">
              <ref role="37wK5l" node="5Nhi$S9T8hu" resolve="copyRootNode" />
              <node concept="37vLTw" id="2jBAMx3De$W" role="37wK5m">
                <ref role="3cqZAo" node="6IHVO0tgY6d" resolve="sourceNode" />
              </node>
              <node concept="2OqwBi" id="46qXl7aGYzx" role="37wK5m">
                <node concept="2OqwBi" id="46qXl7aGXPV" role="2Oq$k0">
                  <node concept="37vLTw" id="46qXl7aGXPW" role="2Oq$k0">
                    <ref role="3cqZAo" node="6IHVO0tgY6d" resolve="sourceNode" />
                  </node>
                  <node concept="2yIwOk" id="46qXl7aGXPX" role="2OqNvi" />
                </node>
                <node concept="LFhST" id="46qXl7aHbAa" role="2OqNvi" />
              </node>
            </node>
            <node concept="16syzq" id="2jBAMx3Dfqf" role="10QFUM">
              <ref role="16sUi3" node="2jBAMx3DbZt" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6IHVO0tgY6d" role="3clF46">
        <property role="TrG5h" value="sourceNode" />
        <node concept="16syzq" id="2jBAMx3Ddvy" role="1tU5fm">
          <ref role="16sUi3" node="2jBAMx3DbZt" resolve="T" />
        </node>
      </node>
      <node concept="16syzq" id="2jBAMx3DcqE" role="3clF45">
        <ref role="16sUi3" node="2jBAMx3DbZt" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="6IHVO0tgY6g" role="1B3o_S" />
      <node concept="16euLQ" id="2jBAMx3DbZt" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3Tqbb2" id="2jBAMx3Dcp4" role="3ztrMU" />
      </node>
    </node>
    <node concept="2tJIrI" id="6IHVO0th5ux" role="jymVt" />
    <node concept="2YIFZL" id="6IHVO0th1QC" role="jymVt">
      <property role="TrG5h" value="copyTo" />
      <node concept="3clFbS" id="6IHVO0th1QD" role="3clF47">
        <node concept="3cpWs8" id="6IHVO0th1QE" role="3cqZAp">
          <node concept="3cpWsn" id="6IHVO0th1QF" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3bZ5Sz" id="4cPrGrnPWtF" role="1tU5fm" />
            <node concept="2OqwBi" id="6IHVO0th1QH" role="33vP2m">
              <node concept="37vLTw" id="6IHVO0th1QI" role="2Oq$k0">
                <ref role="3cqZAo" node="6IHVO0th1R9" resolve="sourceNode" />
              </node>
              <node concept="2yIwOk" id="4cPrGrnPVWs" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6IHVO0th1QK" role="3cqZAp">
          <node concept="3cpWsn" id="6IHVO0th1QL" role="3cpWs9">
            <property role="TrG5h" value="copy" />
            <node concept="3uibUv" id="6IHVO0th1QM" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="1rXfSq" id="6IHVO0th1QN" role="33vP2m">
              <ref role="37wK5l" node="30TKBrMe336" resolve="addNewChild" />
              <node concept="37vLTw" id="6IHVO0th1QO" role="37wK5m">
                <ref role="3cqZAo" node="6IHVO0th1Rb" resolve="targetParent" />
              </node>
              <node concept="37vLTw" id="6IHVO0th1QP" role="37wK5m">
                <ref role="3cqZAo" node="6IHVO0th1Rd" resolve="targetRole" />
              </node>
              <node concept="37vLTw" id="6IHVO0th1QQ" role="37wK5m">
                <ref role="3cqZAo" node="6IHVO0th1Rf" resolve="targetIndex" />
              </node>
              <node concept="37vLTw" id="6IHVO0th1QR" role="37wK5m">
                <ref role="3cqZAo" node="6IHVO0th1QF" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6IHVO0th9d5" role="3cqZAp">
          <node concept="1rXfSq" id="6IHVO0th9d7" role="3cqZAk">
            <ref role="37wK5l" node="5Nhi$S9T8hu" resolve="copyRootNode" />
            <node concept="37vLTw" id="6IHVO0th9d8" role="37wK5m">
              <ref role="3cqZAo" node="6IHVO0th1R9" resolve="sourceNode" />
            </node>
            <node concept="1eOMI4" id="5X1StJF4ohl" role="37wK5m">
              <node concept="10QFUN" id="5X1StJF4ohk" role="1eOMHV">
                <node concept="37vLTw" id="5X1StJF4ohj" role="10QFUP">
                  <ref role="3cqZAo" node="6IHVO0th1QL" resolve="copy" />
                </node>
                <node concept="16syzq" id="5X1StJF4ohi" role="10QFUM">
                  <ref role="16sUi3" node="5X1StJF1vnt" resolve="T" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6IHVO0th1R9" role="3clF46">
        <property role="TrG5h" value="sourceNode" />
        <node concept="16syzq" id="5X1StJF1vtq" role="1tU5fm">
          <ref role="16sUi3" node="5X1StJF1vnt" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="6IHVO0th1Rb" role="3clF46">
        <property role="TrG5h" value="targetParent" />
        <node concept="3uibUv" id="6IHVO0th1Rc" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="6IHVO0th1Rd" role="3clF46">
        <property role="TrG5h" value="targetRole" />
        <node concept="3uibUv" id="6IHVO0th1Re" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="37vLTG" id="6IHVO0th1Rf" role="3clF46">
        <property role="TrG5h" value="targetIndex" />
        <node concept="10Oyi0" id="6IHVO0th1Rg" role="1tU5fm" />
      </node>
      <node concept="16syzq" id="5X1StJF1vrV" role="3clF45">
        <ref role="16sUi3" node="5X1StJF1vnt" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="6IHVO0th3H0" role="1B3o_S" />
      <node concept="16euLQ" id="5X1StJF1vnt" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3Tqbb2" id="5X1StJF1vqs" role="3ztrMU" />
      </node>
    </node>
    <node concept="2tJIrI" id="6IHVO0tfewC" role="jymVt" />
    <node concept="2YIFZL" id="5Nhi$S9T8hu" role="jymVt">
      <property role="TrG5h" value="copyRootNode" />
      <node concept="3clFbS" id="5Nhi$S9T8hv" role="3clF47">
        <node concept="3cpWs8" id="5Nhi$S9TeKJ" role="3cqZAp">
          <node concept="3cpWsn" id="5Nhi$S9TeKK" role="3cpWs9">
            <property role="TrG5h" value="copiedNodes" />
            <node concept="3rvAFt" id="5Nhi$S9Tehx" role="1tU5fm">
              <node concept="3uibUv" id="5Nhi$S9TehB" role="3rvQeY">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="3uibUv" id="5Nhi$S9TehA" role="3rvSg0">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="5Nhi$S9TeKL" role="33vP2m">
              <node concept="3rGOSV" id="5Nhi$S9TeKM" role="2ShVmc">
                <node concept="3uibUv" id="5Nhi$S9TeKN" role="3rHrn6">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="3uibUv" id="5Nhi$S9TeKO" role="3rHtpV">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6IHVO0tgJiB" role="3cqZAp">
          <node concept="37vLTI" id="6IHVO0tgJiC" role="3clFbG">
            <node concept="37vLTw" id="6IHVO0tgNuw" role="37vLTx">
              <ref role="3cqZAo" node="6IHVO0tgCxE" resolve="copy" />
            </node>
            <node concept="3EllGN" id="6IHVO0tgJiE" role="37vLTJ">
              <node concept="37vLTw" id="6IHVO0tgJiF" role="3ElVtu">
                <ref role="3cqZAo" node="5Nhi$S9T8i9" resolve="sourceNode" />
              </node>
              <node concept="37vLTw" id="6IHVO0tgJiG" role="3ElQJh">
                <ref role="3cqZAo" node="5Nhi$S9TeKK" resolve="copiedNodes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6IHVO0tgJiH" role="3cqZAp">
          <node concept="1rXfSq" id="6IHVO0tgJiI" role="3clFbG">
            <ref role="37wK5l" node="6IHVO0tfysG" resolve="copyProperties" />
            <node concept="37vLTw" id="6IHVO0tgJiJ" role="37wK5m">
              <ref role="3cqZAo" node="5Nhi$S9T8i9" resolve="sourceNode" />
            </node>
            <node concept="37vLTw" id="6IHVO0tgO9r" role="37wK5m">
              <ref role="3cqZAo" node="6IHVO0tgCxE" resolve="copy" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6IHVO0tgJiL" role="3cqZAp">
          <node concept="1rXfSq" id="6IHVO0tgJiM" role="3clFbG">
            <ref role="37wK5l" node="6IHVO0tfAaJ" resolve="copyChildren" />
            <node concept="37vLTw" id="6IHVO0tgJiN" role="37wK5m">
              <ref role="3cqZAo" node="5Nhi$S9T8i9" resolve="sourceNode" />
            </node>
            <node concept="37vLTw" id="6IHVO0tgOzg" role="37wK5m">
              <ref role="3cqZAo" node="6IHVO0tgCxE" resolve="copy" />
            </node>
            <node concept="37vLTw" id="6IHVO0tgJiP" role="37wK5m">
              <ref role="3cqZAo" node="5Nhi$S9TeKK" resolve="copiedNodes" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6IHVO0tgttd" role="3cqZAp">
          <node concept="1rXfSq" id="6IHVO0tgttb" role="3clFbG">
            <ref role="37wK5l" node="6IHVO0tgkwT" resolve="resolveReferences" />
            <node concept="37vLTw" id="6IHVO0tguxR" role="37wK5m">
              <ref role="3cqZAo" node="5Nhi$S9TeKK" resolve="copiedNodes" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5Nhi$S9ThZg" role="3cqZAp">
          <node concept="37vLTw" id="6IHVO0tgOQa" role="3cqZAk">
            <ref role="3cqZAo" node="6IHVO0tgCxE" resolve="copy" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5Nhi$S9T8i9" role="3clF46">
        <property role="TrG5h" value="sourceNode" />
        <node concept="16syzq" id="5X1StJF1vT7" role="1tU5fm">
          <ref role="16sUi3" node="5X1StJF1vtw" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="6IHVO0tgCxE" role="3clF46">
        <property role="TrG5h" value="copy" />
        <node concept="16syzq" id="5X1StJF1vxY" role="1tU5fm">
          <ref role="16sUi3" node="5X1StJF1vtw" resolve="T" />
        </node>
      </node>
      <node concept="16syzq" id="5X1StJF1vI6" role="3clF45">
        <ref role="16sUi3" node="5X1StJF1vtw" resolve="T" />
      </node>
      <node concept="3Tm6S6" id="6IHVO0tgH_J" role="1B3o_S" />
      <node concept="16euLQ" id="5X1StJF1vtw" role="16eVyc">
        <property role="TrG5h" value="T" />
        <node concept="3Tqbb2" id="5X1StJF1vwv" role="3ztrMU" />
      </node>
    </node>
    <node concept="2tJIrI" id="5Nhi$S9T9JB" role="jymVt" />
    <node concept="2YIFZL" id="5Nhi$S9SOEo" role="jymVt">
      <property role="TrG5h" value="copyTo" />
      <node concept="3clFbS" id="5Nhi$S9SKOM" role="3clF47">
        <node concept="3cpWs8" id="5Nhi$S9STby" role="3cqZAp">
          <node concept="3cpWsn" id="5Nhi$S9STbz" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3uibUv" id="5Nhi$S9ST7M" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
            </node>
            <node concept="2OqwBi" id="5Nhi$S9STb$" role="33vP2m">
              <node concept="37vLTw" id="5Nhi$S9STb_" role="2Oq$k0">
                <ref role="3cqZAo" node="5Nhi$S9SNrj" resolve="sourceNode" />
              </node>
              <node concept="liA8E" id="5Nhi$S9STbA" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5Nhi$S9SRzn" role="3cqZAp">
          <node concept="3cpWsn" id="5Nhi$S9SRzo" role="3cpWs9">
            <property role="TrG5h" value="copy" />
            <node concept="3uibUv" id="5Nhi$S9SRxp" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="1rXfSq" id="5Nhi$S9SRzp" role="33vP2m">
              <ref role="37wK5l" node="30TKBrMe336" resolve="addNewChild" />
              <node concept="37vLTw" id="5Nhi$S9SRzq" role="37wK5m">
                <ref role="3cqZAo" node="5Nhi$S9SMjO" resolve="targetParent" />
              </node>
              <node concept="37vLTw" id="5Nhi$S9SRzr" role="37wK5m">
                <ref role="3cqZAo" node="5Nhi$S9SN0I" resolve="targetRole" />
              </node>
              <node concept="37vLTw" id="5Nhi$S9SRzs" role="37wK5m">
                <ref role="3cqZAo" node="5Nhi$S9SOeU" resolve="targetIndex" />
              </node>
              <node concept="37vLTw" id="5Nhi$S9STbC" role="37wK5m">
                <ref role="3cqZAo" node="5Nhi$S9STbz" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Nhi$S9TQzj" role="3cqZAp">
          <node concept="37vLTI" id="5Nhi$S9TRTJ" role="3clFbG">
            <node concept="37vLTw" id="5Nhi$S9TSlu" role="37vLTx">
              <ref role="3cqZAo" node="5Nhi$S9SRzo" resolve="copy" />
            </node>
            <node concept="3EllGN" id="5Nhi$S9TR2r" role="37vLTJ">
              <node concept="37vLTw" id="5Nhi$S9TRz0" role="3ElVtu">
                <ref role="3cqZAo" node="5Nhi$S9SNrj" resolve="sourceNode" />
              </node>
              <node concept="37vLTw" id="5Nhi$S9TQzh" role="3ElQJh">
                <ref role="3cqZAo" node="5Nhi$S9T0pf" resolve="copiedNodes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6IHVO0tfxBh" role="3cqZAp">
          <node concept="1rXfSq" id="6IHVO0tf$5a" role="3clFbG">
            <ref role="37wK5l" node="6IHVO0tfysG" resolve="copyProperties" />
            <node concept="37vLTw" id="6IHVO0tf_1i" role="37wK5m">
              <ref role="3cqZAo" node="5Nhi$S9SNrj" resolve="sourceNode" />
            </node>
            <node concept="37vLTw" id="6IHVO0tf_fA" role="37wK5m">
              <ref role="3cqZAo" node="5Nhi$S9SRzo" resolve="copy" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6IHVO0tgbn1" role="3cqZAp">
          <node concept="1rXfSq" id="6IHVO0tgbmZ" role="3clFbG">
            <ref role="37wK5l" node="6IHVO0tfAaJ" resolve="copyChildren" />
            <node concept="37vLTw" id="6IHVO0tgczy" role="37wK5m">
              <ref role="3cqZAo" node="5Nhi$S9SNrj" resolve="sourceNode" />
            </node>
            <node concept="37vLTw" id="6IHVO0tgcTU" role="37wK5m">
              <ref role="3cqZAo" node="5Nhi$S9SRzo" resolve="copy" />
            </node>
            <node concept="37vLTw" id="6IHVO0tgdbK" role="37wK5m">
              <ref role="3cqZAo" node="5Nhi$S9T0pf" resolve="copiedNodes" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6IHVO0tgeHA" role="3cqZAp">
          <node concept="37vLTw" id="6IHVO0tgeHC" role="3cqZAk">
            <ref role="3cqZAo" node="5Nhi$S9SRzo" resolve="copy" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5Nhi$S9SNrj" role="3clF46">
        <property role="TrG5h" value="sourceNode" />
        <node concept="3uibUv" id="5Nhi$S9SNLu" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="5Nhi$S9SMjO" role="3clF46">
        <property role="TrG5h" value="targetParent" />
        <node concept="3uibUv" id="5Nhi$S9SMDR" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="5Nhi$S9SN0I" role="3clF46">
        <property role="TrG5h" value="targetRole" />
        <node concept="3uibUv" id="5Nhi$S9SNmP" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="37vLTG" id="5Nhi$S9SOeU" role="3clF46">
        <property role="TrG5h" value="targetIndex" />
        <node concept="10Oyi0" id="5Nhi$S9SOym" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5Nhi$S9T0pf" role="3clF46">
        <property role="TrG5h" value="copiedNodes" />
        <node concept="3rvAFt" id="5Nhi$S9T0Ib" role="1tU5fm">
          <node concept="3uibUv" id="5Nhi$S9T0Rj" role="3rvQeY">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
          <node concept="3uibUv" id="5Nhi$S9T1ql" role="3rvSg0">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5Nhi$S9SLUb" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm6S6" id="5Nhi$S9T7Yq" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6IHVO0tfiob" role="jymVt" />
    <node concept="2YIFZL" id="6IHVO0tfysG" role="jymVt">
      <property role="TrG5h" value="copyProperties" />
      <node concept="3clFbS" id="6IHVO0tfjAZ" role="3clF47">
        <node concept="2Gpval" id="6IHVO0tfpPa" role="3cqZAp">
          <node concept="2GrKxI" id="6IHVO0tfpPb" role="2Gsz3X">
            <property role="TrG5h" value="property" />
          </node>
          <node concept="2OqwBi" id="6IHVO0tfpPc" role="2GsD0m">
            <node concept="2OqwBi" id="6IHVO0tfs6Y" role="2Oq$k0">
              <node concept="37vLTw" id="6IHVO0tfrIw" role="2Oq$k0">
                <ref role="3cqZAo" node="6IHVO0tfmuv" resolve="source" />
              </node>
              <node concept="liA8E" id="6IHVO0tfsok" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
              </node>
            </node>
            <node concept="liA8E" id="6IHVO0tftfU" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.getProperties()" resolve="getProperties" />
            </node>
          </node>
          <node concept="3clFbS" id="6IHVO0tfpPf" role="2LFqv$">
            <node concept="3cpWs8" id="6IHVO0tfpPg" role="3cqZAp">
              <node concept="3cpWsn" id="6IHVO0tfpPh" role="3cpWs9">
                <property role="TrG5h" value="value" />
                <node concept="17QB3L" id="6IHVO0tfpPi" role="1tU5fm" />
                <node concept="2OqwBi" id="6IHVO0tfpPj" role="33vP2m">
                  <node concept="37vLTw" id="6IHVO0tfqLA" role="2Oq$k0">
                    <ref role="3cqZAo" node="6IHVO0tfmuv" resolve="source" />
                  </node>
                  <node concept="liA8E" id="6IHVO0tfpPl" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                    <node concept="2GrUjf" id="6IHVO0tfpPm" role="37wK5m">
                      <ref role="2Gs0qQ" node="6IHVO0tfpPb" resolve="property" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6IHVO0tfpPn" role="3cqZAp">
              <node concept="3clFbS" id="6IHVO0tfpPo" role="3clFbx">
                <node concept="3clFbF" id="6IHVO0tfpPp" role="3cqZAp">
                  <node concept="2OqwBi" id="6IHVO0tfpPq" role="3clFbG">
                    <node concept="37vLTw" id="6IHVO0tfrib" role="2Oq$k0">
                      <ref role="3cqZAo" node="6IHVO0tfo9M" resolve="target" />
                    </node>
                    <node concept="liA8E" id="6IHVO0tfpPs" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
                      <node concept="2GrUjf" id="6IHVO0tfpPt" role="37wK5m">
                        <ref role="2Gs0qQ" node="6IHVO0tfpPb" resolve="property" />
                      </node>
                      <node concept="37vLTw" id="6IHVO0tfpPu" role="37wK5m">
                        <ref role="3cqZAo" node="6IHVO0tfpPh" resolve="value" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="6IHVO0tfpPv" role="3clFbw">
                <node concept="10Nm6u" id="6IHVO0tfpPw" role="3uHU7w" />
                <node concept="37vLTw" id="6IHVO0tfpPx" role="3uHU7B">
                  <ref role="3cqZAo" node="6IHVO0tfpPh" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6IHVO0tfmuv" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3uibUv" id="6IHVO0tfnhp" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="6IHVO0tfo9M" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="6IHVO0tfoWK" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3cqZAl" id="6IHVO0tfjAX" role="3clF45" />
      <node concept="3Tm6S6" id="6IHVO0tftBL" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6IHVO0tfB$4" role="jymVt" />
    <node concept="2YIFZL" id="6IHVO0tfAaJ" role="jymVt">
      <property role="TrG5h" value="copyChildren" />
      <node concept="3clFbS" id="6IHVO0tfAaK" role="3clF47">
        <node concept="2Gpval" id="6IHVO0tfEbx" role="3cqZAp">
          <node concept="2GrKxI" id="6IHVO0tfEby" role="2Gsz3X">
            <property role="TrG5h" value="link" />
          </node>
          <node concept="2OqwBi" id="6IHVO0tfEbz" role="2GsD0m">
            <node concept="2OqwBi" id="6IHVO0tfFU8" role="2Oq$k0">
              <node concept="37vLTw" id="6IHVO0tfF9A" role="2Oq$k0">
                <ref role="3cqZAo" node="6IHVO0tfAbb" resolve="source" />
              </node>
              <node concept="liA8E" id="6IHVO0tfG7c" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
              </node>
            </node>
            <node concept="liA8E" id="6IHVO0tfGTh" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.getContainmentLinks()" resolve="getContainmentLinks" />
            </node>
          </node>
          <node concept="3clFbS" id="6IHVO0tfEbA" role="2LFqv$">
            <node concept="2Gpval" id="6IHVO0tfEbB" role="3cqZAp">
              <node concept="2GrKxI" id="6IHVO0tfEbC" role="2Gsz3X">
                <property role="TrG5h" value="child" />
              </node>
              <node concept="2OqwBi" id="6IHVO0tfEbD" role="2GsD0m">
                <node concept="37vLTw" id="6IHVO0tfHil" role="2Oq$k0">
                  <ref role="3cqZAo" node="6IHVO0tfAbb" resolve="source" />
                </node>
                <node concept="liA8E" id="6IHVO0tfEbF" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                  <node concept="2GrUjf" id="6IHVO0tfEbG" role="37wK5m">
                    <ref role="2Gs0qQ" node="6IHVO0tfEby" resolve="link" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6IHVO0tfEbH" role="2LFqv$">
                <node concept="3clFbF" id="6IHVO0tfEbI" role="3cqZAp">
                  <node concept="1rXfSq" id="6IHVO0tfEbJ" role="3clFbG">
                    <ref role="37wK5l" node="5Nhi$S9SOEo" resolve="copyTo" />
                    <node concept="2GrUjf" id="6IHVO0tfEbK" role="37wK5m">
                      <ref role="2Gs0qQ" node="6IHVO0tfEbC" resolve="child" />
                    </node>
                    <node concept="37vLTw" id="6IHVO0tfHKD" role="37wK5m">
                      <ref role="3cqZAo" node="6IHVO0tfAbd" resolve="target" />
                    </node>
                    <node concept="2GrUjf" id="6IHVO0tfEbM" role="37wK5m">
                      <ref role="2Gs0qQ" node="6IHVO0tfEby" resolve="link" />
                    </node>
                    <node concept="3cmrfG" id="6IHVO0tfEbN" role="37wK5m">
                      <property role="3cmrfH" value="-1" />
                    </node>
                    <node concept="37vLTw" id="6IHVO0tfJn_" role="37wK5m">
                      <ref role="3cqZAo" node="6IHVO0tfIa8" resolve="copiedNodes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6IHVO0tfAbb" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3uibUv" id="6IHVO0tfAbc" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="6IHVO0tfAbd" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="6IHVO0tfAbe" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="6IHVO0tfIa8" role="3clF46">
        <property role="TrG5h" value="copiedNodes" />
        <node concept="3rvAFt" id="6IHVO0tfIa9" role="1tU5fm">
          <node concept="3uibUv" id="6IHVO0tfIaa" role="3rvQeY">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
          <node concept="3uibUv" id="6IHVO0tfIab" role="3rvSg0">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6IHVO0tfAbf" role="3clF45" />
      <node concept="3Tm6S6" id="6IHVO0tfAbg" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6IHVO0tgfpt" role="jymVt" />
    <node concept="2YIFZL" id="6IHVO0tgkwT" role="jymVt">
      <property role="TrG5h" value="resolveReferences" />
      <node concept="37vLTG" id="6IHVO0tgnsW" role="3clF46">
        <property role="TrG5h" value="copiedNodes" />
        <node concept="3rvAFt" id="6IHVO0tgnsX" role="1tU5fm">
          <node concept="3uibUv" id="6IHVO0tgnsY" role="3rvQeY">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
          <node concept="3uibUv" id="6IHVO0tgnsZ" role="3rvSg0">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6IHVO0tgh3l" role="3clF47">
        <node concept="2Gpval" id="6IHVO0tglS7" role="3cqZAp">
          <node concept="2GrKxI" id="6IHVO0tglS8" role="2Gsz3X">
            <property role="TrG5h" value="entry" />
          </node>
          <node concept="37vLTw" id="6IHVO0tglS9" role="2GsD0m">
            <ref role="3cqZAo" node="6IHVO0tgnsW" resolve="copiedNodes" />
          </node>
          <node concept="3clFbS" id="6IHVO0tglSa" role="2LFqv$">
            <node concept="2Gpval" id="6IHVO0tglSb" role="3cqZAp">
              <node concept="2GrKxI" id="6IHVO0tglSc" role="2Gsz3X">
                <property role="TrG5h" value="link" />
              </node>
              <node concept="2OqwBi" id="6IHVO0tglSd" role="2GsD0m">
                <node concept="2OqwBi" id="6IHVO0tglSe" role="2Oq$k0">
                  <node concept="2OqwBi" id="6IHVO0tglSf" role="2Oq$k0">
                    <node concept="2GrUjf" id="6IHVO0tglSg" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="6IHVO0tglS8" resolve="entry" />
                    </node>
                    <node concept="3AY5_j" id="6IHVO0tglSh" role="2OqNvi" />
                  </node>
                  <node concept="liA8E" id="6IHVO0tglSi" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                  </node>
                </node>
                <node concept="liA8E" id="6IHVO0tglSj" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getReferenceLinks()" resolve="getReferenceLinks" />
                </node>
              </node>
              <node concept="3clFbS" id="6IHVO0tglSk" role="2LFqv$">
                <node concept="3cpWs8" id="6IHVO0tglSl" role="3cqZAp">
                  <node concept="3cpWsn" id="6IHVO0tglSm" role="3cpWs9">
                    <property role="TrG5h" value="ref" />
                    <node concept="3uibUv" id="6IHVO0tglSn" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
                    </node>
                    <node concept="2OqwBi" id="6IHVO0tglSo" role="33vP2m">
                      <node concept="2OqwBi" id="6IHVO0tglSp" role="2Oq$k0">
                        <node concept="2GrUjf" id="6IHVO0tglSq" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="6IHVO0tglS8" resolve="entry" />
                        </node>
                        <node concept="3AY5_j" id="6IHVO0tglSr" role="2OqNvi" />
                      </node>
                      <node concept="liA8E" id="6IHVO0tglSs" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getReference(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReference" />
                        <node concept="2GrUjf" id="6IHVO0tglSt" role="37wK5m">
                          <ref role="2Gs0qQ" node="6IHVO0tglSc" resolve="link" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6IHVO0tglSu" role="3cqZAp">
                  <node concept="3clFbS" id="6IHVO0tglSv" role="3clFbx">
                    <node concept="3N13vt" id="6IHVO0tglSw" role="3cqZAp" />
                  </node>
                  <node concept="3clFbC" id="6IHVO0tglSx" role="3clFbw">
                    <node concept="10Nm6u" id="6IHVO0tglSy" role="3uHU7w" />
                    <node concept="37vLTw" id="6IHVO0tglSz" role="3uHU7B">
                      <ref role="3cqZAo" node="6IHVO0tglSm" resolve="ref" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="6IHVO0tglS$" role="3cqZAp">
                  <node concept="3cpWsn" id="6IHVO0tglS_" role="3cpWs9">
                    <property role="TrG5h" value="originalTarget" />
                    <node concept="3uibUv" id="6IHVO0tglSA" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="6IHVO0tglSB" role="33vP2m">
                      <node concept="37vLTw" id="6IHVO0tglSC" role="2Oq$k0">
                        <ref role="3cqZAo" node="6IHVO0tglSm" resolve="ref" />
                      </node>
                      <node concept="liA8E" id="6IHVO0tglSD" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SReference.getTargetNode()" resolve="getTargetNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6IHVO0tglSE" role="3cqZAp">
                  <node concept="3clFbS" id="6IHVO0tglSF" role="3clFbx">
                    <node concept="3N13vt" id="6IHVO0tglSG" role="3cqZAp" />
                  </node>
                  <node concept="3clFbC" id="6IHVO0tglSH" role="3clFbw">
                    <node concept="10Nm6u" id="6IHVO0tglSI" role="3uHU7w" />
                    <node concept="37vLTw" id="6IHVO0tglSJ" role="3uHU7B">
                      <ref role="3cqZAo" node="6IHVO0tglS_" resolve="originalTarget" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="6IHVO0tglSK" role="3cqZAp">
                  <node concept="3cpWsn" id="6IHVO0tglSL" role="3cpWs9">
                    <property role="TrG5h" value="copiedTarget" />
                    <node concept="3uibUv" id="6IHVO0tglSM" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="3EllGN" id="6IHVO0tglSN" role="33vP2m">
                      <node concept="37vLTw" id="6IHVO0tglSO" role="3ElVtu">
                        <ref role="3cqZAo" node="6IHVO0tglS_" resolve="originalTarget" />
                      </node>
                      <node concept="37vLTw" id="6IHVO0tglSP" role="3ElQJh">
                        <ref role="3cqZAo" node="6IHVO0tgnsW" resolve="copiedNodes" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6IHVO0tglSQ" role="3cqZAp">
                  <node concept="2OqwBi" id="6IHVO0tglSR" role="3clFbG">
                    <node concept="2OqwBi" id="6IHVO0tglSS" role="2Oq$k0">
                      <node concept="2GrUjf" id="6IHVO0tglST" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="6IHVO0tglS8" resolve="entry" />
                      </node>
                      <node concept="3AV6Ez" id="6IHVO0tglSU" role="2OqNvi" />
                    </node>
                    <node concept="liA8E" id="6IHVO0tglSV" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
                      <node concept="2GrUjf" id="6IHVO0tglSW" role="37wK5m">
                        <ref role="2Gs0qQ" node="6IHVO0tglSc" resolve="link" />
                      </node>
                      <node concept="3K4zz7" id="6IHVO0tglSX" role="37wK5m">
                        <node concept="37vLTw" id="6IHVO0tglSY" role="3K4E3e">
                          <ref role="3cqZAo" node="6IHVO0tglSL" resolve="copiedTarget" />
                        </node>
                        <node concept="37vLTw" id="6IHVO0tglSZ" role="3K4GZi">
                          <ref role="3cqZAo" node="6IHVO0tglS_" resolve="originalTarget" />
                        </node>
                        <node concept="3y3z36" id="6IHVO0tglT0" role="3K4Cdx">
                          <node concept="10Nm6u" id="6IHVO0tglT1" role="3uHU7w" />
                          <node concept="37vLTw" id="6IHVO0tglT2" role="3uHU7B">
                            <ref role="3cqZAo" node="6IHVO0tglSL" resolve="copiedTarget" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6IHVO0tgh3j" role="3clF45" />
      <node concept="3Tm6S6" id="6IHVO0tglES" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2deitUvXliv" role="jymVt" />
    <node concept="2YIFZL" id="2deitUvXVSx" role="jymVt">
      <property role="TrG5h" value="uniqueString" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="2deitUvXluu" role="3clF47">
        <node concept="3clFbF" id="2deitUvXlHU" role="3cqZAp">
          <node concept="37vLTI" id="2deitUvXlSw" role="3clFbG">
            <node concept="2YIFZM" id="2deitUvXmUn" role="37vLTx">
              <ref role="1Pybhc" node="4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
              <ref role="37wK5l" node="4EhVFrZ6z9$" resolve="wrap" />
              <node concept="2YIFZM" id="6iwFuQBlQCG" role="37wK5m">
                <ref role="37wK5l" node="5gTrVpGyMwR" resolve="wrap" />
                <ref role="1Pybhc" node="5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                <node concept="37vLTw" id="6iwFuQBlQCH" role="37wK5m">
                  <ref role="3cqZAo" node="2deitUvXlF6" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2deitUvXlHT" role="37vLTJ">
              <ref role="3cqZAo" node="2deitUvXlF6" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2deitUvXnhv" role="3cqZAp">
          <node concept="3clFbS" id="2deitUvXnhx" role="3clFbx">
            <node concept="3cpWs6" id="2deitUvXnHd" role="3cqZAp">
              <node concept="2OqwBi" id="2deitUvXogN" role="3cqZAk">
                <node concept="2OqwBi" id="2deitUvXnU0" role="2Oq$k0">
                  <node concept="37vLTw" id="2deitUvXnJ4" role="2Oq$k0">
                    <ref role="3cqZAo" node="2deitUvXlF6" resolve="node" />
                  </node>
                  <node concept="liA8E" id="2deitUvXo7z" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                  </node>
                </node>
                <node concept="liA8E" id="2deitUvXoua" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="2deitUvXnC0" role="3clFbw">
            <node concept="3uibUv" id="2deitUvXnGi" role="2ZW6by">
              <ref role="3uigEE" to="w1kc:~SNode" resolve="SNode" />
            </node>
            <node concept="37vLTw" id="2deitUvXnjp" role="2ZW6bz">
              <ref role="3cqZAo" node="2deitUvXlF6" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="2deitUvXoUd" role="3cqZAp">
          <node concept="2ShNRf" id="2deitUvXp1j" role="YScLw">
            <node concept="1pGfFk" id="2deitUvXpBL" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
              <node concept="3cpWs3" id="2deitUvXrn$" role="37wK5m">
                <node concept="37vLTw" id="2deitUvXrof" role="3uHU7w">
                  <ref role="3cqZAo" node="2deitUvXlF6" resolve="node" />
                </node>
                <node concept="Xl_RD" id="2deitUvXpNP" role="3uHU7B">
                  <property role="Xl_RC" value="Cannot calculate unique string for " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2deitUvXlF6" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="2deitUvXlG9" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="17QB3L" id="2deitUvXlAH" role="3clF45" />
      <node concept="3Tm1VV" id="2deitUvXlut" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="30TKBrMa5Ar" role="jymVt" />
    <node concept="2YIFZL" id="3KKRs1Arluo" role="jymVt">
      <property role="TrG5h" value="getOriginalModel" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="3KKRs1Arl4x" role="3clF47">
        <node concept="3clFbF" id="3KKRs1AroCc" role="3cqZAp">
          <node concept="2EnYce" id="3KKRs1Arphg" role="3clFbG">
            <node concept="1rXfSq" id="3KKRs1AroCb" role="2Oq$k0">
              <ref role="37wK5l" node="3KKRs1ArmiX" resolve="getOriginalNode" />
              <node concept="37vLTw" id="3KKRs1AroES" role="37wK5m">
                <ref role="3cqZAo" node="3KKRs1ArlF_" resolve="node" />
              </node>
            </node>
            <node concept="liA8E" id="3KKRs1Arpe4" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="H_c77" id="3KKRs1ArlF6" role="3clF45" />
      <node concept="3Tm1VV" id="3KKRs1Arl4w" role="1B3o_S" />
      <node concept="37vLTG" id="3KKRs1ArlF_" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="3KKRs1ArlF$" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3KKRs1ArlMu" role="jymVt" />
    <node concept="2YIFZL" id="3KKRs1ArmiX" role="jymVt">
      <property role="TrG5h" value="getOriginalNode" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="3KKRs1Armwc" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="3KKRs1ArmB9" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="3KKRs1ArlZo" role="3clF47">
        <node concept="3clFbF" id="3KKRs1ArmJ6" role="3cqZAp">
          <node concept="0kSF2" id="3KKRs1Aro5i" role="3clFbG">
            <node concept="3uibUv" id="3KKRs1Aroei" role="0kSFW">
              <ref role="3uigEE" to="w1kc:~SNode" resolve="SNode" />
            </node>
            <node concept="2YIFZM" id="3KKRs1ArmJ8" role="0kSFX">
              <ref role="1Pybhc" node="4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
              <ref role="37wK5l" node="1cIlazwUj6r" resolve="wrap" />
              <node concept="37vLTw" id="6iwFuQBlRl8" role="37wK5m">
                <ref role="3cqZAo" node="3KKRs1Armwc" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3KKRs1ArmIw" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm1VV" id="3KKRs1Aro$W" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7uapjVAXZ5s" role="jymVt" />
    <node concept="2YIFZL" id="7uapjVAY0et" role="jymVt">
      <property role="TrG5h" value="tryGetUnwrappedNode" />
      <node concept="37vLTG" id="7uapjVAY0xd" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="7uapjVAY0ym" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3clFbS" id="7uapjVAXZmH" role="3clF47">
        <node concept="3cpWs8" id="7uapjVAY0Hc" role="3cqZAp">
          <node concept="3cpWsn" id="7uapjVAY0Hd" role="3cpWs9">
            <property role="TrG5h" value="unwrapped" />
            <node concept="3uibUv" id="7uapjVAY0Hb" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="1rXfSq" id="7uapjVAY0He" role="33vP2m">
              <ref role="37wK5l" node="3KKRs1ArmiX" resolve="getOriginalNode" />
              <node concept="37vLTw" id="7uapjVAY0Hf" role="37wK5m">
                <ref role="3cqZAo" node="7uapjVAY0xd" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7uapjVAY0sZ" role="3cqZAp">
          <node concept="3K4zz7" id="7uapjVAY1g5" role="3clFbG">
            <node concept="37vLTw" id="7uapjVAY1ia" role="3K4E3e">
              <ref role="3cqZAo" node="7uapjVAY0Hd" resolve="unwrapped" />
            </node>
            <node concept="37vLTw" id="7uapjVAY1jq" role="3K4GZi">
              <ref role="3cqZAo" node="7uapjVAY0xd" resolve="node" />
            </node>
            <node concept="3y3z36" id="7uapjVAY13k" role="3K4Cdx">
              <node concept="10Nm6u" id="7uapjVAY1bt" role="3uHU7w" />
              <node concept="37vLTw" id="7uapjVAY0Hg" role="3uHU7B">
                <ref role="3cqZAo" node="7uapjVAY0Hd" resolve="unwrapped" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7uapjVAY058" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tm1VV" id="7uapjVAXZmG" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3vEzWiOIHF6" role="jymVt" />
    <node concept="2YIFZL" id="3vEzWiOIRS5" role="jymVt">
      <property role="TrG5h" value="runRead" />
      <node concept="3clFbS" id="3vEzWiOIIe$" role="3clF47">
        <node concept="3clFbJ" id="3vEzWiOIJGw" role="3cqZAp">
          <node concept="3clFbS" id="3vEzWiOIJGy" role="3clFbx">
            <node concept="3cpWs8" id="3vEzWiOIKmy" role="3cqZAp">
              <node concept="3cpWsn" id="3vEzWiOIKmz" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3uibUv" id="3vEzWiOIKm$" role="1tU5fm">
                  <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                </node>
                <node concept="2YIFZM" id="3vEzWiOIL8I" role="33vP2m">
                  <ref role="1Pybhc" node="5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                  <ref role="37wK5l" node="5gTrVpGyMwR" resolve="wrap" />
                  <node concept="37vLTw" id="3vEzWiOIL8J" role="37wK5m">
                    <ref role="3cqZAo" node="3vEzWiOIIzu" resolve="snode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3vEzWiOILqn" role="3cqZAp">
              <node concept="3clFbS" id="3vEzWiOILqp" role="3clFbx">
                <node concept="3clFbF" id="3vEzWiOISkE" role="3cqZAp">
                  <node concept="2OqwBi" id="1yReInKEOR" role="3clFbG">
                    <node concept="2OqwBi" id="3vEzWiOIS_y" role="2Oq$k0">
                      <node concept="1eOMI4" id="3vEzWiOISkB" role="2Oq$k0">
                        <node concept="10QFUN" id="3vEzWiOISk$" role="1eOMHV">
                          <node concept="3uibUv" id="3vEzWiOISkD" role="10QFUM">
                            <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                          </node>
                          <node concept="37vLTw" id="3vEzWiOISpg" role="10QFUP">
                            <ref role="3cqZAo" node="3vEzWiOIKmz" resolve="node" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="3vEzWiOISNZ" role="2OqNvi">
                        <ref role="37wK5l" to="jks5:~PNodeAdapter.getBranch()" resolve="getBranch" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1yReInKEXm" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~IBranch.runRead(kotlin.jvm.functions.Function0)" resolve="runRead" />
                      <node concept="1bVj0M" id="1yReInKF3Y" role="37wK5m">
                        <node concept="3clFbS" id="1yReInKF3Z" role="1bW5cS">
                          <node concept="3clFbF" id="1yReInKFbC" role="3cqZAp">
                            <node concept="2OqwBi" id="1yReInKFid" role="3clFbG">
                              <node concept="37vLTw" id="1yReInKFbB" role="2Oq$k0">
                                <ref role="3cqZAo" node="3vEzWiOIIR$" resolve="r" />
                              </node>
                              <node concept="liA8E" id="1yReInKFHI" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1yReInKH0D" role="3cqZAp">
                            <node concept="10M0yZ" id="1yReInKH7M" role="3clFbG">
                              <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                              <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="3vEzWiOILFF" role="3clFbw">
                <node concept="3uibUv" id="3vEzWiOILKD" role="2ZW6by">
                  <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                </node>
                <node concept="37vLTw" id="3vEzWiOILun" role="2ZW6bz">
                  <ref role="3cqZAo" node="3vEzWiOIKmz" resolve="node" />
                </node>
              </node>
              <node concept="9aQIb" id="3vEzWiOILM_" role="9aQIa">
                <node concept="3clFbS" id="3vEzWiOILMA" role="9aQI4">
                  <node concept="3clFbF" id="3vEzWiOIRyT" role="3cqZAp">
                    <node concept="2OqwBi" id="3vEzWiOIRCs" role="3clFbG">
                      <node concept="37vLTw" id="3vEzWiOIRyS" role="2Oq$k0">
                        <ref role="3cqZAo" node="3vEzWiOIIR$" resolve="r" />
                      </node>
                      <node concept="liA8E" id="3vEzWiOIRQO" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="3vEzWiOIK45" role="3clFbw">
            <node concept="3uibUv" id="3vEzWiOIKaB" role="2ZW6by">
              <ref role="3uigEE" node="4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
            </node>
            <node concept="37vLTw" id="3vEzWiOIJKd" role="2ZW6bz">
              <ref role="3cqZAo" node="3vEzWiOIIzu" resolve="snode" />
            </node>
          </node>
          <node concept="9aQIb" id="3vEzWiOIKdJ" role="9aQIa">
            <node concept="3clFbS" id="3vEzWiOIKdK" role="9aQI4">
              <node concept="3cpWs8" id="3vEzWiOIMPp" role="3cqZAp">
                <node concept="3cpWsn" id="3vEzWiOIMPq" role="3cpWs9">
                  <property role="TrG5h" value="model" />
                  <node concept="3uibUv" id="3vEzWiOIMPn" role="1tU5fm">
                    <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                  </node>
                  <node concept="2OqwBi" id="3vEzWiOIMPr" role="33vP2m">
                    <node concept="37vLTw" id="3vEzWiOIMPs" role="2Oq$k0">
                      <ref role="3cqZAo" node="3vEzWiOIIzu" resolve="snode" />
                    </node>
                    <node concept="liA8E" id="3vEzWiOIMPt" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="3vEzWiOIJ3f" role="3cqZAp">
                <node concept="3clFbC" id="3vEzWiOILZo" role="3clFbw">
                  <node concept="10Nm6u" id="3vEzWiOIM1d" role="3uHU7w" />
                  <node concept="37vLTw" id="3vEzWiOIMPu" role="3uHU7B">
                    <ref role="3cqZAo" node="3vEzWiOIMPq" resolve="model" />
                  </node>
                </node>
                <node concept="3clFbS" id="3vEzWiOIJ3h" role="3clFbx">
                  <node concept="3clFbF" id="3vEzWiOIRc3" role="3cqZAp">
                    <node concept="2OqwBi" id="3vEzWiOIRhA" role="3clFbG">
                      <node concept="37vLTw" id="3vEzWiOIRc2" role="2Oq$k0">
                        <ref role="3cqZAo" node="3vEzWiOIIR$" resolve="r" />
                      </node>
                      <node concept="liA8E" id="3vEzWiOIRwJ" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="3vEzWiOIM7$" role="9aQIa">
                  <node concept="3clFbS" id="3vEzWiOIM7_" role="9aQI4">
                    <node concept="3clFbF" id="3vEzWiOIMbM" role="3cqZAp">
                      <node concept="2OqwBi" id="3vEzWiOIPld" role="3clFbG">
                        <node concept="2OqwBi" id="3vEzWiOINUt" role="2Oq$k0">
                          <node concept="2OqwBi" id="3vEzWiOIMKw" role="2Oq$k0">
                            <node concept="37vLTw" id="3vEzWiOIMPv" role="2Oq$k0">
                              <ref role="3cqZAo" node="3vEzWiOIMPq" resolve="model" />
                            </node>
                            <node concept="liA8E" id="3vEzWiOINOv" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                            </node>
                          </node>
                          <node concept="liA8E" id="3vEzWiOIPfq" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                          </node>
                        </node>
                        <node concept="liA8E" id="3vEzWiOIR52" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                          <node concept="37vLTw" id="3vEzWiOIR7Q" role="37wK5m">
                            <ref role="3cqZAo" node="3vEzWiOIIR$" resolve="r" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3vEzWiOIIzu" role="3clF46">
        <property role="TrG5h" value="snode" />
        <node concept="3uibUv" id="3vEzWiOIIGP" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="3vEzWiOIIR$" role="3clF46">
        <property role="TrG5h" value="r" />
        <node concept="3uibUv" id="3vEzWiOIJ0m" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="3cqZAl" id="3vEzWiOIIey" role="3clF45" />
      <node concept="3Tm1VV" id="3vEzWiOIIez" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="30TKBrMa5zk" role="1B3o_S" />
    <node concept="2tJIrI" id="2SSJwjdnV3Y" role="jymVt" />
    <node concept="2YIFZL" id="2SSJwjdocDu" role="jymVt">
      <property role="TrG5h" value="isValid" />
      <node concept="3clFbS" id="2SSJwjdnWE2" role="3clF47">
        <node concept="3clFbF" id="2SSJwjdoa9T" role="3cqZAp">
          <node concept="3K4zz7" id="2SSJwjdobzI" role="3clFbG">
            <node concept="3clFbT" id="2SSJwjdoc41" role="3K4E3e">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="3clFbC" id="2SSJwjdoaTE" role="3K4Cdx">
              <node concept="10Nm6u" id="2SSJwjdobsO" role="3uHU7w" />
              <node concept="37vLTw" id="2SSJwjdoa9S" role="3uHU7B">
                <ref role="3cqZAo" node="2SSJwjdo0Lm" resolve="snode" />
              </node>
            </node>
            <node concept="2OqwBi" id="2SSJwjdo4uU" role="3K4GZi">
              <node concept="2YIFZM" id="2SSJwjdo3E3" role="2Oq$k0">
                <ref role="1Pybhc" node="5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                <ref role="37wK5l" node="5gTrVpGyMwR" resolve="wrap" />
                <node concept="37vLTw" id="2SSJwjdo3OE" role="37wK5m">
                  <ref role="3cqZAo" node="2SSJwjdo0Lm" resolve="snode" />
                </node>
              </node>
              <node concept="liA8E" id="2SSJwjdo597" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~INode.isValid()" resolve="isValid" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2SSJwjdo0Lm" role="3clF46">
        <property role="TrG5h" value="snode" />
        <node concept="3uibUv" id="2SSJwjdo1Gw" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="10P_77" id="2SSJwjdnZMn" role="3clF45" />
      <node concept="3Tm1VV" id="2SSJwjdnWE1" role="1B3o_S" />
    </node>
  </node>
</model>

