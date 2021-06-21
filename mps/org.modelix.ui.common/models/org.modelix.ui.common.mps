<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6f19a603-f6b1-4c78-aaa5-6c24c7fbc333(org.modelix.ui.common)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="4bvh" ref="87f4b21e-a3a5-459e-a54b-408fd9eb7350/java:com.esotericsoftware.kryo(de.q60.mps.web.lib/)" />
    <import index="nv3w" ref="r:18e93978-2322-49a8-aaab-61c6faf67e2a(de.q60.mps.shadowmodels.runtime.engine)" />
    <import index="od2j" ref="r:19d224b8-fac8-4b19-ae42-e7b119858f3b(de.q60.mps.polymorphicfunctions.runtime)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="pxg7" ref="87f4b21e-a3a5-459e-a54b-408fd9eb7350/java:com.esotericsoftware.kryo.io(de.q60.mps.web.lib/)" />
    <import index="mjcn" ref="r:89ac1ee0-92ac-49e1-83e6-167854d2040e(de.q60.mps.shadowmodels.runtime.model)" />
    <import index="l6bp" ref="r:97875f9c-321e-405e-a344-6d3deab2bdba(de.q60.mps.shadowmodels.runtime.smodel)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="3d38" ref="r:bc160b50-5a4e-4f99-ba07-a7b7116dab7a(de.q60.mps.incremental.util)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="7x5y" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.charset(JDK/)" />
    <import index="zf81" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.net(JDK/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="3hky" ref="r:bef1bfa7-20fd-413a-ae11-793b0a8ee364(de.q60.mps.shadowmodels.runtime.model.persistent)" />
    <import index="pxvb" ref="r:ca10a440-fbee-42f3-927f-469fb3169c9b(de.q60.mps.shadowmodels.runtime.util)" />
    <import index="zy2h" ref="r:ec0fe8c4-38e5-4216-9425-8861454eaf8a(de.q60.mps.util.invalidation)" />
    <import index="jks5" ref="cc99dce1-49f3-4392-8dbf-e22ca47bd0af/java:org.modelix.model.api(org.modelix.model.api/)" />
    <import index="xxte" ref="r:a79f28f8-6055-40c6-bc5e-47a42a3b97e8(org.modelix.model.mpsadapters.mps)" />
    <import index="qvpu" ref="cc99dce1-49f3-4392-8dbf-e22ca47bd0af/java:org.modelix.model.area(org.modelix.model.api/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="csg2" ref="r:b0cc4f86-cf49-4ffc-b138-1f9973329ce1(org.modelix.model.mpsplugin)" />
    <import index="fnup" ref="r:c0f62029-94d5-495d-b498-eb090ba537fc(org.modelix.ui.state.structure)" />
    <import index="xkhl" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.lazy(org.modelix.model.client/)" />
    <import index="v18h" ref="cc99dce1-49f3-4392-8dbf-e22ca47bd0af/java:kotlin(org.modelix.model.api/)" />
    <import index="ouht" ref="cc99dce1-49f3-4392-8dbf-e22ca47bd0af/java:kotlin.jvm.functions(org.modelix.model.api/)" />
    <import index="jh6v" ref="r:f2f39a18-fd23-4090-b7f2-ba8da340eec2(org.modelix.model.repositoryconcepts.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="5440" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.client(org.modelix.model.client/)" />
  </imports>
  <registry>
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
      <concept id="1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" flags="nn" index="2d3UOw" />
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1251851371723515367" name="jetbrains.mps.baseLanguage.structure.ArrayClassExpression" flags="nn" index="2MthRn">
        <child id="1251851371723515368" name="arrayType" index="2MthRo" />
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
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
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
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
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
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
        <property id="4467513934994662256" name="forceOneLine" index="TyiWL" />
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
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
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
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
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e">
        <child id="1225797361612" name="parameter" index="1BdPVh" />
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
      <concept id="1204834851141" name="jetbrains.mps.lang.smodel.structure.PoundExpression" flags="ng" index="25Kdxt">
        <child id="1204834868751" name="expression" index="25KhWn" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
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
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227026082377" name="jetbrains.mps.baseLanguage.collections.structure.RemoveFirstElementOperation" flags="nn" index="2Kt2Hk" />
      <concept id="1227026094155" name="jetbrains.mps.baseLanguage.collections.structure.RemoveLastElementOperation" flags="nn" index="2Kt5_m" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1171391069720" name="jetbrains.mps.baseLanguage.collections.structure.GetIndexOfOperation" flags="nn" index="2WmjW8" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="9042586985346099698" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachStatement" flags="nn" index="1_o_46">
        <child id="9042586985346099734" name="forEach" index="1_o_by" />
      </concept>
      <concept id="9042586985346099733" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachPair" flags="ng" index="1_o_bx">
        <child id="9042586985346099778" name="variable" index="1_o_aQ" />
        <child id="9042586985346099735" name="input" index="1_o_bz" />
      </concept>
      <concept id="9042586985346099736" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachVariable" flags="ng" index="1_o_bG" />
      <concept id="1240824834947" name="jetbrains.mps.baseLanguage.collections.structure.ValueAccessOperation" flags="nn" index="3AV6Ez" />
      <concept id="1240825616499" name="jetbrains.mps.baseLanguage.collections.structure.KeyAccessOperation" flags="nn" index="3AY5_j" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="8293956702609956630" name="jetbrains.mps.baseLanguage.collections.structure.MultiForEachVariableReference" flags="nn" index="3M$PaV">
        <reference id="8293956702609966325" name="variable" index="3M$S_o" />
      </concept>
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
    </language>
  </registry>
  <node concept="312cEu" id="5T6M7ON4Si7">
    <property role="TrG5h" value="NodeReferenceSerializer" />
    <node concept="Wx3nA" id="5T6M7ON5QdK" role="jymVt">
      <property role="TrG5h" value="kryoInstances" />
      <node concept="3uibUv" id="5Zew9mGHOzu" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~ThreadLocal" resolve="ThreadLocal" />
        <node concept="3uibUv" id="5Zew9mGI1cN" role="11_B2D">
          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5T6M7ON5PEH" role="1B3o_S" />
      <node concept="2ShNRf" id="5Zew9mGId0D" role="33vP2m">
        <node concept="YeOm9" id="5Zew9mGLh8$" role="2ShVmc">
          <node concept="1Y3b0j" id="5Zew9mGLh8B" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~ThreadLocal.&lt;init&gt;()" resolve="ThreadLocal" />
            <ref role="1Y3XeK" to="wyt6:~ThreadLocal" resolve="ThreadLocal" />
            <node concept="3Tm1VV" id="5Zew9mGLh8C" role="1B3o_S" />
            <node concept="3uibUv" id="5Zew9mGId08" role="2Ghqu4">
              <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
            </node>
            <node concept="3clFb_" id="5Zew9mGLjCT" role="jymVt">
              <property role="TrG5h" value="initialValue" />
              <node concept="3Tmbuc" id="5Zew9mGLjCU" role="1B3o_S" />
              <node concept="3uibUv" id="5Zew9mGLjCZ" role="3clF45">
                <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
              </node>
              <node concept="3clFbS" id="5Zew9mGLjD0" role="3clF47">
                <node concept="3clFbF" id="5Zew9mGLngg" role="3cqZAp">
                  <node concept="1rXfSq" id="5Zew9mGLngd" role="3clFbG">
                    <ref role="37wK5l" node="5Zew9mGIJKm" resolve="createKryo" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="5Zew9mGLjD1" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="5npwda7vkut" role="jymVt">
      <property role="TrG5h" value="REPOSITORY" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="5npwda7vjUe" role="1tU5fm">
        <ref role="3uigEE" to="3d38:7vWAzuEE15A" resolve="ContextValue" />
        <node concept="3uibUv" id="5npwda7vk0F" role="11_B2D">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5npwda7vfqC" role="1B3o_S" />
      <node concept="2ShNRf" id="5npwda7vkfE" role="33vP2m">
        <node concept="1pGfFk" id="5npwda7vkch" role="2ShVmc">
          <ref role="37wK5l" to="3d38:32qWz0M5VME" resolve="ContextValue" />
          <node concept="3uibUv" id="5npwda7vkci" role="1pMfVU">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="5npwda7vzO1" role="jymVt">
      <property role="TrG5h" value="ENGINE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="5npwda7vzO2" role="1tU5fm">
        <ref role="3uigEE" to="3d38:7vWAzuEE15A" resolve="ContextValue" />
        <node concept="3uibUv" id="5npwda7vC4m" role="11_B2D">
          <ref role="3uigEE" to="nv3w:5gTrVpGiJ4w" resolve="ITransformationEngine" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5npwda7vzO4" role="1B3o_S" />
      <node concept="2ShNRf" id="5npwda7vzO5" role="33vP2m">
        <node concept="1pGfFk" id="5npwda7vzO6" role="2ShVmc">
          <ref role="37wK5l" to="3d38:32qWz0M5VME" resolve="ContextValue" />
          <node concept="3uibUv" id="5npwda7vCax" role="1pMfVU">
            <ref role="3uigEE" to="nv3w:5gTrVpGiJ4w" resolve="ITransformationEngine" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="69EsfyPZZoH" role="jymVt">
      <property role="TrG5h" value="ID_MODE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="69EsfyPZZoI" role="1tU5fm">
        <ref role="3uigEE" to="3d38:7vWAzuEE15A" resolve="ContextValue" />
        <node concept="3uibUv" id="69EsfyQ04m3" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
        </node>
      </node>
      <node concept="3Tm6S6" id="69EsfyPZZoK" role="1B3o_S" />
      <node concept="2ShNRf" id="69EsfyPZZoL" role="33vP2m">
        <node concept="1pGfFk" id="69EsfyPZZoM" role="2ShVmc">
          <ref role="37wK5l" to="3d38:32qWz0M5V7P" resolve="ContextValue" />
          <node concept="3uibUv" id="69EsfyQ04KM" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~Boolean" resolve="Boolean" />
          </node>
          <node concept="3clFbT" id="69EsfyQ05bE" role="37wK5m" />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2WI3xHDxM8n" role="jymVt">
      <property role="TrG5h" value="AREA" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2WI3xHDxM8o" role="1tU5fm">
        <ref role="3uigEE" to="3d38:7vWAzuEE15A" resolve="ContextValue" />
        <node concept="3uibUv" id="2WI3xHDxUKs" role="11_B2D">
          <ref role="3uigEE" to="qvpu:~IArea" resolve="IArea" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2WI3xHDxM8q" role="1B3o_S" />
      <node concept="2ShNRf" id="2WI3xHDxM8r" role="33vP2m">
        <node concept="1pGfFk" id="2WI3xHDxM8s" role="2ShVmc">
          <ref role="37wK5l" to="3d38:32qWz0M5VME" resolve="ContextValue" />
          <node concept="3uibUv" id="2WI3xHDxV79" role="1pMfVU">
            <ref role="3uigEE" to="qvpu:~IArea" resolve="IArea" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="5HO1kYmzTOH" role="jymVt">
      <property role="TrG5h" value="SIMPLE_NODE_PREFIX" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="5HO1kYmzT4q" role="1tU5fm" />
      <node concept="3Tm6S6" id="5HO1kYmzM7E" role="1B3o_S" />
      <node concept="2OqwBi" id="5HO1kYm$aRQ" role="33vP2m">
        <node concept="2YIFZM" id="5HO1kYm$arM" role="2Oq$k0">
          <ref role="37wK5l" to="33ny:~UUID.randomUUID()" resolve="randomUUID" />
          <ref role="1Pybhc" to="33ny:~UUID" resolve="UUID" />
        </node>
        <node concept="liA8E" id="5HO1kYm$bnN" role="2OqNvi">
          <ref role="37wK5l" to="33ny:~UUID.toString()" resolve="toString" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5HO1kYmzArv" role="jymVt" />
    <node concept="2YIFZL" id="5Zew9mGIJKm" role="jymVt">
      <property role="TrG5h" value="createKryo" />
      <node concept="3clFbS" id="5Zew9mGIqVu" role="3clF47">
        <node concept="3cpWs8" id="5Zew9mGJcW3" role="3cqZAp">
          <node concept="3cpWsn" id="5Zew9mGJcW4" role="3cpWs9">
            <property role="TrG5h" value="kryo" />
            <node concept="3uibUv" id="5Zew9mGJcW5" role="1tU5fm">
              <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
            </node>
            <node concept="2ShNRf" id="5T6M7ON5QSQ" role="33vP2m">
              <node concept="1pGfFk" id="5T6M7ON5QQd" role="2ShVmc">
                <ref role="37wK5l" to="4bvh:~Kryo.&lt;init&gt;()" resolve="Kryo" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1hyexJLm5LZ" role="3cqZAp">
          <node concept="2OqwBi" id="1hyexJLmedJ" role="3clFbG">
            <node concept="liA8E" id="1hyexJLmgMH" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.setRegistrationRequired(boolean)" resolve="setRegistrationRequired" />
              <node concept="3clFbT" id="1hyexJLmlkX" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
            <node concept="37vLTw" id="5Zew9mGJpe2" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="63RbyoVdA1c" role="3cqZAp">
          <node concept="2OqwBi" id="63RbyoVdD5L" role="3clFbG">
            <node concept="liA8E" id="63RbyoVdDyi" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.setWarnUnregisteredClasses(boolean)" resolve="setWarnUnregisteredClasses" />
              <node concept="3clFbT" id="63RbyoVdElr" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
            <node concept="37vLTw" id="5Zew9mGJqXU" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5pmgLfhTGRR" role="3cqZAp" />
        <node concept="3clFbF" id="3c6J_2nzE0d" role="3cqZAp">
          <node concept="2OqwBi" id="3c6J_2nzE0e" role="3clFbG">
            <node concept="liA8E" id="3c6J_2nzE0g" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="3c6J_2nzE0h" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:73LuVOQ0npV" resolve="ContainmentInSubgraphRefTarget" />
              </node>
            </node>
            <node concept="37vLTw" id="5Zew9mGJsGG" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3c6J_2nzW7p" role="3cqZAp">
          <node concept="2OqwBi" id="3c6J_2nzW7q" role="3clFbG">
            <node concept="liA8E" id="3c6J_2nzW7s" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="3c6J_2nzW7t" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:7tS73g$r3Hd" resolve="ExternalLabelReferenceTarget" />
              </node>
            </node>
            <node concept="37vLTw" id="5Zew9mGJum5" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5T6M7ON5QZj" role="3cqZAp">
          <node concept="2OqwBi" id="5T6M7ON5RbP" role="3clFbG">
            <node concept="liA8E" id="5T6M7ON5RnN" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="5T6M7ON5Rs_" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:2dy3jLYuI4s" resolve="FirstRootRefTarget" />
              </node>
            </node>
            <node concept="37vLTw" id="5Zew9mGJwc3" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5T6M7ON5RLW" role="3cqZAp">
          <node concept="2OqwBi" id="5T6M7ON5RLX" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwf8" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="5T6M7ON5RLZ" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="5T6M7ON5RM0" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:5$YruQqU9Gm" resolve="LocalLabelReferenceTarget" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5T6M7ON5S1l" role="3cqZAp">
          <node concept="2OqwBi" id="5T6M7ON5S1m" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwf9" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="5T6M7ON5S1o" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="5T6M7ON5S1p" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:2dy3jLYuS1P" resolve="MappingLabelRefTarget" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3c6J_2n$pCS" role="3cqZAp">
          <node concept="2OqwBi" id="3c6J_2n$pCT" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfa" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="3c6J_2n$pCV" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="3c6J_2n$pCW" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:22rzPegUbVq" resolve="ReferenceTargetInParentSubgraph" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3c6J_2n$utF" role="3cqZAp">
          <node concept="2OqwBi" id="3c6J_2n$utG" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfb" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="3c6J_2n$utI" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="3c6J_2n$utJ" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:5$YruQqTVVH" resolve="OutputNodeAsReferenceTarget" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3c6J_2n$Qcd" role="3cqZAp" />
        <node concept="3clFbF" id="3c6J_2n$Kas" role="3cqZAp">
          <node concept="2OqwBi" id="3c6J_2n$Kat" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfc" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="3c6J_2n$Kav" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="3c6J_2n$Kaw" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:22rzPeg7Tlq" resolve="CopyCall" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5T6M7ON61zn" role="3cqZAp">
          <node concept="2OqwBi" id="5T6M7ON61zo" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfd" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="5T6M7ON61zq" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="5T6M7ON61zr" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:2dy3jLYuI1C" resolve="ForkCall" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3c6J_2nhYC_" role="3cqZAp">
          <node concept="2OqwBi" id="3c6J_2nhYCA" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfe" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="3c6J_2nhYCC" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="3c6J_2nhYCD" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:2dy3jLYuI2K" resolve="GoalCall" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5T6M7ON5XHG" role="3cqZAp">
          <node concept="2OqwBi" id="5T6M7ON5XHH" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwff" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="5T6M7ON5XHJ" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="5T6M7ON5XHK" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:2dy3jLYuHZo" resolve="TransformationCall" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5T6M7ON5YLr" role="3cqZAp">
          <node concept="2OqwBi" id="5T6M7ON5YLs" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfg" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="5T6M7ON5YLu" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="5T6M7ON5YLv" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:2dy3jLYuI0E" resolve="RewriteCall" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3c6J_2n_UB7" role="3cqZAp" />
        <node concept="3clFbF" id="3c6J_2n_NeL" role="3cqZAp">
          <node concept="2OqwBi" id="3c6J_2n_NeM" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfh" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="3c6J_2n_NeO" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="3c6J_2n_NeP" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:6EAoUhEZlkJ" resolve="LazyContainmentTarget" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3c6J_2nA2lC" role="3cqZAp">
          <node concept="2OqwBi" id="3c6J_2nA2lD" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfi" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="3c6J_2nA2lF" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="3c6J_2nA2lG" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:7x6l9GRzNE$" resolve="ReplacementTarget" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3c6J_2nAabU" role="3cqZAp">
          <node concept="2OqwBi" id="3c6J_2nAabV" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfj" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="3c6J_2nAabX" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="3c6J_2nAabY" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:5$YruQqCuXk" resolve="SequentialUniqueContainmentTarget" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3c6J_2nAh4n" role="3cqZAp">
          <node concept="2OqwBi" id="3c6J_2nAh4o" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfk" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="3c6J_2nAh4q" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="3c6J_2nAh4r" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:22rzPegE29T" resolve="SingletonUniqueContainmentTarget" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3c6J_2nAoMl" role="3cqZAp">
          <node concept="2OqwBi" id="3c6J_2nAoMm" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfl" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="3c6J_2nAoMo" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="3c6J_2nAoMp" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:34C2CYONBwu" resolve="UniqueTargetInScope" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3c6J_2n$jxF" role="3cqZAp" />
        <node concept="3clFbF" id="3c6J_2nyH1s" role="3cqZAp">
          <node concept="2OqwBi" id="3c6J_2nyH1t" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfm" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="3c6J_2nyH1v" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="3c6J_2nyH1w" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:5$YruQr2CTx" resolve="ContainmentTargetRootNodes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3c6J_2nAE9N" role="3cqZAp">
          <node concept="2OqwBi" id="3c6J_2nAE9O" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfn" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="3c6J_2nAE9Q" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="3c6J_2nAE9R" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:22rzPegErYK" resolve="StageRootNodes" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3c6J_2n$_2r" role="3cqZAp" />
        <node concept="3clFbF" id="5T6M7ON5Ryw" role="3cqZAp">
          <node concept="2OqwBi" id="5T6M7ON5Ryx" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfo" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="5T6M7ON5Ryz" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="5T6M7ON5Ry$" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:73LuVOQycYB" resolve="CopiedOutputNodeReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3c6J_2nBimN" role="3cqZAp">
          <node concept="2OqwBi" id="3c6J_2nBimO" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfp" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="3c6J_2nBimQ" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="3c6J_2nBimR" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:5$YruQqVwJd" resolve="NodeAsOutputNodeReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3c6J_2nBbe6" role="3cqZAp">
          <node concept="2OqwBi" id="3c6J_2nBbe7" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfq" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="3c6J_2nBbe9" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="3c6J_2nBbea" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:2dy3jLYuSze" resolve="ResultElementOutputNodeReference_Id" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3c6J_2nD3Na" role="3cqZAp" />
        <node concept="3clFbF" id="3c6J_2nCXcU" role="3cqZAp">
          <node concept="2OqwBi" id="3c6J_2nCXcV" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfr" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="3c6J_2nCXcX" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="3c6J_2nCXcY" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:34C2CYOLe03" resolve="StageScope" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3c6J_2nDbPb" role="3cqZAp">
          <node concept="2OqwBi" id="3c6J_2nDbPc" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfs" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="3c6J_2nDbPe" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="3c6J_2nDbPf" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:34C2CYOHbq4" resolve="NamedScope" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="HabLxtTtzL" role="3cqZAp" />
        <node concept="3clFbF" id="HabLxtTk_B" role="3cqZAp">
          <node concept="2OqwBi" id="HabLxtTk_C" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwft" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="HabLxtTk_E" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="HabLxtTk_F" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:6EAoUhEYKNJ" resolve="LazySubgraphStageReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="HabLxtTFmY" role="3cqZAp">
          <node concept="2OqwBi" id="HabLxtTFmZ" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfu" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="HabLxtTFn1" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="HabLxtTFn2" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:2dy3jLYuTaA" resolve="FinalStageReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="HabLxtTNTN" role="3cqZAp">
          <node concept="2OqwBi" id="HabLxtTNTO" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfv" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="HabLxtTNTQ" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="HabLxtTNTR" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:2dy3jLYuTf2" resolve="StepStageReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="HabLxtU3_P" role="3cqZAp">
          <node concept="2OqwBi" id="HabLxtU3_Q" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfw" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="HabLxtU3_S" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="HabLxtU3_T" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:2dy3jLYuTm9" resolve="SubstepStageReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="HabLxtUnqX" role="3cqZAp" />
        <node concept="3clFbF" id="HabLxtUgSx" role="3cqZAp">
          <node concept="2OqwBi" id="HabLxtUgSy" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfx" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="HabLxtUgS$" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="HabLxtUgS_" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:2dy3jLYv2of" resolve="ChildSubgraphRef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="HabLxtUAk9" role="3cqZAp">
          <node concept="2OqwBi" id="HabLxtUAka" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfy" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="HabLxtUAkc" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="3VsKOn" id="HabLxtUAkd" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:2dy3jLYv2mv" resolve="LazyChildSubgraphRef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5T6M7ONmA0G" role="3cqZAp" />
        <node concept="3clFbF" id="5T6M7ONr6Nn" role="3cqZAp">
          <node concept="2OqwBi" id="5T6M7ONr6No" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwf$" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="5T6M7ONr6Nq" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
              <node concept="2MthRn" id="5T6M7ONr9Sb" role="37wK5m">
                <node concept="10Q1$e" id="5T6M7ONr9Se" role="2MthRo">
                  <node concept="3uibUv" id="5T6M7ONr9Sg" role="10Q1$1">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2WI3xHDqMBb" role="3cqZAp" />
        <node concept="3clFbF" id="2WI3xHDqbTP" role="3cqZAp">
          <node concept="2OqwBi" id="2WI3xHDqbTQ" role="3clFbG">
            <node concept="37vLTw" id="2WI3xHDqbTR" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="2WI3xHDqbTS" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="2WI3xHDqbTT" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:4apiesXeJq6" resolve="DependencyTrackingNode.NodeReference" />
              </node>
              <node concept="2ShNRf" id="2WI3xHDqbTU" role="37wK5m">
                <node concept="YeOm9" id="2WI3xHDqbTV" role="2ShVmc">
                  <node concept="1Y3b0j" id="2WI3xHDqbTW" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <node concept="3Tm1VV" id="2WI3xHDqbTX" role="1B3o_S" />
                    <node concept="3clFb_" id="2WI3xHDqbTY" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="2WI3xHDqbTZ" role="1B3o_S" />
                      <node concept="3cqZAl" id="2WI3xHDqbU0" role="3clF45" />
                      <node concept="37vLTG" id="2WI3xHDqbU1" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="2WI3xHDqbU2" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2WI3xHDqbU3" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="2WI3xHDqbU4" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2WI3xHDqbU5" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="2WI3xHDqbU6" role="1tU5fm">
                          <ref role="3uigEE" to="nv3w:4apiesXeJq6" resolve="DependencyTrackingNode.NodeReference" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="2WI3xHDqbU7" role="3clF47">
                        <node concept="3clFbF" id="2WI3xHDqbU8" role="3cqZAp">
                          <node concept="2OqwBi" id="2WI3xHDqbU9" role="3clFbG">
                            <node concept="37vLTw" id="2WI3xHDqbUa" role="2Oq$k0">
                              <ref role="3cqZAo" node="2WI3xHDqbU1" resolve="kryo" />
                            </node>
                            <node concept="liA8E" id="2WI3xHDqbUb" role="2OqNvi">
                              <ref role="37wK5l" to="4bvh:~Kryo.writeClassAndObject(com.esotericsoftware.kryo.io.Output,java.lang.Object)" resolve="writeClassAndObject" />
                              <node concept="37vLTw" id="2WI3xHDqbUc" role="37wK5m">
                                <ref role="3cqZAo" node="2WI3xHDqbU3" resolve="out" />
                              </node>
                              <node concept="2OqwBi" id="2WI3xHDqbUd" role="37wK5m">
                                <node concept="37vLTw" id="2WI3xHDqbUe" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2WI3xHDqbU5" resolve="obj" />
                                </node>
                                <node concept="liA8E" id="2WI3xHDqbUf" role="2OqNvi">
                                  <ref role="37wK5l" to="nv3w:4apiesXfmjw" resolve="getWrappedNodeRef" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="2WI3xHDqbUg" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="2WI3xHDqbUh" role="jymVt" />
                    <node concept="3clFb_" id="2WI3xHDqbUi" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="2WI3xHDqbUj" role="1B3o_S" />
                      <node concept="3uibUv" id="2WI3xHDqbUk" role="3clF45">
                        <ref role="3uigEE" to="nv3w:4apiesXeJq6" resolve="DependencyTrackingNode.NodeReference" />
                      </node>
                      <node concept="37vLTG" id="2WI3xHDqbUl" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="2WI3xHDqbUm" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2WI3xHDqbUn" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="2WI3xHDqbUo" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2WI3xHDqbUp" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="2WI3xHDqbUq" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="2WI3xHDqbUr" role="11_B2D">
                            <node concept="3uibUv" id="2WI3xHDqbUs" role="3qUE_r">
                              <ref role="3uigEE" to="nv3w:4apiesXeJq6" resolve="DependencyTrackingNode.NodeReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="2WI3xHDqbUt" role="3clF47">
                        <node concept="3clFbF" id="2WI3xHDqbUu" role="3cqZAp">
                          <node concept="2ShNRf" id="2WI3xHDqbUv" role="3clFbG">
                            <node concept="1pGfFk" id="2WI3xHDqbUw" role="2ShVmc">
                              <ref role="37wK5l" to="nv3w:4apiesXeY3b" resolve="DependencyTrackingNode.NodeReference" />
                              <node concept="10QFUN" id="2WI3xHDqbUx" role="37wK5m">
                                <node concept="2OqwBi" id="2WI3xHDqbUy" role="10QFUP">
                                  <node concept="37vLTw" id="2WI3xHDqbUz" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2WI3xHDqbUl" resolve="kryo" />
                                  </node>
                                  <node concept="liA8E" id="2WI3xHDqbU$" role="2OqNvi">
                                    <ref role="37wK5l" to="4bvh:~Kryo.readClassAndObject(com.esotericsoftware.kryo.io.Input)" resolve="readClassAndObject" />
                                    <node concept="37vLTw" id="2WI3xHDqbU_" role="37wK5m">
                                      <ref role="3cqZAo" node="2WI3xHDqbUn" resolve="in" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3uibUv" id="2WI3xHDqbUA" role="10QFUM">
                                  <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="2WI3xHDqbUB" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="2WI3xHDqbUC" role="2Ghqu4">
                      <ref role="3uigEE" to="nv3w:4apiesXeJq6" resolve="DependencyTrackingNode.NodeReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="4apiesXexgR" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="5T6M7ONDxgN" role="8Wnug">
            <node concept="2OqwBi" id="5T6M7ONDxgO" role="3clFbG">
              <node concept="37vLTw" id="5Zew9mGKwfA" role="2Oq$k0">
                <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
              </node>
              <node concept="liA8E" id="5T6M7ONDxgQ" role="2OqNvi">
                <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
                <node concept="3VsKOn" id="5T6M7ONDxgR" role="37wK5m">
                  <ref role="3VsUkX" to="xxte:5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                </node>
                <node concept="2ShNRf" id="5T6M7ONDxgS" role="37wK5m">
                  <node concept="YeOm9" id="5T6M7ONDxgT" role="2ShVmc">
                    <node concept="1Y3b0j" id="5T6M7ONDxgU" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                      <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                      <node concept="3Tm1VV" id="5T6M7ONDxgV" role="1B3o_S" />
                      <node concept="3clFb_" id="5T6M7ONDxgW" role="jymVt">
                        <property role="TrG5h" value="write" />
                        <node concept="3Tm1VV" id="5T6M7ONDxgX" role="1B3o_S" />
                        <node concept="3cqZAl" id="5T6M7ONDxgY" role="3clF45" />
                        <node concept="37vLTG" id="5T6M7ONDxgZ" role="3clF46">
                          <property role="TrG5h" value="kryo" />
                          <node concept="3uibUv" id="5T6M7ONDxh0" role="1tU5fm">
                            <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="5T6M7ONDxh1" role="3clF46">
                          <property role="TrG5h" value="out" />
                          <node concept="3uibUv" id="5T6M7ONDxh2" role="1tU5fm">
                            <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="5T6M7ONDxh3" role="3clF46">
                          <property role="TrG5h" value="obj" />
                          <node concept="3uibUv" id="5U8hsWB6w73" role="1tU5fm">
                            <ref role="3uigEE" to="xxte:5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="5T6M7ONDxh5" role="3clF47">
                          <node concept="3clFbF" id="5T6M7ONDxh6" role="3cqZAp">
                            <node concept="2OqwBi" id="5T6M7ONDxh7" role="3clFbG">
                              <node concept="37vLTw" id="5T6M7ONDxh8" role="2Oq$k0">
                                <ref role="3cqZAo" node="5T6M7ONDxgZ" resolve="kryo" />
                              </node>
                              <node concept="liA8E" id="5T6M7ONDxh9" role="2OqNvi">
                                <ref role="37wK5l" to="4bvh:~Kryo.writeClassAndObject(com.esotericsoftware.kryo.io.Output,java.lang.Object)" resolve="writeClassAndObject" />
                                <node concept="37vLTw" id="5T6M7ONDxha" role="37wK5m">
                                  <ref role="3cqZAo" node="5T6M7ONDxh1" resolve="out" />
                                </node>
                                <node concept="2YIFZM" id="5T6M7ONDUPN" role="37wK5m">
                                  <ref role="1Pybhc" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                                  <ref role="37wK5l" to="xxte:4EhVFrZ6z9$" resolve="wrap" />
                                  <node concept="37vLTw" id="5T6M7ONDUPO" role="37wK5m">
                                    <ref role="3cqZAo" node="5T6M7ONDxh3" resolve="obj" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="5T6M7ONDxhd" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="2tJIrI" id="5T6M7ONDxhe" role="jymVt" />
                      <node concept="3clFb_" id="5T6M7ONDxhf" role="jymVt">
                        <property role="TrG5h" value="read" />
                        <node concept="3Tm1VV" id="5T6M7ONDxhg" role="1B3o_S" />
                        <node concept="3uibUv" id="5U8hsWB6xOv" role="3clF45">
                          <ref role="3uigEE" to="xxte:5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                        </node>
                        <node concept="37vLTG" id="5T6M7ONDxhi" role="3clF46">
                          <property role="TrG5h" value="kryo" />
                          <node concept="3uibUv" id="5T6M7ONDxhj" role="1tU5fm">
                            <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="5T6M7ONDxhk" role="3clF46">
                          <property role="TrG5h" value="in" />
                          <node concept="3uibUv" id="5T6M7ONDxhl" role="1tU5fm">
                            <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="5T6M7ONDxhm" role="3clF46">
                          <property role="TrG5h" value="type" />
                          <node concept="3uibUv" id="5T6M7ONDxhn" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                            <node concept="3qUE_q" id="5T6M7ONDxho" role="11_B2D">
                              <node concept="3uibUv" id="5U8hsWB6y3d" role="3qUE_r">
                                <ref role="3uigEE" to="xxte:5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="5T6M7ONDxhq" role="3clF47">
                          <node concept="3clFbF" id="5T6M7ONDxhr" role="3cqZAp">
                            <node concept="10QFUN" id="5T6M7ONDOt0" role="3clFbG">
                              <node concept="2YIFZM" id="5T6M7ONDOsS" role="10QFUP">
                                <ref role="1Pybhc" to="xxte:5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                                <ref role="37wK5l" to="xxte:5gTrVpGyMwR" resolve="wrap" />
                                <node concept="1eOMI4" id="5T6M7ONDOsT" role="37wK5m">
                                  <node concept="10QFUN" id="5T6M7ONDOsU" role="1eOMHV">
                                    <node concept="2OqwBi" id="5T6M7ONDOsV" role="10QFUP">
                                      <node concept="37vLTw" id="5T6M7ONDOsW" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5T6M7ONDxhi" resolve="kryo" />
                                      </node>
                                      <node concept="liA8E" id="5T6M7ONDOsX" role="2OqNvi">
                                        <ref role="37wK5l" to="4bvh:~Kryo.readClassAndObject(com.esotericsoftware.kryo.io.Input)" resolve="readClassAndObject" />
                                        <node concept="37vLTw" id="5T6M7ONDOsY" role="37wK5m">
                                          <ref role="3cqZAo" node="5T6M7ONDxhk" resolve="in" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3uibUv" id="5T6M7ONDOsZ" role="10QFUM">
                                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3uibUv" id="5U8hsWB6yc3" role="10QFUM">
                                <ref role="3uigEE" to="xxte:5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="5T6M7ONDxh$" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="5U8hsWB6vXU" role="2Ghqu4">
                        <ref role="3uigEE" to="xxte:5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="4apiesXetXy" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="5T6M7ONIyxu" role="8Wnug">
            <node concept="2OqwBi" id="5T6M7ONIyxv" role="3clFbG">
              <node concept="37vLTw" id="5Zew9mGKwfB" role="2Oq$k0">
                <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
              </node>
              <node concept="liA8E" id="5T6M7ONIyxx" role="2OqNvi">
                <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
                <node concept="3VsKOn" id="5T6M7ONIyxy" role="37wK5m">
                  <ref role="3VsUkX" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                </node>
                <node concept="2ShNRf" id="5T6M7ONIyxz" role="37wK5m">
                  <node concept="YeOm9" id="5T6M7ONIyx$" role="2ShVmc">
                    <node concept="1Y3b0j" id="5T6M7ONIyx_" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                      <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                      <node concept="3Tm1VV" id="5T6M7ONIyxA" role="1B3o_S" />
                      <node concept="3clFb_" id="5T6M7ONIyxB" role="jymVt">
                        <property role="TrG5h" value="write" />
                        <node concept="3Tm1VV" id="5T6M7ONIyxC" role="1B3o_S" />
                        <node concept="3cqZAl" id="5T6M7ONIyxD" role="3clF45" />
                        <node concept="37vLTG" id="5T6M7ONIyxE" role="3clF46">
                          <property role="TrG5h" value="kryo" />
                          <node concept="3uibUv" id="5T6M7ONIyxF" role="1tU5fm">
                            <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="5T6M7ONIyxG" role="3clF46">
                          <property role="TrG5h" value="out" />
                          <node concept="3uibUv" id="5T6M7ONIyxH" role="1tU5fm">
                            <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="5T6M7ONIyxI" role="3clF46">
                          <property role="TrG5h" value="obj" />
                          <node concept="3uibUv" id="5U8hsWB6yNH" role="1tU5fm">
                            <ref role="3uigEE" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="5T6M7ONIyxK" role="3clF47">
                          <node concept="3clFbF" id="5T6M7ONIyxL" role="3cqZAp">
                            <node concept="2OqwBi" id="5T6M7ONIyxM" role="3clFbG">
                              <node concept="37vLTw" id="5T6M7ONIyxN" role="2Oq$k0">
                                <ref role="3cqZAo" node="5T6M7ONIyxE" resolve="kryo" />
                              </node>
                              <node concept="liA8E" id="5T6M7ONIyxO" role="2OqNvi">
                                <ref role="37wK5l" to="4bvh:~Kryo.writeClassAndObject(com.esotericsoftware.kryo.io.Output,java.lang.Object)" resolve="writeClassAndObject" />
                                <node concept="37vLTw" id="5T6M7ONIyxP" role="37wK5m">
                                  <ref role="3cqZAo" node="5T6M7ONIyxG" resolve="out" />
                                </node>
                                <node concept="2YIFZM" id="5T6M7ONIyxQ" role="37wK5m">
                                  <ref role="1Pybhc" to="xxte:5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                                  <ref role="37wK5l" to="xxte:5gTrVpGyMwR" resolve="wrap" />
                                  <node concept="37vLTw" id="5T6M7ONIyxR" role="37wK5m">
                                    <ref role="3cqZAo" node="5T6M7ONIyxI" resolve="obj" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="5T6M7ONIyxS" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="2tJIrI" id="5T6M7ONIyxT" role="jymVt" />
                      <node concept="3clFb_" id="5T6M7ONIyxU" role="jymVt">
                        <property role="TrG5h" value="read" />
                        <node concept="3Tm1VV" id="5T6M7ONIyxV" role="1B3o_S" />
                        <node concept="3uibUv" id="5U8hsWB6zea" role="3clF45">
                          <ref role="3uigEE" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                        </node>
                        <node concept="37vLTG" id="5T6M7ONIyxX" role="3clF46">
                          <property role="TrG5h" value="kryo" />
                          <node concept="3uibUv" id="5T6M7ONIyxY" role="1tU5fm">
                            <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="5T6M7ONIyxZ" role="3clF46">
                          <property role="TrG5h" value="in" />
                          <node concept="3uibUv" id="5T6M7ONIyy0" role="1tU5fm">
                            <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="5T6M7ONIyy1" role="3clF46">
                          <property role="TrG5h" value="type" />
                          <node concept="3uibUv" id="5T6M7ONIyy2" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                            <node concept="3qUE_q" id="5T6M7ONIyy3" role="11_B2D">
                              <node concept="3uibUv" id="5U8hsWB6znD" role="3qUE_r">
                                <ref role="3uigEE" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="5T6M7ONIyy5" role="3clF47">
                          <node concept="3clFbF" id="5T6M7ONIyy6" role="3cqZAp">
                            <node concept="10QFUN" id="5T6M7ONIyy7" role="3clFbG">
                              <node concept="2YIFZM" id="5T6M7ONIyy8" role="10QFUP">
                                <ref role="1Pybhc" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                                <ref role="37wK5l" to="xxte:75046mm7IDU" resolve="wrap" />
                                <node concept="1eOMI4" id="5T6M7ONIyy9" role="37wK5m">
                                  <node concept="10QFUN" id="5T6M7ONIyya" role="1eOMHV">
                                    <node concept="2OqwBi" id="5T6M7ONIyyb" role="10QFUP">
                                      <node concept="37vLTw" id="5T6M7ONIyyc" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5T6M7ONIyxX" resolve="kryo" />
                                      </node>
                                      <node concept="liA8E" id="5T6M7ONIyyd" role="2OqNvi">
                                        <ref role="37wK5l" to="4bvh:~Kryo.readClassAndObject(com.esotericsoftware.kryo.io.Input)" resolve="readClassAndObject" />
                                        <node concept="37vLTw" id="5T6M7ONIyye" role="37wK5m">
                                          <ref role="3cqZAo" node="5T6M7ONIyxZ" resolve="in" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3uibUv" id="5U8hsWB6zGh" role="10QFUM">
                                      <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="5npwda7voWg" role="37wK5m">
                                  <node concept="37vLTw" id="5npwda7voHz" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5npwda7vkut" resolve="REPOSITORY" />
                                  </node>
                                  <node concept="liA8E" id="5npwda7vpjY" role="2OqNvi">
                                    <ref role="37wK5l" to="3d38:7vWAzuEE1gr" resolve="getValue" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3uibUv" id="5U8hsWB6zov" role="10QFUM">
                                <ref role="3uigEE" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="5T6M7ONIyyh" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="5U8hsWB6y$k" role="2Ghqu4">
                        <ref role="3uigEE" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5T6M7ONDVwf" role="3cqZAp">
          <node concept="2OqwBi" id="5T6M7ONDVwg" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfC" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="5T6M7ONDVwi" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="5T6M7ONDVwj" role="37wK5m">
                <ref role="3VsUkX" to="xxte:2U$60wn803d" resolve="ANodeReference" />
              </node>
              <node concept="2ShNRf" id="5T6M7ONDVwk" role="37wK5m">
                <node concept="YeOm9" id="5T6M7ONDVwl" role="2ShVmc">
                  <node concept="1Y3b0j" id="5T6M7ONDVwm" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <node concept="3Tm1VV" id="5T6M7ONDVwn" role="1B3o_S" />
                    <node concept="3clFb_" id="5T6M7ONDVwo" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="5T6M7ONDVwp" role="1B3o_S" />
                      <node concept="3cqZAl" id="5T6M7ONDVwq" role="3clF45" />
                      <node concept="37vLTG" id="5T6M7ONDVwr" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="5T6M7ONDVws" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5T6M7ONDVwt" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="5T6M7ONDVwu" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5T6M7ONDVwv" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="5U8hsWB6$tJ" role="1tU5fm">
                          <ref role="3uigEE" to="xxte:2U$60wn803d" resolve="ANodeReference" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="5T6M7ONDVwx" role="3clF47">
                        <node concept="3clFbF" id="5T6M7ONDVwy" role="3cqZAp">
                          <node concept="2OqwBi" id="5T6M7ONDVwz" role="3clFbG">
                            <node concept="37vLTw" id="5T6M7ONDVw$" role="2Oq$k0">
                              <ref role="3cqZAo" node="5T6M7ONDVwr" resolve="kryo" />
                            </node>
                            <node concept="liA8E" id="5T6M7ONDVw_" role="2OqNvi">
                              <ref role="37wK5l" to="4bvh:~Kryo.writeClassAndObject(com.esotericsoftware.kryo.io.Output,java.lang.Object)" resolve="writeClassAndObject" />
                              <node concept="37vLTw" id="5T6M7ONDVwA" role="37wK5m">
                                <ref role="3cqZAo" node="5T6M7ONDVwt" resolve="out" />
                              </node>
                              <node concept="2OqwBi" id="5T6M7ONEfiS" role="37wK5m">
                                <node concept="37vLTw" id="5T6M7ONEf6s" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5T6M7ONDVwv" resolve="obj" />
                                </node>
                                <node concept="liA8E" id="5T6M7ONEfVG" role="2OqNvi">
                                  <ref role="37wK5l" to="xxte:5T6M7ON5jMw" resolve="unwrap" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="5T6M7ONDVwD" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="5T6M7ONDVwE" role="jymVt" />
                    <node concept="3clFb_" id="5T6M7ONDVwF" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="5T6M7ONDVwG" role="1B3o_S" />
                      <node concept="3uibUv" id="5U8hsWB6$Tw" role="3clF45">
                        <ref role="3uigEE" to="xxte:2U$60wn803d" resolve="ANodeReference" />
                      </node>
                      <node concept="37vLTG" id="5T6M7ONDVwI" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="5T6M7ONDVwJ" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5T6M7ONDVwK" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="5T6M7ONDVwL" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5T6M7ONDVwM" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="5T6M7ONDVwN" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="5T6M7ONDVwO" role="11_B2D">
                            <node concept="3uibUv" id="5U8hsWB6_1J" role="3qUE_r">
                              <ref role="3uigEE" to="xxte:2U$60wn803d" resolve="ANodeReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="5T6M7ONDVwQ" role="3clF47">
                        <node concept="3clFbF" id="5T6M7ONEgb2" role="3cqZAp">
                          <node concept="2ShNRf" id="5T6M7ONEgaY" role="3clFbG">
                            <node concept="1pGfFk" id="5T6M7ONEgSE" role="2ShVmc">
                              <ref role="37wK5l" to="xxte:2U$60wn80s9" resolve="ANodeReference" />
                              <node concept="10QFUN" id="5T6M7ONElO5" role="37wK5m">
                                <node concept="2OqwBi" id="5T6M7ONElO1" role="10QFUP">
                                  <node concept="37vLTw" id="5T6M7ONElO2" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5T6M7ONDVwI" resolve="kryo" />
                                  </node>
                                  <node concept="liA8E" id="5T6M7ONElO3" role="2OqNvi">
                                    <ref role="37wK5l" to="4bvh:~Kryo.readClassAndObject(com.esotericsoftware.kryo.io.Input)" resolve="readClassAndObject" />
                                    <node concept="37vLTw" id="5T6M7ONElO4" role="37wK5m">
                                      <ref role="3cqZAo" node="5T6M7ONDVwK" resolve="in" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3uibUv" id="5T6M7ONElNX" role="10QFUM">
                                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="5T6M7ONDVx2" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="5U8hsWB6$14" role="2Ghqu4">
                      <ref role="3uigEE" to="xxte:2U$60wn803d" resolve="ANodeReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="4apiesXfWCz" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="5T6M7ONEwKz" role="8Wnug">
            <node concept="2OqwBi" id="5T6M7ONEwK$" role="3clFbG">
              <node concept="37vLTw" id="5Zew9mGKwfD" role="2Oq$k0">
                <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
              </node>
              <node concept="liA8E" id="5T6M7ONEwKA" role="2OqNvi">
                <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
                <node concept="3VsKOn" id="5T6M7ONEwKB" role="37wK5m">
                  <ref role="3VsUkX" to="xxte:7c10t$724iy" resolve="NodeToSNodeAdapter.NodeReference" />
                </node>
                <node concept="2ShNRf" id="5T6M7ONEwKC" role="37wK5m">
                  <node concept="YeOm9" id="5T6M7ONEwKD" role="2ShVmc">
                    <node concept="1Y3b0j" id="5T6M7ONEwKE" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                      <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                      <node concept="3Tm1VV" id="5T6M7ONEwKF" role="1B3o_S" />
                      <node concept="3clFb_" id="5T6M7ONEwKG" role="jymVt">
                        <property role="TrG5h" value="write" />
                        <node concept="3Tm1VV" id="5T6M7ONEwKH" role="1B3o_S" />
                        <node concept="3cqZAl" id="5T6M7ONEwKI" role="3clF45" />
                        <node concept="37vLTG" id="5T6M7ONEwKJ" role="3clF46">
                          <property role="TrG5h" value="kryo" />
                          <node concept="3uibUv" id="5T6M7ONEwKK" role="1tU5fm">
                            <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="5T6M7ONEwKL" role="3clF46">
                          <property role="TrG5h" value="out" />
                          <node concept="3uibUv" id="5T6M7ONEwKM" role="1tU5fm">
                            <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="5T6M7ONEwKN" role="3clF46">
                          <property role="TrG5h" value="obj" />
                          <node concept="3uibUv" id="5U8hsWB6_H9" role="1tU5fm">
                            <ref role="3uigEE" to="xxte:7c10t$724iy" resolve="NodeToSNodeAdapter.NodeReference" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="5T6M7ONEwKP" role="3clF47">
                          <node concept="3clFbF" id="5T6M7ONEwKQ" role="3cqZAp">
                            <node concept="2OqwBi" id="5T6M7ONEwKR" role="3clFbG">
                              <node concept="37vLTw" id="5T6M7ONEwKS" role="2Oq$k0">
                                <ref role="3cqZAo" node="5T6M7ONEwKJ" resolve="kryo" />
                              </node>
                              <node concept="liA8E" id="5T6M7ONEwKT" role="2OqNvi">
                                <ref role="37wK5l" to="4bvh:~Kryo.writeClassAndObject(com.esotericsoftware.kryo.io.Output,java.lang.Object)" resolve="writeClassAndObject" />
                                <node concept="37vLTw" id="5T6M7ONEwKU" role="37wK5m">
                                  <ref role="3cqZAo" node="5T6M7ONEwKL" resolve="out" />
                                </node>
                                <node concept="2OqwBi" id="4apiesXfW7h" role="37wK5m">
                                  <node concept="2OqwBi" id="5T6M7ONEwKV" role="2Oq$k0">
                                    <node concept="liA8E" id="4apiesXfW7f" role="2OqNvi">
                                      <ref role="37wK5l" to="xxte:NTNBKlsH4$" resolve="getNode" />
                                    </node>
                                    <node concept="37vLTw" id="5T6M7ONEwKW" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5T6M7ONEwKN" resolve="obj" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4apiesXfKDF" role="2OqNvi">
                                    <ref role="37wK5l" to="xxte:4EhVFrZ3AmN" resolve="getReference" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="5T6M7ONEwKY" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="2tJIrI" id="5T6M7ONEwKZ" role="jymVt" />
                      <node concept="3clFb_" id="5T6M7ONEwL0" role="jymVt">
                        <property role="TrG5h" value="read" />
                        <node concept="3Tm1VV" id="5T6M7ONEwL1" role="1B3o_S" />
                        <node concept="3uibUv" id="5U8hsWB6ANb" role="3clF45">
                          <ref role="3uigEE" to="xxte:7c10t$724iy" resolve="NodeToSNodeAdapter.NodeReference" />
                        </node>
                        <node concept="37vLTG" id="5T6M7ONEwL3" role="3clF46">
                          <property role="TrG5h" value="kryo" />
                          <node concept="3uibUv" id="5T6M7ONEwL4" role="1tU5fm">
                            <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="5T6M7ONEwL5" role="3clF46">
                          <property role="TrG5h" value="in" />
                          <node concept="3uibUv" id="5T6M7ONEwL6" role="1tU5fm">
                            <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="5T6M7ONEwL7" role="3clF46">
                          <property role="TrG5h" value="type" />
                          <node concept="3uibUv" id="5T6M7ONEwL8" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                            <node concept="3qUE_q" id="5T6M7ONEwL9" role="11_B2D">
                              <node concept="3uibUv" id="5U8hsWB6BbR" role="3qUE_r">
                                <ref role="3uigEE" to="xxte:7c10t$724iy" resolve="NodeToSNodeAdapter.NodeReference" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="5T6M7ONEwLb" role="3clF47">
                          <node concept="3cpWs8" id="6Q$NiHbeCnP" role="3cqZAp">
                            <node concept="3cpWsn" id="6Q$NiHbeCnQ" role="3cpWs9">
                              <property role="TrG5h" value="node" />
                              <node concept="3uibUv" id="6Q$NiHbeuC_" role="1tU5fm">
                                <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                              </node>
                              <node concept="10QFUN" id="6Q$NiHbeCnR" role="33vP2m">
                                <node concept="2OqwBi" id="6Q$NiHbeCnS" role="10QFUP">
                                  <node concept="37vLTw" id="6Q$NiHbeCnT" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5T6M7ONEwL3" resolve="kryo" />
                                  </node>
                                  <node concept="liA8E" id="6Q$NiHbeCnU" role="2OqNvi">
                                    <ref role="37wK5l" to="4bvh:~Kryo.readClassAndObject(com.esotericsoftware.kryo.io.Input)" resolve="readClassAndObject" />
                                    <node concept="37vLTw" id="6Q$NiHbeCnV" role="37wK5m">
                                      <ref role="3cqZAo" node="5T6M7ONEwL5" resolve="in" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3uibUv" id="6Q$NiHbeCnW" role="10QFUM">
                                  <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="6Q$NiHbeD_K" role="3cqZAp">
                            <node concept="3clFbS" id="6Q$NiHbeD_M" role="3clFbx">
                              <node concept="YS8fn" id="5pmgLfhU1Az" role="3cqZAp">
                                <node concept="2ShNRf" id="5pmgLfhU1Tt" role="YScLw">
                                  <node concept="1pGfFk" id="5pmgLfhU3Tq" role="2ShVmc">
                                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                                    <node concept="3cpWs3" id="5pmgLfhU4nT" role="37wK5m">
                                      <node concept="37vLTw" id="5pmgLfhU4ri" role="3uHU7B">
                                        <ref role="3cqZAo" node="6Q$NiHbeCnQ" resolve="node" />
                                      </node>
                                      <node concept="Xl_RD" id="5pmgLfhU45U" role="3uHU7w">
                                        <property role="Xl_RC" value=" is not valid anymore" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3fqX7Q" id="6Q$NiHbeE7m" role="3clFbw">
                              <node concept="2OqwBi" id="6Q$NiHbeE7o" role="3fr31v">
                                <node concept="37vLTw" id="6Q$NiHbeE7p" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6Q$NiHbeCnQ" resolve="node" />
                                </node>
                                <node concept="liA8E" id="6Q$NiHbeE7q" role="2OqNvi">
                                  <ref role="37wK5l" to="jks5:~INode.isValid()" resolve="isValid" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="5T6M7ONFkvx" role="3cqZAp">
                            <node concept="10QFUN" id="5T6M7ONFHN5" role="3clFbG">
                              <node concept="2OqwBi" id="5T6M7ONFHMW" role="10QFUP">
                                <node concept="2YIFZM" id="5T6M7ONFHMX" role="2Oq$k0">
                                  <ref role="1Pybhc" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                                  <ref role="37wK5l" to="xxte:75046mm7IDU" resolve="wrap" />
                                  <node concept="37vLTw" id="6Q$NiHbeCnX" role="37wK5m">
                                    <ref role="3cqZAo" node="6Q$NiHbeCnQ" resolve="node" />
                                  </node>
                                  <node concept="2OqwBi" id="5npwda7CZlu" role="37wK5m">
                                    <node concept="37vLTw" id="5npwda7CZ5z" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5npwda7vkut" resolve="REPOSITORY" />
                                    </node>
                                    <node concept="liA8E" id="5npwda7CZG8" role="2OqNvi">
                                      <ref role="37wK5l" to="3d38:7vWAzuEE1gr" resolve="getValue" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="5T6M7ONFHN4" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                                </node>
                              </node>
                              <node concept="3uibUv" id="5U8hsWB6BkM" role="10QFUM">
                                <ref role="3uigEE" to="xxte:7c10t$724iy" resolve="NodeToSNodeAdapter.NodeReference" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="5T6M7ONEwLl" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="5U8hsWB6_sX" role="2Ghqu4">
                        <ref role="3uigEE" to="xxte:7c10t$724iy" resolve="NodeToSNodeAdapter.NodeReference" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5T6M7ONFPmT" role="3cqZAp">
          <node concept="2OqwBi" id="5T6M7ONFPmU" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfE" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="5T6M7ONFPmW" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="5T6M7ONFPmX" role="37wK5m">
                <ref role="3VsUkX" to="w1kc:~SNodePointer" resolve="SNodePointer" />
              </node>
              <node concept="2ShNRf" id="5T6M7ONFPmY" role="37wK5m">
                <node concept="YeOm9" id="5T6M7ONFPmZ" role="2ShVmc">
                  <node concept="1Y3b0j" id="5T6M7ONFPn0" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <node concept="3Tm1VV" id="5T6M7ONFPn1" role="1B3o_S" />
                    <node concept="3clFb_" id="5T6M7ONFPn2" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="5T6M7ONFPn3" role="1B3o_S" />
                      <node concept="3cqZAl" id="5T6M7ONFPn4" role="3clF45" />
                      <node concept="37vLTG" id="5T6M7ONFPn5" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="5T6M7ONFPn6" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5T6M7ONFPn7" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="5T6M7ONFPn8" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5T6M7ONFPn9" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="5T6M7ONG86n" role="1tU5fm">
                          <ref role="3uigEE" to="w1kc:~SNodePointer" resolve="SNodePointer" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="5T6M7ONFPnb" role="3clF47">
                        <node concept="3clFbF" id="5T6M7ONGey$" role="3cqZAp">
                          <node concept="2OqwBi" id="5T6M7ONGeV_" role="3clFbG">
                            <node concept="37vLTw" id="5T6M7ONGeyy" role="2Oq$k0">
                              <ref role="3cqZAo" node="5T6M7ONFPn7" resolve="out" />
                            </node>
                            <node concept="liA8E" id="5T6M7ONGfyn" role="2OqNvi">
                              <ref role="37wK5l" to="pxg7:~Output.writeString(java.lang.String)" resolve="writeString" />
                              <node concept="2YIFZM" id="5T6M7ONGfCr" role="37wK5m">
                                <ref role="1Pybhc" to="w1kc:~SNodePointer" resolve="SNodePointer" />
                                <ref role="37wK5l" to="w1kc:~SNodePointer.serialize(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="serialize" />
                                <node concept="37vLTw" id="5T6M7ONGfCs" role="37wK5m">
                                  <ref role="3cqZAo" node="5T6M7ONFPn9" resolve="obj" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="5T6M7ONFPnm" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="5T6M7ONFPnn" role="jymVt" />
                    <node concept="3clFb_" id="5T6M7ONFPno" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="5T6M7ONFPnp" role="1B3o_S" />
                      <node concept="3uibUv" id="5T6M7ONG9sf" role="3clF45">
                        <ref role="3uigEE" to="w1kc:~SNodePointer" resolve="SNodePointer" />
                      </node>
                      <node concept="37vLTG" id="5T6M7ONFPnr" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="5T6M7ONFPns" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5T6M7ONFPnt" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="5T6M7ONFPnu" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5T6M7ONFPnv" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="5T6M7ONFPnw" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="5T6M7ONFPnx" role="11_B2D">
                            <node concept="3uibUv" id="5T6M7ONGb2A" role="3qUE_r">
                              <ref role="3uigEE" to="w1kc:~SNodePointer" resolve="SNodePointer" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="5T6M7ONFPnz" role="3clF47">
                        <node concept="3clFbF" id="5T6M7ONGmuN" role="3cqZAp">
                          <node concept="10QFUN" id="5T6M7ONGzRD" role="3clFbG">
                            <node concept="2YIFZM" id="5T6M7ONGzR_" role="10QFUP">
                              <ref role="37wK5l" to="w1kc:~SNodePointer.deserialize(java.lang.String)" resolve="deserialize" />
                              <ref role="1Pybhc" to="w1kc:~SNodePointer" resolve="SNodePointer" />
                              <node concept="2OqwBi" id="5T6M7ONGzRA" role="37wK5m">
                                <node concept="37vLTw" id="5T6M7ONGzRB" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5T6M7ONFPnt" resolve="in" />
                                </node>
                                <node concept="liA8E" id="5T6M7ONGzRC" role="2OqNvi">
                                  <ref role="37wK5l" to="pxg7:~Input.readString()" resolve="readString" />
                                </node>
                              </node>
                            </node>
                            <node concept="3uibUv" id="5T6M7ONG$wd" role="10QFUM">
                              <ref role="3uigEE" to="w1kc:~SNodePointer" resolve="SNodePointer" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="5T6M7ONFPnK" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="5T6M7ONG6mg" role="2Ghqu4">
                      <ref role="3uigEE" to="w1kc:~SNodePointer" resolve="SNodePointer" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5T6M7ONG_1c" role="3cqZAp">
          <node concept="2OqwBi" id="5T6M7ONG_1d" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfF" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="5T6M7ONG_1f" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="5T6M7ONG_1g" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:5$YruQr6z2g" resolve="OutputNodeReferenceAsNode" />
              </node>
              <node concept="2ShNRf" id="5T6M7ONG_1h" role="37wK5m">
                <node concept="YeOm9" id="5T6M7ONG_1i" role="2ShVmc">
                  <node concept="1Y3b0j" id="5T6M7ONG_1j" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <node concept="3Tm1VV" id="5T6M7ONG_1k" role="1B3o_S" />
                    <node concept="3clFb_" id="5T6M7ONG_1l" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="5T6M7ONG_1m" role="1B3o_S" />
                      <node concept="3cqZAl" id="5T6M7ONG_1n" role="3clF45" />
                      <node concept="37vLTG" id="5T6M7ONG_1o" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="5T6M7ONG_1p" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5T6M7ONG_1q" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="5T6M7ONG_1r" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5T6M7ONG_1s" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="3c6J_2nhMFr" role="1tU5fm">
                          <ref role="3uigEE" to="nv3w:5$YruQr6z2g" resolve="OutputNodeReferenceAsNode" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="5T6M7ONG_1u" role="3clF47">
                        <node concept="3clFbF" id="5T6M7ONGZbo" role="3cqZAp">
                          <node concept="2OqwBi" id="5T6M7ONGZx1" role="3clFbG">
                            <node concept="37vLTw" id="5T6M7ONGZbn" role="2Oq$k0">
                              <ref role="3cqZAo" node="5T6M7ONG_1o" resolve="kryo" />
                            </node>
                            <node concept="liA8E" id="5T6M7ONGZNb" role="2OqNvi">
                              <ref role="37wK5l" to="4bvh:~Kryo.writeClassAndObject(com.esotericsoftware.kryo.io.Output,java.lang.Object)" resolve="writeClassAndObject" />
                              <node concept="37vLTw" id="5T6M7ONH64h" role="37wK5m">
                                <ref role="3cqZAo" node="5T6M7ONG_1q" resolve="out" />
                              </node>
                              <node concept="2OqwBi" id="5T6M7ONH6LU" role="37wK5m">
                                <node concept="37vLTw" id="5T6M7ONH6of" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5T6M7ONG_1s" resolve="obj" />
                                </node>
                                <node concept="liA8E" id="3c6J_2nhNQS" role="2OqNvi">
                                  <ref role="37wK5l" to="nv3w:73LuVOQ5fv6" resolve="getOutputNodeReference" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="5T6M7ONG_1_" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="5T6M7ONG_1A" role="jymVt" />
                    <node concept="3clFb_" id="5T6M7ONG_1B" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="5T6M7ONG_1C" role="1B3o_S" />
                      <node concept="3uibUv" id="3c6J_2nhN0G" role="3clF45">
                        <ref role="3uigEE" to="nv3w:5$YruQr6z2g" resolve="OutputNodeReferenceAsNode" />
                      </node>
                      <node concept="37vLTG" id="5T6M7ONG_1E" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="5T6M7ONG_1F" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5T6M7ONG_1G" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="5T6M7ONG_1H" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5T6M7ONG_1I" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="5T6M7ONG_1J" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="5T6M7ONG_1K" role="11_B2D">
                            <node concept="3uibUv" id="3c6J_2nhNlX" role="3qUE_r">
                              <ref role="3uigEE" to="nv3w:5$YruQr6z2g" resolve="OutputNodeReferenceAsNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="5T6M7ONG_1M" role="3clF47">
                        <node concept="3cpWs8" id="5T6M7ONI4ob" role="3cqZAp">
                          <node concept="3cpWsn" id="5T6M7ONI4oc" role="3cpWs9">
                            <property role="TrG5h" value="engine" />
                            <node concept="3uibUv" id="5npwda7vWuQ" role="1tU5fm">
                              <ref role="3uigEE" to="nv3w:5gTrVpGiJ4w" resolve="ITransformationEngine" />
                            </node>
                            <node concept="2OqwBi" id="5T6M7ONI4od" role="33vP2m">
                              <node concept="37vLTw" id="5npwda7vWob" role="2Oq$k0">
                                <ref role="3cqZAo" node="5npwda7vzO1" resolve="ENGINE" />
                              </node>
                              <node concept="liA8E" id="5T6M7ONI4of" role="2OqNvi">
                                <ref role="37wK5l" to="3d38:7vWAzuEE1gr" resolve="getValue" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="5npwda7tpmY" role="3cqZAp">
                          <node concept="3clFbS" id="5npwda7tpn0" role="3clFbx">
                            <node concept="YS8fn" id="5npwda7tpZs" role="3cqZAp">
                              <node concept="2ShNRf" id="5npwda7tq11" role="YScLw">
                                <node concept="1pGfFk" id="5npwda7tqrd" role="2ShVmc">
                                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                                  <node concept="Xl_RD" id="5npwda7tqu6" role="37wK5m">
                                    <property role="Xl_RC" value="No context engine available" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbC" id="5npwda7tpU9" role="3clFbw">
                            <node concept="10Nm6u" id="5npwda7tpVt" role="3uHU7w" />
                            <node concept="37vLTw" id="5npwda7tpDF" role="3uHU7B">
                              <ref role="3cqZAo" node="5T6M7ONI4oc" resolve="engine" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="5T6M7ONI9RR" role="3cqZAp">
                          <node concept="3cpWsn" id="5T6M7ONI9RS" role="3cpWs9">
                            <property role="TrG5h" value="ref" />
                            <node concept="3uibUv" id="3c6J_2nhNUH" role="1tU5fm">
                              <ref role="3uigEE" to="nv3w:2dy3jLYuSc6" resolve="IOutputNodeReference" />
                            </node>
                            <node concept="10QFUN" id="5T6M7ONIl8e" role="33vP2m">
                              <node concept="2OqwBi" id="5T6M7ONIl8a" role="10QFUP">
                                <node concept="37vLTw" id="5T6M7ONIl8b" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5T6M7ONG_1E" resolve="kryo" />
                                </node>
                                <node concept="liA8E" id="5T6M7ONIl8c" role="2OqNvi">
                                  <ref role="37wK5l" to="4bvh:~Kryo.readClassAndObject(com.esotericsoftware.kryo.io.Input)" resolve="readClassAndObject" />
                                  <node concept="37vLTw" id="5T6M7ONIl8d" role="37wK5m">
                                    <ref role="3cqZAo" node="5T6M7ONG_1G" resolve="in" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3uibUv" id="3c6J_2nhNWY" role="10QFUM">
                                <ref role="3uigEE" to="nv3w:2dy3jLYuSc6" resolve="IOutputNodeReference" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="3c6J_2nhPrv" role="3cqZAp">
                          <node concept="10QFUN" id="3c6J_2nhU55" role="3clFbG">
                            <node concept="2YIFZM" id="3c6J_2nhU52" role="10QFUP">
                              <ref role="37wK5l" to="nv3w:4Dc7ogUjD_D" resolve="create" />
                              <ref role="1Pybhc" to="nv3w:5$YruQr6z2g" resolve="OutputNodeReferenceAsNode" />
                              <node concept="37vLTw" id="3c6J_2nhU53" role="37wK5m">
                                <ref role="3cqZAo" node="5T6M7ONI4oc" resolve="engine" />
                              </node>
                              <node concept="37vLTw" id="3c6J_2nhU54" role="37wK5m">
                                <ref role="3cqZAo" node="5T6M7ONI9RS" resolve="ref" />
                              </node>
                            </node>
                            <node concept="3uibUv" id="3c6J_2nhUkY" role="10QFUM">
                              <ref role="3uigEE" to="nv3w:5$YruQr6z2g" resolve="OutputNodeReferenceAsNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="5T6M7ONG_1U" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="3c6J_2nhMhk" role="2Ghqu4">
                      <ref role="3uigEE" to="nv3w:5$YruQr6z2g" resolve="OutputNodeReferenceAsNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="4VnMKPOqwMb" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="5T6M7ONOnuW" role="8Wnug">
            <node concept="2OqwBi" id="5T6M7ONOnuX" role="3clFbG">
              <node concept="37vLTw" id="5Zew9mGKwfG" role="2Oq$k0">
                <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
              </node>
              <node concept="liA8E" id="5T6M7ONOnuZ" role="2OqNvi">
                <ref role="37wK5l" to="4bvh:~Kryo.addDefaultSerializer(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="addDefaultSerializer" />
                <node concept="3VsKOn" id="5T6M7ONOnv0" role="37wK5m">
                  <ref role="3VsUkX" to="w1kc:~SNode" resolve="SNode" />
                </node>
                <node concept="2ShNRf" id="5T6M7ONOnv1" role="37wK5m">
                  <node concept="YeOm9" id="5T6M7ONOnv2" role="2ShVmc">
                    <node concept="1Y3b0j" id="5T6M7ONOnv3" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                      <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                      <node concept="3Tm1VV" id="5T6M7ONOnv4" role="1B3o_S" />
                      <node concept="3clFb_" id="5T6M7ONOnv5" role="jymVt">
                        <property role="TrG5h" value="write" />
                        <node concept="3Tm1VV" id="5T6M7ONOnv6" role="1B3o_S" />
                        <node concept="3cqZAl" id="5T6M7ONOnv7" role="3clF45" />
                        <node concept="37vLTG" id="5T6M7ONOnv8" role="3clF46">
                          <property role="TrG5h" value="kryo" />
                          <node concept="3uibUv" id="5T6M7ONOnv9" role="1tU5fm">
                            <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="5T6M7ONOnva" role="3clF46">
                          <property role="TrG5h" value="out" />
                          <node concept="3uibUv" id="5T6M7ONOnvb" role="1tU5fm">
                            <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="5T6M7ONOnvc" role="3clF46">
                          <property role="TrG5h" value="obj" />
                          <node concept="3uibUv" id="5T6M7ONOvUh" role="1tU5fm">
                            <ref role="3uigEE" to="w1kc:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="5T6M7ONOnve" role="3clF47">
                          <node concept="3clFbF" id="5T6M7ONOnvf" role="3cqZAp">
                            <node concept="2OqwBi" id="5T6M7ONOnvg" role="3clFbG">
                              <node concept="liA8E" id="5T6M7ONOnvi" role="2OqNvi">
                                <ref role="37wK5l" to="4bvh:~Kryo.writeClassAndObject(com.esotericsoftware.kryo.io.Output,java.lang.Object)" resolve="writeClassAndObject" />
                                <node concept="37vLTw" id="5T6M7ONOnvj" role="37wK5m">
                                  <ref role="3cqZAo" node="5T6M7ONOnva" resolve="out" />
                                </node>
                                <node concept="2OqwBi" id="5T6M7ONOnvk" role="37wK5m">
                                  <node concept="37vLTw" id="5T6M7ONOnvl" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5T6M7ONOnvc" resolve="obj" />
                                  </node>
                                  <node concept="liA8E" id="5T6M7ONOzn4" role="2OqNvi">
                                    <ref role="37wK5l" to="w1kc:~SNode.getReference()" resolve="getReference" />
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="5T6M7ONOnvh" role="2Oq$k0">
                                <ref role="3cqZAo" node="5T6M7ONOnv8" resolve="kryo" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="5T6M7ONOnvn" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="2tJIrI" id="5T6M7ONOnvo" role="jymVt" />
                      <node concept="3clFb_" id="5T6M7ONOnvp" role="jymVt">
                        <property role="TrG5h" value="read" />
                        <node concept="3Tm1VV" id="5T6M7ONOnvq" role="1B3o_S" />
                        <node concept="37vLTG" id="5T6M7ONOnvs" role="3clF46">
                          <property role="TrG5h" value="kryo" />
                          <node concept="3uibUv" id="5T6M7ONOnvt" role="1tU5fm">
                            <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="5T6M7ONOnvu" role="3clF46">
                          <property role="TrG5h" value="in" />
                          <node concept="3uibUv" id="5T6M7ONOnvv" role="1tU5fm">
                            <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="5T6M7ONOnvw" role="3clF46">
                          <property role="TrG5h" value="type" />
                          <node concept="3uibUv" id="5T6M7ONOnvx" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                            <node concept="3qUE_q" id="5T6M7ONOnvy" role="11_B2D">
                              <node concept="3uibUv" id="5T6M7ONOxZO" role="3qUE_r">
                                <ref role="3uigEE" to="w1kc:~SNode" resolve="SNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="5T6M7ONOnv$" role="3clF47">
                          <node concept="3cpWs8" id="5T6M7ONOHU_" role="3cqZAp">
                            <node concept="3cpWsn" id="5T6M7ONOHUA" role="3cpWs9">
                              <property role="TrG5h" value="ref" />
                              <node concept="3uibUv" id="5T6M7ONONDd" role="1tU5fm">
                                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                              </node>
                              <node concept="10QFUN" id="5T6M7ONOTfk" role="33vP2m">
                                <node concept="2OqwBi" id="5T6M7ONOTfg" role="10QFUP">
                                  <node concept="37vLTw" id="5T6M7ONOTfh" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5T6M7ONOnvs" resolve="kryo" />
                                  </node>
                                  <node concept="liA8E" id="5T6M7ONOTfi" role="2OqNvi">
                                    <ref role="37wK5l" to="4bvh:~Kryo.readClassAndObject(com.esotericsoftware.kryo.io.Input)" resolve="readClassAndObject" />
                                    <node concept="37vLTw" id="5T6M7ONOTfj" role="37wK5m">
                                      <ref role="3cqZAo" node="5T6M7ONOnvu" resolve="in" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3uibUv" id="5T6M7ONOTff" role="10QFUM">
                                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="5pmgLfhU4Fa" role="3cqZAp">
                            <node concept="3cpWsn" id="5pmgLfhU4Fb" role="3cpWs9">
                              <property role="TrG5h" value="node" />
                              <node concept="3uibUv" id="5pmgLfhTQQN" role="1tU5fm">
                                <ref role="3uigEE" to="w1kc:~SNode" resolve="SNode" />
                              </node>
                              <node concept="10QFUN" id="5pmgLfhU4Fc" role="33vP2m">
                                <node concept="2OqwBi" id="5pmgLfhU4Fd" role="10QFUP">
                                  <node concept="37vLTw" id="5pmgLfhU4Fe" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5T6M7ONOHUA" resolve="ref" />
                                  </node>
                                  <node concept="liA8E" id="5pmgLfhU4Ff" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                    <node concept="2YIFZM" id="5pmgLfhU4Fg" role="37wK5m">
                                      <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
                                      <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3uibUv" id="5pmgLfhU4Fh" role="10QFUM">
                                  <ref role="3uigEE" to="w1kc:~SNode" resolve="SNode" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="5pmgLfhU5bn" role="3cqZAp">
                            <node concept="3clFbS" id="5pmgLfhU5bp" role="3clFbx">
                              <node concept="YS8fn" id="5pmgLfhU6m$" role="3cqZAp">
                                <node concept="2ShNRf" id="5pmgLfhU6nX" role="YScLw">
                                  <node concept="1pGfFk" id="5pmgLfhU6VQ" role="2ShVmc">
                                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                                    <node concept="3cpWs3" id="5pmgLfhU81Z" role="37wK5m">
                                      <node concept="37vLTw" id="5pmgLfhU_Yg" role="3uHU7w">
                                        <ref role="3cqZAo" node="5T6M7ONOHUA" resolve="ref" />
                                      </node>
                                      <node concept="Xl_RD" id="5pmgLfhU6YF" role="3uHU7B">
                                        <property role="Xl_RC" value="SNode not found: " />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbC" id="5pmgLfhU5Y6" role="3clFbw">
                              <node concept="10Nm6u" id="5pmgLfhU64I" role="3uHU7w" />
                              <node concept="37vLTw" id="5pmgLfhU5jv" role="3uHU7B">
                                <ref role="3cqZAo" node="5pmgLfhU4Fb" resolve="node" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="5pmgLfhU6eh" role="3cqZAp">
                            <node concept="37vLTw" id="5pmgLfhU6ej" role="3cqZAk">
                              <ref role="3cqZAo" node="5pmgLfhU4Fb" resolve="node" />
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="5T6M7ONOnvU" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                        <node concept="3uibUv" id="5T6M7ONOx2$" role="3clF45">
                          <ref role="3uigEE" to="w1kc:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="5T6M7ONOv24" role="2Ghqu4">
                        <ref role="3uigEE" to="w1kc:~SNode" resolve="SNode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="4VnMKPOpTfl" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="5T6M7ONU20$" role="8Wnug">
            <node concept="2OqwBi" id="5T6M7ONU4Dn" role="3clFbG">
              <node concept="37vLTw" id="5Zew9mGKwfH" role="2Oq$k0">
                <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
              </node>
              <node concept="liA8E" id="5T6M7ONUcZh" role="2OqNvi">
                <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
                <node concept="3VsKOn" id="5T6M7ONUj1n" role="37wK5m">
                  <ref role="3VsUkX" to="w1kc:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="4VnMKPOpZzk" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="5T6M7ONUjFO" role="8Wnug">
            <node concept="2OqwBi" id="5T6M7ONUjFP" role="3clFbG">
              <node concept="37vLTw" id="5Zew9mGKwfI" role="2Oq$k0">
                <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
              </node>
              <node concept="liA8E" id="5T6M7ONUjFR" role="2OqNvi">
                <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
                <node concept="3VsKOn" id="5T6M7ONUjFS" role="37wK5m">
                  <ref role="3VsUkX" to="w1kc:~InterfaceSNode" resolve="InterfaceSNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="4VnMKPOq5M4" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="5$pyBfNB7xw" role="8Wnug">
            <node concept="2OqwBi" id="5$pyBfNB7xx" role="3clFbG">
              <node concept="37vLTw" id="5Zew9mGKwfJ" role="2Oq$k0">
                <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
              </node>
              <node concept="liA8E" id="5$pyBfNB7xz" role="2OqNvi">
                <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class)" resolve="register" />
                <node concept="3VsKOn" id="5$pyBfNB7x$" role="37wK5m">
                  <ref role="3VsUkX" to="w1kc:~LazySNode" resolve="LazySNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5npwda7qt6M" role="3cqZAp" />
        <node concept="3clFbF" id="5npwda7rhTs" role="3cqZAp">
          <node concept="2OqwBi" id="5npwda7rhTt" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfL" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="5npwda7rhTv" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="5npwda7rhTw" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:6EAoUhF0cMS" resolve="EmptyRootSubgraphRef" />
              </node>
              <node concept="2ShNRf" id="5npwda7rhTx" role="37wK5m">
                <node concept="YeOm9" id="5npwda7rhTy" role="2ShVmc">
                  <node concept="1Y3b0j" id="5npwda7rhTz" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <node concept="3Tm1VV" id="5npwda7rhT$" role="1B3o_S" />
                    <node concept="3clFb_" id="5npwda7rhT_" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="5npwda7rhTA" role="1B3o_S" />
                      <node concept="3cqZAl" id="5npwda7rhTB" role="3clF45" />
                      <node concept="37vLTG" id="5npwda7rhTC" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="5npwda7rhTD" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5npwda7rhTE" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="5npwda7rhTF" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5npwda7rhTG" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="3c6J_2nhJiU" role="1tU5fm">
                          <ref role="3uigEE" to="nv3w:6EAoUhF0cMS" resolve="EmptyRootSubgraphRef" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="5npwda7rhTI" role="3clF47" />
                      <node concept="2AHcQZ" id="5npwda7rhTT" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="5npwda7rhTU" role="jymVt" />
                    <node concept="3clFb_" id="5npwda7rhTV" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="5npwda7rhTW" role="1B3o_S" />
                      <node concept="3uibUv" id="3c6J_2nhJ_q" role="3clF45">
                        <ref role="3uigEE" to="nv3w:6EAoUhF0cMS" resolve="EmptyRootSubgraphRef" />
                      </node>
                      <node concept="37vLTG" id="5npwda7rhTY" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="5npwda7rhTZ" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5npwda7rhU0" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="5npwda7rhU1" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5npwda7rhU2" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="5npwda7rhU3" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="5npwda7rhU4" role="11_B2D">
                            <node concept="3uibUv" id="3c6J_2nhJMG" role="3qUE_r">
                              <ref role="3uigEE" to="nv3w:6EAoUhF0cMS" resolve="EmptyRootSubgraphRef" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="5npwda7rhU6" role="3clF47">
                        <node concept="3clFbF" id="5npwda7rrfl" role="3cqZAp">
                          <node concept="10M0yZ" id="3c6J_2nhKhH" role="3clFbG">
                            <ref role="3cqZAo" to="nv3w:6EAoUhF0cMU" resolve="INSTANCE" />
                            <ref role="1PxDUh" to="nv3w:6EAoUhF0cMS" resolve="EmptyRootSubgraphRef" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="5npwda7rhUh" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="3c6J_2nhJ6j" role="2Ghqu4">
                      <ref role="3uigEE" to="nv3w:6EAoUhF0cMS" resolve="EmptyRootSubgraphRef" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5npwda7rzJn" role="3cqZAp">
          <node concept="2OqwBi" id="5npwda7rzJo" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfM" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="5npwda7rzJq" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="5npwda7rzJr" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:2dy3jLYv2k9" resolve="LazyRootSubgraphRef" />
              </node>
              <node concept="2ShNRf" id="5npwda7rzJs" role="37wK5m">
                <node concept="YeOm9" id="5npwda7rzJt" role="2ShVmc">
                  <node concept="1Y3b0j" id="5npwda7rzJu" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <node concept="3Tm1VV" id="5npwda7rzJv" role="1B3o_S" />
                    <node concept="3clFb_" id="5npwda7rzJw" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="5npwda7rzJx" role="1B3o_S" />
                      <node concept="3cqZAl" id="5npwda7rzJy" role="3clF45" />
                      <node concept="37vLTG" id="5npwda7rzJz" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="5npwda7rzJ$" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5npwda7rzJ_" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="5npwda7rzJA" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5npwda7rzJB" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="3c6J_2nhKPy" role="1tU5fm">
                          <ref role="3uigEE" to="nv3w:2dy3jLYv2k9" resolve="LazyRootSubgraphRef" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="5npwda7rzJD" role="3clF47" />
                      <node concept="2AHcQZ" id="5npwda7rzJE" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="5npwda7rzJF" role="jymVt" />
                    <node concept="3clFb_" id="5npwda7rzJG" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="5npwda7rzJH" role="1B3o_S" />
                      <node concept="3uibUv" id="3c6J_2nhL82" role="3clF45">
                        <ref role="3uigEE" to="nv3w:2dy3jLYv2k9" resolve="LazyRootSubgraphRef" />
                      </node>
                      <node concept="37vLTG" id="5npwda7rzJJ" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="5npwda7rzJK" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5npwda7rzJL" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="5npwda7rzJM" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5npwda7rzJN" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="5npwda7rzJO" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="5npwda7rzJP" role="11_B2D">
                            <node concept="3uibUv" id="3c6J_2nhLlk" role="3qUE_r">
                              <ref role="3uigEE" to="nv3w:2dy3jLYv2k9" resolve="LazyRootSubgraphRef" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="5npwda7rzJR" role="3clF47">
                        <node concept="3clFbF" id="5npwda7rzJS" role="3cqZAp">
                          <node concept="10M0yZ" id="3c6J_2nhLCl" role="3clFbG">
                            <ref role="3cqZAo" to="nv3w:6EAoUhF0cGL" resolve="INSTANCE" />
                            <ref role="1PxDUh" to="nv3w:2dy3jLYv2k9" resolve="LazyRootSubgraphRef" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="5npwda7rzJU" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="3c6J_2nhKCV" role="2Ghqu4">
                      <ref role="3uigEE" to="nv3w:2dy3jLYv2k9" resolve="LazyRootSubgraphRef" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Ya3eUXHzXD" role="3cqZAp">
          <node concept="2OqwBi" id="7Ya3eUXHzXE" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfN" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="7Ya3eUXHzXG" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="7Ya3eUXHzXH" role="37wK5m">
                <ref role="3VsUkX" to="xxte:5ATQqVBu_0y" resolve="SModelAsNode" />
              </node>
              <node concept="2ShNRf" id="7Ya3eUXHzXI" role="37wK5m">
                <node concept="YeOm9" id="7Ya3eUXHzXJ" role="2ShVmc">
                  <node concept="1Y3b0j" id="7Ya3eUXHzXK" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <node concept="3Tm1VV" id="7Ya3eUXHzXL" role="1B3o_S" />
                    <node concept="3clFb_" id="7Ya3eUXHzXM" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="7Ya3eUXHzXN" role="1B3o_S" />
                      <node concept="3cqZAl" id="7Ya3eUXHzXO" role="3clF45" />
                      <node concept="37vLTG" id="7Ya3eUXHzXP" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="7Ya3eUXHzXQ" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="7Ya3eUXHzXR" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="7Ya3eUXHzXS" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="7Ya3eUXHzXT" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="5U8hsWB6CGL" role="1tU5fm">
                          <ref role="3uigEE" to="xxte:5ATQqVBu_0y" resolve="SModelAsNode" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="7Ya3eUXHzXV" role="3clF47">
                        <node concept="3clFbF" id="7Ya3eUXHFp9" role="3cqZAp">
                          <node concept="2OqwBi" id="7Ya3eUXHFIH" role="3clFbG">
                            <node concept="37vLTw" id="7Ya3eUXHFp8" role="2Oq$k0">
                              <ref role="3cqZAo" node="7Ya3eUXHzXR" resolve="out" />
                            </node>
                            <node concept="liA8E" id="7Ya3eUXHG83" role="2OqNvi">
                              <ref role="37wK5l" to="pxg7:~Output.writeString(java.lang.String)" resolve="writeString" />
                              <node concept="2OqwBi" id="7Ya3eUXHNkh" role="37wK5m">
                                <node concept="2YIFZM" id="7Ya3eUXHNki" role="2Oq$k0">
                                  <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                                  <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                                </node>
                                <node concept="liA8E" id="7Ya3eUXHNkj" role="2OqNvi">
                                  <ref role="37wK5l" to="dush:~PersistenceFacade.asString(org.jetbrains.mps.openapi.model.SModelReference)" resolve="asString" />
                                  <node concept="2OqwBi" id="7Ya3eUXHNu6" role="37wK5m">
                                    <node concept="2OqwBi" id="7Ya3eUXHNu7" role="2Oq$k0">
                                      <node concept="37vLTw" id="7Ya3eUXHNu8" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7Ya3eUXHzXT" resolve="obj" />
                                      </node>
                                      <node concept="liA8E" id="7Ya3eUXHNu9" role="2OqNvi">
                                        <ref role="37wK5l" to="xxte:qmkA5fQFVR" resolve="getElement" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="7Ya3eUXHNua" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="7Ya3eUXHzXW" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="7Ya3eUXHzXX" role="jymVt" />
                    <node concept="3clFb_" id="7Ya3eUXHzXY" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="7Ya3eUXHzXZ" role="1B3o_S" />
                      <node concept="3uibUv" id="5U8hsWB6D53" role="3clF45">
                        <ref role="3uigEE" to="xxte:5ATQqVBu_0y" resolve="SModelAsNode" />
                      </node>
                      <node concept="37vLTG" id="7Ya3eUXHzY1" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="7Ya3eUXHzY2" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="7Ya3eUXHzY3" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="7Ya3eUXHzY4" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="7Ya3eUXHzY5" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="7Ya3eUXHzY6" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="7Ya3eUXHzY7" role="11_B2D">
                            <node concept="3uibUv" id="5U8hsWB6DeI" role="3qUE_r">
                              <ref role="3uigEE" to="xxte:5ATQqVBu_0y" resolve="SModelAsNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="7Ya3eUXHzY9" role="3clF47">
                        <node concept="3cpWs8" id="7Ya3eUXHSim" role="3cqZAp">
                          <node concept="3cpWsn" id="7Ya3eUXHSin" role="3cpWs9">
                            <property role="TrG5h" value="ref" />
                            <node concept="3uibUv" id="7Ya3eUXHSby" role="1tU5fm">
                              <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                            </node>
                            <node concept="2OqwBi" id="7Ya3eUXHSio" role="33vP2m">
                              <node concept="2YIFZM" id="7Ya3eUXHSip" role="2Oq$k0">
                                <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                                <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                              </node>
                              <node concept="liA8E" id="7Ya3eUXHSiq" role="2OqNvi">
                                <ref role="37wK5l" to="dush:~PersistenceFacade.createModelReference(java.lang.String)" resolve="createModelReference" />
                                <node concept="2OqwBi" id="7Ya3eUXHSir" role="37wK5m">
                                  <node concept="37vLTw" id="7Ya3eUXHSis" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7Ya3eUXHzY3" resolve="in" />
                                  </node>
                                  <node concept="liA8E" id="7Ya3eUXHSit" role="2OqNvi">
                                    <ref role="37wK5l" to="pxg7:~Input.readString()" resolve="readString" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="7Ya3eUXHSxJ" role="3cqZAp">
                          <node concept="2ShNRf" id="7Ya3eUXHSxF" role="3clFbG">
                            <node concept="1pGfFk" id="7Ya3eUXHVSh" role="2ShVmc">
                              <ref role="37wK5l" to="xxte:qmkA5fOXr4" resolve="SModelAsNode" />
                              <node concept="2OqwBi" id="7Ya3eUXHW1Q" role="37wK5m">
                                <node concept="37vLTw" id="7Ya3eUXHVUE" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7Ya3eUXHSin" resolve="ref" />
                                </node>
                                <node concept="liA8E" id="7Ya3eUXHWgZ" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                  <node concept="2OqwBi" id="7Ya3eUXHWuW" role="37wK5m">
                                    <node concept="37vLTw" id="7Ya3eUXHWkw" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5npwda7vkut" resolve="REPOSITORY" />
                                    </node>
                                    <node concept="liA8E" id="7Ya3eUXHWPf" role="2OqNvi">
                                      <ref role="37wK5l" to="3d38:7vWAzuEE1gr" resolve="getValue" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="7Ya3eUXHzYc" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="5U8hsWB6Cxl" role="2Ghqu4">
                      <ref role="3uigEE" to="xxte:5ATQqVBu_0y" resolve="SModelAsNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Ya3eUXHWT8" role="3cqZAp">
          <node concept="2OqwBi" id="7Ya3eUXHWT9" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfO" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="7Ya3eUXHWTb" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="7Ya3eUXHWTc" role="37wK5m">
                <ref role="3VsUkX" to="xxte:qmkA5fOuCN" resolve="SModuleAsNode" />
              </node>
              <node concept="2ShNRf" id="7Ya3eUXHWTd" role="37wK5m">
                <node concept="YeOm9" id="7Ya3eUXHWTe" role="2ShVmc">
                  <node concept="1Y3b0j" id="7Ya3eUXHWTf" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <node concept="3Tm1VV" id="7Ya3eUXHWTg" role="1B3o_S" />
                    <node concept="3clFb_" id="7Ya3eUXHWTh" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="7Ya3eUXHWTi" role="1B3o_S" />
                      <node concept="3cqZAl" id="7Ya3eUXHWTj" role="3clF45" />
                      <node concept="37vLTG" id="7Ya3eUXHWTk" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="7Ya3eUXHWTl" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="7Ya3eUXHWTm" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="7Ya3eUXHWTn" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="7Ya3eUXHWTo" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="5U8hsWB6E2V" role="1tU5fm">
                          <ref role="3uigEE" to="xxte:qmkA5fOuCN" resolve="SModuleAsNode" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="7Ya3eUXHWTq" role="3clF47">
                        <node concept="3clFbF" id="7Ya3eUXHWTr" role="3cqZAp">
                          <node concept="2OqwBi" id="7Ya3eUXHWTs" role="3clFbG">
                            <node concept="37vLTw" id="7Ya3eUXHWTt" role="2Oq$k0">
                              <ref role="3cqZAo" node="7Ya3eUXHWTm" resolve="out" />
                            </node>
                            <node concept="liA8E" id="7Ya3eUXHWTu" role="2OqNvi">
                              <ref role="37wK5l" to="pxg7:~Output.writeString(java.lang.String)" resolve="writeString" />
                              <node concept="2OqwBi" id="7Ya3eUXHWTv" role="37wK5m">
                                <node concept="2YIFZM" id="7Ya3eUXHWTw" role="2Oq$k0">
                                  <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                                  <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                                </node>
                                <node concept="liA8E" id="7Ya3eUXHWTx" role="2OqNvi">
                                  <ref role="37wK5l" to="dush:~PersistenceFacade.asString(org.jetbrains.mps.openapi.module.SModuleReference)" resolve="asString" />
                                  <node concept="2OqwBi" id="7Ya3eUXHWTy" role="37wK5m">
                                    <node concept="2OqwBi" id="7Ya3eUXHWTz" role="2Oq$k0">
                                      <node concept="37vLTw" id="7Ya3eUXHWT$" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7Ya3eUXHWTo" resolve="obj" />
                                      </node>
                                      <node concept="liA8E" id="7Ya3eUXHWT_" role="2OqNvi">
                                        <ref role="37wK5l" to="xxte:qmkA5fQFVR" resolve="getElement" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="7Ya3eUXI7bb" role="2OqNvi">
                                      <ref role="37wK5l" to="lui2:~SModule.getModuleReference()" resolve="getModuleReference" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="7Ya3eUXHWTB" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="7Ya3eUXHWTC" role="jymVt" />
                    <node concept="3clFb_" id="7Ya3eUXHWTD" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="7Ya3eUXHWTE" role="1B3o_S" />
                      <node concept="3uibUv" id="5U8hsWB6Eqd" role="3clF45">
                        <ref role="3uigEE" to="xxte:qmkA5fOuCN" resolve="SModuleAsNode" />
                      </node>
                      <node concept="37vLTG" id="7Ya3eUXHWTG" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="7Ya3eUXHWTH" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="7Ya3eUXHWTI" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="7Ya3eUXHWTJ" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="7Ya3eUXHWTK" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="7Ya3eUXHWTL" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="7Ya3eUXHWTM" role="11_B2D">
                            <node concept="3uibUv" id="5U8hsWB6EGQ" role="3qUE_r">
                              <ref role="3uigEE" to="xxte:qmkA5fOuCN" resolve="SModuleAsNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="7Ya3eUXHWTO" role="3clF47">
                        <node concept="3cpWs8" id="7Ya3eUXHWTP" role="3cqZAp">
                          <node concept="3cpWsn" id="7Ya3eUXHWTQ" role="3cpWs9">
                            <property role="TrG5h" value="ref" />
                            <node concept="3uibUv" id="7Ya3eUXI9vk" role="1tU5fm">
                              <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
                            </node>
                            <node concept="2OqwBi" id="7Ya3eUXHWTS" role="33vP2m">
                              <node concept="2YIFZM" id="7Ya3eUXHWTT" role="2Oq$k0">
                                <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                                <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                              </node>
                              <node concept="liA8E" id="7Ya3eUXHWTU" role="2OqNvi">
                                <ref role="37wK5l" to="dush:~PersistenceFacade.createModuleReference(java.lang.String)" resolve="createModuleReference" />
                                <node concept="2OqwBi" id="7Ya3eUXHWTV" role="37wK5m">
                                  <node concept="37vLTw" id="7Ya3eUXHWTW" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7Ya3eUXHWTI" resolve="in" />
                                  </node>
                                  <node concept="liA8E" id="7Ya3eUXHWTX" role="2OqNvi">
                                    <ref role="37wK5l" to="pxg7:~Input.readString()" resolve="readString" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="7Ya3eUXHWTY" role="3cqZAp">
                          <node concept="2ShNRf" id="7Ya3eUXHWTZ" role="3clFbG">
                            <node concept="1pGfFk" id="7Ya3eUXHWU0" role="2ShVmc">
                              <ref role="37wK5l" to="xxte:qmkA5fOXYb" resolve="SModuleAsNode" />
                              <node concept="2OqwBi" id="7Ya3eUXHWU1" role="37wK5m">
                                <node concept="37vLTw" id="7Ya3eUXHWU2" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7Ya3eUXHWTQ" resolve="ref" />
                                </node>
                                <node concept="liA8E" id="7Ya3eUXHWU3" role="2OqNvi">
                                  <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                  <node concept="2OqwBi" id="7Ya3eUXHWU4" role="37wK5m">
                                    <node concept="37vLTw" id="7Ya3eUXHWU5" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5npwda7vkut" resolve="REPOSITORY" />
                                    </node>
                                    <node concept="liA8E" id="7Ya3eUXHWU6" role="2OqNvi">
                                      <ref role="37wK5l" to="3d38:7vWAzuEE1gr" resolve="getValue" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="7Ya3eUXHWU7" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="5U8hsWB6DMh" role="2Ghqu4">
                      <ref role="3uigEE" to="xxte:qmkA5fOuCN" resolve="SModuleAsNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Ya3eUXI9M$" role="3cqZAp">
          <node concept="2OqwBi" id="7Ya3eUXI9M_" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfP" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="7Ya3eUXI9MB" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="7Ya3eUXI9MC" role="37wK5m">
                <ref role="3VsUkX" to="xxte:qmkA5fOvE2" resolve="SRepositoryAsNode" />
              </node>
              <node concept="2ShNRf" id="7Ya3eUXI9MD" role="37wK5m">
                <node concept="YeOm9" id="7Ya3eUXI9ME" role="2ShVmc">
                  <node concept="1Y3b0j" id="7Ya3eUXI9MF" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <node concept="3Tm1VV" id="7Ya3eUXI9MG" role="1B3o_S" />
                    <node concept="3clFb_" id="7Ya3eUXI9MH" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="7Ya3eUXI9MI" role="1B3o_S" />
                      <node concept="3cqZAl" id="7Ya3eUXI9MJ" role="3clF45" />
                      <node concept="37vLTG" id="7Ya3eUXI9MK" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="7Ya3eUXI9ML" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="7Ya3eUXI9MM" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="7Ya3eUXI9MN" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="7Ya3eUXI9MO" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="5U8hsWB6Fv_" role="1tU5fm">
                          <ref role="3uigEE" to="xxte:qmkA5fOvE2" resolve="SRepositoryAsNode" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="7Ya3eUXI9MQ" role="3clF47" />
                      <node concept="2AHcQZ" id="7Ya3eUXI9N3" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="7Ya3eUXI9N4" role="jymVt" />
                    <node concept="3clFb_" id="7Ya3eUXI9N5" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="7Ya3eUXI9N6" role="1B3o_S" />
                      <node concept="3uibUv" id="5U8hsWB6FGv" role="3clF45">
                        <ref role="3uigEE" to="xxte:qmkA5fOvE2" resolve="SRepositoryAsNode" />
                      </node>
                      <node concept="37vLTG" id="7Ya3eUXI9N8" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="7Ya3eUXI9N9" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="7Ya3eUXI9Na" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="7Ya3eUXI9Nb" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="7Ya3eUXI9Nc" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="7Ya3eUXI9Nd" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="7Ya3eUXI9Ne" role="11_B2D">
                            <node concept="3uibUv" id="5U8hsWB6FV4" role="3qUE_r">
                              <ref role="3uigEE" to="xxte:qmkA5fOvE2" resolve="SRepositoryAsNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="7Ya3eUXI9Ng" role="3clF47">
                        <node concept="3clFbF" id="7Ya3eUXI9Nq" role="3cqZAp">
                          <node concept="2ShNRf" id="7Ya3eUXI9Nr" role="3clFbG">
                            <node concept="1pGfFk" id="7Ya3eUXI9Ns" role="2ShVmc">
                              <ref role="37wK5l" to="xxte:qmkA5fOYD8" resolve="SRepositoryAsNode" />
                              <node concept="2OqwBi" id="7Ya3eUXIgR_" role="37wK5m">
                                <node concept="37vLTw" id="7Ya3eUXIgRU" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5npwda7vkut" resolve="REPOSITORY" />
                                </node>
                                <node concept="liA8E" id="7Ya3eUXIgRA" role="2OqNvi">
                                  <ref role="37wK5l" to="3d38:7vWAzuEE1gr" resolve="getValue" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="7Ya3eUXI9Nz" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="5U8hsWB6Fmc" role="2Ghqu4">
                      <ref role="3uigEE" to="xxte:qmkA5fOvE2" resolve="SRepositoryAsNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5HO1kYm$b$b" role="3cqZAp">
          <node concept="2OqwBi" id="5HO1kYm$b$c" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfQ" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="5HO1kYm$b$e" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="5HO1kYm$b$f" role="37wK5m">
                <ref role="3VsUkX" to="mjcn:7vWAzuEFUO_" resolve="SM_SimpleNode" />
              </node>
              <node concept="2ShNRf" id="5HO1kYm$b$g" role="37wK5m">
                <node concept="YeOm9" id="5HO1kYm$b$h" role="2ShVmc">
                  <node concept="1Y3b0j" id="5HO1kYm$b$i" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <node concept="3Tm1VV" id="5HO1kYm$b$j" role="1B3o_S" />
                    <node concept="3clFb_" id="5HO1kYm$b$k" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="5HO1kYm$b$l" role="1B3o_S" />
                      <node concept="3cqZAl" id="5HO1kYm$b$m" role="3clF45" />
                      <node concept="37vLTG" id="5HO1kYm$b$n" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="5HO1kYm$b$o" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5HO1kYm$b$p" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="5HO1kYm$b$q" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5HO1kYm$b$r" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="5HO1kYm$s8C" role="1tU5fm">
                          <ref role="3uigEE" to="mjcn:7vWAzuEFUO_" resolve="SM_SimpleNode" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="5HO1kYm$b$t" role="3clF47">
                        <node concept="3clFbF" id="5HO1kYm$sRb" role="3cqZAp">
                          <node concept="2OqwBi" id="5HO1kYm$tcx" role="3clFbG">
                            <node concept="37vLTw" id="5HO1kYm$sRa" role="2Oq$k0">
                              <ref role="3cqZAo" node="5HO1kYm$b$p" resolve="out" />
                            </node>
                            <node concept="liA8E" id="5HO1kYm$tk9" role="2OqNvi">
                              <ref role="37wK5l" to="pxg7:~Output.writeString(java.lang.String)" resolve="writeString" />
                              <node concept="3cpWs3" id="5HO1kYm$tTU" role="37wK5m">
                                <node concept="2YIFZM" id="5HO1kYm$ug_" role="3uHU7w">
                                  <ref role="37wK5l" to="wyt6:~System.identityHashCode(java.lang.Object)" resolve="identityHashCode" />
                                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                                  <node concept="37vLTw" id="5HO1kYm$uol" role="37wK5m">
                                    <ref role="3cqZAo" node="5HO1kYm$b$r" resolve="obj" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="5HO1kYm$tqH" role="3uHU7B">
                                  <ref role="3cqZAo" node="5HO1kYmzTOH" resolve="SIMPLE_NODE_PREFIX" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="5HO1kYm$b$u" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="5HO1kYm$b$v" role="jymVt" />
                    <node concept="3clFb_" id="5HO1kYm$b$w" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="5HO1kYm$b$x" role="1B3o_S" />
                      <node concept="3uibUv" id="5HO1kYm$qGb" role="3clF45">
                        <ref role="3uigEE" to="mjcn:7vWAzuEFUO_" resolve="SM_SimpleNode" />
                      </node>
                      <node concept="37vLTG" id="5HO1kYm$b$z" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="5HO1kYm$b$$" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5HO1kYm$b$_" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="5HO1kYm$b$A" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5HO1kYm$b$B" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="5HO1kYm$b$C" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="5HO1kYm$b$D" role="11_B2D">
                            <node concept="3uibUv" id="5HO1kYm$rhK" role="3qUE_r">
                              <ref role="3uigEE" to="mjcn:7vWAzuEFUO_" resolve="SM_SimpleNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="5HO1kYm$b$F" role="3clF47">
                        <node concept="YS8fn" id="5HO1kYm$uCc" role="3cqZAp">
                          <node concept="2ShNRf" id="5HO1kYm$uDH" role="YScLw">
                            <node concept="1pGfFk" id="5HO1kYm$vbB" role="2ShVmc">
                              <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                              <node concept="3cpWs3" id="5HO1kYm$zK9" role="37wK5m">
                                <node concept="Xl_RD" id="5HO1kYm$zLv" role="3uHU7w">
                                  <property role="Xl_RC" value=" not supported" />
                                </node>
                                <node concept="3cpWs3" id="5HO1kYm$w5y" role="3uHU7B">
                                  <node concept="Xl_RD" id="5HO1kYm$vj8" role="3uHU7B">
                                    <property role="Xl_RC" value="Deserialization for " />
                                  </node>
                                  <node concept="2OqwBi" id="5HO1kYm$xun" role="3uHU7w">
                                    <node concept="3VsKOn" id="5HO1kYm$wMV" role="2Oq$k0">
                                      <ref role="3VsUkX" to="mjcn:7vWAzuEFUO_" resolve="SM_SimpleNode" />
                                    </node>
                                    <node concept="liA8E" id="5HO1kYm$yer" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="5HO1kYm$b$M" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="5HO1kYm$pYR" role="2Ghqu4">
                      <ref role="3uigEE" to="mjcn:7vWAzuEFUO_" resolve="SM_SimpleNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7fwERWg4Fz6" role="3cqZAp">
          <node concept="2OqwBi" id="7fwERWg4KzA" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfR" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="7fwERWg4KNx" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="7fwERWg4KXp" role="37wK5m">
                <ref role="3VsUkX" to="qvpu:~CompositeArea$NodeWrapperReference" resolve="CompositeArea.NodeWrapperReference" />
              </node>
              <node concept="2ShNRf" id="7fwERWg4LaH" role="37wK5m">
                <node concept="YeOm9" id="7fwERWg4NX0" role="2ShVmc">
                  <node concept="1Y3b0j" id="7fwERWg4NX3" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <node concept="3Tm1VV" id="7fwERWg4NX4" role="1B3o_S" />
                    <node concept="3clFb_" id="7fwERWg4NX9" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="7fwERWg4NXa" role="1B3o_S" />
                      <node concept="3cqZAl" id="7fwERWg4NXc" role="3clF45" />
                      <node concept="37vLTG" id="7fwERWg4NXd" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="7fwERWg4NXe" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="7fwERWg4NXf" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="7fwERWg4NXg" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="7fwERWg4NXh" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="7$7_4ZixH$N" role="1tU5fm">
                          <ref role="3uigEE" to="qvpu:~CompositeArea$NodeWrapperReference" resolve="CompositeArea.NodeWrapperReference" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="7fwERWg4NXj" role="3clF47">
                        <node concept="3clFbF" id="7fwERWg4P5s" role="3cqZAp">
                          <node concept="2OqwBi" id="7fwERWg4P5t" role="3clFbG">
                            <node concept="37vLTw" id="7fwERWg4P5u" role="2Oq$k0">
                              <ref role="3cqZAo" node="7fwERWg4NXd" resolve="kryo" />
                            </node>
                            <node concept="liA8E" id="7fwERWg4P5v" role="2OqNvi">
                              <ref role="37wK5l" to="4bvh:~Kryo.writeClassAndObject(com.esotericsoftware.kryo.io.Output,java.lang.Object)" resolve="writeClassAndObject" />
                              <node concept="37vLTw" id="7fwERWg4P5w" role="37wK5m">
                                <ref role="3cqZAo" node="7fwERWg4NXf" resolve="out" />
                              </node>
                              <node concept="2OqwBi" id="7fwERWg4P5x" role="37wK5m">
                                <node concept="37vLTw" id="7fwERWg4P5y" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7fwERWg4NXh" resolve="obj" />
                                </node>
                                <node concept="liA8E" id="7$7_4ZixOfF" role="2OqNvi">
                                  <ref role="37wK5l" to="qvpu:~CompositeArea$NodeWrapperReference.getAreaRef()" resolve="getAreaRef" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="7$7_4ZixJbs" role="3cqZAp">
                          <node concept="2OqwBi" id="7$7_4ZixJbt" role="3clFbG">
                            <node concept="37vLTw" id="7$7_4ZixJbu" role="2Oq$k0">
                              <ref role="3cqZAo" node="7fwERWg4NXd" resolve="kryo" />
                            </node>
                            <node concept="liA8E" id="7$7_4ZixJbv" role="2OqNvi">
                              <ref role="37wK5l" to="4bvh:~Kryo.writeClassAndObject(com.esotericsoftware.kryo.io.Output,java.lang.Object)" resolve="writeClassAndObject" />
                              <node concept="37vLTw" id="7$7_4ZixJbw" role="37wK5m">
                                <ref role="3cqZAo" node="7fwERWg4NXf" resolve="out" />
                              </node>
                              <node concept="2OqwBi" id="7$7_4ZixJbx" role="37wK5m">
                                <node concept="37vLTw" id="7$7_4ZixJby" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7fwERWg4NXh" resolve="obj" />
                                </node>
                                <node concept="liA8E" id="7$7_4ZixJbz" role="2OqNvi">
                                  <ref role="37wK5l" to="qvpu:~CompositeArea$NodeWrapperReference.getNodeRef()" resolve="getNodeRef" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="7fwERWg4NXl" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="7fwERWg4NXm" role="jymVt" />
                    <node concept="3clFb_" id="7fwERWg4NXn" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="7fwERWg4NXo" role="1B3o_S" />
                      <node concept="3uibUv" id="7$7_4ZixHdA" role="3clF45">
                        <ref role="3uigEE" to="qvpu:~CompositeArea$NodeWrapperReference" resolve="CompositeArea.NodeWrapperReference" />
                      </node>
                      <node concept="37vLTG" id="7fwERWg4NXr" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="7fwERWg4NXs" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="7fwERWg4NXt" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="7fwERWg4NXu" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="7fwERWg4NXv" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="7fwERWg4NXw" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="7fwERWg4NXx" role="11_B2D">
                            <node concept="3uibUv" id="7$7_4Ziyvw8" role="3qUE_r">
                              <ref role="3uigEE" to="qvpu:~CompositeArea$NodeWrapperReference" resolve="CompositeArea.NodeWrapperReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="7fwERWg4NXz" role="3clF47">
                        <node concept="3cpWs8" id="5Bkv5S50A4A" role="3cqZAp">
                          <node concept="3cpWsn" id="5Bkv5S50A4B" role="3cpWs9">
                            <property role="TrG5h" value="areaRef" />
                            <node concept="3uibUv" id="7$7_4ZixYBK" role="1tU5fm">
                              <ref role="3uigEE" to="qvpu:~CompositeArea$AreaReference" resolve="CompositeArea.AreaReference" />
                            </node>
                            <node concept="10QFUN" id="5Bkv5S50A4C" role="33vP2m">
                              <node concept="2OqwBi" id="5Bkv5S50A4D" role="10QFUP">
                                <node concept="37vLTw" id="5Bkv5S50A4E" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7fwERWg4NXr" resolve="kryo" />
                                </node>
                                <node concept="liA8E" id="5Bkv5S50A4F" role="2OqNvi">
                                  <ref role="37wK5l" to="4bvh:~Kryo.readClassAndObject(com.esotericsoftware.kryo.io.Input)" resolve="readClassAndObject" />
                                  <node concept="37vLTw" id="5Bkv5S50A4G" role="37wK5m">
                                    <ref role="3cqZAo" node="7fwERWg4NXt" resolve="in" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3uibUv" id="7$7_4ZixXb6" role="10QFUM">
                                <ref role="3uigEE" to="qvpu:~CompositeArea$AreaReference" resolve="CompositeArea.AreaReference" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="7$7_4ZixOjm" role="3cqZAp">
                          <node concept="3cpWsn" id="7$7_4ZixOjn" role="3cpWs9">
                            <property role="TrG5h" value="nodeRef" />
                            <node concept="3uibUv" id="7$7_4Ziy1IZ" role="1tU5fm">
                              <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
                            </node>
                            <node concept="10QFUN" id="7$7_4ZixOjp" role="33vP2m">
                              <node concept="2OqwBi" id="7$7_4ZixOjq" role="10QFUP">
                                <node concept="37vLTw" id="7$7_4ZixOjr" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7fwERWg4NXr" resolve="kryo" />
                                </node>
                                <node concept="liA8E" id="7$7_4ZixOjs" role="2OqNvi">
                                  <ref role="37wK5l" to="4bvh:~Kryo.readClassAndObject(com.esotericsoftware.kryo.io.Input)" resolve="readClassAndObject" />
                                  <node concept="37vLTw" id="7$7_4ZixOjt" role="37wK5m">
                                    <ref role="3cqZAo" node="7fwERWg4NXt" resolve="in" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3uibUv" id="7$7_4Ziy03e" role="10QFUM">
                                <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="7$7_4Ziy49o" role="3cqZAp">
                          <node concept="2ShNRf" id="7$7_4Ziy4rX" role="3cqZAk">
                            <node concept="1pGfFk" id="7$7_4Ziy5fV" role="2ShVmc">
                              <ref role="37wK5l" to="qvpu:~CompositeArea$NodeWrapperReference.&lt;init&gt;(org.modelix.model.api.INodeReference,org.modelix.model.area.CompositeArea$AreaReference)" resolve="CompositeArea.NodeWrapperReference" />
                              <node concept="37vLTw" id="7$7_4Ziy5yb" role="37wK5m">
                                <ref role="3cqZAo" node="7$7_4ZixOjn" resolve="nodeRef" />
                              </node>
                              <node concept="37vLTw" id="7$7_4Ziy609" role="37wK5m">
                                <ref role="3cqZAo" node="5Bkv5S50A4B" resolve="areaRef" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="7fwERWg4NX_" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="7$7_4ZixH2T" role="2Ghqu4">
                      <ref role="3uigEE" to="qvpu:~CompositeArea$NodeWrapperReference" resolve="CompositeArea.NodeWrapperReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Bkv5S58A0n" role="3cqZAp">
          <node concept="2OqwBi" id="5Bkv5S58A0o" role="3clFbG">
            <node concept="37vLTw" id="5Zew9mGKwfS" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="5Bkv5S58A0q" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="5Bkv5S58A0r" role="37wK5m">
                <ref role="3VsUkX" to="jks5:~PNodeReference" resolve="PNodeReference" />
              </node>
              <node concept="2ShNRf" id="5Bkv5S58A0s" role="37wK5m">
                <node concept="YeOm9" id="5Bkv5S58A0t" role="2ShVmc">
                  <node concept="1Y3b0j" id="5Bkv5S58A0u" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <node concept="3Tm1VV" id="5Bkv5S58A0v" role="1B3o_S" />
                    <node concept="3clFb_" id="5Bkv5S58A0w" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="5Bkv5S58A0x" role="1B3o_S" />
                      <node concept="3cqZAl" id="5Bkv5S58A0y" role="3clF45" />
                      <node concept="37vLTG" id="5Bkv5S58A0z" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="5Bkv5S58A0$" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5Bkv5S58A0_" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="5Bkv5S58A0A" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5Bkv5S58A0B" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="7$7_4ZiykoE" role="1tU5fm">
                          <ref role="3uigEE" to="jks5:~PNodeReference" resolve="PNodeReference" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="5Bkv5S58A0D" role="3clF47">
                        <node concept="3clFbF" id="5Bkv5S598LF" role="3cqZAp">
                          <node concept="2OqwBi" id="5Bkv5S599aT" role="3clFbG">
                            <node concept="37vLTw" id="5Bkv5S598LE" role="2Oq$k0">
                              <ref role="3cqZAo" node="5Bkv5S58A0_" resolve="out" />
                            </node>
                            <node concept="liA8E" id="5Bkv5S599OM" role="2OqNvi">
                              <ref role="37wK5l" to="pxg7:~Output.writeString(java.lang.String)" resolve="writeString" />
                              <node concept="2OqwBi" id="7$7_4Ziym9O" role="37wK5m">
                                <node concept="37vLTw" id="5Bkv5S58Zf6" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5Bkv5S58A0B" resolve="obj" />
                                </node>
                                <node concept="liA8E" id="7$7_4ZiymwT" role="2OqNvi">
                                  <ref role="37wK5l" to="jks5:~PNodeReference.getBranchId()" resolve="getBranchId" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="5Bkv5S59au6" role="3cqZAp">
                          <node concept="2OqwBi" id="5Bkv5S59aOv" role="3clFbG">
                            <node concept="37vLTw" id="5Bkv5S59au4" role="2Oq$k0">
                              <ref role="3cqZAo" node="5Bkv5S58A0_" resolve="out" />
                            </node>
                            <node concept="liA8E" id="5Bkv5S59aTb" role="2OqNvi">
                              <ref role="37wK5l" to="pxg7:~Output.writeLong(long)" resolve="writeLong" />
                              <node concept="2OqwBi" id="5Bkv5S59aZH" role="37wK5m">
                                <node concept="37vLTw" id="5Bkv5S59aZI" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5Bkv5S58A0B" resolve="obj" />
                                </node>
                                <node concept="liA8E" id="7$7_4ZiymRa" role="2OqNvi">
                                  <ref role="37wK5l" to="jks5:~PNodeReference.getId()" resolve="getId" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="5Bkv5S58A0M" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="5Bkv5S58A0N" role="jymVt" />
                    <node concept="3clFb_" id="5Bkv5S58A0O" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="5Bkv5S58A0P" role="1B3o_S" />
                      <node concept="3uibUv" id="7$7_4ZiykN_" role="3clF45">
                        <ref role="3uigEE" to="jks5:~PNodeReference" resolve="PNodeReference" />
                      </node>
                      <node concept="37vLTG" id="5Bkv5S58A0R" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="5Bkv5S58A0S" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5Bkv5S58A0T" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="5Bkv5S58A0U" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="5Bkv5S58A0V" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="5Bkv5S58A0W" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="5Bkv5S58A0X" role="11_B2D">
                            <node concept="3uibUv" id="7$7_4Ziylbb" role="3qUE_r">
                              <ref role="3uigEE" to="jks5:~PNodeReference" resolve="PNodeReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="5Bkv5S58A0Z" role="3clF47">
                        <node concept="3cpWs8" id="5Bkv5S59cdW" role="3cqZAp">
                          <node concept="3cpWsn" id="5Bkv5S59cdX" role="3cpWs9">
                            <property role="TrG5h" value="branchId" />
                            <node concept="17QB3L" id="5Bkv5S59dug" role="1tU5fm" />
                            <node concept="2OqwBi" id="5Bkv5S59cdY" role="33vP2m">
                              <node concept="37vLTw" id="5Bkv5S59cdZ" role="2Oq$k0">
                                <ref role="3cqZAo" node="5Bkv5S58A0T" resolve="in" />
                              </node>
                              <node concept="liA8E" id="5Bkv5S59ce0" role="2OqNvi">
                                <ref role="37wK5l" to="pxg7:~Input.readString()" resolve="readString" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="5Bkv5S59gbL" role="3cqZAp">
                          <node concept="3cpWsn" id="5Bkv5S59gbM" role="3cpWs9">
                            <property role="TrG5h" value="nodeId" />
                            <node concept="3cpWsb" id="5Bkv5S59g6l" role="1tU5fm" />
                            <node concept="2OqwBi" id="5Bkv5S59gbN" role="33vP2m">
                              <node concept="37vLTw" id="5Bkv5S59gbO" role="2Oq$k0">
                                <ref role="3cqZAo" node="5Bkv5S58A0T" resolve="in" />
                              </node>
                              <node concept="liA8E" id="5Bkv5S59gbP" role="2OqNvi">
                                <ref role="37wK5l" to="pxg7:~Input.readLong()" resolve="readLong" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="5Bkv5S59nz3" role="3cqZAp">
                          <node concept="2ShNRf" id="5Bkv5S59nz5" role="3cqZAk">
                            <node concept="1pGfFk" id="5Bkv5S59nz6" role="2ShVmc">
                              <ref role="37wK5l" to="jks5:~PNodeReference.&lt;init&gt;(long,java.lang.String)" resolve="PNodeReference" />
                              <node concept="37vLTw" id="5Bkv5S59nz7" role="37wK5m">
                                <ref role="3cqZAo" node="5Bkv5S59gbM" resolve="nodeId" />
                              </node>
                              <node concept="37vLTw" id="7$7_4Ziynzr" role="37wK5m">
                                <ref role="3cqZAo" node="5Bkv5S59cdX" resolve="branchId" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="5Bkv5S58A1i" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="7$7_4ZiykcK" role="2Ghqu4">
                      <ref role="3uigEE" to="jks5:~PNodeReference" resolve="PNodeReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7NEB1TQvE96" role="3cqZAp">
          <node concept="2OqwBi" id="7NEB1TQvE97" role="3clFbG">
            <node concept="37vLTw" id="7NEB1TQvE98" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="7NEB1TQvE99" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="7NEB1TQvE9a" role="37wK5m">
                <ref role="3VsUkX" to="xxte:5gTrVpGyZdS" resolve="SNodeReferenceAdapter" />
              </node>
              <node concept="2ShNRf" id="7NEB1TQvE9b" role="37wK5m">
                <node concept="YeOm9" id="7NEB1TQvE9c" role="2ShVmc">
                  <node concept="1Y3b0j" id="7NEB1TQvE9d" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <node concept="3Tm1VV" id="7NEB1TQvE9e" role="1B3o_S" />
                    <node concept="3clFb_" id="7NEB1TQvE9f" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="7NEB1TQvE9g" role="1B3o_S" />
                      <node concept="3cqZAl" id="7NEB1TQvE9h" role="3clF45" />
                      <node concept="37vLTG" id="7NEB1TQvE9i" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="7NEB1TQvE9j" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="7NEB1TQvE9k" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="7NEB1TQvE9l" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="7NEB1TQvE9m" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="7NEB1TQvLkg" role="1tU5fm">
                          <ref role="3uigEE" to="xxte:5gTrVpGyZdS" resolve="SNodeReferenceAdapter" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="7NEB1TQvE9o" role="3clF47">
                        <node concept="3clFbF" id="7NEB1TQvMMn" role="3cqZAp">
                          <node concept="2OqwBi" id="7NEB1TQvNeL" role="3clFbG">
                            <node concept="37vLTw" id="7NEB1TQvMWd" role="2Oq$k0">
                              <ref role="3cqZAo" node="7NEB1TQvE9i" resolve="kryo" />
                            </node>
                            <node concept="liA8E" id="7NEB1TQvNvA" role="2OqNvi">
                              <ref role="37wK5l" to="4bvh:~Kryo.writeClassAndObject(com.esotericsoftware.kryo.io.Output,java.lang.Object)" resolve="writeClassAndObject" />
                              <node concept="37vLTw" id="7NEB1TQvRI1" role="37wK5m">
                                <ref role="3cqZAo" node="7NEB1TQvE9k" resolve="out" />
                              </node>
                              <node concept="2OqwBi" id="7NEB1TQvS8S" role="37wK5m">
                                <node concept="37vLTw" id="7NEB1TQvRSO" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7NEB1TQvE9m" resolve="obj" />
                                </node>
                                <node concept="liA8E" id="7NEB1TQvSoe" role="2OqNvi">
                                  <ref role="37wK5l" to="xxte:QurUgiyYyg" resolve="getReference" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="7NEB1TQvE9B" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="7NEB1TQvE9C" role="jymVt" />
                    <node concept="3clFb_" id="7NEB1TQvE9D" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="7NEB1TQvE9E" role="1B3o_S" />
                      <node concept="3uibUv" id="7NEB1TQvLN0" role="3clF45">
                        <ref role="3uigEE" to="xxte:5gTrVpGyZdS" resolve="SNodeReferenceAdapter" />
                      </node>
                      <node concept="37vLTG" id="7NEB1TQvE9G" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="7NEB1TQvE9H" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="7NEB1TQvE9I" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="7NEB1TQvE9J" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="7NEB1TQvE9K" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="7NEB1TQvE9L" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="7NEB1TQvE9M" role="11_B2D">
                            <node concept="3uibUv" id="7NEB1TQvMm8" role="3qUE_r">
                              <ref role="3uigEE" to="xxte:5gTrVpGyZdS" resolve="SNodeReferenceAdapter" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="7NEB1TQvE9O" role="3clF47">
                        <node concept="3cpWs8" id="7NEB1TQw9Jv" role="3cqZAp">
                          <node concept="3cpWsn" id="7NEB1TQw9Jw" role="3cpWs9">
                            <property role="TrG5h" value="ref" />
                            <node concept="3uibUv" id="7NEB1TQwfQh" role="1tU5fm">
                              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                            </node>
                            <node concept="10QFUN" id="7NEB1TQwl47" role="33vP2m">
                              <node concept="2OqwBi" id="7NEB1TQwl43" role="10QFUP">
                                <node concept="37vLTw" id="7NEB1TQwl44" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7NEB1TQvE9G" resolve="kryo" />
                                </node>
                                <node concept="liA8E" id="7NEB1TQwl45" role="2OqNvi">
                                  <ref role="37wK5l" to="4bvh:~Kryo.readClassAndObject(com.esotericsoftware.kryo.io.Input)" resolve="readClassAndObject" />
                                  <node concept="37vLTw" id="7NEB1TQwl46" role="37wK5m">
                                    <ref role="3cqZAo" node="7NEB1TQvE9I" resolve="in" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3uibUv" id="7NEB1TQwl42" role="10QFUM">
                                <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="7NEB1TQvEa1" role="3cqZAp">
                          <node concept="2ShNRf" id="7NEB1TQwqA$" role="3cqZAk">
                            <node concept="1pGfFk" id="7NEB1TQwusl" role="2ShVmc">
                              <ref role="37wK5l" to="xxte:5gTrVpGz3n8" resolve="SNodeReferenceAdapter" />
                              <node concept="37vLTw" id="7NEB1TQwuJ3" role="37wK5m">
                                <ref role="3cqZAo" node="7NEB1TQw9Jw" resolve="ref" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="7NEB1TQvEa6" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="7NEB1TQvKRH" role="2Ghqu4">
                      <ref role="3uigEE" to="xxte:5gTrVpGyZdS" resolve="SNodeReferenceAdapter" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2WI3xHDzvLF" role="3cqZAp">
          <node concept="2OqwBi" id="2WI3xHDzvLG" role="3clFbG">
            <node concept="37vLTw" id="2WI3xHDzvLH" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="2WI3xHDzvLI" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="2WI3xHDzvLJ" role="37wK5m">
                <ref role="3VsUkX" to="od2j:3jJoUQ6Yq4x" resolve="ParameterList" />
              </node>
              <node concept="2ShNRf" id="2WI3xHDzvLK" role="37wK5m">
                <node concept="YeOm9" id="2WI3xHDzvLL" role="2ShVmc">
                  <node concept="1Y3b0j" id="2WI3xHDzvLM" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <node concept="3Tm1VV" id="2WI3xHDzvLN" role="1B3o_S" />
                    <node concept="3clFb_" id="2WI3xHDzvLO" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="2WI3xHDzvLP" role="1B3o_S" />
                      <node concept="3cqZAl" id="2WI3xHDzvLQ" role="3clF45" />
                      <node concept="37vLTG" id="2WI3xHDzvLR" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="2WI3xHDzvLS" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2WI3xHDzvLT" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="2WI3xHDzvLU" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2WI3xHDzvLV" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="2WI3xHDzBMh" role="1tU5fm">
                          <ref role="3uigEE" to="od2j:3jJoUQ6Yq4x" resolve="ParameterList" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="2WI3xHDzvLX" role="3clF47">
                        <node concept="3clFbF" id="2WI3xHDzDq4" role="3cqZAp">
                          <node concept="2OqwBi" id="2WI3xHDzDLd" role="3clFbG">
                            <node concept="37vLTw" id="2WI3xHDzDq2" role="2Oq$k0">
                              <ref role="3cqZAo" node="2WI3xHDzvLT" resolve="out" />
                            </node>
                            <node concept="liA8E" id="2WI3xHDzEcY" role="2OqNvi">
                              <ref role="37wK5l" to="pxg7:~Output.writeInt(int)" resolve="writeInt" />
                              <node concept="2OqwBi" id="2WI3xHDzEwF" role="37wK5m">
                                <node concept="37vLTw" id="2WI3xHDzEhD" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2WI3xHDzvLV" resolve="obj" />
                                </node>
                                <node concept="liA8E" id="2WI3xHDzEHR" role="2OqNvi">
                                  <ref role="37wK5l" to="od2j:3jJoUQ6Yq9K" resolve="size" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Dw8fO" id="2WI3xHDzESe" role="3cqZAp">
                          <node concept="3clFbS" id="2WI3xHDzESg" role="2LFqv$">
                            <node concept="3cpWs8" id="2WI3xHDzJr7" role="3cqZAp">
                              <node concept="3cpWsn" id="2WI3xHDzJr8" role="3cpWs9">
                                <property role="TrG5h" value="param" />
                                <node concept="3uibUv" id="2WI3xHDzJpj" role="1tU5fm">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="2OqwBi" id="2WI3xHDzJr9" role="33vP2m">
                                  <node concept="37vLTw" id="2WI3xHDzJra" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2WI3xHDzvLV" resolve="obj" />
                                  </node>
                                  <node concept="liA8E" id="2WI3xHDzJrb" role="2OqNvi">
                                    <ref role="37wK5l" to="od2j:3jJoUQ6Yr34" resolve="get" />
                                    <node concept="37vLTw" id="2WI3xHDzJrc" role="37wK5m">
                                      <ref role="3cqZAo" node="2WI3xHDzESh" resolve="i" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="2WI3xHDBxJ5" role="3cqZAp">
                              <node concept="3clFbS" id="2WI3xHDBxJ7" role="3clFbx">
                                <node concept="3clFbF" id="2WI3xHDzvLY" role="3cqZAp">
                                  <node concept="2OqwBi" id="2WI3xHDzvLZ" role="3clFbG">
                                    <node concept="37vLTw" id="2WI3xHDzvM0" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2WI3xHDzvLR" resolve="kryo" />
                                    </node>
                                    <node concept="liA8E" id="2WI3xHDzvM1" role="2OqNvi">
                                      <ref role="37wK5l" to="4bvh:~Kryo.writeClassAndObject(com.esotericsoftware.kryo.io.Output,java.lang.Object)" resolve="writeClassAndObject" />
                                      <node concept="37vLTw" id="2WI3xHDzvM2" role="37wK5m">
                                        <ref role="3cqZAo" node="2WI3xHDzvLT" resolve="out" />
                                      </node>
                                      <node concept="2OqwBi" id="2WI3xHD$4_2" role="37wK5m">
                                        <node concept="1eOMI4" id="2WI3xHDzUAG" role="2Oq$k0">
                                          <node concept="10QFUN" id="2WI3xHDzUAF" role="1eOMHV">
                                            <node concept="37vLTw" id="2WI3xHDzUAE" role="10QFUP">
                                              <ref role="3cqZAo" node="2WI3xHDzJr8" resolve="param" />
                                            </node>
                                            <node concept="3uibUv" id="2WI3xHDzZTv" role="10QFUM">
                                              <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="2WI3xHD$5sZ" role="2OqNvi">
                                          <ref role="37wK5l" to="jks5:~INode.getReference()" resolve="getReference" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2ZW3vV" id="2WI3xHDBxX4" role="3clFbw">
                                <node concept="3uibUv" id="2WI3xHDBxYd" role="2ZW6by">
                                  <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                                </node>
                                <node concept="37vLTw" id="2WI3xHDBxQO" role="2ZW6bz">
                                  <ref role="3cqZAo" node="2WI3xHDzJr8" resolve="param" />
                                </node>
                              </node>
                              <node concept="9aQIb" id="2WI3xHDBBDL" role="9aQIa">
                                <node concept="3clFbS" id="2WI3xHDBBDM" role="9aQI4">
                                  <node concept="3clFbF" id="2WI3xHDBBFq" role="3cqZAp">
                                    <node concept="2OqwBi" id="2WI3xHDBBFr" role="3clFbG">
                                      <node concept="37vLTw" id="2WI3xHDBBFs" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2WI3xHDzvLR" resolve="kryo" />
                                      </node>
                                      <node concept="liA8E" id="2WI3xHDBBFt" role="2OqNvi">
                                        <ref role="37wK5l" to="4bvh:~Kryo.writeClassAndObject(com.esotericsoftware.kryo.io.Output,java.lang.Object)" resolve="writeClassAndObject" />
                                        <node concept="37vLTw" id="2WI3xHDBBFu" role="37wK5m">
                                          <ref role="3cqZAo" node="2WI3xHDzvLT" resolve="out" />
                                        </node>
                                        <node concept="37vLTw" id="2WI3xHDBKOZ" role="37wK5m">
                                          <ref role="3cqZAo" node="2WI3xHDzJr8" resolve="param" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="2WI3xHDzI3N" role="3cqZAp">
                              <node concept="2OqwBi" id="2WI3xHDzIpr" role="3clFbG">
                                <node concept="37vLTw" id="2WI3xHDzI3I" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2WI3xHDzvLT" resolve="out" />
                                </node>
                                <node concept="liA8E" id="2WI3xHDzIJC" role="2OqNvi">
                                  <ref role="37wK5l" to="pxg7:~Output.writeBoolean(boolean)" resolve="writeBoolean" />
                                  <node concept="2ZW3vV" id="2WI3xHDzOQ$" role="37wK5m">
                                    <node concept="3uibUv" id="2WI3xHDzOUf" role="2ZW6by">
                                      <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                                    </node>
                                    <node concept="37vLTw" id="2WI3xHDzJrd" role="2ZW6bz">
                                      <ref role="3cqZAo" node="2WI3xHDzJr8" resolve="param" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWsn" id="2WI3xHDzESh" role="1Duv9x">
                            <property role="TrG5h" value="i" />
                            <node concept="10Oyi0" id="2WI3xHDzEW$" role="1tU5fm" />
                            <node concept="3cmrfG" id="2WI3xHDzF0j" role="33vP2m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                          <node concept="3eOVzh" id="2WI3xHDzFVR" role="1Dwp0S">
                            <node concept="2OqwBi" id="2WI3xHDzGt2" role="3uHU7w">
                              <node concept="37vLTw" id="2WI3xHDzFXn" role="2Oq$k0">
                                <ref role="3cqZAo" node="2WI3xHDzvLV" resolve="obj" />
                              </node>
                              <node concept="liA8E" id="2WI3xHDzGCD" role="2OqNvi">
                                <ref role="37wK5l" to="od2j:3jJoUQ6Yq9K" resolve="size" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="2WI3xHDzF2S" role="3uHU7B">
                              <ref role="3cqZAo" node="2WI3xHDzESh" resolve="i" />
                            </node>
                          </node>
                          <node concept="3uNrnE" id="2WI3xHDzHzf" role="1Dwrff">
                            <node concept="37vLTw" id="2WI3xHDzHzh" role="2$L3a6">
                              <ref role="3cqZAo" node="2WI3xHDzESh" resolve="i" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="2WI3xHDzvM6" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="2WI3xHDzvM7" role="jymVt" />
                    <node concept="3clFb_" id="2WI3xHDzvM8" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="2WI3xHDzvM9" role="1B3o_S" />
                      <node concept="3uibUv" id="2WI3xHDzCfW" role="3clF45">
                        <ref role="3uigEE" to="od2j:3jJoUQ6Yq4x" resolve="ParameterList" />
                      </node>
                      <node concept="37vLTG" id="2WI3xHDzvMb" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="2WI3xHDzvMc" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2WI3xHDzvMd" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="2WI3xHDzvMe" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2WI3xHDzvMf" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="2WI3xHDzvMg" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="2WI3xHDzvMh" role="11_B2D">
                            <node concept="3uibUv" id="2WI3xHDzCTj" role="3qUE_r">
                              <ref role="3uigEE" to="od2j:3jJoUQ6Yq4x" resolve="ParameterList" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="2WI3xHDzvMj" role="3clF47">
                        <node concept="3cpWs8" id="2WI3xHD$6UF" role="3cqZAp">
                          <node concept="3cpWsn" id="2WI3xHD$6UG" role="3cpWs9">
                            <property role="TrG5h" value="size" />
                            <node concept="10Oyi0" id="2WI3xHD$6Ot" role="1tU5fm" />
                            <node concept="2OqwBi" id="2WI3xHD$6UH" role="33vP2m">
                              <node concept="37vLTw" id="2WI3xHD$6UI" role="2Oq$k0">
                                <ref role="3cqZAo" node="2WI3xHDzvMd" resolve="in" />
                              </node>
                              <node concept="liA8E" id="2WI3xHD$6UJ" role="2OqNvi">
                                <ref role="37wK5l" to="pxg7:~Input.readInt()" resolve="readInt" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="2WI3xHD$9c_" role="3cqZAp">
                          <node concept="3cpWsn" id="2WI3xHD$9cA" role="3cpWs9">
                            <property role="TrG5h" value="parameters" />
                            <node concept="10Q1$e" id="2WI3xHD$9cB" role="1tU5fm">
                              <node concept="3uibUv" id="2WI3xHD$9cC" role="10Q1$1">
                                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                              </node>
                            </node>
                            <node concept="2ShNRf" id="2WI3xHD$eIn" role="33vP2m">
                              <node concept="3$_iS1" id="2WI3xHD$eH0" role="2ShVmc">
                                <node concept="3uibUv" id="2WI3xHD$eH1" role="3$_nBY">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="3$GHV9" id="2WI3xHD$k1R" role="3$GQph">
                                  <node concept="37vLTw" id="2WI3xHD$k56" role="3$I4v7">
                                    <ref role="3cqZAo" node="2WI3xHD$6UG" resolve="size" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Dw8fO" id="2WI3xHD$kDJ" role="3cqZAp">
                          <node concept="3clFbS" id="2WI3xHD$kDL" role="2LFqv$">
                            <node concept="3cpWs8" id="2WI3xHD$tPe" role="3cqZAp">
                              <node concept="3cpWsn" id="2WI3xHD$tPf" role="3cpWs9">
                                <property role="TrG5h" value="param" />
                                <node concept="3uibUv" id="2WI3xHD$tPg" role="1tU5fm">
                                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                </node>
                                <node concept="2OqwBi" id="2WI3xHD$zf8" role="33vP2m">
                                  <node concept="37vLTw" id="2WI3xHD$zc8" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2WI3xHDzvMb" resolve="kryo" />
                                  </node>
                                  <node concept="liA8E" id="2WI3xHD$zqC" role="2OqNvi">
                                    <ref role="37wK5l" to="4bvh:~Kryo.readClassAndObject(com.esotericsoftware.kryo.io.Input)" resolve="readClassAndObject" />
                                    <node concept="37vLTw" id="2WI3xHD$BJY" role="37wK5m">
                                      <ref role="3cqZAo" node="2WI3xHDzvMd" resolve="in" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="2WI3xHD$nzu" role="3cqZAp">
                              <node concept="3clFbS" id="2WI3xHD$nzw" role="3clFbx">
                                <node concept="3cpWs8" id="2WI3xHD$CGO" role="3cqZAp">
                                  <node concept="3cpWsn" id="2WI3xHD$CGP" role="3cpWs9">
                                    <property role="TrG5h" value="area" />
                                    <node concept="3uibUv" id="2WI3xHD$CDA" role="1tU5fm">
                                      <ref role="3uigEE" to="qvpu:~IArea" resolve="IArea" />
                                    </node>
                                    <node concept="2OqwBi" id="2WI3xHD$CGQ" role="33vP2m">
                                      <node concept="37vLTw" id="2WI3xHD$CGR" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2WI3xHDxM8n" resolve="AREA" />
                                      </node>
                                      <node concept="liA8E" id="2WI3xHD$CGS" role="2OqNvi">
                                        <ref role="37wK5l" to="3d38:7vWAzuEE1gr" resolve="getValue" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbJ" id="1oTFGJpALpJ" role="3cqZAp">
                                  <property role="TyiWL" value="true" />
                                  <node concept="3clFbS" id="1oTFGJpALpL" role="3clFbx">
                                    <node concept="3clFbF" id="1oTFGJpALUp" role="3cqZAp">
                                      <node concept="37vLTI" id="1oTFGJpAM2F" role="3clFbG">
                                        <node concept="2OqwBi" id="1oTFGJpAMdf" role="37vLTx">
                                          <node concept="10M0yZ" id="1oTFGJpAM7u" role="2Oq$k0">
                                            <ref role="3cqZAo" to="qvpu:~ContextArea.INSTANCE" resolve="INSTANCE" />
                                            <ref role="1PxDUh" to="qvpu:~ContextArea" resolve="ContextArea" />
                                          </node>
                                          <node concept="liA8E" id="1oTFGJpAMkB" role="2OqNvi">
                                            <ref role="37wK5l" to="qvpu:~ContextArea.getArea()" resolve="getArea" />
                                          </node>
                                        </node>
                                        <node concept="37vLTw" id="1oTFGJpALUo" role="37vLTJ">
                                          <ref role="3cqZAo" node="2WI3xHD$CGP" resolve="area" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbC" id="1oTFGJpALHF" role="3clFbw">
                                    <node concept="10Nm6u" id="1oTFGJpALNm" role="3uHU7w" />
                                    <node concept="37vLTw" id="1oTFGJpALyJ" role="3uHU7B">
                                      <ref role="3cqZAo" node="2WI3xHD$CGP" resolve="area" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbJ" id="2WI3xHD$Dg2" role="3cqZAp">
                                  <node concept="3clFbS" id="2WI3xHD$Dg4" role="3clFbx">
                                    <node concept="YS8fn" id="2WI3xHD$D$v" role="3cqZAp">
                                      <node concept="2ShNRf" id="2WI3xHD$D_W" role="YScLw">
                                        <node concept="1pGfFk" id="2WI3xHD$Ehb" role="2ShVmc">
                                          <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                                          <node concept="Xl_RD" id="2WI3xHD$Ei$" role="37wK5m">
                                            <property role="Xl_RC" value="area required" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbC" id="2WI3xHD$DsS" role="3clFbw">
                                    <node concept="10Nm6u" id="2WI3xHD$DyB" role="3uHU7w" />
                                    <node concept="37vLTw" id="2WI3xHD$DjS" role="3uHU7B">
                                      <ref role="3cqZAo" node="2WI3xHD$CGP" resolve="area" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs8" id="4SC_r4AdqTz" role="3cqZAp">
                                  <node concept="3cpWsn" id="4SC_r4AdqT$" role="3cpWs9">
                                    <property role="TrG5h" value="resolvedNode" />
                                    <node concept="3uibUv" id="4SC_r4Acywr" role="1tU5fm">
                                      <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                                    </node>
                                    <node concept="2OqwBi" id="4SC_r4AdqT_" role="33vP2m">
                                      <node concept="1eOMI4" id="4SC_r4AdqTA" role="2Oq$k0">
                                        <node concept="10QFUN" id="4SC_r4AdqTB" role="1eOMHV">
                                          <node concept="3uibUv" id="4SC_r4AdqTC" role="10QFUM">
                                            <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
                                          </node>
                                          <node concept="37vLTw" id="4SC_r4AdqTD" role="10QFUP">
                                            <ref role="3cqZAo" node="2WI3xHD$tPf" resolve="param" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="4SC_r4AdqTE" role="2OqNvi">
                                        <ref role="37wK5l" to="jks5:~INodeReference.resolveNode(org.modelix.model.area.IArea)" resolve="resolveNode" />
                                        <node concept="37vLTw" id="4SC_r4AdqTF" role="37wK5m">
                                          <ref role="3cqZAo" node="2WI3xHD$CGP" resolve="area" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbJ" id="1oTFGJpB3sI" role="3cqZAp">
                                  <node concept="3clFbS" id="1oTFGJpB3sK" role="3clFbx">
                                    <node concept="YS8fn" id="1oTFGJpB3H0" role="3cqZAp">
                                      <node concept="2ShNRf" id="1oTFGJpB3Ir" role="YScLw">
                                        <node concept="1pGfFk" id="1oTFGJpB7th" role="2ShVmc">
                                          <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                                          <node concept="3cpWs3" id="1oTFGJpB8bm" role="37wK5m">
                                            <node concept="37vLTw" id="1oTFGJpB8dB" role="3uHU7w">
                                              <ref role="3cqZAo" node="2WI3xHD$tPf" resolve="param" />
                                            </node>
                                            <node concept="Xl_RD" id="1oTFGJpB7CN" role="3uHU7B">
                                              <property role="Xl_RC" value="Failed to resolve " />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbC" id="1oTFGJpB3A_" role="3clFbw">
                                    <node concept="10Nm6u" id="1oTFGJpB3F9" role="3uHU7w" />
                                    <node concept="37vLTw" id="1oTFGJpB3yi" role="3uHU7B">
                                      <ref role="3cqZAo" node="2WI3xHD$tPf" resolve="param" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="2WI3xHD$BVw" role="3cqZAp">
                                  <node concept="37vLTI" id="2WI3xHD$BZb" role="3clFbG">
                                    <node concept="37vLTw" id="4SC_r4AdqTG" role="37vLTx">
                                      <ref role="3cqZAo" node="4SC_r4AdqT$" resolve="resolvedNode" />
                                    </node>
                                    <node concept="37vLTw" id="2WI3xHD$BVu" role="37vLTJ">
                                      <ref role="3cqZAo" node="2WI3xHD$tPf" resolve="param" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="2WI3xHD$nVq" role="3clFbw">
                                <node concept="37vLTw" id="2WI3xHD$n_U" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2WI3xHDzvMd" resolve="in" />
                                </node>
                                <node concept="liA8E" id="2WI3xHD$ofv" role="2OqNvi">
                                  <ref role="37wK5l" to="pxg7:~Input.readBoolean()" resolve="readBoolean" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="2WI3xHD$RQ5" role="3cqZAp">
                              <node concept="37vLTI" id="2WI3xHD$Sas" role="3clFbG">
                                <node concept="37vLTw" id="2WI3xHD$SeJ" role="37vLTx">
                                  <ref role="3cqZAo" node="2WI3xHD$tPf" resolve="param" />
                                </node>
                                <node concept="AH0OO" id="2WI3xHD$S0e" role="37vLTJ">
                                  <node concept="37vLTw" id="2WI3xHD$S4i" role="AHEQo">
                                    <ref role="3cqZAo" node="2WI3xHD$kDM" resolve="i" />
                                  </node>
                                  <node concept="37vLTw" id="2WI3xHD$RQ3" role="AHHXb">
                                    <ref role="3cqZAo" node="2WI3xHD$9cA" resolve="parameters" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWsn" id="2WI3xHD$kDM" role="1Duv9x">
                            <property role="TrG5h" value="i" />
                            <node concept="10Oyi0" id="2WI3xHD$kXU" role="1tU5fm" />
                            <node concept="3cmrfG" id="2WI3xHD$l1H" role="33vP2m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                          <node concept="3eOVzh" id="2WI3xHD$miS" role="1Dwp0S">
                            <node concept="37vLTw" id="2WI3xHD$mko" role="3uHU7w">
                              <ref role="3cqZAo" node="2WI3xHD$6UG" resolve="size" />
                            </node>
                            <node concept="37vLTw" id="2WI3xHD$l4k" role="3uHU7B">
                              <ref role="3cqZAo" node="2WI3xHD$kDM" resolve="i" />
                            </node>
                          </node>
                          <node concept="3uNrnE" id="2WI3xHD$n8a" role="1Dwrff">
                            <node concept="37vLTw" id="2WI3xHD$n8c" role="2$L3a6">
                              <ref role="3cqZAo" node="2WI3xHD$kDM" resolve="i" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="2WI3xHDzvMt" role="3cqZAp">
                          <node concept="2ShNRf" id="2WI3xHDzvMu" role="3cqZAk">
                            <node concept="1pGfFk" id="2WI3xHD$Txe" role="2ShVmc">
                              <ref role="37wK5l" to="od2j:TB2rf$nxBB" resolve="ParameterList" />
                              <node concept="37vLTw" id="2WI3xHD$TQq" role="37wK5m">
                                <ref role="3cqZAo" node="2WI3xHD$9cA" resolve="parameters" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="2WI3xHDzvMx" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="2WI3xHDzBat" role="2Ghqu4">
                      <ref role="3uigEE" to="od2j:3jJoUQ6Yq4x" resolve="ParameterList" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4lYmjL0swNV" role="3cqZAp">
          <node concept="2OqwBi" id="4lYmjL0swNW" role="3clFbG">
            <node concept="37vLTw" id="4lYmjL0swNX" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="4lYmjL0swNY" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="4lYmjL0swNZ" role="37wK5m">
                <ref role="3VsUkX" to="33ny:~ArrayList" resolve="ArrayList" />
              </node>
              <node concept="2ShNRf" id="4lYmjL0swO0" role="37wK5m">
                <node concept="YeOm9" id="4lYmjL0swO1" role="2ShVmc">
                  <node concept="1Y3b0j" id="4lYmjL0swO2" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <node concept="3Tm1VV" id="4lYmjL0swO3" role="1B3o_S" />
                    <node concept="3clFb_" id="4lYmjL0swO4" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="4lYmjL0swO5" role="1B3o_S" />
                      <node concept="3cqZAl" id="4lYmjL0swO6" role="3clF45" />
                      <node concept="37vLTG" id="4lYmjL0swO7" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="4lYmjL0swO8" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="4lYmjL0swO9" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="4lYmjL0swOa" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="4lYmjL0swOb" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="4lYmjL0sHBg" role="1tU5fm">
                          <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4lYmjL0swOd" role="3clF47">
                        <node concept="3clFbF" id="4lYmjL0swOe" role="3cqZAp">
                          <node concept="2OqwBi" id="4lYmjL0swOf" role="3clFbG">
                            <node concept="37vLTw" id="4lYmjL0swOg" role="2Oq$k0">
                              <ref role="3cqZAo" node="4lYmjL0swO9" resolve="out" />
                            </node>
                            <node concept="liA8E" id="4lYmjL0swOh" role="2OqNvi">
                              <ref role="37wK5l" to="pxg7:~Output.writeInt(int)" resolve="writeInt" />
                              <node concept="2OqwBi" id="4lYmjL0swOi" role="37wK5m">
                                <node concept="37vLTw" id="4lYmjL0swOj" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4lYmjL0swOb" resolve="obj" />
                                </node>
                                <node concept="liA8E" id="4lYmjL0swOk" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~ArrayList.size()" resolve="size" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Dw8fO" id="4lYmjL0swOl" role="3cqZAp">
                          <node concept="3clFbS" id="4lYmjL0swOm" role="2LFqv$">
                            <node concept="3clFbF" id="4lYmjL0swOK" role="3cqZAp">
                              <node concept="2OqwBi" id="4lYmjL0swOL" role="3clFbG">
                                <node concept="37vLTw" id="4lYmjL0swOM" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4lYmjL0swO7" resolve="kryo" />
                                </node>
                                <node concept="liA8E" id="4lYmjL0swON" role="2OqNvi">
                                  <ref role="37wK5l" to="4bvh:~Kryo.writeClassAndObject(com.esotericsoftware.kryo.io.Output,java.lang.Object)" resolve="writeClassAndObject" />
                                  <node concept="37vLTw" id="4lYmjL0swOO" role="37wK5m">
                                    <ref role="3cqZAo" node="4lYmjL0swO9" resolve="out" />
                                  </node>
                                  <node concept="2OqwBi" id="4lYmjL0sX92" role="37wK5m">
                                    <node concept="37vLTw" id="4lYmjL0sWrP" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4lYmjL0swOb" resolve="obj" />
                                    </node>
                                    <node concept="liA8E" id="4lYmjL0sY8h" role="2OqNvi">
                                      <ref role="37wK5l" to="33ny:~ArrayList.get(int)" resolve="get" />
                                      <node concept="37vLTw" id="4lYmjL0sYkY" role="37wK5m">
                                        <ref role="3cqZAo" node="4lYmjL0swOX" resolve="i" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWsn" id="4lYmjL0swOX" role="1Duv9x">
                            <property role="TrG5h" value="i" />
                            <node concept="10Oyi0" id="4lYmjL0swOY" role="1tU5fm" />
                            <node concept="3cmrfG" id="4lYmjL0swOZ" role="33vP2m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                          <node concept="3eOVzh" id="4lYmjL0swP0" role="1Dwp0S">
                            <node concept="2OqwBi" id="4lYmjL0swP1" role="3uHU7w">
                              <node concept="37vLTw" id="4lYmjL0swP2" role="2Oq$k0">
                                <ref role="3cqZAo" node="4lYmjL0swOb" resolve="obj" />
                              </node>
                              <node concept="liA8E" id="4lYmjL0sZbw" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~ArrayList.size()" resolve="size" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="4lYmjL0swP4" role="3uHU7B">
                              <ref role="3cqZAo" node="4lYmjL0swOX" resolve="i" />
                            </node>
                          </node>
                          <node concept="3uNrnE" id="4lYmjL0swP5" role="1Dwrff">
                            <node concept="37vLTw" id="4lYmjL0swP6" role="2$L3a6">
                              <ref role="3cqZAo" node="4lYmjL0swOX" resolve="i" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="4lYmjL0swP7" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="4lYmjL0swP8" role="jymVt" />
                    <node concept="3clFb_" id="4lYmjL0swP9" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="4lYmjL0swPa" role="1B3o_S" />
                      <node concept="3uibUv" id="4lYmjL0sK2L" role="3clF45">
                        <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                      </node>
                      <node concept="37vLTG" id="4lYmjL0swPc" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="4lYmjL0swPd" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="4lYmjL0swPe" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="4lYmjL0swPf" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="4lYmjL0swPg" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="4lYmjL0swPh" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="4lYmjL0swPi" role="11_B2D">
                            <node concept="3uibUv" id="4lYmjL0sIZn" role="3qUE_r">
                              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="4lYmjL0swPk" role="3clF47">
                        <node concept="3cpWs8" id="4lYmjL0swPl" role="3cqZAp">
                          <node concept="3cpWsn" id="4lYmjL0swPm" role="3cpWs9">
                            <property role="TrG5h" value="size" />
                            <node concept="10Oyi0" id="4lYmjL0swPn" role="1tU5fm" />
                            <node concept="2OqwBi" id="4lYmjL0swPo" role="33vP2m">
                              <node concept="37vLTw" id="4lYmjL0swPp" role="2Oq$k0">
                                <ref role="3cqZAo" node="4lYmjL0swPe" resolve="in" />
                              </node>
                              <node concept="liA8E" id="4lYmjL0swPq" role="2OqNvi">
                                <ref role="37wK5l" to="pxg7:~Input.readInt()" resolve="readInt" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="4lYmjL0swPr" role="3cqZAp">
                          <node concept="3cpWsn" id="4lYmjL0swPs" role="3cpWs9">
                            <property role="TrG5h" value="list" />
                            <node concept="3uibUv" id="4lYmjL0sZLs" role="1tU5fm">
                              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                            </node>
                            <node concept="2ShNRf" id="4lYmjL0swPv" role="33vP2m">
                              <node concept="1pGfFk" id="4lYmjL0tgeV" role="2ShVmc">
                                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
                                <node concept="37vLTw" id="4lYmjL0thA_" role="37wK5m">
                                  <ref role="3cqZAo" node="4lYmjL0swPm" resolve="size" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Dw8fO" id="4lYmjL0swP$" role="3cqZAp">
                          <node concept="3clFbS" id="4lYmjL0swP_" role="2LFqv$">
                            <node concept="3clFbF" id="4lYmjL0tiII" role="3cqZAp">
                              <node concept="2OqwBi" id="4lYmjL0tl6T" role="3clFbG">
                                <node concept="37vLTw" id="4lYmjL0tiIG" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4lYmjL0swPs" resolve="list" />
                                </node>
                                <node concept="liA8E" id="4lYmjL0tlxK" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                                  <node concept="2OqwBi" id="4lYmjL0tlKq" role="37wK5m">
                                    <node concept="37vLTw" id="4lYmjL0tlKr" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4lYmjL0swPc" resolve="kryo" />
                                    </node>
                                    <node concept="liA8E" id="4lYmjL0tlKs" role="2OqNvi">
                                      <ref role="37wK5l" to="4bvh:~Kryo.readClassAndObject(com.esotericsoftware.kryo.io.Input)" resolve="readClassAndObject" />
                                      <node concept="37vLTw" id="4lYmjL0tlKt" role="37wK5m">
                                        <ref role="3cqZAo" node="4lYmjL0swPe" resolve="in" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWsn" id="4lYmjL0swQh" role="1Duv9x">
                            <property role="TrG5h" value="i" />
                            <node concept="10Oyi0" id="4lYmjL0swQi" role="1tU5fm" />
                            <node concept="3cmrfG" id="4lYmjL0swQj" role="33vP2m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                          <node concept="3eOVzh" id="4lYmjL0swQk" role="1Dwp0S">
                            <node concept="37vLTw" id="4lYmjL0swQl" role="3uHU7w">
                              <ref role="3cqZAo" node="4lYmjL0swPm" resolve="size" />
                            </node>
                            <node concept="37vLTw" id="4lYmjL0swQm" role="3uHU7B">
                              <ref role="3cqZAo" node="4lYmjL0swQh" resolve="i" />
                            </node>
                          </node>
                          <node concept="3uNrnE" id="4lYmjL0swQn" role="1Dwrff">
                            <node concept="37vLTw" id="4lYmjL0swQo" role="2$L3a6">
                              <ref role="3cqZAo" node="4lYmjL0swQh" resolve="i" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="4lYmjL0swQp" role="3cqZAp">
                          <node concept="37vLTw" id="4lYmjL0tx8r" role="3cqZAk">
                            <ref role="3cqZAo" node="4lYmjL0swPs" resolve="list" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="4lYmjL0swQt" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="4lYmjL0sGKX" role="2Ghqu4">
                      <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4lYmjL0vsuq" role="3cqZAp">
          <node concept="2OqwBi" id="4lYmjL0vsur" role="3clFbG">
            <node concept="37vLTw" id="4lYmjL0vsus" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="4lYmjL0vsut" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="4lYmjL0vsuu" role="37wK5m">
                <ref role="3VsUkX" to="qvpu:~CompositeArea$AreaReference" resolve="CompositeArea.AreaReference" />
              </node>
              <node concept="2ShNRf" id="4lYmjL0vsuv" role="37wK5m">
                <node concept="YeOm9" id="4lYmjL0vsuw" role="2ShVmc">
                  <node concept="1Y3b0j" id="4lYmjL0vsux" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <node concept="3Tm1VV" id="4lYmjL0vsuy" role="1B3o_S" />
                    <node concept="3clFb_" id="4lYmjL0vsuz" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="4lYmjL0vsu$" role="1B3o_S" />
                      <node concept="3cqZAl" id="4lYmjL0vsu_" role="3clF45" />
                      <node concept="37vLTG" id="4lYmjL0vsuA" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="4lYmjL0vsuB" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="4lYmjL0vsuC" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="4lYmjL0vsuD" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="4lYmjL0vsuE" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="4lYmjL0vKGb" role="1tU5fm">
                          <ref role="3uigEE" to="qvpu:~CompositeArea$AreaReference" resolve="CompositeArea.AreaReference" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4lYmjL0vsuG" role="3clF47">
                        <node concept="3clFbF" id="4lYmjL0vsuH" role="3cqZAp">
                          <node concept="2OqwBi" id="4lYmjL0vsuI" role="3clFbG">
                            <node concept="37vLTw" id="4lYmjL0vsuJ" role="2Oq$k0">
                              <ref role="3cqZAo" node="4lYmjL0vsuC" resolve="out" />
                            </node>
                            <node concept="liA8E" id="4lYmjL0vsuK" role="2OqNvi">
                              <ref role="37wK5l" to="pxg7:~Output.writeInt(int)" resolve="writeInt" />
                              <node concept="2OqwBi" id="4lYmjL0vsuL" role="37wK5m">
                                <node concept="2OqwBi" id="4lYmjL0vLJT" role="2Oq$k0">
                                  <node concept="37vLTw" id="4lYmjL0vsuM" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4lYmjL0vsuE" resolve="obj" />
                                  </node>
                                  <node concept="liA8E" id="4lYmjL0vLZT" role="2OqNvi">
                                    <ref role="37wK5l" to="qvpu:~CompositeArea$AreaReference.getAreaRefs()" resolve="getAreaRefs" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="4lYmjL0vsuN" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2Gpval" id="4lYmjL0vOnp" role="3cqZAp">
                          <node concept="2GrKxI" id="4lYmjL0vOnr" role="2Gsz3X">
                            <property role="TrG5h" value="areaRef" />
                          </node>
                          <node concept="2OqwBi" id="4lYmjL0vPh6" role="2GsD0m">
                            <node concept="37vLTw" id="4lYmjL0vOOg" role="2Oq$k0">
                              <ref role="3cqZAo" node="4lYmjL0vsuE" resolve="obj" />
                            </node>
                            <node concept="liA8E" id="4lYmjL0vPCE" role="2OqNvi">
                              <ref role="37wK5l" to="qvpu:~CompositeArea$AreaReference.getAreaRefs()" resolve="getAreaRefs" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="4lYmjL0vOnv" role="2LFqv$">
                            <node concept="3clFbF" id="4lYmjL0vsuQ" role="3cqZAp">
                              <node concept="2OqwBi" id="4lYmjL0vsuR" role="3clFbG">
                                <node concept="37vLTw" id="4lYmjL0vsuS" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4lYmjL0vsuA" resolve="kryo" />
                                </node>
                                <node concept="liA8E" id="4lYmjL0vsuT" role="2OqNvi">
                                  <ref role="37wK5l" to="4bvh:~Kryo.writeClassAndObject(com.esotericsoftware.kryo.io.Output,java.lang.Object)" resolve="writeClassAndObject" />
                                  <node concept="37vLTw" id="4lYmjL0vsuU" role="37wK5m">
                                    <ref role="3cqZAo" node="4lYmjL0vsuC" resolve="out" />
                                  </node>
                                  <node concept="2GrUjf" id="4lYmjL0vVxQ" role="37wK5m">
                                    <ref role="2Gs0qQ" node="4lYmjL0vOnr" resolve="areaRef" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="4lYmjL0vsv9" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="4lYmjL0vsva" role="jymVt" />
                    <node concept="3clFb_" id="4lYmjL0vsvb" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="4lYmjL0vsvc" role="1B3o_S" />
                      <node concept="3uibUv" id="4lYmjL0vBLp" role="3clF45">
                        <ref role="3uigEE" to="qvpu:~CompositeArea$AreaReference" resolve="CompositeArea.AreaReference" />
                      </node>
                      <node concept="37vLTG" id="4lYmjL0vsve" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="4lYmjL0vsvf" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="4lYmjL0vsvg" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="4lYmjL0vsvh" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="4lYmjL0vsvi" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="4lYmjL0vsvj" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="4lYmjL0vsvk" role="11_B2D">
                            <node concept="3uibUv" id="4lYmjL0vAIS" role="3qUE_r">
                              <ref role="3uigEE" to="qvpu:~CompositeArea$AreaReference" resolve="CompositeArea.AreaReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="4lYmjL0vsvm" role="3clF47">
                        <node concept="3cpWs8" id="4lYmjL0vsvn" role="3cqZAp">
                          <node concept="3cpWsn" id="4lYmjL0vsvo" role="3cpWs9">
                            <property role="TrG5h" value="size" />
                            <node concept="10Oyi0" id="4lYmjL0vsvp" role="1tU5fm" />
                            <node concept="2OqwBi" id="4lYmjL0vsvq" role="33vP2m">
                              <node concept="37vLTw" id="4lYmjL0vsvr" role="2Oq$k0">
                                <ref role="3cqZAo" node="4lYmjL0vsvg" resolve="in" />
                              </node>
                              <node concept="liA8E" id="4lYmjL0vsvs" role="2OqNvi">
                                <ref role="37wK5l" to="pxg7:~Input.readInt()" resolve="readInt" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="4lYmjL0vsvt" role="3cqZAp">
                          <node concept="3cpWsn" id="4lYmjL0vsvu" role="3cpWs9">
                            <property role="TrG5h" value="list" />
                            <node concept="3uibUv" id="4lYmjL0vsvv" role="1tU5fm">
                              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
                              <node concept="3uibUv" id="4lYmjL0vWmP" role="11_B2D">
                                <ref role="3uigEE" to="qvpu:~IAreaReference" resolve="IAreaReference" />
                              </node>
                            </node>
                            <node concept="2ShNRf" id="4lYmjL0vsvw" role="33vP2m">
                              <node concept="1pGfFk" id="4lYmjL0vsvx" role="2ShVmc">
                                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(int)" resolve="ArrayList" />
                                <node concept="37vLTw" id="4lYmjL0vsvy" role="37wK5m">
                                  <ref role="3cqZAo" node="4lYmjL0vsvo" resolve="size" />
                                </node>
                                <node concept="3uibUv" id="4lYmjL0vXjh" role="1pMfVU">
                                  <ref role="3uigEE" to="qvpu:~IAreaReference" resolve="IAreaReference" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1Dw8fO" id="4lYmjL0vsvz" role="3cqZAp">
                          <node concept="3clFbS" id="4lYmjL0vsv$" role="2LFqv$">
                            <node concept="3clFbF" id="4lYmjL0vsv_" role="3cqZAp">
                              <node concept="2OqwBi" id="4lYmjL0vsvA" role="3clFbG">
                                <node concept="37vLTw" id="4lYmjL0vsvB" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4lYmjL0vsvu" resolve="list" />
                                </node>
                                <node concept="liA8E" id="4lYmjL0vsvC" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                                  <node concept="10QFUN" id="4lYmjL0vXGE" role="37wK5m">
                                    <node concept="2OqwBi" id="4lYmjL0vXGA" role="10QFUP">
                                      <node concept="37vLTw" id="4lYmjL0vXGB" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4lYmjL0vsve" resolve="kryo" />
                                      </node>
                                      <node concept="liA8E" id="4lYmjL0vXGC" role="2OqNvi">
                                        <ref role="37wK5l" to="4bvh:~Kryo.readClassAndObject(com.esotericsoftware.kryo.io.Input)" resolve="readClassAndObject" />
                                        <node concept="37vLTw" id="4lYmjL0vXGD" role="37wK5m">
                                          <ref role="3cqZAo" node="4lYmjL0vsvg" resolve="in" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3uibUv" id="4lYmjL0vXG_" role="10QFUM">
                                      <ref role="3uigEE" to="qvpu:~IAreaReference" resolve="IAreaReference" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWsn" id="4lYmjL0vsvH" role="1Duv9x">
                            <property role="TrG5h" value="i" />
                            <node concept="10Oyi0" id="4lYmjL0vsvI" role="1tU5fm" />
                            <node concept="3cmrfG" id="4lYmjL0vsvJ" role="33vP2m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                          <node concept="3eOVzh" id="4lYmjL0vsvK" role="1Dwp0S">
                            <node concept="37vLTw" id="4lYmjL0vsvL" role="3uHU7w">
                              <ref role="3cqZAo" node="4lYmjL0vsvo" resolve="size" />
                            </node>
                            <node concept="37vLTw" id="4lYmjL0vsvM" role="3uHU7B">
                              <ref role="3cqZAo" node="4lYmjL0vsvH" resolve="i" />
                            </node>
                          </node>
                          <node concept="3uNrnE" id="4lYmjL0vsvN" role="1Dwrff">
                            <node concept="37vLTw" id="4lYmjL0vsvO" role="2$L3a6">
                              <ref role="3cqZAo" node="4lYmjL0vsvH" resolve="i" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="4lYmjL0vsvP" role="3cqZAp">
                          <node concept="2ShNRf" id="4lYmjL0w2SO" role="3cqZAk">
                            <node concept="1pGfFk" id="4lYmjL0w2Ru" role="2ShVmc">
                              <ref role="37wK5l" to="qvpu:~CompositeArea$AreaReference.&lt;init&gt;(java.util.List)" resolve="CompositeArea.AreaReference" />
                              <node concept="37vLTw" id="4lYmjL0w3iv" role="37wK5m">
                                <ref role="3cqZAo" node="4lYmjL0vsvu" resolve="list" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="4lYmjL0vsvR" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="4lYmjL0v_P$" role="2Ghqu4">
                      <ref role="3uigEE" to="qvpu:~CompositeArea$AreaReference" resolve="CompositeArea.AreaReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4lYmjL0tV51" role="3cqZAp">
          <node concept="2OqwBi" id="4lYmjL0tV52" role="3clFbG">
            <node concept="37vLTw" id="4lYmjL0tV53" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="4lYmjL0tV54" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="4lYmjL0tV55" role="37wK5m">
                <ref role="3VsUkX" to="xxte:7cdb92Lw0s6" resolve="MPSArea" />
              </node>
              <node concept="2ShNRf" id="4lYmjL0tV56" role="37wK5m">
                <node concept="YeOm9" id="4lYmjL0tV57" role="2ShVmc">
                  <node concept="1Y3b0j" id="4lYmjL0tV58" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <node concept="3Tm1VV" id="4lYmjL0tV59" role="1B3o_S" />
                    <node concept="3clFb_" id="4lYmjL0tV5a" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="4lYmjL0tV5b" role="1B3o_S" />
                      <node concept="3cqZAl" id="4lYmjL0tV5c" role="3clF45" />
                      <node concept="37vLTG" id="4lYmjL0tV5d" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="4lYmjL0tV5e" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="4lYmjL0tV5f" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="4lYmjL0tV5g" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="4lYmjL0tV5h" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="4lYmjL0u4yt" role="1tU5fm">
                          <ref role="3uigEE" to="xxte:7cdb92Lw0s6" resolve="MPSArea" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4lYmjL0tV5j" role="3clF47" />
                      <node concept="2AHcQZ" id="4lYmjL0tV5K" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="4lYmjL0tV5L" role="jymVt" />
                    <node concept="3clFb_" id="4lYmjL0tV5M" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="4lYmjL0tV5N" role="1B3o_S" />
                      <node concept="3uibUv" id="4lYmjL0u5wi" role="3clF45">
                        <ref role="3uigEE" to="xxte:7cdb92Lw0s6" resolve="MPSArea" />
                      </node>
                      <node concept="37vLTG" id="4lYmjL0tV5P" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="4lYmjL0tV5Q" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="4lYmjL0tV5R" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="4lYmjL0tV5S" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="4lYmjL0tV5T" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="4lYmjL0tV5U" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="4lYmjL0tV5V" role="11_B2D">
                            <node concept="3uibUv" id="4lYmjL0u6ln" role="3qUE_r">
                              <ref role="3uigEE" to="xxte:7cdb92Lw0s6" resolve="MPSArea" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="4lYmjL0tV5X" role="3clF47">
                        <node concept="3cpWs8" id="4lYmjL0ujsp" role="3cqZAp">
                          <node concept="3cpWsn" id="4lYmjL0ujsq" role="3cpWs9">
                            <property role="TrG5h" value="repo" />
                            <node concept="3uibUv" id="4lYmjL0ujoU" role="1tU5fm">
                              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                            </node>
                            <node concept="2OqwBi" id="4lYmjL0ujsr" role="33vP2m">
                              <node concept="37vLTw" id="4lYmjL0ujss" role="2Oq$k0">
                                <ref role="3cqZAo" node="5npwda7vkut" resolve="REPOSITORY" />
                              </node>
                              <node concept="liA8E" id="4lYmjL0ujst" role="2OqNvi">
                                <ref role="37wK5l" to="3d38:7vWAzuEE1gr" resolve="getValue" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="4lYmjL0ukpw" role="3cqZAp">
                          <node concept="3K4zz7" id="4lYmjL0ukQS" role="3clFbG">
                            <node concept="2ShNRf" id="4lYmjL0ukU0" role="3K4E3e">
                              <node concept="1pGfFk" id="4lYmjL0ul$$" role="2ShVmc">
                                <ref role="37wK5l" to="xxte:7cdb92Lw8bC" resolve="MPSArea" />
                              </node>
                            </node>
                            <node concept="2ShNRf" id="4lYmjL0ulAn" role="3K4GZi">
                              <node concept="1pGfFk" id="4lYmjL0umhP" role="2ShVmc">
                                <ref role="37wK5l" to="xxte:7cdb92Lw72S" resolve="MPSArea" />
                                <node concept="37vLTw" id="4lYmjL0umkH" role="37wK5m">
                                  <ref role="3cqZAo" node="4lYmjL0ujsq" resolve="repo" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbC" id="4lYmjL0ukCf" role="3K4Cdx">
                              <node concept="10Nm6u" id="4lYmjL0ukLq" role="3uHU7w" />
                              <node concept="37vLTw" id="4lYmjL0ukps" role="3uHU7B">
                                <ref role="3cqZAo" node="4lYmjL0ujsq" resolve="repo" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="4lYmjL0tV6u" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="4lYmjL0u3Dp" role="2Ghqu4">
                      <ref role="3uigEE" to="xxte:7cdb92Lw0s6" resolve="MPSArea" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4lYmjL0w6iE" role="3cqZAp">
          <node concept="2OqwBi" id="4lYmjL0w6iF" role="3clFbG">
            <node concept="37vLTw" id="4lYmjL0w6iG" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="4lYmjL0w6iH" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="4lYmjL0w6iI" role="37wK5m">
                <ref role="3VsUkX" to="nv3w:7$7_4ZihhzB" resolve="DependencyTrackingArea.DependencyTrackingAreaReference" />
              </node>
              <node concept="2ShNRf" id="4lYmjL0w6iJ" role="37wK5m">
                <node concept="YeOm9" id="4lYmjL0w6iK" role="2ShVmc">
                  <node concept="1Y3b0j" id="4lYmjL0w6iL" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <node concept="3Tm1VV" id="4lYmjL0w6iM" role="1B3o_S" />
                    <node concept="3clFb_" id="4lYmjL0w6iN" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="4lYmjL0w6iO" role="1B3o_S" />
                      <node concept="3cqZAl" id="4lYmjL0w6iP" role="3clF45" />
                      <node concept="37vLTG" id="4lYmjL0w6iQ" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="4lYmjL0w6iR" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="4lYmjL0w6iS" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="4lYmjL0w6iT" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="4lYmjL0w6iU" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="4lYmjL0wiK0" role="1tU5fm">
                          <ref role="3uigEE" to="nv3w:7$7_4ZihhzB" resolve="DependencyTrackingArea.DependencyTrackingAreaReference" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4lYmjL0w6iW" role="3clF47">
                        <node concept="3clFbF" id="4lYmjL0wkrB" role="3cqZAp">
                          <node concept="2OqwBi" id="4lYmjL0wk$g" role="3clFbG">
                            <node concept="37vLTw" id="4lYmjL0wkrA" role="2Oq$k0">
                              <ref role="3cqZAo" node="4lYmjL0w6iQ" resolve="kryo" />
                            </node>
                            <node concept="liA8E" id="4lYmjL0wkND" role="2OqNvi">
                              <ref role="37wK5l" to="4bvh:~Kryo.writeClassAndObject(com.esotericsoftware.kryo.io.Output,java.lang.Object)" resolve="writeClassAndObject" />
                              <node concept="37vLTw" id="4lYmjL0wpIW" role="37wK5m">
                                <ref role="3cqZAo" node="4lYmjL0w6iS" resolve="out" />
                              </node>
                              <node concept="2OqwBi" id="4lYmjL0wq9u" role="37wK5m">
                                <node concept="37vLTw" id="4lYmjL0wpTH" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4lYmjL0w6iU" resolve="obj" />
                                </node>
                                <node concept="liA8E" id="4lYmjL0wubm" role="2OqNvi">
                                  <ref role="37wK5l" to="nv3w:4lYmjL0wqwY" resolve="getWrappedRef" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="4lYmjL0w6iX" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="4lYmjL0w6iY" role="jymVt" />
                    <node concept="3clFb_" id="4lYmjL0w6iZ" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="4lYmjL0w6j0" role="1B3o_S" />
                      <node concept="3uibUv" id="4lYmjL0wjXm" role="3clF45">
                        <ref role="3uigEE" to="nv3w:7$7_4ZihhzB" resolve="DependencyTrackingArea.DependencyTrackingAreaReference" />
                      </node>
                      <node concept="37vLTG" id="4lYmjL0w6j2" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="4lYmjL0w6j3" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="4lYmjL0w6j4" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="4lYmjL0w6j5" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="4lYmjL0w6j6" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="4lYmjL0w6j7" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="4lYmjL0w6j8" role="11_B2D">
                            <node concept="3uibUv" id="4lYmjL0wjlv" role="3qUE_r">
                              <ref role="3uigEE" to="nv3w:7$7_4ZihhzB" resolve="DependencyTrackingArea.DependencyTrackingAreaReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="4lYmjL0w6ja" role="3clF47">
                        <node concept="3clFbF" id="4lYmjL0wvRr" role="3cqZAp">
                          <node concept="2ShNRf" id="4lYmjL0wvRp" role="3clFbG">
                            <node concept="1pGfFk" id="4lYmjL0wwys" role="2ShVmc">
                              <ref role="37wK5l" to="nv3w:7$7_4Zihm6q" resolve="DependencyTrackingArea.DependencyTrackingAreaReference" />
                              <node concept="10QFUN" id="4lYmjL0wLJT" role="37wK5m">
                                <node concept="2OqwBi" id="4lYmjL0wLJP" role="10QFUP">
                                  <node concept="37vLTw" id="4lYmjL0wLJQ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4lYmjL0w6j2" resolve="kryo" />
                                  </node>
                                  <node concept="liA8E" id="4lYmjL0wLJR" role="2OqNvi">
                                    <ref role="37wK5l" to="4bvh:~Kryo.readClassAndObject(com.esotericsoftware.kryo.io.Input)" resolve="readClassAndObject" />
                                    <node concept="37vLTw" id="4lYmjL0wLJS" role="37wK5m">
                                      <ref role="3cqZAo" node="4lYmjL0w6j4" resolve="in" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3uibUv" id="4lYmjL0wLJL" role="10QFUM">
                                  <ref role="3uigEE" to="qvpu:~IAreaReference" resolve="IAreaReference" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="4lYmjL0w6jr" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="4lYmjL0wioP" role="2Ghqu4">
                      <ref role="3uigEE" to="nv3w:7$7_4ZihhzB" resolve="DependencyTrackingArea.DependencyTrackingAreaReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4lYmjL0wZxk" role="3cqZAp">
          <node concept="2OqwBi" id="4lYmjL0wZxl" role="3clFbG">
            <node concept="37vLTw" id="4lYmjL0wZxm" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="4lYmjL0wZxn" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="4lYmjL0wZxo" role="37wK5m">
                <ref role="3VsUkX" to="qvpu:~PArea$AreaReference" resolve="PArea.AreaReference" />
              </node>
              <node concept="2ShNRf" id="4lYmjL0wZxp" role="37wK5m">
                <node concept="YeOm9" id="4lYmjL0wZxq" role="2ShVmc">
                  <node concept="1Y3b0j" id="4lYmjL0wZxr" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <node concept="3Tm1VV" id="4lYmjL0wZxs" role="1B3o_S" />
                    <node concept="3clFb_" id="4lYmjL0wZxt" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="4lYmjL0wZxu" role="1B3o_S" />
                      <node concept="3cqZAl" id="4lYmjL0wZxv" role="3clF45" />
                      <node concept="37vLTG" id="4lYmjL0wZxw" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="4lYmjL0wZxx" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="4lYmjL0wZxy" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="4lYmjL0wZxz" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="4lYmjL0wZx$" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="4lYmjL0xd2c" role="1tU5fm">
                          <ref role="3uigEE" to="qvpu:~PArea$AreaReference" resolve="PArea.AreaReference" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4lYmjL0wZxA" role="3clF47">
                        <node concept="3clFbF" id="4lYmjL0xfcD" role="3cqZAp">
                          <node concept="2OqwBi" id="4lYmjL0xfzA" role="3clFbG">
                            <node concept="37vLTw" id="4lYmjL0xfcB" role="2Oq$k0">
                              <ref role="3cqZAo" node="4lYmjL0wZxy" resolve="out" />
                            </node>
                            <node concept="liA8E" id="4lYmjL0xfYs" role="2OqNvi">
                              <ref role="37wK5l" to="pxg7:~Output.writeString(java.lang.String)" resolve="writeString" />
                              <node concept="2OqwBi" id="4lYmjL0xgiW" role="37wK5m">
                                <node concept="37vLTw" id="4lYmjL0xg3Q" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4lYmjL0wZx$" resolve="obj" />
                                </node>
                                <node concept="liA8E" id="4lYmjL0xgxe" role="2OqNvi">
                                  <ref role="37wK5l" to="qvpu:~PArea$AreaReference.getBranchId()" resolve="getBranchId" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="4lYmjL0wZxJ" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="4lYmjL0wZxK" role="jymVt" />
                    <node concept="3clFb_" id="4lYmjL0wZxL" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="4lYmjL0wZxM" role="1B3o_S" />
                      <node concept="3uibUv" id="4lYmjL0xe6m" role="3clF45">
                        <ref role="3uigEE" to="qvpu:~PArea$AreaReference" resolve="PArea.AreaReference" />
                      </node>
                      <node concept="37vLTG" id="4lYmjL0wZxO" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="4lYmjL0wZxP" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="4lYmjL0wZxQ" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="4lYmjL0wZxR" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="4lYmjL0wZxS" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="4lYmjL0wZxT" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="4lYmjL0wZxU" role="11_B2D">
                            <node concept="3uibUv" id="4lYmjL0xeyj" role="3qUE_r">
                              <ref role="3uigEE" to="qvpu:~PArea$AreaReference" resolve="PArea.AreaReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="4lYmjL0wZxW" role="3clF47">
                        <node concept="3clFbF" id="4lYmjL0xlR1" role="3cqZAp">
                          <node concept="2ShNRf" id="4lYmjL0xlQX" role="3clFbG">
                            <node concept="1pGfFk" id="4lYmjL0xmyn" role="2ShVmc">
                              <ref role="37wK5l" to="qvpu:~PArea$AreaReference.&lt;init&gt;(java.lang.String)" resolve="PArea.AreaReference" />
                              <node concept="2OqwBi" id="4lYmjL0xmPE" role="37wK5m">
                                <node concept="37vLTw" id="4lYmjL0xm$f" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4lYmjL0wZxQ" resolve="in" />
                                </node>
                                <node concept="liA8E" id="4lYmjL0xneW" role="2OqNvi">
                                  <ref role="37wK5l" to="pxg7:~Input.readString()" resolve="readString" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="4lYmjL0wZy6" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="4lYmjL0xdEY" role="2Ghqu4">
                      <ref role="3uigEE" to="qvpu:~PArea$AreaReference" resolve="PArea.AreaReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mtS_g4qrXU" role="3cqZAp">
          <node concept="2OqwBi" id="mtS_g4qrXV" role="3clFbG">
            <node concept="37vLTw" id="mtS_g4qrXW" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="mtS_g4qrXX" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="mtS_g4qrXY" role="37wK5m">
                <ref role="3VsUkX" node="mtS_g4qKWx" resolve="VirtualRepositoryArea.RootNodeReference" />
              </node>
              <node concept="2ShNRf" id="mtS_g4qrXZ" role="37wK5m">
                <node concept="YeOm9" id="mtS_g4qrY0" role="2ShVmc">
                  <node concept="1Y3b0j" id="mtS_g4qrY1" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <node concept="3Tm1VV" id="mtS_g4qrY2" role="1B3o_S" />
                    <node concept="3clFb_" id="mtS_g4qrY3" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="mtS_g4qrY4" role="1B3o_S" />
                      <node concept="3cqZAl" id="mtS_g4qrY5" role="3clF45" />
                      <node concept="37vLTG" id="mtS_g4qrY6" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="mtS_g4qrY7" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="mtS_g4qrY8" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="mtS_g4qrY9" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="mtS_g4qrYa" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="mtS_g4sbeJ" role="1tU5fm">
                          <ref role="3uigEE" node="mtS_g4qKWx" resolve="VirtualRepositoryArea.RootNodeReference" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="mtS_g4qrYc" role="3clF47">
                        <node concept="3clFbF" id="mtS_g4skkc" role="3cqZAp">
                          <node concept="2OqwBi" id="mtS_g4skuD" role="3clFbG">
                            <node concept="37vLTw" id="mtS_g4skka" role="2Oq$k0">
                              <ref role="3cqZAo" node="mtS_g4qrY6" resolve="kryo" />
                            </node>
                            <node concept="liA8E" id="mtS_g4skOa" role="2OqNvi">
                              <ref role="37wK5l" to="4bvh:~Kryo.writeObject(com.esotericsoftware.kryo.io.Output,java.lang.Object)" resolve="writeObject" />
                              <node concept="37vLTw" id="mtS_g4slH2" role="37wK5m">
                                <ref role="3cqZAo" node="mtS_g4qrY8" resolve="out" />
                              </node>
                              <node concept="2OqwBi" id="mtS_g4sm6d" role="37wK5m">
                                <node concept="37vLTw" id="mtS_g4slQR" role="2Oq$k0">
                                  <ref role="3cqZAo" node="mtS_g4qrYa" resolve="obj" />
                                </node>
                                <node concept="2OwXpG" id="mtS_g4smd7" role="2OqNvi">
                                  <ref role="2Oxat5" node="mtS_g4qSdU" resolve="areaRef" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="mtS_g4qrYk" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="mtS_g4qrYl" role="jymVt" />
                    <node concept="3clFb_" id="mtS_g4qrYm" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="mtS_g4qrYn" role="1B3o_S" />
                      <node concept="3uibUv" id="mtS_g4sbCb" role="3clF45">
                        <ref role="3uigEE" node="mtS_g4qKWx" resolve="VirtualRepositoryArea.RootNodeReference" />
                      </node>
                      <node concept="37vLTG" id="mtS_g4qrYp" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="mtS_g4qrYq" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="mtS_g4qrYr" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="mtS_g4qrYs" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="mtS_g4qrYt" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="mtS_g4qrYu" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="mtS_g4qrYv" role="11_B2D">
                            <node concept="3uibUv" id="mtS_g4sbQs" role="3qUE_r">
                              <ref role="3uigEE" node="mtS_g4qKWx" resolve="VirtualRepositoryArea.RootNodeReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="mtS_g4qrYx" role="3clF47">
                        <node concept="3clFbF" id="mtS_g4soRC" role="3cqZAp">
                          <node concept="2ShNRf" id="mtS_g4soR$" role="3clFbG">
                            <node concept="1pGfFk" id="mtS_g4sp$Q" role="2ShVmc">
                              <ref role="37wK5l" node="mtS_g4qYKl" resolve="VirtualRepositoryArea.RootNodeReference" />
                              <node concept="2OqwBi" id="mtS_g4spJk" role="37wK5m">
                                <node concept="37vLTw" id="mtS_g4spAC" role="2Oq$k0">
                                  <ref role="3cqZAo" node="mtS_g4qrYp" resolve="kryo" />
                                </node>
                                <node concept="liA8E" id="mtS_g4spS9" role="2OqNvi">
                                  <ref role="37wK5l" to="4bvh:~Kryo.readObject(com.esotericsoftware.kryo.io.Input,java.lang.Class)" resolve="readObject" />
                                  <node concept="37vLTw" id="mtS_g4sqLC" role="37wK5m">
                                    <ref role="3cqZAo" node="mtS_g4qrYr" resolve="in" />
                                  </node>
                                  <node concept="3VsKOn" id="mtS_g4sr5l" role="37wK5m">
                                    <ref role="3VsUkX" node="7$7_4ZiinS7" resolve="VirtualRepositoryArea.AreaReference" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="mtS_g4qrYC" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="mtS_g4sb1o" role="2Ghqu4">
                      <ref role="3uigEE" node="mtS_g4qKWx" resolve="VirtualRepositoryArea.RootNodeReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mtS_g4sruW" role="3cqZAp">
          <node concept="2OqwBi" id="mtS_g4sruX" role="3clFbG">
            <node concept="37vLTw" id="mtS_g4sruY" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="mtS_g4sruZ" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="mtS_g4srv0" role="37wK5m">
                <ref role="3VsUkX" node="mtS_g4raHN" resolve="VirtualRepositoryArea.NodeWrapperReference" />
              </node>
              <node concept="2ShNRf" id="mtS_g4srv1" role="37wK5m">
                <node concept="YeOm9" id="mtS_g4srv2" role="2ShVmc">
                  <node concept="1Y3b0j" id="mtS_g4srv3" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <node concept="3Tm1VV" id="mtS_g4srv4" role="1B3o_S" />
                    <node concept="3clFb_" id="mtS_g4srv5" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="mtS_g4srv6" role="1B3o_S" />
                      <node concept="3cqZAl" id="mtS_g4srv7" role="3clF45" />
                      <node concept="37vLTG" id="mtS_g4srv8" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="mtS_g4srv9" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="mtS_g4srva" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="mtS_g4srvb" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="mtS_g4srvc" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="mtS_g4swpV" role="1tU5fm">
                          <ref role="3uigEE" node="mtS_g4raHN" resolve="VirtualRepositoryArea.NodeWrapperReference" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="mtS_g4srve" role="3clF47">
                        <node concept="3clFbF" id="mtS_g4srvf" role="3cqZAp">
                          <node concept="2OqwBi" id="mtS_g4srvg" role="3clFbG">
                            <node concept="37vLTw" id="mtS_g4srvh" role="2Oq$k0">
                              <ref role="3cqZAo" node="mtS_g4srv8" resolve="kryo" />
                            </node>
                            <node concept="liA8E" id="mtS_g4srvi" role="2OqNvi">
                              <ref role="37wK5l" to="4bvh:~Kryo.writeClassAndObject(com.esotericsoftware.kryo.io.Output,java.lang.Object)" resolve="writeClassAndObject" />
                              <node concept="37vLTw" id="mtS_g4srvj" role="37wK5m">
                                <ref role="3cqZAo" node="mtS_g4srva" resolve="out" />
                              </node>
                              <node concept="2OqwBi" id="mtS_g4srvk" role="37wK5m">
                                <node concept="37vLTw" id="mtS_g4srvl" role="2Oq$k0">
                                  <ref role="3cqZAo" node="mtS_g4srvc" resolve="obj" />
                                </node>
                                <node concept="2OwXpG" id="mtS_g4sB0t" role="2OqNvi">
                                  <ref role="2Oxat5" node="mtS_g4rqeZ" resolve="nodeRef" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="mtS_g4sBZF" role="3cqZAp">
                          <node concept="2OqwBi" id="mtS_g4sBZG" role="3clFbG">
                            <node concept="37vLTw" id="mtS_g4sBZH" role="2Oq$k0">
                              <ref role="3cqZAo" node="mtS_g4srv8" resolve="kryo" />
                            </node>
                            <node concept="liA8E" id="mtS_g4sBZI" role="2OqNvi">
                              <ref role="37wK5l" to="4bvh:~Kryo.writeObject(com.esotericsoftware.kryo.io.Output,java.lang.Object)" resolve="writeObject" />
                              <node concept="37vLTw" id="mtS_g4sBZJ" role="37wK5m">
                                <ref role="3cqZAo" node="mtS_g4srva" resolve="out" />
                              </node>
                              <node concept="2OqwBi" id="mtS_g4sBZK" role="37wK5m">
                                <node concept="37vLTw" id="mtS_g4sBZL" role="2Oq$k0">
                                  <ref role="3cqZAo" node="mtS_g4srvc" resolve="obj" />
                                </node>
                                <node concept="2OwXpG" id="mtS_g4sDZD" role="2OqNvi">
                                  <ref role="2Oxat5" node="mtS_g4rs8x" resolve="areaRef" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="mtS_g4srvn" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="mtS_g4srvo" role="jymVt" />
                    <node concept="3clFb_" id="mtS_g4srvp" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="mtS_g4srvq" role="1B3o_S" />
                      <node concept="3uibUv" id="mtS_g4swM9" role="3clF45">
                        <ref role="3uigEE" node="mtS_g4raHN" resolve="VirtualRepositoryArea.NodeWrapperReference" />
                      </node>
                      <node concept="37vLTG" id="mtS_g4srvs" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="mtS_g4srvt" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="mtS_g4srvu" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="mtS_g4srvv" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="mtS_g4srvw" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="mtS_g4srvx" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="mtS_g4srvy" role="11_B2D">
                            <node concept="3uibUv" id="mtS_g4sx6w" role="3qUE_r">
                              <ref role="3uigEE" node="mtS_g4raHN" resolve="VirtualRepositoryArea.NodeWrapperReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="mtS_g4srv$" role="3clF47">
                        <node concept="3clFbF" id="mtS_g4sAal" role="3cqZAp">
                          <node concept="2ShNRf" id="mtS_g4sAah" role="3clFbG">
                            <node concept="1pGfFk" id="mtS_g4sARz" role="2ShVmc">
                              <ref role="37wK5l" node="mtS_g4rt4q" resolve="VirtualRepositoryArea.NodeWrapperReference" />
                              <node concept="10QFUN" id="mtS_g4sFCg" role="37wK5m">
                                <node concept="2OqwBi" id="mtS_g4sFCc" role="10QFUP">
                                  <node concept="37vLTw" id="mtS_g4sFCd" role="2Oq$k0">
                                    <ref role="3cqZAo" node="mtS_g4srvs" resolve="kryo" />
                                  </node>
                                  <node concept="liA8E" id="mtS_g4sFCe" role="2OqNvi">
                                    <ref role="37wK5l" to="4bvh:~Kryo.readClassAndObject(com.esotericsoftware.kryo.io.Input)" resolve="readClassAndObject" />
                                    <node concept="37vLTw" id="mtS_g4sFCf" role="37wK5m">
                                      <ref role="3cqZAo" node="mtS_g4srvu" resolve="in" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3uibUv" id="mtS_g4sFC8" role="10QFUM">
                                  <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="mtS_g4sHaB" role="37wK5m">
                                <node concept="37vLTw" id="mtS_g4sH7M" role="2Oq$k0">
                                  <ref role="3cqZAo" node="mtS_g4srvs" resolve="kryo" />
                                </node>
                                <node concept="liA8E" id="mtS_g4sHkc" role="2OqNvi">
                                  <ref role="37wK5l" to="4bvh:~Kryo.readObject(com.esotericsoftware.kryo.io.Input,java.lang.Class)" resolve="readObject" />
                                  <node concept="37vLTw" id="mtS_g4sIgY" role="37wK5m">
                                    <ref role="3cqZAo" node="mtS_g4srvu" resolve="in" />
                                  </node>
                                  <node concept="3VsKOn" id="mtS_g4sICP" role="37wK5m">
                                    <ref role="3VsUkX" node="7$7_4ZiinS7" resolve="VirtualRepositoryArea.AreaReference" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="mtS_g4srvH" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="mtS_g4sw6Z" role="2Ghqu4">
                      <ref role="3uigEE" node="mtS_g4raHN" resolve="VirtualRepositoryArea.NodeWrapperReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="mtS_g4thhV" role="3cqZAp">
          <node concept="2OqwBi" id="mtS_g4thhW" role="3clFbG">
            <node concept="37vLTw" id="mtS_g4thhX" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="mtS_g4thhY" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="mtS_g4thhZ" role="37wK5m">
                <ref role="3VsUkX" node="7$7_4ZiinS7" resolve="VirtualRepositoryArea.AreaReference" />
              </node>
              <node concept="2ShNRf" id="mtS_g4thi0" role="37wK5m">
                <node concept="YeOm9" id="mtS_g4thi1" role="2ShVmc">
                  <node concept="1Y3b0j" id="mtS_g4thi2" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <node concept="3Tm1VV" id="mtS_g4thi3" role="1B3o_S" />
                    <node concept="3clFb_" id="mtS_g4thi4" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="mtS_g4thi5" role="1B3o_S" />
                      <node concept="3cqZAl" id="mtS_g4thi6" role="3clF45" />
                      <node concept="37vLTG" id="mtS_g4thi7" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="mtS_g4thi8" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="mtS_g4thi9" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="mtS_g4thia" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="mtS_g4thib" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="mtS_g4ttFi" role="1tU5fm">
                          <ref role="3uigEE" node="7$7_4ZiinS7" resolve="VirtualRepositoryArea.AreaReference" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="mtS_g4thid" role="3clF47">
                        <node concept="3clFbF" id="mtS_g4thie" role="3cqZAp">
                          <node concept="2OqwBi" id="mtS_g4thif" role="3clFbG">
                            <node concept="37vLTw" id="mtS_g4thig" role="2Oq$k0">
                              <ref role="3cqZAo" node="mtS_g4thi7" resolve="kryo" />
                            </node>
                            <node concept="liA8E" id="mtS_g4thih" role="2OqNvi">
                              <ref role="37wK5l" to="4bvh:~Kryo.writeClassAndObject(com.esotericsoftware.kryo.io.Output,java.lang.Object)" resolve="writeClassAndObject" />
                              <node concept="37vLTw" id="mtS_g4thii" role="37wK5m">
                                <ref role="3cqZAo" node="mtS_g4thi9" resolve="out" />
                              </node>
                              <node concept="2OqwBi" id="mtS_g4thij" role="37wK5m">
                                <node concept="37vLTw" id="mtS_g4thik" role="2Oq$k0">
                                  <ref role="3cqZAo" node="mtS_g4thib" resolve="obj" />
                                </node>
                                <node concept="2OwXpG" id="mtS_g4tyKs" role="2OqNvi">
                                  <ref role="2Oxat5" node="7$7_4Ziis$R" resolve="wrappedArea" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="mtS_g4thiu" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="mtS_g4thiv" role="jymVt" />
                    <node concept="3clFb_" id="mtS_g4thiw" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="mtS_g4thix" role="1B3o_S" />
                      <node concept="3uibUv" id="mtS_g4tu7f" role="3clF45">
                        <ref role="3uigEE" node="7$7_4ZiinS7" resolve="VirtualRepositoryArea.AreaReference" />
                      </node>
                      <node concept="37vLTG" id="mtS_g4thiz" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="mtS_g4thi$" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="mtS_g4thi_" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="mtS_g4thiA" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="mtS_g4thiB" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="mtS_g4thiC" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="mtS_g4thiD" role="11_B2D">
                            <node concept="3uibUv" id="mtS_g4tumR" role="3qUE_r">
                              <ref role="3uigEE" node="7$7_4ZiinS7" resolve="VirtualRepositoryArea.AreaReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="mtS_g4thiF" role="3clF47">
                        <node concept="3clFbF" id="mtS_g4tv08" role="3cqZAp">
                          <node concept="2ShNRf" id="mtS_g4tv04" role="3clFbG">
                            <node concept="1pGfFk" id="mtS_g4tvIV" role="2ShVmc">
                              <ref role="37wK5l" node="7$7_4Ziiya2" resolve="VirtualRepositoryArea.AreaReference" />
                              <node concept="10QFUN" id="mtS_g4tzV8" role="37wK5m">
                                <node concept="2OqwBi" id="mtS_g4tzV9" role="10QFUP">
                                  <node concept="37vLTw" id="mtS_g4tzVa" role="2Oq$k0">
                                    <ref role="3cqZAo" node="mtS_g4thiz" resolve="kryo" />
                                  </node>
                                  <node concept="liA8E" id="mtS_g4tzVb" role="2OqNvi">
                                    <ref role="37wK5l" to="4bvh:~Kryo.readClassAndObject(com.esotericsoftware.kryo.io.Input)" resolve="readClassAndObject" />
                                    <node concept="37vLTw" id="mtS_g4tzVc" role="37wK5m">
                                      <ref role="3cqZAo" node="mtS_g4thi_" resolve="in" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3uibUv" id="mtS_g4t_rC" role="10QFUM">
                                  <ref role="3uigEE" to="qvpu:~IAreaReference" resolve="IAreaReference" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="mtS_g4thiU" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="mtS_g4ttoq" role="2Ghqu4">
                      <ref role="3uigEE" node="7$7_4ZiinS7" resolve="VirtualRepositoryArea.AreaReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Aao9t$bHhV" role="3cqZAp">
          <node concept="2OqwBi" id="2Aao9t$bHhW" role="3clFbG">
            <node concept="37vLTw" id="2Aao9t$bHhX" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="2Aao9t$bHhY" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="2Aao9t$bHhZ" role="37wK5m">
                <ref role="3VsUkX" to="xxte:2Aao9t$9as_" resolve="SModelAsNode.NodeReference" />
              </node>
              <node concept="2ShNRf" id="2Aao9t$bHi0" role="37wK5m">
                <node concept="YeOm9" id="2Aao9t$bHi1" role="2ShVmc">
                  <node concept="1Y3b0j" id="2Aao9t$bHi2" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <node concept="3Tm1VV" id="2Aao9t$bHi3" role="1B3o_S" />
                    <node concept="3clFb_" id="2Aao9t$bHi4" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="2Aao9t$bHi5" role="1B3o_S" />
                      <node concept="3cqZAl" id="2Aao9t$bHi6" role="3clF45" />
                      <node concept="37vLTG" id="2Aao9t$bHi7" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="2Aao9t$bHi8" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2Aao9t$bHi9" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="2Aao9t$bHia" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2Aao9t$bHib" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="2Aao9t$bQZj" role="1tU5fm">
                          <ref role="3uigEE" to="xxte:2Aao9t$9as_" resolve="SModelAsNode.NodeReference" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="2Aao9t$bHid" role="3clF47">
                        <node concept="3clFbF" id="2Aao9t$bSMx" role="3cqZAp">
                          <node concept="2OqwBi" id="2Aao9t$bT9y" role="3clFbG">
                            <node concept="37vLTw" id="2Aao9t$bSMv" role="2Oq$k0">
                              <ref role="3cqZAo" node="2Aao9t$bHi9" resolve="out" />
                            </node>
                            <node concept="liA8E" id="2Aao9t$c0VY" role="2OqNvi">
                              <ref role="37wK5l" to="pxg7:~Output.writeString(java.lang.String)" resolve="writeString" />
                              <node concept="2OqwBi" id="2Aao9t$c9MX" role="37wK5m">
                                <node concept="2YIFZM" id="2Aao9t$c9MY" role="2Oq$k0">
                                  <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                                  <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                                </node>
                                <node concept="liA8E" id="2Aao9t$c9MZ" role="2OqNvi">
                                  <ref role="37wK5l" to="dush:~PersistenceFacade.asString(org.jetbrains.mps.openapi.model.SModelReference)" resolve="asString" />
                                  <node concept="2OqwBi" id="2Aao9t$c9N0" role="37wK5m">
                                    <node concept="37vLTw" id="2Aao9t$c9N1" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2Aao9t$bHib" resolve="obj" />
                                    </node>
                                    <node concept="liA8E" id="2Aao9t$c9N2" role="2OqNvi">
                                      <ref role="37wK5l" to="xxte:2Aao9t$9deE" resolve="getModelRef" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="2Aao9t$bHim" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="2Aao9t$bHin" role="jymVt" />
                    <node concept="3clFb_" id="2Aao9t$bHio" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="2Aao9t$bHip" role="1B3o_S" />
                      <node concept="3uibUv" id="2Aao9t$bRCz" role="3clF45">
                        <ref role="3uigEE" to="xxte:2Aao9t$9as_" resolve="SModelAsNode.NodeReference" />
                      </node>
                      <node concept="37vLTG" id="2Aao9t$bHir" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="2Aao9t$bHis" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2Aao9t$bHit" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="2Aao9t$bHiu" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2Aao9t$bHiv" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="2Aao9t$bHiw" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="2Aao9t$bHix" role="11_B2D">
                            <node concept="3uibUv" id="2Aao9t$bS2j" role="3qUE_r">
                              <ref role="3uigEE" to="xxte:2Aao9t$9as_" resolve="SModelAsNode.NodeReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="2Aao9t$bHiz" role="3clF47">
                        <node concept="3clFbF" id="2Aao9t$cnR8" role="3cqZAp">
                          <node concept="2ShNRf" id="2Aao9t$cnR6" role="3clFbG">
                            <node concept="1pGfFk" id="2Aao9t$cqLL" role="2ShVmc">
                              <ref role="37wK5l" to="xxte:2Aao9t$9czu" resolve="SModelAsNode.NodeReference" />
                              <node concept="2OqwBi" id="2Aao9t$cgZ8" role="37wK5m">
                                <node concept="2YIFZM" id="2Aao9t$cgSH" role="2Oq$k0">
                                  <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                                  <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                                </node>
                                <node concept="liA8E" id="2Aao9t$ch8S" role="2OqNvi">
                                  <ref role="37wK5l" to="dush:~PersistenceFacade.createModelReference(java.lang.String)" resolve="createModelReference" />
                                  <node concept="2OqwBi" id="2Aao9t$chuW" role="37wK5m">
                                    <node concept="37vLTw" id="2Aao9t$chdf" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2Aao9t$bHit" resolve="in" />
                                    </node>
                                    <node concept="liA8E" id="2Aao9t$chON" role="2OqNvi">
                                      <ref role="37wK5l" to="pxg7:~Input.readString()" resolve="readString" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="2Aao9t$bHiH" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="2Aao9t$bQCR" role="2Ghqu4">
                      <ref role="3uigEE" to="xxte:2Aao9t$9as_" resolve="SModelAsNode.NodeReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Aao9t$cr2n" role="3cqZAp">
          <node concept="2OqwBi" id="2Aao9t$cr2o" role="3clFbG">
            <node concept="37vLTw" id="2Aao9t$cr2p" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="2Aao9t$cr2q" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="2Aao9t$cr2r" role="37wK5m">
                <ref role="3VsUkX" to="xxte:2Aao9t$9zBO" resolve="SModuleAsNode.NodeReference" />
              </node>
              <node concept="2ShNRf" id="2Aao9t$cr2s" role="37wK5m">
                <node concept="YeOm9" id="2Aao9t$cr2t" role="2ShVmc">
                  <node concept="1Y3b0j" id="2Aao9t$cr2u" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <node concept="3Tm1VV" id="2Aao9t$cr2v" role="1B3o_S" />
                    <node concept="3clFb_" id="2Aao9t$cr2w" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="2Aao9t$cr2x" role="1B3o_S" />
                      <node concept="3cqZAl" id="2Aao9t$cr2y" role="3clF45" />
                      <node concept="37vLTG" id="2Aao9t$cr2z" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="2Aao9t$cr2$" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2Aao9t$cr2_" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="2Aao9t$cr2A" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2Aao9t$cr2B" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="2Aao9t$c_9Z" role="1tU5fm">
                          <ref role="3uigEE" to="xxte:2Aao9t$9zBO" resolve="SModuleAsNode.NodeReference" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="2Aao9t$cr2D" role="3clF47">
                        <node concept="3clFbF" id="2Aao9t$cr2E" role="3cqZAp">
                          <node concept="2OqwBi" id="2Aao9t$cr2F" role="3clFbG">
                            <node concept="37vLTw" id="2Aao9t$cr2G" role="2Oq$k0">
                              <ref role="3cqZAo" node="2Aao9t$cr2_" resolve="out" />
                            </node>
                            <node concept="liA8E" id="2Aao9t$cr2H" role="2OqNvi">
                              <ref role="37wK5l" to="pxg7:~Output.writeString(java.lang.String)" resolve="writeString" />
                              <node concept="2OqwBi" id="2Aao9t$cr2I" role="37wK5m">
                                <node concept="2YIFZM" id="2Aao9t$cr2J" role="2Oq$k0">
                                  <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                                  <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                                </node>
                                <node concept="liA8E" id="2Aao9t$cr2K" role="2OqNvi">
                                  <ref role="37wK5l" to="dush:~PersistenceFacade.asString(org.jetbrains.mps.openapi.module.SModuleReference)" resolve="asString" />
                                  <node concept="2OqwBi" id="2Aao9t$cr2L" role="37wK5m">
                                    <node concept="37vLTw" id="2Aao9t$cr2M" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2Aao9t$cr2B" resolve="obj" />
                                    </node>
                                    <node concept="liA8E" id="2Aao9t$cApv" role="2OqNvi">
                                      <ref role="37wK5l" to="xxte:2Aao9t$9zC8" resolve="getModuleRef" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="2Aao9t$cr2O" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="2Aao9t$cr2P" role="jymVt" />
                    <node concept="3clFb_" id="2Aao9t$cr2Q" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="2Aao9t$cr2R" role="1B3o_S" />
                      <node concept="3uibUv" id="2Aao9t$c_mB" role="3clF45">
                        <ref role="3uigEE" to="xxte:2Aao9t$9zBO" resolve="SModuleAsNode.NodeReference" />
                      </node>
                      <node concept="37vLTG" id="2Aao9t$cr2T" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="2Aao9t$cr2U" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2Aao9t$cr2V" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="2Aao9t$cr2W" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2Aao9t$cr2X" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="2Aao9t$cr2Y" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="2Aao9t$cr2Z" role="11_B2D">
                            <node concept="3uibUv" id="2Aao9t$c_Oc" role="3qUE_r">
                              <ref role="3uigEE" to="xxte:2Aao9t$9zBO" resolve="SModuleAsNode.NodeReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="2Aao9t$cr31" role="3clF47">
                        <node concept="3clFbF" id="2Aao9t$cAQ0" role="3cqZAp">
                          <node concept="2ShNRf" id="2Aao9t$cAPW" role="3clFbG">
                            <node concept="1pGfFk" id="2Aao9t$cBUg" role="2ShVmc">
                              <ref role="37wK5l" to="xxte:2Aao9t$9zBV" resolve="SModuleAsNode.NodeReference" />
                              <node concept="2OqwBi" id="2Aao9t$cBUO" role="37wK5m">
                                <node concept="2YIFZM" id="2Aao9t$cBUP" role="2Oq$k0">
                                  <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                                  <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                                </node>
                                <node concept="liA8E" id="2Aao9t$cBUQ" role="2OqNvi">
                                  <ref role="37wK5l" to="dush:~PersistenceFacade.createModuleReference(java.lang.String)" resolve="createModuleReference" />
                                  <node concept="2OqwBi" id="2Aao9t$cBUR" role="37wK5m">
                                    <node concept="37vLTw" id="2Aao9t$cBUS" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2Aao9t$cr2V" resolve="in" />
                                    </node>
                                    <node concept="liA8E" id="2Aao9t$cBUT" role="2OqNvi">
                                      <ref role="37wK5l" to="pxg7:~Input.readString()" resolve="readString" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="2Aao9t$cr3b" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="2Aao9t$c$HY" role="2Ghqu4">
                      <ref role="3uigEE" to="xxte:2Aao9t$9zBO" resolve="SModuleAsNode.NodeReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Aao9t$cCwh" role="3cqZAp">
          <node concept="2OqwBi" id="2Aao9t$cCwi" role="3clFbG">
            <node concept="37vLTw" id="2Aao9t$cCwj" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="2Aao9t$cCwk" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="2Aao9t$cCwl" role="37wK5m">
                <ref role="3VsUkX" to="xxte:2Aao9t$9Ial" resolve="SRepositoryAsNode.NodeReference" />
              </node>
              <node concept="2ShNRf" id="2Aao9t$cCwm" role="37wK5m">
                <node concept="YeOm9" id="2Aao9t$cCwn" role="2ShVmc">
                  <node concept="1Y3b0j" id="2Aao9t$cCwo" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <node concept="3Tm1VV" id="2Aao9t$cCwp" role="1B3o_S" />
                    <node concept="3clFb_" id="2Aao9t$cCwq" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="2Aao9t$cCwr" role="1B3o_S" />
                      <node concept="3cqZAl" id="2Aao9t$cCws" role="3clF45" />
                      <node concept="37vLTG" id="2Aao9t$cCwt" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="2Aao9t$cCwu" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2Aao9t$cCwv" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="2Aao9t$cCww" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2Aao9t$cCwx" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="2Aao9t$cMX0" role="1tU5fm">
                          <ref role="3uigEE" to="xxte:2Aao9t$9Ial" resolve="SRepositoryAsNode.NodeReference" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="2Aao9t$cCwz" role="3clF47" />
                      <node concept="2AHcQZ" id="2Aao9t$cCwI" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="2Aao9t$cCwJ" role="jymVt" />
                    <node concept="3clFb_" id="2Aao9t$cCwK" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="2Aao9t$cCwL" role="1B3o_S" />
                      <node concept="3uibUv" id="2Aao9t$cNAA" role="3clF45">
                        <ref role="3uigEE" to="xxte:2Aao9t$9Ial" resolve="SRepositoryAsNode.NodeReference" />
                      </node>
                      <node concept="37vLTG" id="2Aao9t$cCwN" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="2Aao9t$cCwO" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2Aao9t$cCwP" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="2Aao9t$cCwQ" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2Aao9t$cCwR" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="2Aao9t$cCwS" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="2Aao9t$cCwT" role="11_B2D">
                            <node concept="3uibUv" id="2Aao9t$cO2I" role="3qUE_r">
                              <ref role="3uigEE" to="xxte:2Aao9t$9Ial" resolve="SRepositoryAsNode.NodeReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="2Aao9t$cCwV" role="3clF47">
                        <node concept="3clFbF" id="2Aao9t$cP2Q" role="3cqZAp">
                          <node concept="10M0yZ" id="2Aao9t$cPgv" role="3clFbG">
                            <ref role="3cqZAo" to="xxte:2Aao9t$9Xn_" resolve="INSTANCE" />
                            <ref role="1PxDUh" to="xxte:2Aao9t$9Ial" resolve="SRepositoryAsNode.NodeReference" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="2Aao9t$cCx5" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="2Aao9t$cMm6" role="2Ghqu4">
                      <ref role="3uigEE" to="xxte:2Aao9t$9Ial" resolve="SRepositoryAsNode.NodeReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Aao9t$cQ0e" role="3cqZAp">
          <node concept="2OqwBi" id="2Aao9t$cQ0f" role="3clFbG">
            <node concept="37vLTw" id="2Aao9t$cQ0g" role="2Oq$k0">
              <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
            </node>
            <node concept="liA8E" id="2Aao9t$cQ0h" role="2OqNvi">
              <ref role="37wK5l" to="4bvh:~Kryo.register(java.lang.Class,com.esotericsoftware.kryo.Serializer)" resolve="register" />
              <node concept="3VsKOn" id="2Aao9t$cQ0i" role="37wK5m">
                <ref role="3VsUkX" to="xxte:2Aao9t$95$J" resolve="ModelImportAsNode.NodeReference" />
              </node>
              <node concept="2ShNRf" id="2Aao9t$cQ0j" role="37wK5m">
                <node concept="YeOm9" id="2Aao9t$cQ0k" role="2ShVmc">
                  <node concept="1Y3b0j" id="2Aao9t$cQ0l" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="4bvh:~Serializer" resolve="Serializer" />
                    <ref role="37wK5l" to="4bvh:~Serializer.&lt;init&gt;()" resolve="Serializer" />
                    <node concept="3Tm1VV" id="2Aao9t$cQ0m" role="1B3o_S" />
                    <node concept="3clFb_" id="2Aao9t$cQ0n" role="jymVt">
                      <property role="TrG5h" value="write" />
                      <node concept="3Tm1VV" id="2Aao9t$cQ0o" role="1B3o_S" />
                      <node concept="3cqZAl" id="2Aao9t$cQ0p" role="3clF45" />
                      <node concept="37vLTG" id="2Aao9t$cQ0q" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="2Aao9t$cQ0r" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2Aao9t$cQ0s" role="3clF46">
                        <property role="TrG5h" value="out" />
                        <node concept="3uibUv" id="2Aao9t$cQ0t" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2Aao9t$cQ0u" role="3clF46">
                        <property role="TrG5h" value="obj" />
                        <node concept="3uibUv" id="2Aao9t$d0kx" role="1tU5fm">
                          <ref role="3uigEE" to="xxte:2Aao9t$95$J" resolve="ModelImportAsNode.NodeReference" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="2Aao9t$cQ0w" role="3clF47">
                        <node concept="3clFbF" id="2Aao9t$d5V4" role="3cqZAp">
                          <node concept="2OqwBi" id="2Aao9t$d5V5" role="3clFbG">
                            <node concept="37vLTw" id="2Aao9t$d5V6" role="2Oq$k0">
                              <ref role="3cqZAo" node="2Aao9t$cQ0s" resolve="out" />
                            </node>
                            <node concept="liA8E" id="2Aao9t$d5V7" role="2OqNvi">
                              <ref role="37wK5l" to="pxg7:~Output.writeString(java.lang.String)" resolve="writeString" />
                              <node concept="2OqwBi" id="2Aao9t$d5V8" role="37wK5m">
                                <node concept="2YIFZM" id="2Aao9t$d5V9" role="2Oq$k0">
                                  <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                                  <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                                </node>
                                <node concept="liA8E" id="2Aao9t$d5Va" role="2OqNvi">
                                  <ref role="37wK5l" to="dush:~PersistenceFacade.asString(org.jetbrains.mps.openapi.model.SModelReference)" resolve="asString" />
                                  <node concept="2OqwBi" id="2Aao9t$d5Vb" role="37wK5m">
                                    <node concept="37vLTw" id="2Aao9t$d5Vc" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2Aao9t$cQ0u" resolve="obj" />
                                    </node>
                                    <node concept="liA8E" id="2Aao9t$d6U4" role="2OqNvi">
                                      <ref role="37wK5l" to="xxte:2Aao9t$d2s1" resolve="getImportedModelRef" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="2Aao9t$d6WT" role="3cqZAp">
                          <node concept="2OqwBi" id="2Aao9t$d6WU" role="3clFbG">
                            <node concept="37vLTw" id="2Aao9t$d6WV" role="2Oq$k0">
                              <ref role="3cqZAo" node="2Aao9t$cQ0s" resolve="out" />
                            </node>
                            <node concept="liA8E" id="2Aao9t$d6WW" role="2OqNvi">
                              <ref role="37wK5l" to="pxg7:~Output.writeString(java.lang.String)" resolve="writeString" />
                              <node concept="2OqwBi" id="2Aao9t$d6WX" role="37wK5m">
                                <node concept="2YIFZM" id="2Aao9t$d6WY" role="2Oq$k0">
                                  <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                                  <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                                </node>
                                <node concept="liA8E" id="2Aao9t$d6WZ" role="2OqNvi">
                                  <ref role="37wK5l" to="dush:~PersistenceFacade.asString(org.jetbrains.mps.openapi.model.SModelReference)" resolve="asString" />
                                  <node concept="2OqwBi" id="2Aao9t$d6X0" role="37wK5m">
                                    <node concept="37vLTw" id="2Aao9t$d6X1" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2Aao9t$cQ0u" resolve="obj" />
                                    </node>
                                    <node concept="liA8E" id="2Aao9t$d7fD" role="2OqNvi">
                                      <ref role="37wK5l" to="xxte:2Aao9t$d2s9" resolve="getImportingModelRef" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="2Aao9t$cQ0x" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="2Aao9t$cQ0y" role="jymVt" />
                    <node concept="3clFb_" id="2Aao9t$cQ0z" role="jymVt">
                      <property role="TrG5h" value="read" />
                      <node concept="3Tm1VV" id="2Aao9t$cQ0$" role="1B3o_S" />
                      <node concept="3uibUv" id="2Aao9t$d0H9" role="3clF45">
                        <ref role="3uigEE" to="xxte:2Aao9t$95$J" resolve="ModelImportAsNode.NodeReference" />
                      </node>
                      <node concept="37vLTG" id="2Aao9t$cQ0A" role="3clF46">
                        <property role="TrG5h" value="kryo" />
                        <node concept="3uibUv" id="2Aao9t$cQ0B" role="1tU5fm">
                          <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2Aao9t$cQ0C" role="3clF46">
                        <property role="TrG5h" value="in" />
                        <node concept="3uibUv" id="2Aao9t$cQ0D" role="1tU5fm">
                          <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2Aao9t$cQ0E" role="3clF46">
                        <property role="TrG5h" value="type" />
                        <node concept="3uibUv" id="2Aao9t$cQ0F" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                          <node concept="3qUE_q" id="2Aao9t$cQ0G" role="11_B2D">
                            <node concept="3uibUv" id="2Aao9t$d16v" role="3qUE_r">
                              <ref role="3uigEE" to="xxte:2Aao9t$95$J" resolve="ModelImportAsNode.NodeReference" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="2Aao9t$cQ0I" role="3clF47">
                        <node concept="3clFbF" id="2Aao9t$d7kG" role="3cqZAp">
                          <node concept="2ShNRf" id="2Aao9t$d7kC" role="3clFbG">
                            <node concept="1pGfFk" id="2Aao9t$d81P" role="2ShVmc">
                              <ref role="37wK5l" to="xxte:2Aao9t$aIgB" resolve="ModelImportAsNode.NodeReference" />
                              <node concept="2OqwBi" id="2Aao9t$d82w" role="37wK5m">
                                <node concept="2YIFZM" id="2Aao9t$d82x" role="2Oq$k0">
                                  <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                                  <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                                </node>
                                <node concept="liA8E" id="2Aao9t$d82y" role="2OqNvi">
                                  <ref role="37wK5l" to="dush:~PersistenceFacade.createModelReference(java.lang.String)" resolve="createModelReference" />
                                  <node concept="2OqwBi" id="2Aao9t$d82z" role="37wK5m">
                                    <node concept="37vLTw" id="2Aao9t$d82$" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2Aao9t$cQ0C" resolve="in" />
                                    </node>
                                    <node concept="liA8E" id="2Aao9t$d82_" role="2OqNvi">
                                      <ref role="37wK5l" to="pxg7:~Input.readString()" resolve="readString" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="2Aao9t$d8l8" role="37wK5m">
                                <node concept="2YIFZM" id="2Aao9t$d8l9" role="2Oq$k0">
                                  <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                                  <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                                </node>
                                <node concept="liA8E" id="2Aao9t$d8la" role="2OqNvi">
                                  <ref role="37wK5l" to="dush:~PersistenceFacade.createModelReference(java.lang.String)" resolve="createModelReference" />
                                  <node concept="2OqwBi" id="2Aao9t$d8lb" role="37wK5m">
                                    <node concept="37vLTw" id="2Aao9t$d8lc" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2Aao9t$cQ0C" resolve="in" />
                                    </node>
                                    <node concept="liA8E" id="2Aao9t$d8ld" role="2OqNvi">
                                      <ref role="37wK5l" to="pxg7:~Input.readString()" resolve="readString" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="2Aao9t$cQ0L" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="2Aao9t$cZW2" role="2Ghqu4">
                      <ref role="3uigEE" to="xxte:2Aao9t$95$J" resolve="ModelImportAsNode.NodeReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5Zew9mGKF04" role="3cqZAp" />
        <node concept="3cpWs6" id="5Zew9mGKF_X" role="3cqZAp">
          <node concept="37vLTw" id="5Zew9mGKIL0" role="3cqZAk">
            <ref role="3cqZAo" node="5Zew9mGJcW4" resolve="kryo" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5Zew9mGID2E" role="3clF45">
        <ref role="3uigEE" to="4bvh:~Kryo" resolve="Kryo" />
      </node>
      <node concept="3Tm1VV" id="5Zew9mGIqVt" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5Zew9mGKMjz" role="jymVt" />
    <node concept="1Pe0a1" id="5T6M7ON5P2j" role="jymVt">
      <node concept="3clFbS" id="5T6M7ON5P2l" role="1Pe0a2" />
    </node>
    <node concept="2tJIrI" id="5T6M7ONHmB1" role="jymVt" />
    <node concept="2YIFZL" id="5T6M7OO0vKo" role="jymVt">
      <property role="TrG5h" value="serialize" />
      <node concept="3clFbS" id="5T6M7ONh6eY" role="3clF47">
        <node concept="3clFbJ" id="6NixsgDVjpo" role="3cqZAp">
          <node concept="3clFbS" id="6NixsgDVjpq" role="3clFbx">
            <node concept="3cpWs6" id="6NixsgDVk75" role="3cqZAp">
              <node concept="10Nm6u" id="6NixsgDVk7V" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="6NixsgDVjJV" role="3clFbw">
            <node concept="10Nm6u" id="6NixsgDVjWK" role="3uHU7w" />
            <node concept="37vLTw" id="6NixsgDVjvg" role="3uHU7B">
              <ref role="3cqZAo" node="5T6M7ONhbjB" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4lYmjL0zYnl" role="3cqZAp">
          <node concept="3clFbS" id="4lYmjL0zYnn" role="3clFbx">
            <node concept="3clFbF" id="4lYmjL0zZo2" role="3cqZAp">
              <node concept="37vLTI" id="4lYmjL0zZSc" role="3clFbG">
                <node concept="2YIFZM" id="4lYmjL0$0cD" role="37vLTx">
                  <ref role="37wK5l" to="xxte:3ECE8iPOQCm" resolve="unwrap" />
                  <ref role="1Pybhc" to="xxte:kHIbzAYu9G" resolve="ANode" />
                  <node concept="37vLTw" id="4lYmjL0$0dA" role="37wK5m">
                    <ref role="3cqZAo" node="5T6M7ONhbjB" resolve="node" />
                  </node>
                </node>
                <node concept="37vLTw" id="4lYmjL0zZo0" role="37vLTJ">
                  <ref role="3cqZAo" node="5T6M7ONhbjB" resolve="node" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="4lYmjL0zZ3K" role="3clFbw">
            <node concept="3uibUv" id="4lYmjL0zZn9" role="2ZW6by">
              <ref role="3uigEE" to="xxte:kHIbzAYu9G" resolve="ANode" />
            </node>
            <node concept="37vLTw" id="4lYmjL0zY$l" role="2ZW6bz">
              <ref role="3cqZAo" node="5T6M7ONhbjB" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5T6M7ONhfC7" role="3cqZAp">
          <node concept="1rXfSq" id="5T6M7ONhfC6" role="3clFbG">
            <ref role="37wK5l" node="7$7_4Zibt2h" resolve="serialize" />
            <node concept="2OqwBi" id="2WI3xHDptro" role="37wK5m">
              <node concept="2YIFZM" id="2WI3xHDpsfz" role="2Oq$k0">
                <ref role="1Pybhc" to="xxte:5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                <ref role="37wK5l" to="xxte:5gTrVpGyMwR" resolve="wrap" />
                <node concept="37vLTw" id="2WI3xHDpshn" role="37wK5m">
                  <ref role="3cqZAo" node="5T6M7ONhbjB" resolve="node" />
                </node>
              </node>
              <node concept="liA8E" id="2WI3xHDptLZ" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~INode.getReference()" resolve="getReference" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5T6M7ONhbjB" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="5T6M7ONhdav" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="17QB3L" id="5T6M7ONhdM8" role="3clF45" />
      <node concept="3Tm1VV" id="5T6M7ONh6eX" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7$7_4ZibCkk" role="jymVt" />
    <node concept="2YIFZL" id="7$7_4Zibt2h" role="jymVt">
      <property role="TrG5h" value="serialize" />
      <node concept="3clFbS" id="7$7_4Zibt2i" role="3clF47">
        <node concept="3clFbJ" id="6NixsgDVkqJ" role="3cqZAp">
          <node concept="3clFbS" id="6NixsgDVkqK" role="3clFbx">
            <node concept="3cpWs6" id="6NixsgDVkqL" role="3cqZAp">
              <node concept="10Nm6u" id="6NixsgDVkqM" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="6NixsgDVkqN" role="3clFbw">
            <node concept="10Nm6u" id="6NixsgDVkqO" role="3uHU7w" />
            <node concept="37vLTw" id="6NixsgDVkT9" role="3uHU7B">
              <ref role="3cqZAo" node="7$7_4Zibt2W" resolve="ref" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7$7_4Zibt2j" role="3cqZAp">
          <node concept="3uVAMA" id="7$7_4Zibt2k" role="1zxBo5">
            <node concept="XOnhg" id="7$7_4Zibt2l" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="7$7_4Zibt2m" role="1tU5fm">
                <node concept="3uibUv" id="7$7_4Zibt2n" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7$7_4Zibt2o" role="1zc67A">
              <node concept="RRSsy" id="7$7_4Zibt2p" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="3cpWs3" id="7$7_4Zibt2q" role="RRSoy">
                  <node concept="37vLTw" id="7$7_4Zibt2r" role="3uHU7w">
                    <ref role="3cqZAo" node="7$7_4Zibt2W" resolve="ref" />
                  </node>
                  <node concept="Xl_RD" id="7$7_4Zibt2s" role="3uHU7B">
                    <property role="Xl_RC" value="Failed to serialize " />
                  </node>
                </node>
                <node concept="37vLTw" id="7$7_4Zibt2t" role="RRSow">
                  <ref role="3cqZAo" node="7$7_4Zibt2l" resolve="ex" />
                </node>
              </node>
              <node concept="YS8fn" id="7$7_4Zibt2u" role="3cqZAp">
                <node concept="37vLTw" id="7$7_4Zibt2v" role="YScLw">
                  <ref role="3cqZAo" node="7$7_4Zibt2l" resolve="ex" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7$7_4Zibt2w" role="1zxBo7">
            <node concept="3cpWs8" id="7$7_4Zibt2x" role="3cqZAp">
              <node concept="3cpWsn" id="7$7_4Zibt2y" role="3cpWs9">
                <property role="TrG5h" value="output" />
                <node concept="3uibUv" id="7$7_4Zibt2z" role="1tU5fm">
                  <ref role="3uigEE" to="pxg7:~Output" resolve="Output" />
                </node>
                <node concept="2ShNRf" id="7$7_4Zibt2$" role="33vP2m">
                  <node concept="1pGfFk" id="7$7_4Zibt2_" role="2ShVmc">
                    <ref role="37wK5l" to="pxg7:~Output.&lt;init&gt;(int,int)" resolve="Output" />
                    <node concept="3cmrfG" id="7$7_4Zibt2A" role="37wK5m">
                      <property role="3cmrfH" value="1000" />
                    </node>
                    <node concept="3cmrfG" id="7$7_4Zibt2B" role="37wK5m">
                      <property role="3cmrfH" value="-1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7$7_4Zibt2C" role="3cqZAp">
              <node concept="2OqwBi" id="7$7_4Zibt2D" role="3clFbG">
                <node concept="liA8E" id="7$7_4Zibt2E" role="2OqNvi">
                  <ref role="37wK5l" to="4bvh:~Kryo.writeClassAndObject(com.esotericsoftware.kryo.io.Output,java.lang.Object)" resolve="writeClassAndObject" />
                  <node concept="37vLTw" id="7$7_4Zibt2F" role="37wK5m">
                    <ref role="3cqZAo" node="7$7_4Zibt2y" resolve="output" />
                  </node>
                  <node concept="37vLTw" id="7$7_4Zibt2G" role="37wK5m">
                    <ref role="3cqZAo" node="7$7_4Zibt2W" resolve="ref" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7$7_4Zibt2H" role="2Oq$k0">
                  <node concept="37vLTw" id="7$7_4Zibt37" role="2Oq$k0">
                    <ref role="3cqZAo" node="5T6M7ON5QdK" resolve="kryoInstances" />
                  </node>
                  <node concept="liA8E" id="7$7_4Zibt2I" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7$7_4Zibt2J" role="3cqZAp">
              <node concept="2OqwBi" id="7$7_4Zibt2K" role="3clFbG">
                <node concept="37vLTw" id="7$7_4Zibt2L" role="2Oq$k0">
                  <ref role="3cqZAo" node="7$7_4Zibt2y" resolve="output" />
                </node>
                <node concept="liA8E" id="7$7_4Zibt2M" role="2OqNvi">
                  <ref role="37wK5l" to="pxg7:~Output.close()" resolve="close" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2WeQ4WZU5x4" role="3cqZAp">
              <node concept="3cpWsn" id="2WeQ4WZU5x5" role="3cpWs9">
                <property role="TrG5h" value="serialized" />
                <node concept="17QB3L" id="2WeQ4WZU6u8" role="1tU5fm" />
                <node concept="2OqwBi" id="2WeQ4WZU5x6" role="33vP2m">
                  <node concept="2OqwBi" id="2WeQ4WZU5x7" role="2Oq$k0">
                    <node concept="2YIFZM" id="2WeQ4WZU5x8" role="2Oq$k0">
                      <ref role="1Pybhc" to="33ny:~Base64" resolve="Base64" />
                      <ref role="37wK5l" to="33ny:~Base64.getUrlEncoder()" resolve="getUrlEncoder" />
                    </node>
                    <node concept="liA8E" id="2WeQ4WZU5x9" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Base64$Encoder.withoutPadding()" resolve="withoutPadding" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2WeQ4WZU5xa" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Base64$Encoder.encodeToString(byte[])" resolve="encodeToString" />
                    <node concept="2OqwBi" id="2WeQ4WZU5xb" role="37wK5m">
                      <node concept="37vLTw" id="2WeQ4WZU5xc" role="2Oq$k0">
                        <ref role="3cqZAo" node="7$7_4Zibt2y" resolve="output" />
                      </node>
                      <node concept="liA8E" id="2WeQ4WZU5xd" role="2OqNvi">
                        <ref role="37wK5l" to="pxg7:~Output.toBytes()" resolve="toBytes" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7$7_4Zibt2N" role="3cqZAp">
              <node concept="37vLTw" id="2WeQ4WZU5xe" role="3cqZAk">
                <ref role="3cqZAo" node="2WeQ4WZU5x5" resolve="serialized" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7$7_4Zibt2W" role="3clF46">
        <property role="TrG5h" value="ref" />
        <node concept="3uibUv" id="7$7_4ZibAF4" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
        </node>
      </node>
      <node concept="17QB3L" id="7$7_4Zibt2Y" role="3clF45" />
      <node concept="3Tm1VV" id="7$7_4Zibt2Z" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5T6M7ON5$Xi" role="jymVt" />
    <node concept="2YIFZL" id="5T6M7OO0HkH" role="jymVt">
      <property role="TrG5h" value="serialize" />
      <node concept="3clFbS" id="5T6M7ON5_xe" role="3clF47">
        <node concept="3clFbJ" id="6NixsgDVlbQ" role="3cqZAp">
          <node concept="3clFbS" id="6NixsgDVlbR" role="3clFbx">
            <node concept="3cpWs6" id="6NixsgDVlbS" role="3cqZAp">
              <node concept="10Nm6u" id="6NixsgDVlbT" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="6NixsgDVlbU" role="3clFbw">
            <node concept="10Nm6u" id="6NixsgDVlbV" role="3uHU7w" />
            <node concept="37vLTw" id="6NixsgDVlwS" role="3uHU7B">
              <ref role="3cqZAo" node="5T6M7ON5ASd" resolve="ref" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2WI3xHDpyHk" role="3cqZAp">
          <node concept="3clFbS" id="2WI3xHDpyHm" role="3clFbx">
            <node concept="3cpWs6" id="2WI3xHDp_rQ" role="3cqZAp">
              <node concept="1rXfSq" id="2WI3xHDp_t5" role="3cqZAk">
                <ref role="37wK5l" node="7$7_4Zibt2h" resolve="serialize" />
                <node concept="2OqwBi" id="2WI3xHDpC$g" role="37wK5m">
                  <node concept="2OqwBi" id="2WI3xHDpBJG" role="2Oq$k0">
                    <node concept="2OqwBi" id="2WI3xHDpArs" role="2Oq$k0">
                      <node concept="1eOMI4" id="2WI3xHDp_RD" role="2Oq$k0">
                        <node concept="10QFUN" id="2WI3xHDp_RA" role="1eOMHV">
                          <node concept="3uibUv" id="2WI3xHDp_RF" role="10QFUM">
                            <ref role="3uigEE" to="xxte:7c10t$724iy" resolve="NodeToSNodeAdapter.NodeReference" />
                          </node>
                          <node concept="37vLTw" id="2WI3xHDp_RG" role="10QFUP">
                            <ref role="3cqZAo" node="5T6M7ON5ASd" resolve="ref" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="2WI3xHDpAYj" role="2OqNvi">
                        <ref role="37wK5l" to="xxte:NTNBKlsH4$" resolve="getNode" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2WI3xHDpCkD" role="2OqNvi">
                      <ref role="37wK5l" to="xxte:4EhVFrZhzvo" resolve="getWrapped" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2WI3xHDpCVJ" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~INode.getReference()" resolve="getReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="2WI3xHDpz22" role="3clFbw">
            <node concept="3uibUv" id="2WI3xHDpzeU" role="2ZW6by">
              <ref role="3uigEE" to="xxte:7c10t$724iy" resolve="NodeToSNodeAdapter.NodeReference" />
            </node>
            <node concept="37vLTw" id="2WI3xHDpyJ_" role="2ZW6bz">
              <ref role="3cqZAo" node="5T6M7ON5ASd" resolve="ref" />
            </node>
          </node>
          <node concept="9aQIb" id="2WI3xHDpDra" role="9aQIa">
            <node concept="3clFbS" id="2WI3xHDpDrb" role="9aQI4">
              <node concept="3cpWs6" id="2WI3xHDpDE5" role="3cqZAp">
                <node concept="1rXfSq" id="2WI3xHDpDEr" role="3cqZAk">
                  <ref role="37wK5l" node="7$7_4Zibt2h" resolve="serialize" />
                  <node concept="2ShNRf" id="2WI3xHDpDEs" role="37wK5m">
                    <node concept="1pGfFk" id="2WI3xHDpDEt" role="2ShVmc">
                      <ref role="37wK5l" to="xxte:5gTrVpGz3n8" resolve="SNodeReferenceAdapter" />
                      <node concept="37vLTw" id="2WI3xHDpDEu" role="37wK5m">
                        <ref role="3cqZAo" node="5T6M7ON5ASd" resolve="ref" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5T6M7ON5ASd" role="3clF46">
        <property role="TrG5h" value="ref" />
        <node concept="3uibUv" id="5T6M7ONISzo" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="17QB3L" id="5T6M7ON5AFC" role="3clF45" />
      <node concept="3Tm1VV" id="5T6M7ON5_xd" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="mkz0cKhOLJ" role="jymVt" />
    <node concept="2YIFZL" id="mkz0cKhkML" role="jymVt">
      <property role="TrG5h" value="deserialize" />
      <node concept="3clFbS" id="mkz0cKhkMM" role="3clF47">
        <node concept="3clFbJ" id="2WI3xHDogTf" role="3cqZAp">
          <node concept="3clFbS" id="2WI3xHDogTh" role="3clFbx">
            <node concept="3cpWs6" id="2WI3xHDoiwf" role="3cqZAp">
              <node concept="10Nm6u" id="2WI3xHDoiy1" role="3cqZAk" />
            </node>
          </node>
          <node concept="22lmx$" id="4lYmjL0rs80" role="3clFbw">
            <node concept="2OqwBi" id="4lYmjL0ru9t" role="3uHU7w">
              <node concept="Xl_RD" id="4lYmjL0rtqx" role="2Oq$k0">
                <property role="Xl_RC" value="null" />
              </node>
              <node concept="liA8E" id="4lYmjL0ruql" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                <node concept="37vLTw" id="4lYmjL0rut5" role="37wK5m">
                  <ref role="3cqZAo" node="mkz0cKhkNX" resolve="data" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="2WI3xHDohRE" role="3uHU7B">
              <node concept="37vLTw" id="2WI3xHDogVo" role="3uHU7B">
                <ref role="3cqZAo" node="mkz0cKhkNX" resolve="data" />
              </node>
              <node concept="10Nm6u" id="2WI3xHDoidZ" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="mkz0cKhkMN" role="3cqZAp">
          <node concept="3uVAMA" id="mkz0cKhkMO" role="1zxBo5">
            <node concept="XOnhg" id="mkz0cKhkMP" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="mkz0cKhkMQ" role="1tU5fm">
                <node concept="3uibUv" id="mkz0cKhkMR" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="mkz0cKhkMS" role="1zc67A">
              <node concept="RRSsy" id="mkz0cKhkMT" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="3cpWs3" id="mkz0cKhkMU" role="RRSoy">
                  <node concept="37vLTw" id="mkz0cKhkMV" role="3uHU7w">
                    <ref role="3cqZAo" node="mkz0cKhkNX" resolve="data" />
                  </node>
                  <node concept="Xl_RD" id="mkz0cKhkMW" role="3uHU7B">
                    <property role="Xl_RC" value="Failed to deserialize " />
                  </node>
                </node>
                <node concept="37vLTw" id="mkz0cKhkMX" role="RRSow">
                  <ref role="3cqZAo" node="mkz0cKhkMP" resolve="ex" />
                </node>
              </node>
              <node concept="YS8fn" id="mkz0cKhkMY" role="3cqZAp">
                <node concept="2ShNRf" id="2WI3xHDnQMj" role="YScLw">
                  <node concept="1pGfFk" id="2WI3xHDnUxq" role="2ShVmc">
                    <ref role="37wK5l" node="26WjidFWtyG" resolve="ReferenceDeserializationException" />
                    <node concept="37vLTw" id="2WI3xHDnVgs" role="37wK5m">
                      <ref role="3cqZAo" node="mkz0cKhkMP" resolve="ex" />
                    </node>
                    <node concept="37vLTw" id="26WjidFWBQR" role="37wK5m">
                      <ref role="3cqZAo" node="mkz0cKhkNX" resolve="data" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="mkz0cKhkN0" role="1zxBo7">
            <node concept="3clFbJ" id="mkz0cKhkN1" role="3cqZAp">
              <node concept="3clFbS" id="mkz0cKhkN2" role="3clFbx">
                <node concept="3clFbF" id="mkz0cKhkN3" role="3cqZAp">
                  <node concept="37vLTI" id="mkz0cKhkN4" role="3clFbG">
                    <node concept="37vLTw" id="mkz0cKhkN5" role="37vLTJ">
                      <ref role="3cqZAo" node="mkz0cKhkO3" resolve="engine" />
                    </node>
                    <node concept="2YIFZM" id="vlSol$ZCS" role="37vLTx">
                      <ref role="37wK5l" to="nv3w:3fc1D1nivUY" resolve="getInstance" />
                      <ref role="1Pybhc" to="nv3w:5gTrVpGiJ3S" resolve="TransformationEngine" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="mkz0cKhkN9" role="3clFbw">
                <node concept="10Nm6u" id="mkz0cKhkNa" role="3uHU7w" />
                <node concept="37vLTw" id="mkz0cKhkNb" role="3uHU7B">
                  <ref role="3cqZAo" node="mkz0cKhkO3" resolve="engine" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="vlSol$Y$7" role="3cqZAp">
              <node concept="3clFbS" id="vlSol$Y$8" role="3clFbx">
                <node concept="3clFbF" id="vlSol$Y$9" role="3cqZAp">
                  <node concept="37vLTI" id="vlSol$Y$a" role="3clFbG">
                    <node concept="37vLTw" id="vlSol$Y$b" role="37vLTJ">
                      <ref role="3cqZAo" node="mkz0cKhkO3" resolve="engine" />
                    </node>
                    <node concept="2OqwBi" id="vlSol$Y$c" role="37vLTx">
                      <node concept="2YIFZM" id="vlSol$Y$d" role="2Oq$k0">
                        <ref role="1Pybhc" node="7q7cTU0XE$r" resolve="EngineForHttp" />
                        <ref role="37wK5l" node="7q7cTU0XF71" resolve="getInstance" />
                      </node>
                      <node concept="liA8E" id="vlSol$Y$e" role="2OqNvi">
                        <ref role="37wK5l" node="7q7cTU0XXhe" resolve="getEngine" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="vlSol$Y$f" role="3clFbw">
                <node concept="10Nm6u" id="vlSol$Y$g" role="3uHU7w" />
                <node concept="37vLTw" id="vlSol$Y$h" role="3uHU7B">
                  <ref role="3cqZAo" node="mkz0cKhkO3" resolve="engine" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="mkz0cKhkNc" role="3cqZAp">
              <node concept="3clFbS" id="mkz0cKhkNd" role="3clFbx">
                <node concept="3clFbF" id="mkz0cKhkNe" role="3cqZAp">
                  <node concept="37vLTI" id="mkz0cKhkNf" role="3clFbG">
                    <node concept="37vLTw" id="mkz0cKhkNg" role="37vLTJ">
                      <ref role="3cqZAo" node="mkz0cKhkO1" resolve="repository" />
                    </node>
                    <node concept="2YIFZM" id="1P7ru6VlAfw" role="37vLTx">
                      <ref role="37wK5l" to="csg2:7eBq7RkcZ$S" resolve="getSRepository" />
                      <ref role="1Pybhc" to="csg2:6FW8YbU5vOS" resolve="CommandHelper" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="mkz0cKhkNi" role="3clFbw">
                <node concept="10Nm6u" id="mkz0cKhkNj" role="3uHU7w" />
                <node concept="37vLTw" id="mkz0cKhkNk" role="3uHU7B">
                  <ref role="3cqZAo" node="mkz0cKhkO1" resolve="repository" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="mkz0cKhkNl" role="3cqZAp">
              <node concept="2OqwBi" id="mkz0cKhkNm" role="3cqZAk">
                <node concept="37vLTw" id="mkz0cKhkNn" role="2Oq$k0">
                  <ref role="3cqZAo" node="5npwda7vzO1" resolve="ENGINE" />
                </node>
                <node concept="liA8E" id="mkz0cKhkNo" role="2OqNvi">
                  <ref role="37wK5l" to="3d38:32qWz0M44Jm" resolve="computeWith" />
                  <node concept="37vLTw" id="mkz0cKhkNp" role="37wK5m">
                    <ref role="3cqZAo" node="mkz0cKhkO3" resolve="engine" />
                  </node>
                  <node concept="1bVj0M" id="mkz0cKhkNq" role="37wK5m">
                    <property role="3yWfEV" value="true" />
                    <node concept="3clFbS" id="mkz0cKhkNr" role="1bW5cS">
                      <node concept="3cpWs6" id="mkz0cKhkNs" role="3cqZAp">
                        <node concept="2OqwBi" id="mkz0cKhkNt" role="3cqZAk">
                          <node concept="37vLTw" id="mkz0cKhkNu" role="2Oq$k0">
                            <ref role="3cqZAo" node="5npwda7vkut" resolve="REPOSITORY" />
                          </node>
                          <node concept="liA8E" id="mkz0cKhkNv" role="2OqNvi">
                            <ref role="37wK5l" to="3d38:32qWz0M44Jm" resolve="computeWith" />
                            <node concept="37vLTw" id="mkz0cKhkNw" role="37wK5m">
                              <ref role="3cqZAo" node="mkz0cKhkO1" resolve="repository" />
                            </node>
                            <node concept="1bVj0M" id="2WI3xHDy9Ge" role="37wK5m">
                              <node concept="3clFbS" id="2WI3xHDy9Gg" role="1bW5cS">
                                <node concept="3cpWs8" id="2WI3xHDxXvX" role="3cqZAp">
                                  <node concept="3cpWsn" id="2WI3xHDxXvY" role="3cpWs9">
                                    <property role="TrG5h" value="body" />
                                    <node concept="1ajhzC" id="2WI3xHDxXvV" role="1tU5fm">
                                      <node concept="3uibUv" id="2WI3xHDxXvW" role="1ajl9A">
                                        <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
                                      </node>
                                    </node>
                                    <node concept="1bVj0M" id="2WI3xHDxXvZ" role="33vP2m">
                                      <property role="3yWfEV" value="true" />
                                      <node concept="3clFbS" id="2WI3xHDxXw0" role="1bW5cS">
                                        <node concept="3cpWs8" id="2WI3xHDxXw1" role="3cqZAp">
                                          <node concept="3cpWsn" id="2WI3xHDxXw2" role="3cpWs9">
                                            <property role="TrG5h" value="input" />
                                            <node concept="3uibUv" id="2WI3xHDxXw3" role="1tU5fm">
                                              <ref role="3uigEE" to="pxg7:~Input" resolve="Input" />
                                            </node>
                                            <node concept="2ShNRf" id="2WI3xHDxXw4" role="33vP2m">
                                              <node concept="1pGfFk" id="2WI3xHDxXw5" role="2ShVmc">
                                                <ref role="37wK5l" to="pxg7:~Input.&lt;init&gt;(byte[])" resolve="Input" />
                                                <node concept="2OqwBi" id="2WI3xHDxXw6" role="37wK5m">
                                                  <node concept="2YIFZM" id="2WI3xHDxXw7" role="2Oq$k0">
                                                    <ref role="1Pybhc" to="33ny:~Base64" resolve="Base64" />
                                                    <ref role="37wK5l" to="33ny:~Base64.getUrlDecoder()" resolve="getUrlDecoder" />
                                                  </node>
                                                  <node concept="liA8E" id="2WI3xHDxXw8" role="2OqNvi">
                                                    <ref role="37wK5l" to="33ny:~Base64$Decoder.decode(java.lang.String)" resolve="decode" />
                                                    <node concept="37vLTw" id="2WI3xHDxXw9" role="37wK5m">
                                                      <ref role="3cqZAo" node="mkz0cKhkNX" resolve="data" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3cpWs8" id="2WI3xHDxXwa" role="3cqZAp">
                                          <node concept="3cpWsn" id="2WI3xHDxXwb" role="3cpWs9">
                                            <property role="TrG5h" value="ref" />
                                            <node concept="3uibUv" id="2WI3xHDxXwc" role="1tU5fm">
                                              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                                            </node>
                                            <node concept="2OqwBi" id="2WI3xHDxXwd" role="33vP2m">
                                              <node concept="2OqwBi" id="2WI3xHDxXwe" role="2Oq$k0">
                                                <node concept="37vLTw" id="2WI3xHDxXwf" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="5T6M7ON5QdK" resolve="kryoInstances" />
                                                </node>
                                                <node concept="liA8E" id="2WI3xHDxXwg" role="2OqNvi">
                                                  <ref role="37wK5l" to="wyt6:~ThreadLocal.get()" resolve="get" />
                                                </node>
                                              </node>
                                              <node concept="liA8E" id="2WI3xHDxXwh" role="2OqNvi">
                                                <ref role="37wK5l" to="4bvh:~Kryo.readClassAndObject(com.esotericsoftware.kryo.io.Input)" resolve="readClassAndObject" />
                                                <node concept="37vLTw" id="2WI3xHDxXwi" role="37wK5m">
                                                  <ref role="3cqZAo" node="2WI3xHDxXw2" resolve="input" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbJ" id="2WI3xHDxXwj" role="3cqZAp">
                                          <node concept="3clFbS" id="2WI3xHDxXwk" role="3clFbx">
                                            <node concept="3cpWs6" id="2WI3xHDxXwl" role="3cqZAp">
                                              <node concept="2ShNRf" id="2WI3xHDxXwm" role="3cqZAk">
                                                <node concept="1pGfFk" id="2WI3xHDxXwn" role="2ShVmc">
                                                  <ref role="37wK5l" to="xxte:5gTrVpGz3n8" resolve="SNodeReferenceAdapter" />
                                                  <node concept="1eOMI4" id="2WI3xHDxXwo" role="37wK5m">
                                                    <node concept="10QFUN" id="2WI3xHDxXwp" role="1eOMHV">
                                                      <node concept="3uibUv" id="2WI3xHDxXwq" role="10QFUM">
                                                        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                                      </node>
                                                      <node concept="37vLTw" id="2WI3xHDxXwr" role="10QFUP">
                                                        <ref role="3cqZAo" node="2WI3xHDxXwb" resolve="ref" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="2ZW3vV" id="2WI3xHDxXws" role="3clFbw">
                                            <node concept="3uibUv" id="2WI3xHDxXwt" role="2ZW6by">
                                              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                                            </node>
                                            <node concept="37vLTw" id="2WI3xHDxXwu" role="2ZW6bz">
                                              <ref role="3cqZAo" node="2WI3xHDxXwb" resolve="ref" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3cpWs6" id="2WI3xHDxXwv" role="3cqZAp">
                                          <node concept="10QFUN" id="2WI3xHDxXww" role="3cqZAk">
                                            <node concept="37vLTw" id="2WI3xHDxXwx" role="10QFUP">
                                              <ref role="3cqZAo" node="2WI3xHDxXwb" resolve="ref" />
                                            </node>
                                            <node concept="3uibUv" id="2WI3xHDxXwy" role="10QFUM">
                                              <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbJ" id="2WI3xHDyb4K" role="3cqZAp">
                                  <node concept="3clFbS" id="2WI3xHDyb4M" role="3clFbx">
                                    <node concept="3cpWs6" id="2WI3xHDyirp" role="3cqZAp">
                                      <node concept="2OqwBi" id="2WI3xHDyirr" role="3cqZAk">
                                        <node concept="37vLTw" id="2WI3xHDyirs" role="2Oq$k0">
                                          <ref role="3cqZAo" node="2WI3xHDxXvY" resolve="body" />
                                        </node>
                                        <node concept="1Bd96e" id="2WI3xHDyirt" role="2OqNvi" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbC" id="2WI3xHDyc4D" role="3clFbw">
                                    <node concept="10Nm6u" id="2WI3xHDyckz" role="3uHU7w" />
                                    <node concept="37vLTw" id="2WI3xHDyboA" role="3uHU7B">
                                      <ref role="3cqZAo" node="mkz0cKhkNZ" resolve="area" />
                                    </node>
                                  </node>
                                  <node concept="9aQIb" id="2WI3xHDydON" role="9aQIa">
                                    <node concept="3clFbS" id="2WI3xHDydOO" role="9aQI4">
                                      <node concept="3cpWs6" id="2WI3xHDyhMq" role="3cqZAp">
                                        <node concept="2OqwBi" id="2WI3xHDyhMs" role="3cqZAk">
                                          <node concept="37vLTw" id="2WI3xHDyhMt" role="2Oq$k0">
                                            <ref role="3cqZAo" node="2WI3xHDxM8n" resolve="AREA" />
                                          </node>
                                          <node concept="liA8E" id="2WI3xHDyhMu" role="2OqNvi">
                                            <ref role="37wK5l" to="3d38:32qWz0M44Jm" resolve="computeWith" />
                                            <node concept="37vLTw" id="2WI3xHDyhMv" role="37wK5m">
                                              <ref role="3cqZAo" node="mkz0cKhkNZ" resolve="area" />
                                            </node>
                                            <node concept="37vLTw" id="2WI3xHDyhMw" role="37wK5m">
                                              <ref role="3cqZAo" node="2WI3xHDxXvY" resolve="body" />
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
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="mkz0cKhkNX" role="3clF46">
        <property role="TrG5h" value="data" />
        <node concept="17QB3L" id="mkz0cKhkNY" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="mkz0cKhkNZ" role="3clF46">
        <property role="TrG5h" value="area" />
        <node concept="3uibUv" id="mkz0cKhkO0" role="1tU5fm">
          <ref role="3uigEE" to="qvpu:~IArea" resolve="IArea" />
        </node>
        <node concept="2AHcQZ" id="mkz0cKitZx" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="mkz0cKhkO1" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="mkz0cKhkO2" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
        <node concept="2AHcQZ" id="mkz0cKivxM" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="37vLTG" id="mkz0cKhkO3" role="3clF46">
        <property role="TrG5h" value="engine" />
        <node concept="3uibUv" id="mkz0cKhkO4" role="1tU5fm">
          <ref role="3uigEE" to="nv3w:5gTrVpGiJ4w" resolve="ITransformationEngine" />
        </node>
        <node concept="2AHcQZ" id="mkz0cKiwZy" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3uibUv" id="7$7_4Zib5Cp" role="3clF45">
        <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
      </node>
      <node concept="3Tm1VV" id="mkz0cKhkO6" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5T6M7ONZee4" role="jymVt" />
    <node concept="2YIFZL" id="5T6M7OO0Pie" role="jymVt">
      <property role="TrG5h" value="deserialize" />
      <node concept="3clFbS" id="5T6M7ONZ4gB" role="3clF47">
        <node concept="3clFbF" id="mkz0cKhCzP" role="3cqZAp">
          <node concept="1rXfSq" id="mkz0cKhCzO" role="3clFbG">
            <ref role="37wK5l" node="mkz0cKhkML" resolve="deserialize" />
            <node concept="37vLTw" id="mkz0cKhCXN" role="37wK5m">
              <ref role="3cqZAo" node="5T6M7ONZ4h2" resolve="data" />
            </node>
            <node concept="10Nm6u" id="mkz0cKhMWM" role="37wK5m" />
            <node concept="37vLTw" id="mkz0cKhNvj" role="37wK5m">
              <ref role="3cqZAo" node="5npwda7vpnd" resolve="repository" />
            </node>
            <node concept="37vLTw" id="mkz0cKhOpU" role="37wK5m">
              <ref role="3cqZAo" node="5npwda7vz8i" resolve="engine" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5T6M7ONZ4h2" role="3clF46">
        <property role="TrG5h" value="data" />
        <node concept="17QB3L" id="5T6M7ONZ$$u" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5npwda7vpnd" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="5npwda7vpLN" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="5npwda7vz8i" role="3clF46">
        <property role="TrG5h" value="engine" />
        <node concept="3uibUv" id="5npwda7vCgx" role="1tU5fm">
          <ref role="3uigEE" to="nv3w:5gTrVpGiJ4w" resolve="ITransformationEngine" />
        </node>
      </node>
      <node concept="3uibUv" id="7$7_4Zibp6$" role="3clF45">
        <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
      </node>
      <node concept="3Tm1VV" id="5T6M7ONZ4gA" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5npwda7ZQlD" role="jymVt" />
    <node concept="2YIFZL" id="5npwda7ZQ7N" role="jymVt">
      <property role="TrG5h" value="deserialize" />
      <node concept="3clFbS" id="5npwda7ZQ7O" role="3clF47">
        <node concept="3clFbF" id="5npwda7ZQ_$" role="3cqZAp">
          <node concept="1rXfSq" id="5npwda7ZQ_z" role="3clFbG">
            <ref role="37wK5l" node="mkz0cKhkML" resolve="deserialize" />
            <node concept="37vLTw" id="5npwda7ZQ_Z" role="37wK5m">
              <ref role="3cqZAo" node="5npwda7ZQ8n" resolve="data" />
            </node>
            <node concept="10Nm6u" id="mkz0cKhZVT" role="37wK5m" />
            <node concept="37vLTw" id="5npwda7ZT8x" role="37wK5m">
              <ref role="3cqZAo" node="5npwda7ZQ8p" resolve="repository" />
            </node>
            <node concept="10Nm6u" id="mkz0cKhZHw" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5npwda7ZQ8n" role="3clF46">
        <property role="TrG5h" value="data" />
        <node concept="17QB3L" id="5npwda7ZQ8o" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5npwda7ZQ8p" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="5npwda7ZQ8q" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3uibUv" id="7$7_4ZibqxY" role="3clF45">
        <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
      </node>
      <node concept="3Tm1VV" id="5npwda7ZQ8u" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5npwda7ZWkD" role="jymVt" />
    <node concept="2YIFZL" id="5npwda7ZTpm" role="jymVt">
      <property role="TrG5h" value="deserialize" />
      <node concept="3clFbS" id="5npwda7ZTpn" role="3clF47">
        <node concept="3clFbF" id="5npwda7ZTpo" role="3cqZAp">
          <node concept="1rXfSq" id="5npwda7ZTpp" role="3clFbG">
            <ref role="37wK5l" node="mkz0cKhkML" resolve="deserialize" />
            <node concept="37vLTw" id="5npwda7ZTpq" role="37wK5m">
              <ref role="3cqZAo" node="5npwda7ZTpv" resolve="data" />
            </node>
            <node concept="10Nm6u" id="mkz0cKi0oE" role="37wK5m" />
            <node concept="10Nm6u" id="mkz0cKi0WE" role="37wK5m" />
            <node concept="37vLTw" id="5npwda7ZTpr" role="37wK5m">
              <ref role="3cqZAo" node="5npwda7ZTpx" resolve="engine" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5npwda7ZTpv" role="3clF46">
        <property role="TrG5h" value="data" />
        <node concept="17QB3L" id="5npwda7ZTpw" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5npwda7ZTpx" role="3clF46">
        <property role="TrG5h" value="engine" />
        <node concept="3uibUv" id="5npwda7ZWb3" role="1tU5fm">
          <ref role="3uigEE" to="nv3w:5gTrVpGiJ4w" resolve="ITransformationEngine" />
        </node>
      </node>
      <node concept="3uibUv" id="7$7_4Zibs1A" role="3clF45">
        <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
      </node>
      <node concept="3Tm1VV" id="5npwda7ZTp$" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5npwda7ZWMW" role="jymVt" />
    <node concept="2YIFZL" id="5npwda7ZW_A" role="jymVt">
      <property role="TrG5h" value="deserialize" />
      <node concept="3clFbS" id="5npwda7ZW_B" role="3clF47">
        <node concept="3clFbF" id="5npwda7ZW_C" role="3cqZAp">
          <node concept="1rXfSq" id="5npwda7ZW_D" role="3clFbG">
            <ref role="37wK5l" node="mkz0cKhkML" resolve="deserialize" />
            <node concept="37vLTw" id="5npwda7ZW_E" role="37wK5m">
              <ref role="3cqZAo" node="5npwda7ZW_H" resolve="data" />
            </node>
            <node concept="10Nm6u" id="mkz0cKi0ZG" role="37wK5m" />
            <node concept="10Nm6u" id="mkz0cKi1zE" role="37wK5m" />
            <node concept="10Nm6u" id="mkz0cKi1$X" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5npwda7ZW_H" role="3clF46">
        <property role="TrG5h" value="data" />
        <node concept="17QB3L" id="5npwda7ZW_I" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7$7_4Zibsv9" role="3clF45">
        <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
      </node>
      <node concept="3Tm1VV" id="5npwda7ZW_M" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="5T6M7ON4Si8" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3ov7kT3oB09">
    <property role="TrG5h" value="RandomStaticNumber" />
    <node concept="Wx3nA" id="2HzO4VEyW58" role="jymVt">
      <property role="TrG5h" value="RANDOM_STATIC_NUMBER_4DIGIT" />
      <property role="3TUv4t" value="true" />
      <node concept="10Oyi0" id="1me6Uesr9gW" role="1tU5fm" />
      <node concept="3Tm1VV" id="2HzO4VEyTZh" role="1B3o_S" />
      <node concept="3cpWs3" id="1me6Uesr8KL" role="33vP2m">
        <node concept="3cmrfG" id="1me6Uesr8KW" role="3uHU7w">
          <property role="3cmrfH" value="1000" />
        </node>
        <node concept="2OqwBi" id="2HzO4VEyTpq" role="3uHU7B">
          <node concept="2ShNRf" id="2HzO4VEyPwm" role="2Oq$k0">
            <node concept="1pGfFk" id="2HzO4VEySXZ" role="2ShVmc">
              <ref role="37wK5l" to="33ny:~Random.&lt;init&gt;()" resolve="Random" />
            </node>
          </node>
          <node concept="liA8E" id="1me6Uesr7nX" role="2OqNvi">
            <ref role="37wK5l" to="33ny:~Random.nextInt(int)" resolve="nextInt" />
            <node concept="3cmrfG" id="1me6Uesr7T0" role="37wK5m">
              <property role="3cmrfH" value="9000" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="1me6Uesr6VG" role="jymVt">
      <property role="TrG5h" value="RANDOM_STATIC_NUMBER" />
      <property role="3TUv4t" value="true" />
      <node concept="3cpWsb" id="1me6Uesr6VH" role="1tU5fm" />
      <node concept="3Tm1VV" id="1me6Uesr6VI" role="1B3o_S" />
      <node concept="2YIFZM" id="1me6Uesr6VJ" role="33vP2m">
        <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
        <ref role="37wK5l" to="wyt6:~Math.abs(long)" resolve="abs" />
        <node concept="2OqwBi" id="1me6Uesr6VK" role="37wK5m">
          <node concept="2ShNRf" id="1me6Uesr6VL" role="2Oq$k0">
            <node concept="1pGfFk" id="1me6Uesr6VM" role="2ShVmc">
              <ref role="37wK5l" to="33ny:~Random.&lt;init&gt;()" resolve="Random" />
            </node>
          </node>
          <node concept="liA8E" id="1me6Uesr6VN" role="2OqNvi">
            <ref role="37wK5l" to="33ny:~Random.nextLong()" resolve="nextLong" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3ov7kT3oB0a" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7q7cTU0XE$r">
    <property role="TrG5h" value="EngineForHttp" />
    <node concept="2tJIrI" id="7q7cTU0XE_l" role="jymVt" />
    <node concept="Wx3nA" id="7q7cTU0XEJV" role="jymVt">
      <property role="TrG5h" value="instance" />
      <node concept="3uibUv" id="7q7cTU0XEJv" role="1tU5fm">
        <ref role="3uigEE" node="7q7cTU0XE$r" resolve="EngineForHttp" />
      </node>
      <node concept="3Tm6S6" id="7q7cTU0XECN" role="1B3o_S" />
      <node concept="2ShNRf" id="7q7cTU0XEKx" role="33vP2m">
        <node concept="1pGfFk" id="7q7cTU0XFQ8" role="2ShVmc">
          <ref role="37wK5l" node="7q7cTU0XFys" resolve="EngineForHttp" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7q7cTU0XEUc" role="jymVt" />
    <node concept="2YIFZL" id="7q7cTU0XF71" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="3clFbS" id="7q7cTU0XEYi" role="3clF47">
        <node concept="3clFbF" id="7q7cTU0XFer" role="3cqZAp">
          <node concept="37vLTw" id="7q7cTU0XFeq" role="3clFbG">
            <ref role="3cqZAo" node="7q7cTU0XEJV" resolve="instance" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7q7cTU0XF6y" role="3clF45">
        <ref role="3uigEE" node="7q7cTU0XE$r" resolve="EngineForHttp" />
      </node>
      <node concept="3Tm1VV" id="7q7cTU0XEYh" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7q7cTU0XE_q" role="jymVt" />
    <node concept="312cEg" id="6NhA6xmByFv" role="jymVt">
      <property role="TrG5h" value="implementationsProvider" />
      <node concept="3Tm6S6" id="6NhA6xmByFw" role="1B3o_S" />
      <node concept="3uibUv" id="6NhA6xmB$Bo" role="1tU5fm">
        <ref role="3uigEE" to="od2j:3zTK92KPl8A" resolve="ImplementationsFromGlobalRepository" />
      </node>
      <node concept="2ShNRf" id="1z8Uup0sajI" role="33vP2m">
        <node concept="YeOm9" id="1z8Uup0sajJ" role="2ShVmc">
          <node concept="1Y3b0j" id="1z8Uup0sajK" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="od2j:3zTK92KPlai" resolve="ImplementationsFromGlobalRepository" />
            <ref role="1Y3XeK" to="od2j:3zTK92KPl8A" resolve="ImplementationsFromGlobalRepository" />
            <node concept="3Tm1VV" id="1z8Uup0sajL" role="1B3o_S" />
            <node concept="3clFb_" id="1z8Uup0sajM" role="jymVt">
              <property role="TrG5h" value="getModelNames" />
              <node concept="A3Dl8" id="1z8Uup0sajN" role="3clF45">
                <node concept="17QB3L" id="1z8Uup0sajO" role="A3Ik2" />
              </node>
              <node concept="3Tmbuc" id="1z8Uup0sajP" role="1B3o_S" />
              <node concept="3clFbS" id="1z8Uup0sajQ" role="3clF47">
                <node concept="3clFbF" id="1z8Uup0sajR" role="3cqZAp">
                  <node concept="2ShNRf" id="1z8Uup0sajS" role="3clFbG">
                    <node concept="Tc6Ow" id="1z8Uup0sajT" role="2ShVmc">
                      <node concept="17QB3L" id="1z8Uup0sajU" role="HW$YZ" />
                      <node concept="Xl_RD" id="7p9$dhpFVeb" role="HW$Y0">
                        <property role="Xl_RC" value="pf" />
                      </node>
                      <node concept="Xl_RD" id="1z8Uup0sajV" role="HW$Y0">
                        <property role="Xl_RC" value="web" />
                      </node>
                      <node concept="Xl_RD" id="6NhA6xmBxSp" role="HW$Y0">
                        <property role="Xl_RC" value="transformations" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="1z8Uup0sajW" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7q7cTU0XFpG" role="jymVt">
      <property role="TrG5h" value="engine" />
      <node concept="3Tm6S6" id="7q7cTU0XFpH" role="1B3o_S" />
      <node concept="3uibUv" id="2SVwmLqGRNF" role="1tU5fm">
        <ref role="3uigEE" to="nv3w:5gTrVpGiJ3S" resolve="TransformationEngine" />
      </node>
    </node>
    <node concept="312cEg" id="64FHHkQ6rXb" role="jymVt">
      <property role="TrG5h" value="pfcontext" />
      <node concept="3Tm6S6" id="64FHHkQ6rXc" role="1B3o_S" />
      <node concept="3uibUv" id="64FHHkQ6rm4" role="1tU5fm">
        <ref role="3uigEE" to="od2j:3jJoUQ73oP2" resolve="DefaultPFContext" />
      </node>
    </node>
    <node concept="2tJIrI" id="7q7cTU0XFlB" role="jymVt" />
    <node concept="3clFbW" id="7q7cTU0XFys" role="jymVt">
      <node concept="3cqZAl" id="7q7cTU0XFyu" role="3clF45" />
      <node concept="3Tm1VV" id="7q7cTU0XFyv" role="1B3o_S" />
      <node concept="3clFbS" id="7q7cTU0XFyw" role="3clF47">
        <node concept="3clFbF" id="64FHHkQ6rzc" role="3cqZAp">
          <node concept="37vLTI" id="64FHHkQ6rze" role="3clFbG">
            <node concept="2ShNRf" id="64FHHkQ6rvY" role="37vLTx">
              <node concept="1pGfFk" id="64FHHkQ6rvZ" role="2ShVmc">
                <ref role="37wK5l" to="od2j:3jJoUQ73p4e" resolve="DefaultPFContext" />
                <node concept="2ShNRf" id="64FHHkQ6rw0" role="37wK5m">
                  <node concept="2HTt$P" id="64FHHkQ6rw1" role="2ShVmc">
                    <node concept="3uibUv" id="64FHHkQ6rw2" role="2HTBi0">
                      <ref role="3uigEE" to="od2j:3jJoUQ6YpKb" resolve="IImplementationProvider" />
                    </node>
                    <node concept="37vLTw" id="64FHHkQ6rw3" role="2HTEbv">
                      <ref role="3cqZAo" node="6NhA6xmByFv" resolve="implementationsProvider" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="64FHHkQ6rzi" role="37vLTJ">
              <ref role="3cqZAo" node="64FHHkQ6rXb" resolve="pfcontext" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7q7cTU0XG0Y" role="3cqZAp">
          <node concept="37vLTI" id="7q7cTU0XGcM" role="3clFbG">
            <node concept="37vLTw" id="7q7cTU0XG0X" role="37vLTJ">
              <ref role="3cqZAo" node="7q7cTU0XFpG" resolve="engine" />
            </node>
            <node concept="2ShNRf" id="7q7cTU0XGOg" role="37vLTx">
              <node concept="1pGfFk" id="7q7cTU0XGOh" role="2ShVmc">
                <ref role="37wK5l" to="nv3w:5gTrVpGmaY5" resolve="TransformationEngine" />
                <node concept="37vLTw" id="64FHHkQ6rw4" role="37wK5m">
                  <ref role="3cqZAo" node="64FHHkQ6rXb" resolve="pfcontext" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7q7cTU0XFr6" role="jymVt" />
    <node concept="3clFb_" id="7q7cTU0XXhe" role="jymVt">
      <property role="TrG5h" value="getEngine" />
      <node concept="3uibUv" id="7q7cTU0XXPk" role="3clF45">
        <ref role="3uigEE" to="nv3w:5gTrVpGiJ3S" resolve="TransformationEngine" />
      </node>
      <node concept="3Tm1VV" id="7q7cTU0XXhh" role="1B3o_S" />
      <node concept="3clFbS" id="7q7cTU0XXhi" role="3clF47">
        <node concept="3clFbF" id="7q7cTU0XY2r" role="3cqZAp">
          <node concept="37vLTw" id="7q7cTU0XY2q" role="3clFbG">
            <ref role="3cqZAo" node="7q7cTU0XFpG" resolve="engine" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7q7cTU0XX3Q" role="jymVt" />
    <node concept="3clFb_" id="7q7cTU0XFiL" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="7q7cTU0XFiN" role="3clF45" />
      <node concept="3Tm1VV" id="7q7cTU0XFiO" role="1B3o_S" />
      <node concept="3clFbS" id="7q7cTU0XFiP" role="3clF47">
        <node concept="3clFbF" id="7q7cTU0Z0P9" role="3cqZAp">
          <node concept="2OqwBi" id="7q7cTU0Z10H" role="3clFbG">
            <node concept="37vLTw" id="7q7cTU0Z0P7" role="2Oq$k0">
              <ref role="3cqZAo" node="7q7cTU0XFpG" resolve="engine" />
            </node>
            <node concept="liA8E" id="7q7cTU0Z4_C" role="2OqNvi">
              <ref role="37wK5l" to="nv3w:7q7cTU0YTwr" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6NhA6xmB$1a" role="3cqZAp">
          <node concept="2OqwBi" id="6NhA6xmB$aW" role="3clFbG">
            <node concept="37vLTw" id="6NhA6xmB$18" role="2Oq$k0">
              <ref role="3cqZAo" node="6NhA6xmByFv" resolve="implementationsProvider" />
            </node>
            <node concept="liA8E" id="6NhA6xmB_8a" role="2OqNvi">
              <ref role="37wK5l" to="od2j:3zTK92KPneu" resolve="dispose" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="64FHHkQ6sMU" role="jymVt" />
    <node concept="3Tm1VV" id="7q7cTU0XE$s" role="1B3o_S" />
    <node concept="3clFb_" id="64FHHkQ6spt" role="jymVt">
      <property role="TrG5h" value="getPFContext" />
      <node concept="3uibUv" id="64FHHkQ6sZH" role="3clF45">
        <ref role="3uigEE" to="od2j:3jJoUQ71IRE" resolve="IPFContext" />
      </node>
      <node concept="3Tm1VV" id="64FHHkQ6spv" role="1B3o_S" />
      <node concept="3clFbS" id="64FHHkQ6spw" role="3clF47">
        <node concept="3clFbF" id="64FHHkQ6spx" role="3cqZAp">
          <node concept="2OqwBi" id="64FHHkQ6spq" role="3clFbG">
            <node concept="Xjq3P" id="64FHHkQ6spr" role="2Oq$k0" />
            <node concept="2OwXpG" id="64FHHkQ6sps" role="2OqNvi">
              <ref role="2Oxat5" node="64FHHkQ6rXb" resolve="pfcontext" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="TSXTNiNBsb" role="jymVt" />
    <node concept="3clFb_" id="TSXTNiNBSs" role="jymVt">
      <property role="TrG5h" value="getImplementationsProvider" />
      <node concept="3uibUv" id="TSXTNiNBSt" role="3clF45">
        <ref role="3uigEE" to="od2j:3zTK92KPl8A" resolve="ImplementationsFromGlobalRepository" />
      </node>
      <node concept="3Tm1VV" id="TSXTNiNBSu" role="1B3o_S" />
      <node concept="3clFbS" id="TSXTNiNBSv" role="3clF47">
        <node concept="3clFbF" id="TSXTNiNBSw" role="3cqZAp">
          <node concept="2OqwBi" id="TSXTNiNBSp" role="3clFbG">
            <node concept="Xjq3P" id="TSXTNiNBSq" role="2Oq$k0" />
            <node concept="2OwXpG" id="TSXTNiNBSr" role="2OqNvi">
              <ref role="2Oxat5" node="6NhA6xmByFv" resolve="implementationsProvider" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6MQUJsz1f_z">
    <property role="TrG5h" value="HttpUtil" />
    <node concept="Wx3nA" id="6MQUJsz1h6Q" role="jymVt">
      <property role="TrG5h" value="SOURCE_PATH" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="6MQUJsz1h3N" role="1tU5fm">
        <ref role="3uigEE" to="3d38:7vWAzuEE15A" resolve="ContextValue" />
        <node concept="17QB3L" id="6MQUJsz1h9t" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="6MQUJsz1h8l" role="1B3o_S" />
      <node concept="2ShNRf" id="6MQUJsz1hbv" role="33vP2m">
        <node concept="1pGfFk" id="6MQUJsz1hb6" role="2ShVmc">
          <ref role="37wK5l" to="3d38:32qWz0M5VME" resolve="ContextValue" />
          <node concept="17QB3L" id="6MQUJsz1hb7" role="1pMfVU" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6MQUJsz1h2m" role="jymVt" />
    <node concept="2YIFZL" id="6MQUJsz1hcl" role="jymVt">
      <property role="TrG5h" value="generateUrl" />
      <node concept="3clFbS" id="6MQUJsz1gQk" role="3clF47">
        <node concept="3clFbF" id="6MQUJsz1M1O" role="3cqZAp">
          <node concept="1rXfSq" id="6MQUJsz1M1N" role="3clFbG">
            <ref role="37wK5l" node="6MQUJsz1hdE" resolve="generateUrl" />
            <node concept="2OqwBi" id="6MQUJsz1Mp8" role="37wK5m">
              <node concept="37vLTw" id="6MQUJsz1M86" role="2Oq$k0">
                <ref role="3cqZAo" node="6MQUJsz1h6Q" resolve="SOURCE_PATH" />
              </node>
              <node concept="liA8E" id="6MQUJsz1MFy" role="2OqNvi">
                <ref role="37wK5l" to="3d38:7vWAzuEE1gr" resolve="getValue" />
              </node>
            </node>
            <node concept="37vLTw" id="6MQUJsz1MSK" role="37wK5m">
              <ref role="3cqZAo" node="6MQUJsz1gTo" resolve="targetPath" />
            </node>
            <node concept="37vLTw" id="6MQUJsz1NbM" role="37wK5m">
              <ref role="3cqZAo" node="6MQUJsz1hsn" resolve="parameterNames" />
            </node>
            <node concept="37vLTw" id="6MQUJsz1Nru" role="37wK5m">
              <ref role="3cqZAo" node="6MQUJsz1hkd" resolve="parameterValues" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6MQUJsz1gTo" role="3clF46">
        <property role="TrG5h" value="targetPath" />
        <node concept="17QB3L" id="6MQUJsz1gUt" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6MQUJsz1hsn" role="3clF46">
        <property role="TrG5h" value="parameterNames" />
        <node concept="A3Dl8" id="6MQUJsz1hyn" role="1tU5fm">
          <node concept="17QB3L" id="6MQUJsz1Rlo" role="A3Ik2" />
        </node>
      </node>
      <node concept="37vLTG" id="6MQUJsz1hkd" role="3clF46">
        <property role="TrG5h" value="parameterValues" />
        <node concept="A3Dl8" id="6MQUJsz1hEm" role="1tU5fm">
          <node concept="17QB3L" id="6MQUJsz1Rzp" role="A3Ik2" />
        </node>
      </node>
      <node concept="17QB3L" id="6MQUJsz1hgV" role="3clF45" />
      <node concept="3Tm1VV" id="6MQUJsz1gQj" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6MQUJsz1hfu" role="jymVt" />
    <node concept="2YIFZL" id="6MQUJsz1hdE" role="jymVt">
      <property role="TrG5h" value="generateUrl" />
      <node concept="3clFbS" id="6MQUJsz1hdF" role="3clF47">
        <node concept="3cpWs8" id="6MQUJsz1I1i" role="3cqZAp">
          <node concept="3cpWsn" id="6MQUJsz1I1j" role="3cpWs9">
            <property role="TrG5h" value="url" />
            <node concept="17QB3L" id="6MQUJsz1HYv" role="1tU5fm" />
            <node concept="1rXfSq" id="6MQUJsz1I1k" role="33vP2m">
              <ref role="37wK5l" node="6MQUJsz1ile" resolve="relativizeUrl" />
              <node concept="37vLTw" id="6MQUJsz1I1l" role="37wK5m">
                <ref role="3cqZAo" node="6MQUJsz1hdG" resolve="sourcePath" />
              </node>
              <node concept="37vLTw" id="6MQUJsz1I1m" role="37wK5m">
                <ref role="3cqZAo" node="6MQUJsz1hdI" resolve="targetPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6MQUJsz1I9$" role="3cqZAp">
          <node concept="3clFbS" id="6MQUJsz1I9A" role="3clFbx">
            <node concept="3cpWs8" id="6MQUJsz1JOg" role="3cqZAp">
              <node concept="3cpWsn" id="6MQUJsz1JOj" role="3cpWs9">
                <property role="TrG5h" value="first" />
                <node concept="10P_77" id="6MQUJsz1JOe" role="1tU5fm" />
                <node concept="3clFbT" id="6MQUJsz1JRY" role="33vP2m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="1_o_46" id="6MQUJsz1J2Y" role="3cqZAp">
              <node concept="1_o_bx" id="6MQUJsz1J30" role="1_o_by">
                <node concept="1_o_bG" id="6MQUJsz1J32" role="1_o_aQ">
                  <property role="TrG5h" value="name" />
                </node>
                <node concept="37vLTw" id="6MQUJsz1J6D" role="1_o_bz">
                  <ref role="3cqZAo" node="6MQUJsz1Hde" resolve="parameterNames" />
                </node>
              </node>
              <node concept="1_o_bx" id="6MQUJsz1J8X" role="1_o_by">
                <node concept="1_o_bG" id="6MQUJsz1J8Y" role="1_o_aQ">
                  <property role="TrG5h" value="value" />
                </node>
                <node concept="37vLTw" id="6MQUJsz1Jh5" role="1_o_bz">
                  <ref role="3cqZAo" node="6MQUJsz1Hdh" resolve="parameterValues" />
                </node>
              </node>
              <node concept="3clFbS" id="6MQUJsz1J36" role="2LFqv$">
                <node concept="3clFbF" id="6MQUJsz1JmB" role="3cqZAp">
                  <node concept="d57v9" id="6MQUJsz1JtT" role="3clFbG">
                    <node concept="3K4zz7" id="6MQUJsz1KE9" role="37vLTx">
                      <node concept="Xl_RD" id="6MQUJsz1KGc" role="3K4E3e">
                        <property role="Xl_RC" value="?" />
                      </node>
                      <node concept="Xl_RD" id="6MQUJsz1KIb" role="3K4GZi">
                        <property role="Xl_RC" value="&amp;" />
                      </node>
                      <node concept="37vLTw" id="6MQUJsz1Khm" role="3K4Cdx">
                        <ref role="3cqZAo" node="6MQUJsz1JOj" resolve="first" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="6MQUJsz1JmA" role="37vLTJ">
                      <ref role="3cqZAo" node="6MQUJsz1I1j" resolve="url" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6MQUJsz1KUc" role="3cqZAp">
                  <node concept="d57v9" id="6MQUJsz1KXL" role="3clFbG">
                    <node concept="2YIFZM" id="6MQUJsz1R2Q" role="37vLTx">
                      <ref role="37wK5l" to="zf81:~URLEncoder.encode(java.lang.String,java.nio.charset.Charset)" resolve="encode" />
                      <ref role="1Pybhc" to="zf81:~URLEncoder" resolve="URLEncoder" />
                      <node concept="3M$PaV" id="6MQUJsz1R2R" role="37wK5m">
                        <ref role="3M$S_o" node="6MQUJsz1J32" resolve="name" />
                      </node>
                      <node concept="10M0yZ" id="6MQUJsz1R2S" role="37wK5m">
                        <ref role="3cqZAo" to="7x5y:~StandardCharsets.UTF_8" resolve="UTF_8" />
                        <ref role="1PxDUh" to="7x5y:~StandardCharsets" resolve="StandardCharsets" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="6MQUJsz1KUa" role="37vLTJ">
                      <ref role="3cqZAo" node="6MQUJsz1I1j" resolve="url" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6MQUJsz1LaU" role="3cqZAp">
                  <node concept="d57v9" id="6MQUJsz1LiU" role="3clFbG">
                    <node concept="Xl_RD" id="6MQUJsz1Ll_" role="37vLTx">
                      <property role="Xl_RC" value="=" />
                    </node>
                    <node concept="37vLTw" id="6MQUJsz1LaS" role="37vLTJ">
                      <ref role="3cqZAo" node="6MQUJsz1I1j" resolve="url" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6MQUJsz1LsV" role="3cqZAp">
                  <node concept="d57v9" id="6MQUJsz1LwC" role="3clFbG">
                    <node concept="37vLTw" id="6MQUJsz1LsT" role="37vLTJ">
                      <ref role="3cqZAo" node="6MQUJsz1I1j" resolve="url" />
                    </node>
                    <node concept="2YIFZM" id="6MQUJsz1RP$" role="37vLTx">
                      <ref role="1Pybhc" to="zf81:~URLEncoder" resolve="URLEncoder" />
                      <ref role="37wK5l" to="zf81:~URLEncoder.encode(java.lang.String,java.nio.charset.Charset)" resolve="encode" />
                      <node concept="3M$PaV" id="6MQUJsz1RX_" role="37wK5m">
                        <ref role="3M$S_o" node="6MQUJsz1J8Y" resolve="value" />
                      </node>
                      <node concept="10M0yZ" id="6MQUJsz1RPA" role="37wK5m">
                        <ref role="3cqZAo" to="7x5y:~StandardCharsets.UTF_8" resolve="UTF_8" />
                        <ref role="1PxDUh" to="7x5y:~StandardCharsets" resolve="StandardCharsets" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6MQUJsz1JU6" role="3cqZAp">
                  <node concept="37vLTI" id="6MQUJsz1KdS" role="3clFbG">
                    <node concept="3clFbT" id="6MQUJsz1Kfo" role="37vLTx" />
                    <node concept="37vLTw" id="6MQUJsz1JU4" role="37vLTJ">
                      <ref role="3cqZAo" node="6MQUJsz1JOj" resolve="first" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6MQUJsz1IwG" role="3clFbw">
            <node concept="37vLTw" id="6MQUJsz1IfP" role="2Oq$k0">
              <ref role="3cqZAo" node="6MQUJsz1Hde" resolve="parameterNames" />
            </node>
            <node concept="3GX2aA" id="6MQUJsz1IJy" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="6MQUJsz1NP7" role="3cqZAp">
          <node concept="37vLTw" id="6MQUJsz1NRb" role="3cqZAk">
            <ref role="3cqZAo" node="6MQUJsz1I1j" resolve="url" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6MQUJsz1hdG" role="3clF46">
        <property role="TrG5h" value="sourcePath" />
        <node concept="17QB3L" id="6MQUJsz1hdH" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6MQUJsz1hdI" role="3clF46">
        <property role="TrG5h" value="targetPath" />
        <node concept="17QB3L" id="6MQUJsz1hdJ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6MQUJsz1Hde" role="3clF46">
        <property role="TrG5h" value="parameterNames" />
        <node concept="A3Dl8" id="6MQUJsz1Hdf" role="1tU5fm">
          <node concept="17QB3L" id="6MQUJsz1RcX" role="A3Ik2" />
        </node>
      </node>
      <node concept="37vLTG" id="6MQUJsz1Hdh" role="3clF46">
        <property role="TrG5h" value="parameterValues" />
        <node concept="A3Dl8" id="6MQUJsz1Hdi" role="1tU5fm">
          <node concept="17QB3L" id="6MQUJsz1RE2" role="A3Ik2" />
        </node>
      </node>
      <node concept="17QB3L" id="6MQUJsz1Nz_" role="3clF45" />
      <node concept="3Tm1VV" id="6MQUJsz1hdL" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6MQUJsz1hLk" role="jymVt" />
    <node concept="2YIFZL" id="6MQUJsz1ile" role="jymVt">
      <property role="TrG5h" value="relativizeUrl" />
      <node concept="3clFbS" id="6MQUJsz1hOj" role="3clF47">
        <node concept="3clFbJ" id="7Ya3eUXID9Z" role="3cqZAp">
          <node concept="3clFbS" id="7Ya3eUXIDa1" role="3clFbx">
            <node concept="3clFbF" id="7Ya3eUXIFHv" role="3cqZAp">
              <node concept="37vLTI" id="7Ya3eUXIG3F" role="3clFbG">
                <node concept="Xl_RD" id="7Ya3eUXIG59" role="37vLTx">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="37vLTw" id="7Ya3eUXIFHt" role="37vLTJ">
                  <ref role="3cqZAo" node="6MQUJsz1iba" resolve="source" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7Ya3eUXIEpy" role="3clFbw">
            <node concept="10Nm6u" id="7Ya3eUXIFFN" role="3uHU7w" />
            <node concept="37vLTw" id="7Ya3eUXIDcr" role="3uHU7B">
              <ref role="3cqZAo" node="6MQUJsz1iba" resolve="source" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Ya3eUXIG_U" role="3cqZAp">
          <node concept="3clFbS" id="7Ya3eUXIG_W" role="3clFbx">
            <node concept="3clFbF" id="7Ya3eUXIJkT" role="3cqZAp">
              <node concept="37vLTI" id="7Ya3eUXIJF5" role="3clFbG">
                <node concept="Xl_RD" id="7Ya3eUXIJGz" role="37vLTx">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="37vLTw" id="7Ya3eUXIJkR" role="37vLTJ">
                  <ref role="3cqZAo" node="6MQUJsz1igk" resolve="target" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7Ya3eUXIIDb" role="3clFbw">
            <node concept="10Nm6u" id="7Ya3eUXIJjd" role="3uHU7w" />
            <node concept="37vLTw" id="7Ya3eUXIHGa" role="3uHU7B">
              <ref role="3cqZAo" node="6MQUJsz1igk" resolve="target" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6MQUJsz1kQC" role="3cqZAp">
          <node concept="3cpWsn" id="6MQUJsz1kQD" role="3cpWs9">
            <property role="TrG5h" value="sourceParts" />
            <node concept="_YKpA" id="6MQUJsz1kPK" role="1tU5fm">
              <node concept="3uibUv" id="6MQUJsz1kPN" role="_ZDj9">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2OqwBi" id="6MQUJsz1kQE" role="33vP2m">
              <node concept="2OqwBi" id="6MQUJsz1kQF" role="2Oq$k0">
                <node concept="2OqwBi" id="6MQUJsz1kQG" role="2Oq$k0">
                  <node concept="37vLTw" id="6MQUJsz1kQH" role="2Oq$k0">
                    <ref role="3cqZAo" node="6MQUJsz1iba" resolve="source" />
                  </node>
                  <node concept="liA8E" id="6MQUJsz1kQI" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.split(java.lang.String,int)" resolve="split" />
                    <node concept="Xl_RD" id="6MQUJsz1kQJ" role="37wK5m">
                      <property role="Xl_RC" value="/" />
                    </node>
                    <node concept="3cmrfG" id="6MQUJsz1zk8" role="37wK5m">
                      <property role="3cmrfH" value="-1" />
                    </node>
                  </node>
                </node>
                <node concept="39bAoz" id="6MQUJsz1kQK" role="2OqNvi" />
              </node>
              <node concept="ANE8D" id="6MQUJsz1kQL" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6MQUJsz1lyA" role="3cqZAp">
          <node concept="3cpWsn" id="6MQUJsz1lyB" role="3cpWs9">
            <property role="TrG5h" value="targetParts" />
            <node concept="_YKpA" id="6MQUJsz1lyC" role="1tU5fm">
              <node concept="3uibUv" id="6MQUJsz1lyD" role="_ZDj9">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2OqwBi" id="6MQUJsz1lyE" role="33vP2m">
              <node concept="2OqwBi" id="6MQUJsz1lyF" role="2Oq$k0">
                <node concept="2OqwBi" id="6MQUJsz1lyG" role="2Oq$k0">
                  <node concept="37vLTw" id="6MQUJsz1lK9" role="2Oq$k0">
                    <ref role="3cqZAo" node="6MQUJsz1igk" resolve="target" />
                  </node>
                  <node concept="liA8E" id="6MQUJsz1lyI" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.split(java.lang.String,int)" resolve="split" />
                    <node concept="Xl_RD" id="6MQUJsz1lyJ" role="37wK5m">
                      <property role="Xl_RC" value="/" />
                    </node>
                    <node concept="3cmrfG" id="6MQUJsz1$Cx" role="37wK5m">
                      <property role="3cmrfH" value="-1" />
                    </node>
                  </node>
                </node>
                <node concept="39bAoz" id="6MQUJsz1lyK" role="2OqNvi" />
              </node>
              <node concept="ANE8D" id="6MQUJsz1lyL" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Ya3eUXLZG8" role="3cqZAp">
          <node concept="2OqwBi" id="7Ya3eUXM0nV" role="3clFbG">
            <node concept="37vLTw" id="7Ya3eUXLZG6" role="2Oq$k0">
              <ref role="3cqZAo" node="6MQUJsz1kQD" resolve="sourceParts" />
            </node>
            <node concept="2Kt5_m" id="7Ya3eUXM12b" role="2OqNvi" />
          </node>
        </node>
        <node concept="2$JKZl" id="6MQUJsz1lYn" role="3cqZAp">
          <node concept="3clFbS" id="6MQUJsz1lYp" role="2LFqv$">
            <node concept="3clFbF" id="6MQUJsz1t9I" role="3cqZAp">
              <node concept="2OqwBi" id="6MQUJsz1tO4" role="3clFbG">
                <node concept="37vLTw" id="6MQUJsz1t9H" role="2Oq$k0">
                  <ref role="3cqZAo" node="6MQUJsz1kQD" resolve="sourceParts" />
                </node>
                <node concept="2Kt2Hk" id="6MQUJsz1uu0" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbF" id="6MQUJsz1v4s" role="3cqZAp">
              <node concept="2OqwBi" id="6MQUJsz1vIB" role="3clFbG">
                <node concept="37vLTw" id="6MQUJsz1v4q" role="2Oq$k0">
                  <ref role="3cqZAo" node="6MQUJsz1lyB" resolve="targetParts" />
                </node>
                <node concept="2Kt2Hk" id="6MQUJsz1wfX" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="6MQUJsz1pLg" role="2$JKZa">
            <node concept="17R0WA" id="6MQUJsz1rHr" role="3uHU7w">
              <node concept="2OqwBi" id="6MQUJsz1sCu" role="3uHU7w">
                <node concept="37vLTw" id="6MQUJsz1rLn" role="2Oq$k0">
                  <ref role="3cqZAo" node="6MQUJsz1lyB" resolve="targetParts" />
                </node>
                <node concept="1uHKPH" id="6MQUJsz1t5V" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="6MQUJsz1qFi" role="3uHU7B">
                <node concept="37vLTw" id="6MQUJsz1pS7" role="2Oq$k0">
                  <ref role="3cqZAo" node="6MQUJsz1kQD" resolve="sourceParts" />
                </node>
                <node concept="1uHKPH" id="6MQUJsz1rgM" role="2OqNvi" />
              </node>
            </node>
            <node concept="1Wc70l" id="6MQUJsz1nYT" role="3uHU7B">
              <node concept="2OqwBi" id="6MQUJsz1mUg" role="3uHU7B">
                <node concept="37vLTw" id="6MQUJsz1m4_" role="2Oq$k0">
                  <ref role="3cqZAo" node="6MQUJsz1kQD" resolve="sourceParts" />
                </node>
                <node concept="3GX2aA" id="6MQUJsz1nBs" role="2OqNvi" />
              </node>
              <node concept="3eOSWO" id="7Ya3eUXMxyh" role="3uHU7w">
                <node concept="3cmrfG" id="7Ya3eUXMxz$" role="3uHU7w">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="6MQUJsz1oRI" role="3uHU7B">
                  <node concept="37vLTw" id="6MQUJsz1o5b" role="2Oq$k0">
                    <ref role="3cqZAo" node="6MQUJsz1lyB" resolve="targetParts" />
                  </node>
                  <node concept="34oBXx" id="7Ya3eUXMwz6" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Ya3eUXLokj" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="7Ya3eUXLokl" role="3clFbx">
            <node concept="3cpWs6" id="7Ya3eUXLuUF" role="3cqZAp">
              <node concept="3K4zz7" id="7Ya3eUXQnXJ" role="3cqZAk">
                <node concept="Xl_RD" id="7Ya3eUXQpse" role="3K4E3e">
                  <property role="Xl_RC" value="./" />
                </node>
                <node concept="2OqwBi" id="7Ya3eUXQztO" role="3K4GZi">
                  <node concept="37vLTw" id="7Ya3eUXQsvQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="6MQUJsz1lyB" resolve="targetParts" />
                  </node>
                  <node concept="1uHKPH" id="7Ya3eUXQ$Zk" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="7Ya3eUXQhaj" role="3K4Cdx">
                  <node concept="2OqwBi" id="7Ya3eUXLCdL" role="2Oq$k0">
                    <node concept="37vLTw" id="7Ya3eUXLuXy" role="2Oq$k0">
                      <ref role="3cqZAo" node="6MQUJsz1lyB" resolve="targetParts" />
                    </node>
                    <node concept="1uHKPH" id="7Ya3eUXLDpk" role="2OqNvi" />
                  </node>
                  <node concept="17RlXB" id="7Ya3eUXQkJs" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="7Ya3eUXLxax" role="3clFbw">
            <node concept="3clFbC" id="7Ya3eUXLAWe" role="3uHU7w">
              <node concept="3cmrfG" id="7Ya3eUXLAXD" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="7Ya3eUXL$W0" role="3uHU7B">
                <node concept="37vLTw" id="7Ya3eUXLyPk" role="2Oq$k0">
                  <ref role="3cqZAo" node="6MQUJsz1kQD" resolve="sourceParts" />
                </node>
                <node concept="34oBXx" id="7Ya3eUXL_AT" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbC" id="7Ya3eUXLtmT" role="3uHU7B">
              <node concept="2OqwBi" id="7Ya3eUXLqKl" role="3uHU7B">
                <node concept="37vLTw" id="7Ya3eUXLp3b" role="2Oq$k0">
                  <ref role="3cqZAo" node="6MQUJsz1lyB" resolve="targetParts" />
                </node>
                <node concept="34oBXx" id="7Ya3eUXLsrD" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="7Ya3eUXLuRw" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Ya3eUXLEAt" role="3cqZAp">
          <node concept="2OqwBi" id="7Ya3eUXLEAv" role="3cqZAk">
            <node concept="2OqwBi" id="7Ya3eUXLEAw" role="2Oq$k0">
              <node concept="2OqwBi" id="7Ya3eUXLEAx" role="2Oq$k0">
                <node concept="37vLTw" id="7Ya3eUXLEAy" role="2Oq$k0">
                  <ref role="3cqZAo" node="6MQUJsz1kQD" resolve="sourceParts" />
                </node>
                <node concept="3$u5V9" id="7Ya3eUXLEAz" role="2OqNvi">
                  <node concept="1bVj0M" id="7Ya3eUXLEA$" role="23t8la">
                    <node concept="3clFbS" id="7Ya3eUXLEA_" role="1bW5cS">
                      <node concept="3clFbF" id="7Ya3eUXLEAA" role="3cqZAp">
                        <node concept="Xl_RD" id="7Ya3eUXLEAB" role="3clFbG">
                          <property role="Xl_RC" value=".." />
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="7Ya3eUXLEAC" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="7Ya3eUXLEAD" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3QWeyG" id="7Ya3eUXLEAE" role="2OqNvi">
                <node concept="37vLTw" id="7Ya3eUXLEAF" role="576Qk">
                  <ref role="3cqZAo" node="6MQUJsz1lyB" resolve="targetParts" />
                </node>
              </node>
            </node>
            <node concept="3uJxvA" id="7Ya3eUXLEAG" role="2OqNvi">
              <node concept="Xl_RD" id="7Ya3eUXLEAH" role="3uJOhx">
                <property role="Xl_RC" value="/" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6MQUJsz1iba" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="17QB3L" id="6MQUJsz1idn" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6MQUJsz1igk" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="17QB3L" id="6MQUJsz1ihX" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="6MQUJsz1inr" role="3clF45" />
      <node concept="3Tm1VV" id="6MQUJsz1hOi" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7Ya3eUXPFa9" role="jymVt" />
    <node concept="2YIFZL" id="7Ya3eUXPG9v" role="jymVt">
      <property role="TrG5h" value="relativizeUrl" />
      <node concept="3clFbS" id="7Ya3eUXPFo7" role="3clF47">
        <node concept="3clFbF" id="7Ya3eUXPGt$" role="3cqZAp">
          <node concept="1rXfSq" id="7Ya3eUXPGtz" role="3clFbG">
            <ref role="37wK5l" node="6MQUJsz1ile" resolve="relativizeUrl" />
            <node concept="2OqwBi" id="7Ya3eUXPHhQ" role="37wK5m">
              <node concept="37vLTw" id="7Ya3eUXPGYW" role="2Oq$k0">
                <ref role="3cqZAo" node="6MQUJsz1h6Q" resolve="SOURCE_PATH" />
              </node>
              <node concept="liA8E" id="7Ya3eUXPH_O" role="2OqNvi">
                <ref role="37wK5l" to="3d38:7vWAzuEE1gr" resolve="getValue" />
              </node>
            </node>
            <node concept="37vLTw" id="7Ya3eUXPGEr" role="37wK5m">
              <ref role="3cqZAo" node="7Ya3eUXPFI$" resolve="target" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7Ya3eUXPFI$" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="17QB3L" id="7Ya3eUXPFOQ" role="1tU5fm" />
      </node>
      <node concept="17QB3L" id="7Ya3eUXPG1m" role="3clF45" />
      <node concept="3Tm1VV" id="7Ya3eUXPFo6" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="6MQUJsz1f_$" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6gw1ikeUVSA">
    <property role="TrG5h" value="UiStateUtil" />
    <node concept="Wx3nA" id="2UHWH1pOftT" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="UI_STATE_TREE_ID" />
      <node concept="3Tm1VV" id="5WTF2yfDl6i" role="1B3o_S" />
      <node concept="3uibUv" id="2UHWH1pOftP" role="1tU5fm">
        <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
      </node>
      <node concept="2ShNRf" id="2UHWH1pOftQ" role="33vP2m">
        <node concept="1pGfFk" id="2UHWH1pOftR" role="2ShVmc">
          <ref role="37wK5l" to="xkhl:~TreeId.&lt;init&gt;(java.lang.String)" resolve="TreeId" />
          <node concept="Xl_RD" id="2UHWH1pOftS" role="37wK5m">
            <property role="Xl_RC" value="uistate" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2UHWH1pOkxs" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="STATE_ROOT_ROLE" />
      <node concept="3Tm1VV" id="5WTF2yfDmiF" role="1B3o_S" />
      <node concept="17QB3L" id="2UHWH1pOkxq" role="1tU5fm" />
      <node concept="Xl_RD" id="2UHWH1pOkxr" role="33vP2m">
        <property role="Xl_RC" value="state" />
      </node>
    </node>
    <node concept="2tJIrI" id="6gw1ikeUXny" role="jymVt" />
    <node concept="2YIFZL" id="6gw1ikeVGrM" role="jymVt">
      <property role="TrG5h" value="getOrCreateStateRoots" />
      <node concept="3clFbS" id="6gw1ikeUXo6" role="3clF47">
        <node concept="3clFbF" id="6gw1ikeZPWs" role="3cqZAp">
          <node concept="1rXfSq" id="6gw1ikeZPWr" role="3clFbG">
            <ref role="37wK5l" node="6gw1ikeZPf$" resolve="writeOnStateRoots" />
            <node concept="1bVj0M" id="6gw1ikeZQsS" role="37wK5m">
              <node concept="37vLTG" id="6gw1ikeZQup" role="1bW2Oz">
                <property role="TrG5h" value="root" />
                <node concept="3Tqbb2" id="6gw1ikeZQ_1" role="1tU5fm">
                  <ref role="ehGHo" to="fnup:4bjL$lUe34H" resolve="UiStateRoot" />
                </node>
              </node>
              <node concept="3clFbS" id="6gw1ikeZQsT" role="1bW5cS">
                <node concept="3clFbF" id="6gw1ikeZQHC" role="3cqZAp">
                  <node concept="37vLTw" id="6gw1ikeZQHB" role="3clFbG">
                    <ref role="3cqZAo" node="6gw1ikeZQup" resolve="root" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="6gw1ikeUXuL" role="3clF45">
        <node concept="3Tqbb2" id="6gw1ikeUXve" role="A3Ik2">
          <ref role="ehGHo" to="fnup:4bjL$lUe34H" resolve="UiStateRoot" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6gw1ikeUXo5" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6gw1ikeZD0Y" role="jymVt" />
    <node concept="2YIFZL" id="6gw1ikeZPf$" role="jymVt">
      <property role="TrG5h" value="writeOnStateRoots" />
      <node concept="3clFbS" id="6gw1ikeZDCz" role="3clF47">
        <node concept="3cpWs8" id="6ZZ6hxrB1Bn" role="3cqZAp">
          <node concept="3cpWsn" id="6ZZ6hxrB1Bo" role="3cpWs9">
            <property role="TrG5h" value="branches" />
            <node concept="_YKpA" id="6ZZ6hxrB1gV" role="1tU5fm">
              <node concept="3uibUv" id="6ZZ6hxrB1gY" role="_ZDj9">
                <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
              </node>
            </node>
            <node concept="2OqwBi" id="6ZZ6hxrB1Bp" role="33vP2m">
              <node concept="2OqwBi" id="6ZZ6hxrB1Bq" role="2Oq$k0">
                <node concept="2OqwBi" id="6ZZ6hxrB1Br" role="2Oq$k0">
                  <node concept="2OqwBi" id="6ZZ6hxrB1Bs" role="2Oq$k0">
                    <node concept="2YIFZM" id="6ZZ6hxrB1Bt" role="2Oq$k0">
                      <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                      <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                    </node>
                    <node concept="liA8E" id="6ZZ6hxrB1Bu" role="2OqNvi">
                      <ref role="37wK5l" to="csg2:1LVcV5KxBgM" resolve="getRepositories" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="6ZZ6hxrB1Bv" role="2OqNvi">
                    <node concept="1bVj0M" id="6ZZ6hxrB1Bw" role="23t8la">
                      <node concept="3clFbS" id="6ZZ6hxrB1Bx" role="1bW5cS">
                        <node concept="3clFbF" id="6ZZ6hxrB1By" role="3cqZAp">
                          <node concept="2OqwBi" id="6ZZ6hxrB1Bz" role="3clFbG">
                            <node concept="37vLTw" id="6ZZ6hxrB1B$" role="2Oq$k0">
                              <ref role="3cqZAo" node="6ZZ6hxrB1BA" resolve="it" />
                            </node>
                            <node concept="liA8E" id="6ZZ6hxrB1B_" role="2OqNvi">
                              <ref role="37wK5l" to="csg2:1JFLVobhm7T" resolve="isConnected" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="6ZZ6hxrB1BA" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6ZZ6hxrB1BB" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3$u5V9" id="6ZZ6hxrB1BC" role="2OqNvi">
                  <node concept="1bVj0M" id="6ZZ6hxrB1BD" role="23t8la">
                    <node concept="3clFbS" id="6ZZ6hxrB1BE" role="1bW5cS">
                      <node concept="3clFbF" id="6ZZ6hxrB1BF" role="3cqZAp">
                        <node concept="2OqwBi" id="6ZZ6hxrB1BG" role="3clFbG">
                          <node concept="2OqwBi" id="6ZZ6hxrB1BH" role="2Oq$k0">
                            <node concept="37vLTw" id="6ZZ6hxrB1BI" role="2Oq$k0">
                              <ref role="3cqZAo" node="6ZZ6hxrB1BM" resolve="repository" />
                            </node>
                            <node concept="liA8E" id="6ZZ6hxrB1BJ" role="2OqNvi">
                              <ref role="37wK5l" to="csg2:6aRQr1X24wJ" resolve="getActiveBranch" />
                              <node concept="37vLTw" id="6ZZ6hxrB1BK" role="37wK5m">
                                <ref role="3cqZAo" node="2UHWH1pOftT" resolve="UI_STATE_TREE_ID" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="6ZZ6hxrB1BL" role="2OqNvi">
                            <ref role="37wK5l" to="5440:~ActiveBranch.getBranch()" resolve="getBranch" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="6ZZ6hxrB1BM" role="1bW2Oz">
                      <property role="TrG5h" value="repository" />
                      <node concept="2jxLKc" id="6ZZ6hxrB1BN" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="6ZZ6hxrB1BO" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ZZ6hxrB3Id" role="3cqZAp">
          <node concept="37vLTI" id="6ZZ6hxrB50Y" role="3clFbG">
            <node concept="2OqwBi" id="6ZZ6hxrB9ob" role="37vLTx">
              <node concept="2OqwBi" id="6ZZ6hxrB5Bm" role="2Oq$k0">
                <node concept="37vLTw" id="6ZZ6hxrB5tj" role="2Oq$k0">
                  <ref role="3cqZAo" node="6ZZ6hxrB1Bo" resolve="branches" />
                </node>
                <node concept="3QWeyG" id="6ZZ6hxrB6CE" role="2OqNvi">
                  <node concept="2ShNRf" id="6ZZ6hxrB6Jd" role="576Qk">
                    <node concept="2HTt$P" id="6ZZ6hxrB8IZ" role="2ShVmc">
                      <node concept="3uibUv" id="6ZZ6hxrB8Oy" role="2HTBi0">
                        <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
                      </node>
                      <node concept="10M0yZ" id="6ZZ6hxrB98$" role="2HTEbv">
                        <ref role="1PxDUh" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                        <ref role="3cqZAo" to="csg2:1uzsBUr_8Rk" resolve="LOCAL_UI_STATE_BRANCH" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="6ZZ6hxrB9Pq" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="6ZZ6hxrB3Ib" role="37vLTJ">
              <ref role="3cqZAo" node="6ZZ6hxrB1Bo" resolve="branches" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6ZZ6hxrBaLV" role="3cqZAp">
          <node concept="2OqwBi" id="6ZZ6hxrBh5_" role="3clFbG">
            <node concept="2OqwBi" id="6ZZ6hxrBc4K" role="2Oq$k0">
              <node concept="37vLTw" id="6ZZ6hxrBaLT" role="2Oq$k0">
                <ref role="3cqZAo" node="6ZZ6hxrB1Bo" resolve="branches" />
              </node>
              <node concept="3$u5V9" id="6ZZ6hxrBdmN" role="2OqNvi">
                <node concept="1bVj0M" id="6ZZ6hxrBdmP" role="23t8la">
                  <property role="3yWfEV" value="true" />
                  <node concept="3clFbS" id="6ZZ6hxrBdmQ" role="1bW5cS">
                    <node concept="3cpWs6" id="6ZZ6hxrAtBQ" role="3cqZAp">
                      <node concept="2OqwBi" id="6ZZ6hxrAtBR" role="3cqZAk">
                        <node concept="2ShNRf" id="6ZZ6hxrAtBS" role="2Oq$k0">
                          <node concept="1pGfFk" id="6ZZ6hxrAtBT" role="2ShVmc">
                            <ref role="37wK5l" to="qvpu:~PArea.&lt;init&gt;(org.modelix.model.api.IBranch)" resolve="PArea" />
                            <node concept="37vLTw" id="6ZZ6hxrBh8i" role="37wK5m">
                              <ref role="3cqZAo" node="6ZZ6hxrBdmR" resolve="branch" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="6ZZ6hxrAtBV" role="2OqNvi">
                          <ref role="37wK5l" to="qvpu:~PArea.executeWrite(kotlin.jvm.functions.Function0)" resolve="executeWrite" />
                          <node concept="1bVj0M" id="6ZZ6hxrAtBW" role="37wK5m">
                            <node concept="3clFbS" id="6ZZ6hxrAtBX" role="1bW5cS">
                              <node concept="3cpWs6" id="6ZZ6hxrAtBY" role="3cqZAp">
                                <node concept="2OqwBi" id="6ZZ6hxrAtBZ" role="3cqZAk">
                                  <node concept="37vLTw" id="6ZZ6hxrAtC0" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6gw1ikeZG0K" resolve="r" />
                                  </node>
                                  <node concept="1Bd96e" id="6ZZ6hxrAtC1" role="2OqNvi">
                                    <node concept="1rXfSq" id="6ZZ6hxrAtC2" role="1BdPVh">
                                      <ref role="37wK5l" node="1uzsBUr_dm6" resolve="getOrCreateStateRoot" />
                                      <node concept="37vLTw" id="6ZZ6hxrAtC3" role="37wK5m">
                                        <ref role="3cqZAo" node="6ZZ6hxrBdmR" resolve="branch" />
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
                  <node concept="Rh6nW" id="6ZZ6hxrBdmR" role="1bW2Oz">
                    <property role="TrG5h" value="branch" />
                    <node concept="2jxLKc" id="6ZZ6hxrBdmS" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="6ZZ6hxrBihX" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6gw1ikeZG0K" role="3clF46">
        <property role="TrG5h" value="r" />
        <node concept="1ajhzC" id="6gw1ikeZGy5" role="1tU5fm">
          <node concept="3Tqbb2" id="6gw1ikeZG_6" role="1ajw0F">
            <ref role="ehGHo" to="fnup:4bjL$lUe34H" resolve="UiStateRoot" />
          </node>
          <node concept="16syzq" id="6gw1ikeZNcz" role="1ajl9A">
            <ref role="16sUi3" node="6gw1ikeZMiT" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="6gw1ikeZQez" role="3clF45">
        <node concept="16syzq" id="6gw1ikeZQe$" role="A3Ik2">
          <ref role="16sUi3" node="6gw1ikeZMiT" resolve="T" />
        </node>
      </node>
      <node concept="16euLQ" id="6gw1ikeZMiT" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="3Tm1VV" id="6gw1ikeZDCy" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1uzsBUr_aXq" role="jymVt" />
    <node concept="2YIFZL" id="1uzsBUr_dm6" role="jymVt">
      <property role="TrG5h" value="getOrCreateStateRoot" />
      <node concept="3clFbS" id="1uzsBUr_biY" role="3clF47">
        <node concept="3cpWs8" id="1uzsBUr_eHm" role="3cqZAp">
          <node concept="3cpWsn" id="1uzsBUr_eHn" role="3cpWs9">
            <property role="TrG5h" value="t" />
            <node concept="3uibUv" id="1uzsBUr_eHo" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~IWriteTransaction" resolve="IWriteTransaction" />
            </node>
            <node concept="2OqwBi" id="1uzsBUr_eHp" role="33vP2m">
              <node concept="37vLTw" id="1uzsBUr_eHq" role="2Oq$k0">
                <ref role="3cqZAo" node="1uzsBUr_fAB" resolve="branch" />
              </node>
              <node concept="liA8E" id="1uzsBUr_eHr" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~IBranch.getWriteTransaction()" resolve="getWriteTransaction" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1uzsBUr_c$7" role="3cqZAp">
          <node concept="3cpWsn" id="1uzsBUr_c$8" role="3cpWs9">
            <property role="TrG5h" value="children" />
            <node concept="A3Dl8" id="1uzsBUr_c$9" role="1tU5fm">
              <node concept="3uibUv" id="1uzsBUr_c$a" role="A3Ik2">
                <ref role="3uigEE" to="wyt6:~Long" resolve="Long" />
              </node>
            </node>
            <node concept="2OqwBi" id="1uzsBUr_c$b" role="33vP2m">
              <node concept="37vLTw" id="1uzsBUr_c$c" role="2Oq$k0">
                <ref role="3cqZAo" node="1uzsBUr_eHn" resolve="t" />
              </node>
              <node concept="liA8E" id="1uzsBUr_c$d" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~ITransaction.getChildren(long,java.lang.String)" resolve="getChildren" />
                <node concept="10M0yZ" id="1uzsBUr_c$e" role="37wK5m">
                  <ref role="3cqZAo" to="jks5:~ITree.ROOT_ID" resolve="ROOT_ID" />
                  <ref role="1PxDUh" to="jks5:~ITree" resolve="ITree" />
                </node>
                <node concept="37vLTw" id="1uzsBUr_c$p" role="37wK5m">
                  <ref role="3cqZAo" node="2UHWH1pOkxs" resolve="STATE_ROOT_ROLE" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1uzsBUr_c$r" role="3cqZAp">
          <node concept="3cpWsn" id="1uzsBUr_c$s" role="3cpWs9">
            <property role="TrG5h" value="stateRootNodeId" />
            <node concept="3uibUv" id="1uzsBUr_c$t" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Long" resolve="Long" />
            </node>
            <node concept="2OqwBi" id="1uzsBUr_c$u" role="33vP2m">
              <node concept="37vLTw" id="1uzsBUr_c$v" role="2Oq$k0">
                <ref role="3cqZAo" node="1uzsBUr_c$8" resolve="children" />
              </node>
              <node concept="1uHKPH" id="1uzsBUr_c$w" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1uzsBUr_c$x" role="3cqZAp">
          <node concept="3clFbS" id="1uzsBUr_c$y" role="3clFbx">
            <node concept="3clFbF" id="1uzsBUr_c$z" role="3cqZAp">
              <node concept="37vLTI" id="1uzsBUr_c$$" role="3clFbG">
                <node concept="37vLTw" id="1uzsBUr_c$_" role="37vLTJ">
                  <ref role="3cqZAo" node="1uzsBUr_c$s" resolve="stateRootNodeId" />
                </node>
                <node concept="2OqwBi" id="1uzsBUr_c$A" role="37vLTx">
                  <node concept="37vLTw" id="1uzsBUr_c$B" role="2Oq$k0">
                    <ref role="3cqZAo" node="1uzsBUr_eHn" resolve="t" />
                  </node>
                  <node concept="liA8E" id="1uzsBUr_c$C" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~IWriteTransaction.addNewChild(long,java.lang.String,int,org.modelix.model.api.IConcept)" resolve="addNewChild" />
                    <node concept="10M0yZ" id="1uzsBUr_c$D" role="37wK5m">
                      <ref role="3cqZAo" to="jks5:~ITree.ROOT_ID" resolve="ROOT_ID" />
                      <ref role="1PxDUh" to="jks5:~ITree" resolve="ITree" />
                    </node>
                    <node concept="37vLTw" id="1uzsBUr_c$U" role="37wK5m">
                      <ref role="3cqZAo" node="2UHWH1pOkxs" resolve="STATE_ROOT_ROLE" />
                    </node>
                    <node concept="3cmrfG" id="1uzsBUr_c$E" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2YIFZM" id="1uzsBUr_c$F" role="37wK5m">
                      <ref role="1Pybhc" to="xxte:5gTrVpGjuL2" resolve="SConceptAdapter" />
                      <ref role="37wK5l" to="xxte:3ECE8iPOmg5" resolve="wrap" />
                      <node concept="35c_gC" id="1uzsBUr_c$G" role="37wK5m">
                        <ref role="35c_gD" to="fnup:4bjL$lUe34H" resolve="UiStateRoot" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1uzsBUr_c$H" role="3clFbw">
            <node concept="10Nm6u" id="1uzsBUr_c$I" role="3uHU7w" />
            <node concept="37vLTw" id="1uzsBUr_c$J" role="3uHU7B">
              <ref role="3cqZAo" node="1uzsBUr_c$s" resolve="stateRootNodeId" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1uzsBUr_c$W" role="3cqZAp">
          <node concept="3cpWsn" id="1uzsBUr_c$X" role="3cpWs9">
            <property role="TrG5h" value="stateRoot" />
            <node concept="3Tqbb2" id="1uzsBUr_c$Y" role="1tU5fm">
              <ref role="ehGHo" to="fnup:4bjL$lUe34H" resolve="UiStateRoot" />
            </node>
            <node concept="1PxgMI" id="1uzsBUr_c$Z" role="33vP2m">
              <node concept="chp4Y" id="1uzsBUr_c_0" role="3oSUPX">
                <ref role="cht4Q" to="fnup:4bjL$lUe34H" resolve="UiStateRoot" />
              </node>
              <node concept="2YIFZM" id="1uzsBUr_c_1" role="1m5AlR">
                <ref role="37wK5l" to="xxte:75046mm7IDU" resolve="wrap" />
                <ref role="1Pybhc" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                <node concept="1rXfSq" id="1uzsBUr_c_2" role="37wK5m">
                  <ref role="37wK5l" node="4SC_r4Aedkr" resolve="inContextArea" />
                  <node concept="2ShNRf" id="1uzsBUr_c_3" role="37wK5m">
                    <node concept="1pGfFk" id="1uzsBUr_c_4" role="2ShVmc">
                      <ref role="37wK5l" to="jks5:~PNodeAdapter.&lt;init&gt;(long,org.modelix.model.api.IBranch)" resolve="PNodeAdapter" />
                      <node concept="37vLTw" id="1uzsBUr_c_5" role="37wK5m">
                        <ref role="3cqZAo" node="1uzsBUr_c$s" resolve="stateRootNodeId" />
                      </node>
                      <node concept="37vLTw" id="1uzsBUr_c_6" role="37wK5m">
                        <ref role="3cqZAo" node="1uzsBUr_fAB" resolve="branch" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="1P7ru6Vmw5E" role="37wK5m">
                  <ref role="37wK5l" to="csg2:7eBq7RkcZ$S" resolve="getSRepository" />
                  <ref role="1Pybhc" to="csg2:6FW8YbU5vOS" resolve="CommandHelper" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1uzsBUr_c_8" role="3cqZAp">
          <node concept="37vLTw" id="1uzsBUr_gFB" role="3cqZAk">
            <ref role="3cqZAo" node="1uzsBUr_c$X" resolve="stateRoot" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="1uzsBUr_chn" role="3clF45">
        <ref role="ehGHo" to="fnup:4bjL$lUe34H" resolve="UiStateRoot" />
      </node>
      <node concept="3Tm1VV" id="1uzsBUr_biX" role="1B3o_S" />
      <node concept="37vLTG" id="1uzsBUr_fAB" role="3clF46">
        <property role="TrG5h" value="branch" />
        <node concept="3uibUv" id="1uzsBUr_fAA" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6gw1ikf0wHk" role="jymVt" />
    <node concept="2YIFZL" id="6gw1ikf12gp" role="jymVt">
      <property role="TrG5h" value="readOnStateRoots" />
      <node concept="3clFbS" id="6gw1ikf0xIc" role="3clF47">
        <node concept="3clFbJ" id="1_3xoKEzfRN" role="3cqZAp">
          <node concept="3clFbS" id="1_3xoKEzfRP" role="3clFbx">
            <node concept="3cpWs6" id="1_3xoKEzggl" role="3cqZAp" />
          </node>
          <node concept="3fqX7Q" id="1_3xoKEzgbe" role="3clFbw">
            <node concept="1rXfSq" id="1_3xoKEzgLP" role="3fr31v">
              <ref role="37wK5l" node="1_3xoKEz6bS" resolve="runReadOnStateRoot" />
              <node concept="10M0yZ" id="1_3xoKEzgLQ" role="37wK5m">
                <ref role="1PxDUh" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                <ref role="3cqZAo" to="csg2:1uzsBUr_8Rk" resolve="LOCAL_UI_STATE_BRANCH" />
              </node>
              <node concept="37vLTw" id="1_3xoKEzgLR" role="37wK5m">
                <ref role="3cqZAo" node="6gw1ikf0G6c" resolve="r" />
              </node>
              <node concept="3clFbT" id="1_3xoKEzgLS" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1_3xoKEyXB0" role="3cqZAp" />
        <node concept="2Gpval" id="6gw1ikf0HMq" role="3cqZAp">
          <node concept="2GrKxI" id="6gw1ikf0HMs" role="2Gsz3X">
            <property role="TrG5h" value="repository" />
          </node>
          <node concept="3clFbS" id="6gw1ikf0HMw" role="2LFqv$">
            <node concept="3cpWs8" id="6gw1ikf0$jj" role="3cqZAp">
              <node concept="3cpWsn" id="6gw1ikf0$jk" role="3cpWs9">
                <property role="TrG5h" value="branch" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="6gw1ikf0$jl" role="1tU5fm">
                  <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
                </node>
                <node concept="2OqwBi" id="6gw1ikf0$jm" role="33vP2m">
                  <node concept="2OqwBi" id="6gw1ikf0$jn" role="2Oq$k0">
                    <node concept="2GrUjf" id="6gw1ikf0Rlc" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="6gw1ikf0HMs" resolve="repository" />
                    </node>
                    <node concept="liA8E" id="6gw1ikf0$jp" role="2OqNvi">
                      <ref role="37wK5l" to="csg2:6aRQr1X24wJ" resolve="getActiveBranch" />
                      <node concept="37vLTw" id="6gw1ikf0$ks" role="37wK5m">
                        <ref role="3cqZAo" node="2UHWH1pOftT" resolve="UI_STATE_TREE_ID" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="34mNh_cLAem" role="2OqNvi">
                    <ref role="37wK5l" to="5440:~ActiveBranch.getBranch()" resolve="getBranch" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6gw1ikf0W4a" role="3cqZAp">
              <node concept="3clFbS" id="6gw1ikf0W4c" role="3clFbx">
                <node concept="3zACq4" id="6gw1ikf0WPJ" role="3cqZAp" />
              </node>
              <node concept="3fqX7Q" id="6gw1ikf0WMT" role="3clFbw">
                <node concept="1rXfSq" id="1_3xoKEzh5r" role="3fr31v">
                  <ref role="37wK5l" node="1_3xoKEz6bS" resolve="runReadOnStateRoot" />
                  <node concept="37vLTw" id="1_3xoKEzh5s" role="37wK5m">
                    <ref role="3cqZAo" node="6gw1ikf0$jk" resolve="branch" />
                  </node>
                  <node concept="37vLTw" id="1_3xoKEzh5t" role="37wK5m">
                    <ref role="3cqZAo" node="6gw1ikf0G6c" resolve="r" />
                  </node>
                  <node concept="3clFbT" id="1_3xoKEzh5u" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6gw1ikf0ITQ" role="2GsD0m">
            <node concept="2OqwBi" id="6gw1ikf0ITR" role="2Oq$k0">
              <node concept="2YIFZM" id="6gw1ikf0ITS" role="2Oq$k0">
                <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
              </node>
              <node concept="liA8E" id="6gw1ikf0ITT" role="2OqNvi">
                <ref role="37wK5l" to="csg2:1LVcV5KxBgM" resolve="getRepositories" />
              </node>
            </node>
            <node concept="3zZkjj" id="6gw1ikf0ITU" role="2OqNvi">
              <node concept="1bVj0M" id="6gw1ikf0ITV" role="23t8la">
                <node concept="3clFbS" id="6gw1ikf0ITW" role="1bW5cS">
                  <node concept="3clFbF" id="6gw1ikf0ITX" role="3cqZAp">
                    <node concept="2OqwBi" id="6gw1ikf0ITY" role="3clFbG">
                      <node concept="37vLTw" id="6gw1ikf0ITZ" role="2Oq$k0">
                        <ref role="3cqZAo" node="6gw1ikf0IU1" resolve="it" />
                      </node>
                      <node concept="liA8E" id="6gw1ikf0IU0" role="2OqNvi">
                        <ref role="37wK5l" to="csg2:1JFLVobhm7T" resolve="isConnected" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6gw1ikf0IU1" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6gw1ikf0IU2" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6gw1ikf0G6c" role="3clF46">
        <property role="TrG5h" value="r" />
        <node concept="1ajhzC" id="6gw1ikf0G6d" role="1tU5fm">
          <node concept="3Tqbb2" id="6gw1ikf0G6e" role="1ajw0F">
            <ref role="ehGHo" to="fnup:4bjL$lUe34H" resolve="UiStateRoot" />
          </node>
          <node concept="10P_77" id="6gw1ikf0HuD" role="1ajl9A" />
        </node>
      </node>
      <node concept="3cqZAl" id="6gw1ikf0GK2" role="3clF45" />
      <node concept="3Tm1VV" id="6gw1ikf0xIb" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1_3xoKEz3KU" role="jymVt" />
    <node concept="2YIFZL" id="1_3xoKEz6bS" role="jymVt">
      <property role="TrG5h" value="runReadOnStateRoot" />
      <node concept="3clFbS" id="1_3xoKEz45B" role="3clF47">
        <node concept="3clFbF" id="1_3xoKEzbi$" role="3cqZAp">
          <node concept="2OqwBi" id="1_3xoKEz9Ah" role="3clFbG">
            <node concept="liA8E" id="1_3xoKEz9Ai" role="2OqNvi">
              <ref role="37wK5l" to="qvpu:~PArea.executeRead(kotlin.jvm.functions.Function0)" resolve="executeRead" />
              <node concept="1bVj0M" id="1_3xoKEz9Aj" role="37wK5m">
                <node concept="3clFbS" id="1_3xoKEz9Ak" role="1bW5cS">
                  <node concept="3cpWs8" id="1_3xoKEz9Al" role="3cqZAp">
                    <node concept="3cpWsn" id="1_3xoKEz9Am" role="3cpWs9">
                      <property role="TrG5h" value="t" />
                      <node concept="3uibUv" id="1_3xoKEz9An" role="1tU5fm">
                        <ref role="3uigEE" to="jks5:~ITransaction" resolve="ITransaction" />
                      </node>
                      <node concept="2OqwBi" id="1_3xoKEz9Ao" role="33vP2m">
                        <node concept="37vLTw" id="1_3xoKEz9Ap" role="2Oq$k0">
                          <ref role="3cqZAo" node="1_3xoKEz4VZ" resolve="branch" />
                        </node>
                        <node concept="liA8E" id="1_3xoKEz9Aq" role="2OqNvi">
                          <ref role="37wK5l" to="jks5:~IBranch.getTransaction()" resolve="getTransaction" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1_3xoKEz9Ar" role="3cqZAp">
                    <node concept="3cpWsn" id="1_3xoKEz9As" role="3cpWs9">
                      <property role="TrG5h" value="children" />
                      <node concept="A3Dl8" id="1_3xoKEz9At" role="1tU5fm">
                        <node concept="3uibUv" id="1_3xoKEz9Au" role="A3Ik2">
                          <ref role="3uigEE" to="wyt6:~Long" resolve="Long" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1_3xoKEz9Av" role="33vP2m">
                        <node concept="37vLTw" id="1_3xoKEz9Aw" role="2Oq$k0">
                          <ref role="3cqZAo" node="1_3xoKEz9Am" resolve="t" />
                        </node>
                        <node concept="liA8E" id="1_3xoKEz9Ax" role="2OqNvi">
                          <ref role="37wK5l" to="jks5:~ITransaction.getChildren(long,java.lang.String)" resolve="getChildren" />
                          <node concept="10M0yZ" id="1_3xoKEz9Ay" role="37wK5m">
                            <ref role="3cqZAo" to="jks5:~ITree.ROOT_ID" resolve="ROOT_ID" />
                            <ref role="1PxDUh" to="jks5:~ITree" resolve="ITree" />
                          </node>
                          <node concept="37vLTw" id="1_3xoKEzbiK" role="37wK5m">
                            <ref role="3cqZAo" node="2UHWH1pOkxs" resolve="STATE_ROOT_ROLE" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1_3xoKEz9A$" role="3cqZAp">
                    <node concept="3cpWsn" id="1_3xoKEz9A_" role="3cpWs9">
                      <property role="TrG5h" value="stateRootNodeId" />
                      <node concept="3uibUv" id="1_3xoKEz9AA" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~Long" resolve="Long" />
                      </node>
                      <node concept="2OqwBi" id="1_3xoKEz9AB" role="33vP2m">
                        <node concept="37vLTw" id="1_3xoKEz9AC" role="2Oq$k0">
                          <ref role="3cqZAo" node="1_3xoKEz9As" resolve="children" />
                        </node>
                        <node concept="1uHKPH" id="1_3xoKEz9AD" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="1_3xoKEz9AE" role="3cqZAp">
                    <node concept="3clFbS" id="1_3xoKEz9AF" role="3clFbx">
                      <node concept="3cpWs6" id="1_3xoKEz9AG" role="3cqZAp">
                        <node concept="37vLTw" id="1_3xoKEzcPQ" role="3cqZAk">
                          <ref role="3cqZAo" node="1_3xoKEzcpp" resolve="defaultReturnValue" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="1_3xoKEz9AI" role="3clFbw">
                      <node concept="10Nm6u" id="1_3xoKEz9AJ" role="3uHU7w" />
                      <node concept="37vLTw" id="1_3xoKEz9AK" role="3uHU7B">
                        <ref role="3cqZAo" node="1_3xoKEz9A_" resolve="stateRootNodeId" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1_3xoKEz9AL" role="3cqZAp">
                    <node concept="3cpWsn" id="1_3xoKEz9AM" role="3cpWs9">
                      <property role="TrG5h" value="stateRoot" />
                      <node concept="3Tqbb2" id="1_3xoKEz9AN" role="1tU5fm">
                        <ref role="ehGHo" to="fnup:4bjL$lUe34H" resolve="UiStateRoot" />
                      </node>
                      <node concept="1PxgMI" id="1_3xoKEz9AO" role="33vP2m">
                        <node concept="chp4Y" id="1_3xoKEz9AP" role="3oSUPX">
                          <ref role="cht4Q" to="fnup:4bjL$lUe34H" resolve="UiStateRoot" />
                        </node>
                        <node concept="2YIFZM" id="1_3xoKEz9AQ" role="1m5AlR">
                          <ref role="37wK5l" to="xxte:75046mm7IDU" resolve="wrap" />
                          <ref role="1Pybhc" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                          <node concept="1rXfSq" id="1_3xoKEz9AR" role="37wK5m">
                            <ref role="37wK5l" node="4SC_r4Aedkr" resolve="inContextArea" />
                            <node concept="2ShNRf" id="1_3xoKEz9AS" role="37wK5m">
                              <node concept="1pGfFk" id="1_3xoKEz9AT" role="2ShVmc">
                                <ref role="37wK5l" to="jks5:~PNodeAdapter.&lt;init&gt;(long,org.modelix.model.api.IBranch)" resolve="PNodeAdapter" />
                                <node concept="37vLTw" id="1_3xoKEz9AU" role="37wK5m">
                                  <ref role="3cqZAo" node="1_3xoKEz9A_" resolve="stateRootNodeId" />
                                </node>
                                <node concept="37vLTw" id="1_3xoKEz9AV" role="37wK5m">
                                  <ref role="3cqZAo" node="1_3xoKEz4VZ" resolve="branch" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2YIFZM" id="1P7ru6Vmw95" role="37wK5m">
                            <ref role="37wK5l" to="csg2:7eBq7RkcZ$S" resolve="getSRepository" />
                            <ref role="1Pybhc" to="csg2:6FW8YbU5vOS" resolve="CommandHelper" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="1_3xoKEz9B4" role="3cqZAp">
                    <node concept="2OqwBi" id="1_3xoKEz9B0" role="3cqZAk">
                      <node concept="37vLTw" id="1_3xoKEz9B1" role="2Oq$k0">
                        <ref role="3cqZAo" node="1_3xoKEz5an" resolve="r" />
                      </node>
                      <node concept="1Bd96e" id="1_3xoKEz9B2" role="2OqNvi">
                        <node concept="37vLTw" id="1_3xoKEz9B3" role="1BdPVh">
                          <ref role="3cqZAo" node="1_3xoKEz9AM" resolve="stateRoot" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="1_3xoKEz9B6" role="2Oq$k0">
              <node concept="1pGfFk" id="1_3xoKEz9B7" role="2ShVmc">
                <ref role="37wK5l" to="qvpu:~PArea.&lt;init&gt;(org.modelix.model.api.IBranch)" resolve="PArea" />
                <node concept="37vLTw" id="1_3xoKEz9B8" role="37wK5m">
                  <ref role="3cqZAo" node="1_3xoKEz4VZ" resolve="branch" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1_3xoKEz4VZ" role="3clF46">
        <property role="TrG5h" value="branch" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="1_3xoKEz54n" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
        </node>
      </node>
      <node concept="37vLTG" id="1_3xoKEz5an" role="3clF46">
        <property role="TrG5h" value="r" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="1_3xoKEz5ao" role="1tU5fm">
          <node concept="3Tqbb2" id="1_3xoKEz5ap" role="1ajw0F">
            <ref role="ehGHo" to="fnup:4bjL$lUe34H" resolve="UiStateRoot" />
          </node>
          <node concept="16syzq" id="1_3xoKEz5G2" role="1ajl9A">
            <ref role="16sUi3" node="1_3xoKEz5rh" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1_3xoKEzcpp" role="3clF46">
        <property role="TrG5h" value="defaultReturnValue" />
        <node concept="16syzq" id="1_3xoKEzc$N" role="1tU5fm">
          <ref role="16sUi3" node="1_3xoKEz5rh" resolve="T" />
        </node>
      </node>
      <node concept="16syzq" id="1_3xoKEz5zH" role="3clF45">
        <ref role="16sUi3" node="1_3xoKEz5rh" resolve="T" />
      </node>
      <node concept="16euLQ" id="1_3xoKEz5rh" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="3Tm1VV" id="1_3xoKEz45A" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4SC_r4AecJs" role="jymVt" />
    <node concept="2YIFZL" id="4SC_r4Aedkr" role="jymVt">
      <property role="TrG5h" value="inContextArea" />
      <node concept="37vLTG" id="4SC_r4AedAG" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="4SC_r4AedFl" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
      </node>
      <node concept="3clFbS" id="4SC_r4Aed02" role="3clF47">
        <node concept="3cpWs8" id="4SC_r4Aee0E" role="3cqZAp">
          <node concept="3cpWsn" id="4SC_r4Aee0F" role="3cpWs9">
            <property role="TrG5h" value="contextArea" />
            <node concept="3uibUv" id="4SC_r4Aee0j" role="1tU5fm">
              <ref role="3uigEE" to="qvpu:~IArea" resolve="IArea" />
            </node>
            <node concept="2OqwBi" id="4SC_r4Aee0G" role="33vP2m">
              <node concept="10M0yZ" id="4SC_r4Aee0H" role="2Oq$k0">
                <ref role="3cqZAo" to="qvpu:~ContextArea.INSTANCE" resolve="INSTANCE" />
                <ref role="1PxDUh" to="qvpu:~ContextArea" resolve="ContextArea" />
              </node>
              <node concept="liA8E" id="4SC_r4Aee0I" role="2OqNvi">
                <ref role="37wK5l" to="qvpu:~ContextArea.getArea()" resolve="getArea" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6c6cqXTb7Gb" role="3cqZAp">
          <node concept="3clFbS" id="6c6cqXTb7Gd" role="3clFbx">
            <node concept="3cpWs6" id="6c6cqXTb9c3" role="3cqZAp">
              <node concept="37vLTw" id="6c6cqXTb9FD" role="3cqZAk">
                <ref role="3cqZAo" node="4SC_r4AedAG" resolve="node" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6c6cqXTb8CC" role="3clFbw">
            <node concept="10Nm6u" id="6c6cqXTb9aH" role="3uHU7w" />
            <node concept="37vLTw" id="6c6cqXTb8bz" role="3uHU7B">
              <ref role="3cqZAo" node="4SC_r4Aee0F" resolve="contextArea" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4SC_r4Aee_Y" role="3cqZAp">
          <node concept="3cpWsn" id="4SC_r4Aee_Z" role="3cpWs9">
            <property role="TrG5h" value="nodeInArea" />
            <node concept="3uibUv" id="4SC_r4Aee_w" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
            </node>
            <node concept="2OqwBi" id="4SC_r4AeeA0" role="33vP2m">
              <node concept="37vLTw" id="4SC_r4AeeA1" role="2Oq$k0">
                <ref role="3cqZAo" node="4SC_r4Aee0F" resolve="contextArea" />
              </node>
              <node concept="liA8E" id="4SC_r4AeeA2" role="2OqNvi">
                <ref role="37wK5l" to="qvpu:~IArea.resolveNode(org.modelix.model.api.INodeReference)" resolve="resolveNode" />
                <node concept="2OqwBi" id="4SC_r4AeeA3" role="37wK5m">
                  <node concept="37vLTw" id="4SC_r4AeeA4" role="2Oq$k0">
                    <ref role="3cqZAo" node="4SC_r4AedAG" resolve="node" />
                  </node>
                  <node concept="liA8E" id="4SC_r4AeeA5" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~INode.getReference()" resolve="getReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4SC_r4AeeLP" role="3cqZAp">
          <node concept="3K4zz7" id="4SC_r4Aef8n" role="3cqZAk">
            <node concept="37vLTw" id="4SC_r4AefcZ" role="3K4E3e">
              <ref role="3cqZAo" node="4SC_r4Aee_Z" resolve="nodeInArea" />
            </node>
            <node concept="37vLTw" id="4SC_r4Aefh4" role="3K4GZi">
              <ref role="3cqZAo" node="4SC_r4AedAG" resolve="node" />
            </node>
            <node concept="3y3z36" id="4SC_r4AeeXB" role="3K4Cdx">
              <node concept="10Nm6u" id="4SC_r4Aef4j" role="3uHU7w" />
              <node concept="37vLTw" id="4SC_r4AeeOh" role="3uHU7B">
                <ref role="3cqZAo" node="4SC_r4Aee_Z" resolve="nodeInArea" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4SC_r4AefkV" role="3clF45">
        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
      </node>
      <node concept="3Tm6S6" id="4SC_r4AeddS" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6gw1ikeUXn$" role="jymVt" />
    <node concept="2YIFZL" id="6gw1ikeVFi1" role="jymVt">
      <property role="TrG5h" value="getSession" />
      <node concept="3clFbS" id="6gw1ikeVzQA" role="3clF47">
        <node concept="3cpWs8" id="6gw1ikeV2Ge" role="3cqZAp">
          <node concept="3cpWsn" id="6gw1ikeV2Gf" role="3cpWs9">
            <property role="TrG5h" value="sessionNode" />
            <node concept="3Tqbb2" id="6gw1ikeV2Gg" role="1tU5fm">
              <ref role="ehGHo" to="fnup:4bjL$lUedD6" resolve="UserSession" />
            </node>
            <node concept="2OqwBi" id="6gw1ikeV2Gh" role="33vP2m">
              <node concept="2OqwBi" id="6gw1ikeV2Gi" role="2Oq$k0">
                <node concept="37vLTw" id="6gw1ikeV2Gj" role="2Oq$k0">
                  <ref role="3cqZAo" node="6gw1ikeV_iP" resolve="stateRoot" />
                </node>
                <node concept="3Tsc0h" id="6gw1ikeV2Gk" role="2OqNvi">
                  <ref role="3TtcxE" to="fnup:4bjL$lUeegP" resolve="sessions" />
                </node>
              </node>
              <node concept="1z4cxt" id="6gw1ikeV2Gl" role="2OqNvi">
                <node concept="1bVj0M" id="6gw1ikeV2Gm" role="23t8la">
                  <node concept="3clFbS" id="6gw1ikeV2Gn" role="1bW5cS">
                    <node concept="3clFbF" id="6gw1ikeV2Go" role="3cqZAp">
                      <node concept="1Wc70l" id="6gw1ikeV2Gp" role="3clFbG">
                        <node concept="17R0WA" id="6gw1ikeV2Gq" role="3uHU7w">
                          <node concept="37vLTw" id="6gw1ikeV2Gr" role="3uHU7w">
                            <ref role="3cqZAo" node="6gw1ikeVBDu" resolve="user" />
                          </node>
                          <node concept="2OqwBi" id="6gw1ikeV2Gs" role="3uHU7B">
                            <node concept="2OqwBi" id="6gw1ikeV2Gt" role="2Oq$k0">
                              <node concept="37vLTw" id="6gw1ikeV2Gu" role="2Oq$k0">
                                <ref role="3cqZAo" node="6gw1ikeV2GA" resolve="it" />
                              </node>
                              <node concept="3TrEf2" id="6gw1ikeV2Gv" role="2OqNvi">
                                <ref role="3Tt5mk" to="fnup:4bjL$lUeeoQ" resolve="user" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="6gw1ikeV2Gw" role="2OqNvi">
                              <ref role="3TsBF5" to="fnup:4bjL$lUee5u" resolve="id" />
                            </node>
                          </node>
                        </node>
                        <node concept="17R0WA" id="6gw1ikeV2Gx" role="3uHU7B">
                          <node concept="2OqwBi" id="6gw1ikeV2Gy" role="3uHU7B">
                            <node concept="37vLTw" id="6gw1ikeV2Gz" role="2Oq$k0">
                              <ref role="3cqZAo" node="6gw1ikeV2GA" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="6gw1ikeV2G$" role="2OqNvi">
                              <ref role="3TsBF5" to="fnup:2UHWH1pKMDf" resolve="id" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="6gw1ikeV2G_" role="3uHU7w">
                            <ref role="3cqZAo" node="6gw1ikeVAyE" resolve="httpSessionId" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6gw1ikeV2GA" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6gw1ikeV2GB" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6gw1ikeV2GC" role="3cqZAp">
          <node concept="3clFbS" id="6gw1ikeV2GD" role="3clFbx">
            <node concept="3clFbF" id="6gw1ikeV2GE" role="3cqZAp">
              <node concept="37vLTI" id="6gw1ikeV2GF" role="3clFbG">
                <node concept="37vLTw" id="6gw1ikeV2GG" role="37vLTJ">
                  <ref role="3cqZAo" node="6gw1ikeV2Gf" resolve="sessionNode" />
                </node>
                <node concept="1PxgMI" id="6gw1ikeV2GH" role="37vLTx">
                  <node concept="chp4Y" id="6gw1ikeV2GI" role="3oSUPX">
                    <ref role="cht4Q" to="fnup:4bjL$lUedD6" resolve="UserSession" />
                  </node>
                  <node concept="2YIFZM" id="6gw1ikeV2GJ" role="1m5AlR">
                    <ref role="1Pybhc" to="xxte:30TKBrMa5zj" resolve="SNodeAPI" />
                    <ref role="37wK5l" to="xxte:30TKBrMe2kz" resolve="addNewChild" />
                    <node concept="37vLTw" id="6gw1ikeV2GK" role="37wK5m">
                      <ref role="3cqZAo" node="6gw1ikeV_iP" resolve="stateRoot" />
                    </node>
                    <node concept="359W_D" id="6gw1ikeV2GL" role="37wK5m">
                      <ref role="359W_E" to="fnup:4bjL$lUe34H" resolve="UiStateRoot" />
                      <ref role="359W_F" to="fnup:4bjL$lUeegP" resolve="sessions" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6gw1ikeV2GM" role="3cqZAp">
              <node concept="37vLTI" id="6gw1ikeV2GN" role="3clFbG">
                <node concept="37vLTw" id="6gw1ikeV2GO" role="37vLTx">
                  <ref role="3cqZAo" node="6gw1ikeVAyE" resolve="httpSessionId" />
                </node>
                <node concept="2OqwBi" id="6gw1ikeV2GP" role="37vLTJ">
                  <node concept="37vLTw" id="6gw1ikeV2GQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="6gw1ikeV2Gf" resolve="sessionNode" />
                  </node>
                  <node concept="3TrcHB" id="6gw1ikeV2GR" role="2OqNvi">
                    <ref role="3TsBF5" to="fnup:2UHWH1pKMDf" resolve="id" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6gw1ikeV2GS" role="3cqZAp" />
            <node concept="3cpWs8" id="6gw1ikeV2GT" role="3cqZAp">
              <node concept="3cpWsn" id="6gw1ikeV2GU" role="3cpWs9">
                <property role="TrG5h" value="userNode" />
                <node concept="3Tqbb2" id="6gw1ikeV2GV" role="1tU5fm">
                  <ref role="ehGHo" to="fnup:4bjL$lUee0m" resolve="User" />
                </node>
                <node concept="2OqwBi" id="6gw1ikeV2GW" role="33vP2m">
                  <node concept="2OqwBi" id="6gw1ikeV2GX" role="2Oq$k0">
                    <node concept="37vLTw" id="6gw1ikeV2GY" role="2Oq$k0">
                      <ref role="3cqZAo" node="6gw1ikeV_iP" resolve="stateRoot" />
                    </node>
                    <node concept="3Tsc0h" id="6gw1ikeV2GZ" role="2OqNvi">
                      <ref role="3TtcxE" to="fnup:4bjL$lUeedB" resolve="users" />
                    </node>
                  </node>
                  <node concept="1z4cxt" id="6gw1ikeV2H0" role="2OqNvi">
                    <node concept="1bVj0M" id="6gw1ikeV2H1" role="23t8la">
                      <node concept="3clFbS" id="6gw1ikeV2H2" role="1bW5cS">
                        <node concept="3clFbF" id="6gw1ikeV2H3" role="3cqZAp">
                          <node concept="17R0WA" id="6gw1ikeV2H4" role="3clFbG">
                            <node concept="37vLTw" id="6gw1ikeV2H5" role="3uHU7w">
                              <ref role="3cqZAo" node="6gw1ikeVBDu" resolve="user" />
                            </node>
                            <node concept="2OqwBi" id="6gw1ikeV2H6" role="3uHU7B">
                              <node concept="37vLTw" id="6gw1ikeV2H7" role="2Oq$k0">
                                <ref role="3cqZAo" node="6gw1ikeV2H9" resolve="it" />
                              </node>
                              <node concept="3TrcHB" id="6gw1ikeV2H8" role="2OqNvi">
                                <ref role="3TsBF5" to="fnup:4bjL$lUee5u" resolve="id" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="6gw1ikeV2H9" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="6gw1ikeV2Ha" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6gw1ikeV2Hb" role="3cqZAp">
              <node concept="3clFbS" id="6gw1ikeV2Hc" role="3clFbx">
                <node concept="3clFbF" id="6gw1ikeV2Hd" role="3cqZAp">
                  <node concept="37vLTI" id="6gw1ikeV2He" role="3clFbG">
                    <node concept="37vLTw" id="6gw1ikeV2Hf" role="37vLTJ">
                      <ref role="3cqZAo" node="6gw1ikeV2GU" resolve="userNode" />
                    </node>
                    <node concept="1PxgMI" id="6gw1ikeV2Hg" role="37vLTx">
                      <node concept="chp4Y" id="6gw1ikeV2Hh" role="3oSUPX">
                        <ref role="cht4Q" to="fnup:4bjL$lUee0m" resolve="User" />
                      </node>
                      <node concept="2YIFZM" id="6gw1ikeV2Hi" role="1m5AlR">
                        <ref role="37wK5l" to="xxte:30TKBrMe2kz" resolve="addNewChild" />
                        <ref role="1Pybhc" to="xxte:30TKBrMa5zj" resolve="SNodeAPI" />
                        <node concept="37vLTw" id="6gw1ikeV2Hj" role="37wK5m">
                          <ref role="3cqZAo" node="6gw1ikeV_iP" resolve="stateRoot" />
                        </node>
                        <node concept="359W_D" id="6gw1ikeV2Hk" role="37wK5m">
                          <ref role="359W_E" to="fnup:4bjL$lUe34H" resolve="UiStateRoot" />
                          <ref role="359W_F" to="fnup:4bjL$lUeedB" resolve="users" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6gw1ikeV2Hl" role="3cqZAp">
                  <node concept="37vLTI" id="6gw1ikeV2Hm" role="3clFbG">
                    <node concept="37vLTw" id="6gw1ikeV2Hn" role="37vLTx">
                      <ref role="3cqZAo" node="6gw1ikeVBDu" resolve="user" />
                    </node>
                    <node concept="2OqwBi" id="6gw1ikeV2Ho" role="37vLTJ">
                      <node concept="37vLTw" id="6gw1ikeV2Hp" role="2Oq$k0">
                        <ref role="3cqZAo" node="6gw1ikeV2GU" resolve="userNode" />
                      </node>
                      <node concept="3TrcHB" id="6gw1ikeV2Hq" role="2OqNvi">
                        <ref role="3TsBF5" to="fnup:4bjL$lUee5u" resolve="id" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6gw1ikeV2Hr" role="3clFbw">
                <node concept="37vLTw" id="6gw1ikeV2Hs" role="2Oq$k0">
                  <ref role="3cqZAo" node="6gw1ikeV2GU" resolve="userNode" />
                </node>
                <node concept="3w_OXm" id="6gw1ikeV2Ht" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbF" id="6gw1ikeV2Hu" role="3cqZAp">
              <node concept="37vLTI" id="6gw1ikeV2Hv" role="3clFbG">
                <node concept="37vLTw" id="6gw1ikeV2Hw" role="37vLTx">
                  <ref role="3cqZAo" node="6gw1ikeV2GU" resolve="userNode" />
                </node>
                <node concept="2OqwBi" id="6gw1ikeV2Hx" role="37vLTJ">
                  <node concept="37vLTw" id="6gw1ikeV2Hy" role="2Oq$k0">
                    <ref role="3cqZAo" node="6gw1ikeV2Gf" resolve="sessionNode" />
                  </node>
                  <node concept="3TrEf2" id="6gw1ikeV2Hz" role="2OqNvi">
                    <ref role="3Tt5mk" to="fnup:4bjL$lUeeoQ" resolve="user" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="3xm_oe3lxYv" role="3clFbw">
            <node concept="37vLTw" id="3xm_oe3ly6r" role="3uHU7w">
              <ref role="3cqZAo" node="3xm_oe3lxu9" resolve="createIfMissing" />
            </node>
            <node concept="2OqwBi" id="6gw1ikeV2H$" role="3uHU7B">
              <node concept="37vLTw" id="6gw1ikeV2H_" role="2Oq$k0">
                <ref role="3cqZAo" node="6gw1ikeV2Gf" resolve="sessionNode" />
              </node>
              <node concept="3w_OXm" id="6gw1ikeV2HA" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6gw1ikeVEzw" role="3cqZAp">
          <node concept="37vLTw" id="6gw1ikeVEIL" role="3cqZAk">
            <ref role="3cqZAo" node="6gw1ikeV2Gf" resolve="sessionNode" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3xm_oe3lxu9" role="3clF46">
        <property role="TrG5h" value="createIfMissing" />
        <node concept="10P_77" id="3xm_oe3lxyW" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6gw1ikeV_iP" role="3clF46">
        <property role="TrG5h" value="stateRoot" />
        <node concept="3Tqbb2" id="6gw1ikeV_X7" role="1tU5fm">
          <ref role="ehGHo" to="fnup:4bjL$lUe34H" resolve="UiStateRoot" />
        </node>
      </node>
      <node concept="37vLTG" id="6gw1ikeVAyE" role="3clF46">
        <property role="TrG5h" value="httpSessionId" />
        <node concept="17QB3L" id="6gw1ikeVB2H" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6gw1ikeVBDu" role="3clF46">
        <property role="TrG5h" value="user" />
        <node concept="17QB3L" id="6gw1ikeVCi1" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="6gw1ikeVCHj" role="3clF45">
        <ref role="ehGHo" to="fnup:4bjL$lUedD6" resolve="UserSession" />
      </node>
      <node concept="3Tm1VV" id="6gw1ikeVzQ_" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="czMm1HtQqb" role="jymVt" />
    <node concept="2YIFZL" id="czMm1HtSOl" role="jymVt">
      <property role="TrG5h" value="writeOnSession" />
      <node concept="3clFbS" id="czMm1HtQST" role="3clF47">
        <node concept="3cpWs8" id="czMm1HtTFd" role="3cqZAp">
          <node concept="3cpWsn" id="czMm1HtTFg" role="3cpWs9">
            <property role="TrG5h" value="master" />
            <node concept="3Tqbb2" id="czMm1HtTFb" role="1tU5fm">
              <ref role="ehGHo" to="fnup:4bjL$lUedD6" resolve="UserSession" />
            </node>
            <node concept="10Nm6u" id="czMm1HtTKI" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbF" id="czMm1HtTgc" role="3cqZAp">
          <node concept="1rXfSq" id="czMm1HtTgb" role="3clFbG">
            <ref role="37wK5l" node="6gw1ikeZPf$" resolve="writeOnStateRoots" />
            <node concept="1bVj0M" id="czMm1HtToy" role="37wK5m">
              <node concept="37vLTG" id="czMm1HtTqL" role="1bW2Oz">
                <property role="TrG5h" value="stateRoot" />
                <node concept="3Tqbb2" id="czMm1HtTwd" role="1tU5fm">
                  <ref role="ehGHo" to="fnup:4bjL$lUe34H" resolve="UiStateRoot" />
                </node>
              </node>
              <node concept="3clFbS" id="czMm1HtToz" role="1bW5cS">
                <node concept="3cpWs8" id="czMm1HtUD8" role="3cqZAp">
                  <node concept="3cpWsn" id="czMm1HtUD9" role="3cpWs9">
                    <property role="TrG5h" value="session" />
                    <node concept="3Tqbb2" id="czMm1HtUxM" role="1tU5fm">
                      <ref role="ehGHo" to="fnup:4bjL$lUedD6" resolve="UserSession" />
                    </node>
                    <node concept="1rXfSq" id="czMm1HtUDa" role="33vP2m">
                      <ref role="37wK5l" node="6gw1ikeVFi1" resolve="getSession" />
                      <node concept="3clFbT" id="czMm1HtUDb" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                      <node concept="37vLTw" id="czMm1HtUDc" role="37wK5m">
                        <ref role="3cqZAo" node="czMm1HtTqL" resolve="stateRoot" />
                      </node>
                      <node concept="37vLTw" id="czMm1HtUDd" role="37wK5m">
                        <ref role="3cqZAo" node="czMm1HtSmH" resolve="httpSessionId" />
                      </node>
                      <node concept="37vLTw" id="czMm1HtUDe" role="37wK5m">
                        <ref role="3cqZAo" node="czMm1HtSmJ" resolve="user" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="czMm1HtUUd" role="3cqZAp">
                  <node concept="3clFbS" id="czMm1HtUUf" role="3clFbx">
                    <node concept="3clFbF" id="czMm1HtVpM" role="3cqZAp">
                      <node concept="37vLTI" id="czMm1HtV_e" role="3clFbG">
                        <node concept="37vLTw" id="czMm1HtVET" role="37vLTx">
                          <ref role="3cqZAo" node="czMm1HtUD9" resolve="session" />
                        </node>
                        <node concept="37vLTw" id="czMm1HtVpK" role="37vLTJ">
                          <ref role="3cqZAo" node="czMm1HtTFg" resolve="master" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="czMm1HtVXe" role="3cqZAp">
                      <node concept="2OqwBi" id="czMm1HtVZu" role="3clFbG">
                        <node concept="37vLTw" id="czMm1HtVXc" role="2Oq$k0">
                          <ref role="3cqZAo" node="czMm1HtRqj" resolve="r" />
                        </node>
                        <node concept="1Bd96e" id="czMm1HtWbB" role="2OqNvi">
                          <node concept="37vLTw" id="czMm1HtWi6" role="1BdPVh">
                            <ref role="3cqZAo" node="czMm1HtUD9" resolve="session" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="czMm1HtVbk" role="3clFbw">
                    <node concept="10Nm6u" id="czMm1HtVlI" role="3uHU7w" />
                    <node concept="37vLTw" id="czMm1HtUYp" role="3uHU7B">
                      <ref role="3cqZAo" node="czMm1HtTFg" resolve="master" />
                    </node>
                  </node>
                  <node concept="9aQIb" id="czMm1HtVI5" role="9aQIa">
                    <node concept="3clFbS" id="czMm1HtVI6" role="9aQI4">
                      <node concept="3clFbF" id="34mNh_cLB41" role="3cqZAp">
                        <node concept="2YIFZM" id="34mNh_cLBb3" role="3clFbG">
                          <ref role="37wK5l" to="csg2:6gw1ikeZo0y" resolve="runReadOnNode" />
                          <ref role="1Pybhc" to="csg2:694yVfgo$uu" resolve="TransactionUtil" />
                          <node concept="37vLTw" id="34mNh_cLBhZ" role="37wK5m">
                            <ref role="3cqZAo" node="czMm1HtTFg" resolve="master" />
                          </node>
                          <node concept="1bVj0M" id="34mNh_cLBzq" role="37wK5m">
                            <property role="3yWfEV" value="true" />
                            <node concept="3clFbS" id="34mNh_cLBzs" role="1bW5cS">
                              <node concept="3clFbF" id="czMm1HtYGn" role="3cqZAp">
                                <node concept="1rXfSq" id="czMm1HtYGm" role="3clFbG">
                                  <ref role="37wK5l" node="czMm1Hv44H" resolve="sync" />
                                  <node concept="37vLTw" id="czMm1HtYSW" role="37wK5m">
                                    <ref role="3cqZAo" node="czMm1HtTFg" resolve="master" />
                                  </node>
                                  <node concept="37vLTw" id="czMm1HtZ5$" role="37wK5m">
                                    <ref role="3cqZAo" node="czMm1HtUD9" resolve="session" />
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
                <node concept="3cpWs6" id="czMm1Hxsgu" role="3cqZAp">
                  <node concept="10M0yZ" id="czMm1HxsvI" role="3cqZAk">
                    <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                    <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="czMm1HtSmH" role="3clF46">
        <property role="TrG5h" value="httpSessionId" />
        <node concept="17QB3L" id="czMm1HtSmI" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="czMm1HtSmJ" role="3clF46">
        <property role="TrG5h" value="user" />
        <node concept="17QB3L" id="czMm1HtSmK" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="czMm1HtRqj" role="3clF46">
        <property role="TrG5h" value="r" />
        <node concept="1ajhzC" id="czMm1HtRAT" role="1tU5fm">
          <node concept="3Tqbb2" id="czMm1HtRP0" role="1ajw0F">
            <ref role="ehGHo" to="fnup:4bjL$lUedD6" resolve="UserSession" />
          </node>
          <node concept="3cqZAl" id="czMm1HtS32" role="1ajl9A" />
        </node>
      </node>
      <node concept="3cqZAl" id="czMm1HtQSR" role="3clF45" />
      <node concept="3Tm1VV" id="czMm1HtQSS" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="czMm1HtWnv" role="jymVt" />
    <node concept="2YIFZL" id="czMm1Hv44H" role="jymVt">
      <property role="TrG5h" value="sync" />
      <node concept="3clFbS" id="czMm1Hv25J" role="3clF47">
        <node concept="3cpWs8" id="czMm1Hv5DD" role="3cqZAp">
          <node concept="3cpWsn" id="czMm1Hv5DG" role="3cpWs9">
            <property role="TrG5h" value="source2target" />
            <node concept="3rvAFt" id="czMm1Hv5DA" role="1tU5fm">
              <node concept="3Tqbb2" id="czMm1Hv5Ev" role="3rvQeY" />
              <node concept="3Tqbb2" id="czMm1Hv5Fm" role="3rvSg0" />
            </node>
            <node concept="2ShNRf" id="czMm1Hv5JS" role="33vP2m">
              <node concept="3rGOSV" id="czMm1Hv5JT" role="2ShVmc">
                <node concept="3Tqbb2" id="czMm1Hv5JU" role="3rHrn6" />
                <node concept="3Tqbb2" id="czMm1Hv5JV" role="3rHtpV" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="czMm1Hv5N2" role="3cqZAp">
          <node concept="1rXfSq" id="czMm1Hv5N0" role="3clFbG">
            <ref role="37wK5l" node="czMm1HtYcu" resolve="sync" />
            <node concept="37vLTw" id="czMm1Hv67r" role="37wK5m">
              <ref role="3cqZAo" node="czMm1Hv3jd" resolve="sourceRoot" />
            </node>
            <node concept="37vLTw" id="czMm1Hv6qE" role="37wK5m">
              <ref role="3cqZAo" node="czMm1Hv3jf" resolve="targetRoot" />
            </node>
            <node concept="37vLTw" id="czMm1Hv7dX" role="37wK5m">
              <ref role="3cqZAo" node="czMm1Hv5DG" resolve="source2target" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="czMm1Hv7g1" role="3cqZAp" />
        <node concept="2Gpval" id="czMm1Hv7oa" role="3cqZAp">
          <node concept="2GrKxI" id="czMm1Hv7oc" role="2Gsz3X">
            <property role="TrG5h" value="entry" />
          </node>
          <node concept="37vLTw" id="czMm1Hv81P" role="2GsD0m">
            <ref role="3cqZAo" node="czMm1Hv5DG" resolve="source2target" />
          </node>
          <node concept="3clFbS" id="czMm1Hv7og" role="2LFqv$">
            <node concept="3clFbJ" id="7glt5B7aKr6" role="3cqZAp">
              <node concept="3clFbS" id="7glt5B7aKr8" role="3clFbx">
                <node concept="3N13vt" id="7glt5B7aMK$" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="7glt5B7aM00" role="3clFbw">
                <node concept="2OqwBi" id="7glt5B7aLdq" role="2Oq$k0">
                  <node concept="2GrUjf" id="7glt5B7aKNs" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="czMm1Hv7oc" resolve="entry" />
                  </node>
                  <node concept="3AY5_j" id="7glt5B7aLKQ" role="2OqNvi" />
                </node>
                <node concept="1mIQ4w" id="7glt5B7aMCo" role="2OqNvi">
                  <node concept="chp4Y" id="7glt5B7aMEr" role="cj9EA">
                    <ref role="cht4Q" to="fnup:4bjL$lUedD6" resolve="UserSession" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="czMm1Hv9K0" role="3cqZAp">
              <node concept="2GrKxI" id="czMm1Hv9K1" role="2Gsz3X">
                <property role="TrG5h" value="role" />
              </node>
              <node concept="2OqwBi" id="czMm1HvaMo" role="2GsD0m">
                <node concept="2OqwBi" id="czMm1HvaqG" role="2Oq$k0">
                  <node concept="2OqwBi" id="czMm1Hva0r" role="2Oq$k0">
                    <node concept="2GrUjf" id="czMm1Hv9LL" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="czMm1Hv7oc" resolve="entry" />
                    </node>
                    <node concept="3AY5_j" id="czMm1Hvagc" role="2OqNvi" />
                  </node>
                  <node concept="2yIwOk" id="czMm1HvaFK" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="czMm1Hvb7I" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getReferenceLinks()" resolve="getReferenceLinks" />
                </node>
              </node>
              <node concept="3clFbS" id="czMm1Hv9K3" role="2LFqv$">
                <node concept="3cpWs8" id="3SJC9DMok14" role="3cqZAp">
                  <node concept="3cpWsn" id="3SJC9DMok15" role="3cpWs9">
                    <property role="TrG5h" value="sourceReferenceTarget" />
                    <node concept="3uibUv" id="3SJC9DMoiln" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="10Nm6u" id="3SJC9DMomaA" role="33vP2m" />
                  </node>
                </node>
                <node concept="3J1_TO" id="3SJC9DMomVw" role="3cqZAp">
                  <node concept="3uVAMA" id="3SJC9DMongb" role="1zxBo5">
                    <node concept="XOnhg" id="3SJC9DMongc" role="1zc67B">
                      <property role="TrG5h" value="ex" />
                      <node concept="nSUau" id="3SJC9DMongd" role="1tU5fm">
                        <node concept="3uibUv" id="3SJC9DMongR" role="nSUat">
                          <ref role="3uigEE" node="26WjidFWrSR" resolve="ReferenceDeserializationException" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="3SJC9DMonge" role="1zc67A">
                      <node concept="RRSsy" id="3SJC9DMoopr" role="3cqZAp">
                        <property role="RRSoG" value="gZ5fh_4/error" />
                        <node concept="3cpWs3" id="3SJC9DMorof" role="RRSoy">
                          <node concept="2OqwBi" id="3SJC9DMorYJ" role="3uHU7w">
                            <node concept="2GrUjf" id="3SJC9DMorpS" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="czMm1Hv9K1" resolve="role" />
                            </node>
                            <node concept="liA8E" id="3SJC9DMot8q" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                            </node>
                          </node>
                          <node concept="3cpWs3" id="3SJC9DMoqxy" role="3uHU7B">
                            <node concept="3cpWs3" id="3SJC9DMop11" role="3uHU7B">
                              <node concept="Xl_RD" id="3SJC9DMoopt" role="3uHU7B">
                                <property role="Xl_RC" value="Failed to read reference for " />
                              </node>
                              <node concept="2OqwBi" id="3SJC9DMopul" role="3uHU7w">
                                <node concept="2OqwBi" id="3SJC9DMop2E" role="2Oq$k0">
                                  <node concept="2OqwBi" id="3SJC9DMop2F" role="2Oq$k0">
                                    <node concept="2GrUjf" id="3SJC9DMop2G" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="czMm1Hv7oc" resolve="entry" />
                                    </node>
                                    <node concept="3AY5_j" id="3SJC9DMop2H" role="2OqNvi" />
                                  </node>
                                  <node concept="2yIwOk" id="3SJC9DMop2I" role="2OqNvi" />
                                </node>
                                <node concept="liA8E" id="3SJC9DMoqgM" role="2OqNvi">
                                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getName()" resolve="getName" />
                                </node>
                              </node>
                            </node>
                            <node concept="Xl_RD" id="3SJC9DMoqyM" role="3uHU7w">
                              <property role="Xl_RC" value="." />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="3SJC9DMot$W" role="RRSow">
                          <ref role="3cqZAo" node="3SJC9DMongc" resolve="ex" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="3SJC9DMomVy" role="1zxBo7">
                    <node concept="3clFbF" id="3SJC9DMolxw" role="3cqZAp">
                      <node concept="37vLTI" id="3SJC9DMolxy" role="3clFbG">
                        <node concept="2OqwBi" id="3SJC9DMok16" role="37vLTx">
                          <node concept="2JrnkZ" id="3SJC9DMok17" role="2Oq$k0">
                            <node concept="2OqwBi" id="3SJC9DMok18" role="2JrQYb">
                              <node concept="2GrUjf" id="3SJC9DMok19" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="czMm1Hv7oc" resolve="entry" />
                              </node>
                              <node concept="3AY5_j" id="3SJC9DMok1a" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="liA8E" id="3SJC9DMok1b" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                            <node concept="2GrUjf" id="3SJC9DMok1c" role="37wK5m">
                              <ref role="2Gs0qQ" node="czMm1Hv9K1" resolve="role" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="3SJC9DMolxA" role="37vLTJ">
                          <ref role="3cqZAo" node="3SJC9DMok15" resolve="sourceReferenceTarget" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="czMm1Hvbht" role="3cqZAp">
                  <node concept="2OqwBi" id="czMm1Hvnzo" role="3clFbG">
                    <node concept="2JrnkZ" id="czMm1HvneO" role="2Oq$k0">
                      <node concept="2OqwBi" id="czMm1HvbvL" role="2JrQYb">
                        <node concept="2GrUjf" id="czMm1Hvbhs" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="czMm1Hv7oc" resolve="entry" />
                        </node>
                        <node concept="3AV6Ez" id="czMm1Hvc0A" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="liA8E" id="czMm1HvnV3" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
                      <node concept="2GrUjf" id="czMm1Hvob5" role="37wK5m">
                        <ref role="2Gs0qQ" node="czMm1Hv9K1" resolve="role" />
                      </node>
                      <node concept="3EllGN" id="czMm1HvpcN" role="37wK5m">
                        <node concept="37vLTw" id="3SJC9DMok1d" role="3ElVtu">
                          <ref role="3cqZAo" node="3SJC9DMok15" resolve="sourceReferenceTarget" />
                        </node>
                        <node concept="37vLTw" id="czMm1HvoKS" role="3ElQJh">
                          <ref role="3cqZAo" node="czMm1Hv5DG" resolve="source2target" />
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
      <node concept="37vLTG" id="czMm1Hv3jd" role="3clF46">
        <property role="TrG5h" value="sourceRoot" />
        <node concept="3Tqbb2" id="czMm1Hv3je" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="czMm1Hv3jf" role="3clF46">
        <property role="TrG5h" value="targetRoot" />
        <node concept="3Tqbb2" id="czMm1Hv3jg" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="czMm1Hv25H" role="3clF45" />
      <node concept="3Tm6S6" id="czMm1HvvrJ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="czMm1Hv0XP" role="jymVt" />
    <node concept="2YIFZL" id="czMm1HtYcu" role="jymVt">
      <property role="TrG5h" value="sync" />
      <node concept="3clFbS" id="czMm1HtWKW" role="3clF47">
        <node concept="3clFbF" id="czMm1Hu1oV" role="3cqZAp">
          <node concept="37vLTI" id="czMm1Hu2tw" role="3clFbG">
            <node concept="37vLTw" id="czMm1Hu2vq" role="37vLTx">
              <ref role="3cqZAo" node="czMm1HtXEQ" resolve="target" />
            </node>
            <node concept="3EllGN" id="czMm1Hu1Wl" role="37vLTJ">
              <node concept="37vLTw" id="czMm1Hu2a3" role="3ElVtu">
                <ref role="3cqZAo" node="czMm1HtXf_" resolve="source" />
              </node>
              <node concept="37vLTw" id="czMm1Hu1oU" role="3ElQJh">
                <ref role="3cqZAo" node="czMm1HtZbK" resolve="source2target" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="czMm1HuKrz" role="3cqZAp" />
        <node concept="3clFbJ" id="7glt5B7aNv2" role="3cqZAp">
          <node concept="3clFbS" id="7glt5B7aNv4" role="3clFbx">
            <node concept="2Gpval" id="czMm1HuL74" role="3cqZAp">
              <node concept="2GrKxI" id="czMm1HuL76" role="2Gsz3X">
                <property role="TrG5h" value="role" />
              </node>
              <node concept="2OqwBi" id="czMm1HuMwN" role="2GsD0m">
                <node concept="2OqwBi" id="czMm1HuLUY" role="2Oq$k0">
                  <node concept="37vLTw" id="czMm1HuLDB" role="2Oq$k0">
                    <ref role="3cqZAo" node="czMm1HtXf_" resolve="source" />
                  </node>
                  <node concept="2yIwOk" id="czMm1HuMqk" role="2OqNvi" />
                </node>
                <node concept="liA8E" id="czMm1HuN1z" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SAbstractConcept.getProperties()" resolve="getProperties" />
                </node>
              </node>
              <node concept="3clFbS" id="czMm1HuL7a" role="2LFqv$">
                <node concept="3cpWs8" id="czMm1HuQP_" role="3cqZAp">
                  <node concept="3cpWsn" id="czMm1HuQPA" role="3cpWs9">
                    <property role="TrG5h" value="value" />
                    <node concept="17QB3L" id="czMm1HuSfM" role="1tU5fm" />
                    <node concept="2OqwBi" id="czMm1HuQPB" role="33vP2m">
                      <node concept="2JrnkZ" id="czMm1HuQPC" role="2Oq$k0">
                        <node concept="37vLTw" id="czMm1HuQPD" role="2JrQYb">
                          <ref role="3cqZAo" node="czMm1HtXf_" resolve="source" />
                        </node>
                      </node>
                      <node concept="liA8E" id="czMm1HuQPE" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                        <node concept="2GrUjf" id="czMm1HuQPF" role="37wK5m">
                          <ref role="2Gs0qQ" node="czMm1HuL76" resolve="role" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="czMm1HuOKt" role="3cqZAp">
                  <node concept="3clFbS" id="czMm1HuOKv" role="3clFbx">
                    <node concept="3clFbF" id="czMm1HuX6l" role="3cqZAp">
                      <node concept="2OqwBi" id="czMm1HuX6n" role="3clFbG">
                        <node concept="2JrnkZ" id="czMm1HuX6o" role="2Oq$k0">
                          <node concept="37vLTw" id="czMm1HuX6p" role="2JrQYb">
                            <ref role="3cqZAo" node="czMm1HtXEQ" resolve="target" />
                          </node>
                        </node>
                        <node concept="liA8E" id="czMm1HuX6q" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
                          <node concept="2GrUjf" id="czMm1HuX6r" role="37wK5m">
                            <ref role="2Gs0qQ" node="czMm1HuL76" resolve="role" />
                          </node>
                          <node concept="37vLTw" id="czMm1HuYJG" role="37wK5m">
                            <ref role="3cqZAo" node="czMm1HuQPA" resolve="value" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="17QLQc" id="czMm1HuVTc" role="3clFbw">
                    <node concept="37vLTw" id="czMm1HuW$z" role="3uHU7w">
                      <ref role="3cqZAo" node="czMm1HuQPA" resolve="value" />
                    </node>
                    <node concept="2OqwBi" id="czMm1HuU9B" role="3uHU7B">
                      <node concept="2JrnkZ" id="czMm1HuTHL" role="2Oq$k0">
                        <node concept="37vLTw" id="czMm1HuOMr" role="2JrQYb">
                          <ref role="3cqZAo" node="czMm1HtXEQ" resolve="target" />
                        </node>
                      </node>
                      <node concept="liA8E" id="czMm1HuUwN" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                        <node concept="2GrUjf" id="czMm1HuUZ8" role="37wK5m">
                          <ref role="2Gs0qQ" node="czMm1HuL76" resolve="role" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="7glt5B7aP6G" role="3clFbw">
            <node concept="2OqwBi" id="7glt5B7aP6I" role="3fr31v">
              <node concept="37vLTw" id="7glt5B7aP6J" role="2Oq$k0">
                <ref role="3cqZAo" node="czMm1HtXf_" resolve="source" />
              </node>
              <node concept="1mIQ4w" id="7glt5B7aP6K" role="2OqNvi">
                <node concept="chp4Y" id="7glt5B7aP6L" role="cj9EA">
                  <ref role="cht4Q" to="fnup:4bjL$lUedD6" resolve="UserSession" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="czMm1HuKtB" role="3cqZAp" />
        <node concept="2Gpval" id="czMm1Hu2OI" role="3cqZAp">
          <node concept="2GrKxI" id="czMm1Hu2OK" role="2Gsz3X">
            <property role="TrG5h" value="role" />
          </node>
          <node concept="2OqwBi" id="czMm1Hu3yT" role="2GsD0m">
            <node concept="2OqwBi" id="czMm1Hu2Zm" role="2Oq$k0">
              <node concept="37vLTw" id="czMm1Hu2QC" role="2Oq$k0">
                <ref role="3cqZAo" node="czMm1HtXf_" resolve="source" />
              </node>
              <node concept="2yIwOk" id="czMm1Hu36O" role="2OqNvi" />
            </node>
            <node concept="liA8E" id="czMm1Hu3Ww" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.getContainmentLinks()" resolve="getContainmentLinks" />
            </node>
          </node>
          <node concept="3clFbS" id="czMm1Hu2OO" role="2LFqv$">
            <node concept="1Dw8fO" id="czMm1Hu6Xr" role="3cqZAp">
              <node concept="3clFbS" id="czMm1Hu6Xt" role="2LFqv$">
                <node concept="3cpWs8" id="czMm1Huzxk" role="3cqZAp">
                  <node concept="3cpWsn" id="czMm1Huzxl" role="3cpWs9">
                    <property role="TrG5h" value="sourceChild" />
                    <node concept="3Tqbb2" id="czMm1Huzge" role="1tU5fm" />
                    <node concept="1y4W85" id="czMm1Huzxm" role="33vP2m">
                      <node concept="37vLTw" id="czMm1Huzxn" role="1y58nS">
                        <ref role="3cqZAo" node="czMm1Hu6Xu" resolve="i" />
                      </node>
                      <node concept="2OqwBi" id="czMm1Huzxo" role="1y566C">
                        <node concept="37vLTw" id="czMm1Huzxp" role="2Oq$k0">
                          <ref role="3cqZAo" node="czMm1HtXf_" resolve="source" />
                        </node>
                        <node concept="32TBzR" id="czMm1Huzxq" role="2OqNvi">
                          <node concept="1aIX9F" id="czMm1Huzxr" role="1xVPHs">
                            <node concept="25Kdxt" id="czMm1Huzxs" role="1aIX9E">
                              <node concept="2GrUjf" id="czMm1Huzxt" role="25KhWn">
                                <ref role="2Gs0qQ" node="czMm1Hu2OK" resolve="role" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="czMm1Huujt" role="3cqZAp">
                  <node concept="3cpWsn" id="czMm1Huuju" role="3cpWs9">
                    <property role="TrG5h" value="targetChild" />
                    <node concept="3Tqbb2" id="czMm1Huvar" role="1tU5fm" />
                  </node>
                </node>
                <node concept="3clFbJ" id="czMm1HuaWc" role="3cqZAp">
                  <node concept="3clFbS" id="czMm1HuaWe" role="3clFbx">
                    <node concept="3clFbF" id="czMm1HuvAY" role="3cqZAp">
                      <node concept="37vLTI" id="czMm1HuvB0" role="3clFbG">
                        <node concept="2YIFZM" id="czMm1Huujv" role="37vLTx">
                          <ref role="1Pybhc" to="xxte:30TKBrMa5zj" resolve="SNodeAPI" />
                          <ref role="37wK5l" to="xxte:30TKBrMe336" resolve="addNewChild" />
                          <node concept="37vLTw" id="czMm1Huujw" role="37wK5m">
                            <ref role="3cqZAo" node="czMm1HtXEQ" resolve="target" />
                          </node>
                          <node concept="2GrUjf" id="czMm1Huujx" role="37wK5m">
                            <ref role="2Gs0qQ" node="czMm1Hu2OK" resolve="role" />
                          </node>
                          <node concept="37vLTw" id="czMm1Huujy" role="37wK5m">
                            <ref role="3cqZAo" node="czMm1Hu6Xu" resolve="i" />
                          </node>
                          <node concept="2OqwBi" id="czMm1Huujz" role="37wK5m">
                            <node concept="37vLTw" id="czMm1Huzxv" role="2Oq$k0">
                              <ref role="3cqZAo" node="czMm1Huzxl" resolve="sourceChild" />
                            </node>
                            <node concept="2yIwOk" id="czMm1HuujG" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="czMm1HuvB4" role="37vLTJ">
                          <ref role="3cqZAo" node="czMm1Huuju" resolve="targetChild" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="22lmx$" id="czMm1Huhhj" role="3clFbw">
                    <node concept="2d3UOw" id="czMm1HufOJ" role="3uHU7B">
                      <node concept="37vLTw" id="czMm1Hugah" role="3uHU7B">
                        <ref role="3cqZAo" node="czMm1Hu6Xu" resolve="i" />
                      </node>
                      <node concept="2OqwBi" id="czMm1HucZ4" role="3uHU7w">
                        <node concept="2OqwBi" id="czMm1HuaZS" role="2Oq$k0">
                          <node concept="32TBzR" id="czMm1HuaZU" role="2OqNvi">
                            <node concept="1aIX9F" id="czMm1HuaZV" role="1xVPHs">
                              <node concept="25Kdxt" id="czMm1HuaZW" role="1aIX9E">
                                <node concept="2GrUjf" id="czMm1HuaZX" role="25KhWn">
                                  <ref role="2Gs0qQ" node="czMm1Hu2OK" resolve="role" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="czMm1HubJN" role="2Oq$k0">
                            <ref role="3cqZAo" node="czMm1HtXEQ" resolve="target" />
                          </node>
                        </node>
                        <node concept="34oBXx" id="czMm1Hueqb" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="17QLQc" id="czMm1Hukld" role="3uHU7w">
                      <node concept="2OqwBi" id="czMm1HujIY" role="3uHU7B">
                        <node concept="1y4W85" id="czMm1HujdL" role="2Oq$k0">
                          <node concept="37vLTw" id="czMm1HujA1" role="1y58nS">
                            <ref role="3cqZAo" node="czMm1Hu6Xu" resolve="i" />
                          </node>
                          <node concept="2OqwBi" id="czMm1HuhAc" role="1y566C">
                            <node concept="37vLTw" id="czMm1HuhX$" role="2Oq$k0">
                              <ref role="3cqZAo" node="czMm1HtXEQ" resolve="target" />
                            </node>
                            <node concept="32TBzR" id="czMm1HuhAe" role="2OqNvi">
                              <node concept="1aIX9F" id="czMm1HuhAf" role="1xVPHs">
                                <node concept="25Kdxt" id="czMm1HuhAg" role="1aIX9E">
                                  <node concept="2GrUjf" id="czMm1HuhAh" role="25KhWn">
                                    <ref role="2Gs0qQ" node="czMm1Hu2OK" resolve="role" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2yIwOk" id="czMm1Hukdc" role="2OqNvi" />
                      </node>
                      <node concept="2OqwBi" id="czMm1HukEN" role="3uHU7w">
                        <node concept="37vLTw" id="czMm1Huzxu" role="2Oq$k0">
                          <ref role="3cqZAo" node="czMm1Huzxl" resolve="sourceChild" />
                        </node>
                        <node concept="2yIwOk" id="czMm1HukEW" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="9aQIb" id="czMm1HuwGl" role="9aQIa">
                    <node concept="3clFbS" id="czMm1HuwGm" role="9aQI4">
                      <node concept="3clFbF" id="czMm1HuwVj" role="3cqZAp">
                        <node concept="37vLTI" id="czMm1Hux60" role="3clFbG">
                          <node concept="37vLTw" id="czMm1HuwVi" role="37vLTJ">
                            <ref role="3cqZAo" node="czMm1Huuju" resolve="targetChild" />
                          </node>
                          <node concept="1y4W85" id="czMm1Huyog" role="37vLTx">
                            <node concept="37vLTw" id="czMm1HuyNe" role="1y58nS">
                              <ref role="3cqZAo" node="czMm1Hu6Xu" resolve="i" />
                            </node>
                            <node concept="2OqwBi" id="czMm1Hux8r" role="1y566C">
                              <node concept="32TBzR" id="czMm1Hux8s" role="2OqNvi">
                                <node concept="1aIX9F" id="czMm1Hux8t" role="1xVPHs">
                                  <node concept="25Kdxt" id="czMm1Hux8u" role="1aIX9E">
                                    <node concept="2GrUjf" id="czMm1Hux8v" role="25KhWn">
                                      <ref role="2Gs0qQ" node="czMm1Hu2OK" resolve="role" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="czMm1Hux8w" role="2Oq$k0">
                                <ref role="3cqZAo" node="czMm1HtXEQ" resolve="target" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="czMm1Huz59" role="3cqZAp">
                  <node concept="1rXfSq" id="czMm1Huz57" role="3clFbG">
                    <ref role="37wK5l" node="czMm1HtYcu" resolve="sync" />
                    <node concept="37vLTw" id="czMm1Hu$BI" role="37wK5m">
                      <ref role="3cqZAo" node="czMm1Huzxl" resolve="sourceChild" />
                    </node>
                    <node concept="37vLTw" id="czMm1Hu$Ie" role="37wK5m">
                      <ref role="3cqZAo" node="czMm1Huuju" resolve="targetChild" />
                    </node>
                    <node concept="37vLTw" id="czMm1Hu$PL" role="37wK5m">
                      <ref role="3cqZAo" node="czMm1HtZbK" resolve="source2target" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="czMm1Hu6Xu" role="1Duv9x">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="czMm1Hu6Yn" role="1tU5fm" />
                <node concept="3cmrfG" id="czMm1Hu70w" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="czMm1Hu9Yk" role="1Dwp0S">
                <node concept="37vLTw" id="czMm1HuaiJ" role="3uHU7B">
                  <ref role="3cqZAo" node="czMm1Hu6Xu" resolve="i" />
                </node>
                <node concept="2OqwBi" id="czMm1Hu8p0" role="3uHU7w">
                  <node concept="2OqwBi" id="czMm1Hu71x" role="2Oq$k0">
                    <node concept="37vLTw" id="czMm1Hu71y" role="2Oq$k0">
                      <ref role="3cqZAo" node="czMm1HtXf_" resolve="source" />
                    </node>
                    <node concept="32TBzR" id="czMm1Hu71z" role="2OqNvi">
                      <node concept="1aIX9F" id="czMm1Hu71$" role="1xVPHs">
                        <node concept="25Kdxt" id="czMm1Hu71_" role="1aIX9E">
                          <node concept="2GrUjf" id="czMm1Hu71A" role="25KhWn">
                            <ref role="2Gs0qQ" node="czMm1Hu2OK" resolve="role" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="34oBXx" id="czMm1Hu9No" role="2OqNvi" />
                </node>
              </node>
              <node concept="3uNrnE" id="czMm1HuaTs" role="1Dwrff">
                <node concept="37vLTw" id="czMm1HuaTu" role="2$L3a6">
                  <ref role="3cqZAo" node="czMm1Hu6Xu" resolve="i" />
                </node>
              </node>
            </node>
            <node concept="2$JKZl" id="czMm1HuAaX" role="3cqZAp">
              <node concept="3clFbS" id="czMm1HuAaZ" role="2LFqv$">
                <node concept="3clFbF" id="czMm1HuCSI" role="3cqZAp">
                  <node concept="2OqwBi" id="czMm1HuJFB" role="3clFbG">
                    <node concept="2OqwBi" id="czMm1HuEb2" role="2Oq$k0">
                      <node concept="2OqwBi" id="czMm1HuCSK" role="2Oq$k0">
                        <node concept="32TBzR" id="czMm1HuCSL" role="2OqNvi">
                          <node concept="1aIX9F" id="czMm1HuCSM" role="1xVPHs">
                            <node concept="25Kdxt" id="czMm1HuCSN" role="1aIX9E">
                              <node concept="2GrUjf" id="czMm1HuCSO" role="25KhWn">
                                <ref role="2Gs0qQ" node="czMm1Hu2OK" resolve="role" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="czMm1HuCSP" role="2Oq$k0">
                          <ref role="3cqZAo" node="czMm1HtXEQ" resolve="target" />
                        </node>
                      </node>
                      <node concept="1yVyf7" id="czMm1HuJdu" role="2OqNvi" />
                    </node>
                    <node concept="3YRAZt" id="czMm1HuKhl" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3eOSWO" id="czMm1HuCe6" role="2$JKZa">
                <node concept="2OqwBi" id="czMm1HuApi" role="3uHU7B">
                  <node concept="2OqwBi" id="czMm1HuApj" role="2Oq$k0">
                    <node concept="32TBzR" id="czMm1HuApk" role="2OqNvi">
                      <node concept="1aIX9F" id="czMm1HuApl" role="1xVPHs">
                        <node concept="25Kdxt" id="czMm1HuApm" role="1aIX9E">
                          <node concept="2GrUjf" id="czMm1HuApn" role="25KhWn">
                            <ref role="2Gs0qQ" node="czMm1Hu2OK" resolve="role" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="czMm1HuApo" role="2Oq$k0">
                      <ref role="3cqZAo" node="czMm1HtXEQ" resolve="target" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="czMm1HuApp" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="czMm1HuCDj" role="3uHU7w">
                  <node concept="2OqwBi" id="czMm1HuCDk" role="2Oq$k0">
                    <node concept="37vLTw" id="czMm1HuCDl" role="2Oq$k0">
                      <ref role="3cqZAo" node="czMm1HtXf_" resolve="source" />
                    </node>
                    <node concept="32TBzR" id="czMm1HuCDm" role="2OqNvi">
                      <node concept="1aIX9F" id="czMm1HuCDn" role="1xVPHs">
                        <node concept="25Kdxt" id="czMm1HuCDo" role="1aIX9E">
                          <node concept="2GrUjf" id="czMm1HuCDp" role="25KhWn">
                            <ref role="2Gs0qQ" node="czMm1Hu2OK" resolve="role" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="34oBXx" id="czMm1HuCDq" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="czMm1HtXf_" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3Tqbb2" id="czMm1HtXv_" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="czMm1HtXEQ" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="czMm1HtXW8" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="czMm1HtZbK" role="3clF46">
        <property role="TrG5h" value="source2target" />
        <node concept="3rvAFt" id="czMm1HtZsN" role="1tU5fm">
          <node concept="3Tqbb2" id="czMm1HtZGO" role="3rvQeY" />
          <node concept="3Tqbb2" id="czMm1Hu08v" role="3rvSg0" />
        </node>
      </node>
      <node concept="3cqZAl" id="czMm1HtWKU" role="3clF45" />
      <node concept="3Tm6S6" id="czMm1Hvwr$" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="6gw1ikeUVSB" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5mRomlpwjXf">
    <property role="TrG5h" value="VirtualRepositoryArea" />
    <node concept="2tJIrI" id="5mRomlpwk_w" role="jymVt" />
    <node concept="312cEg" id="5mRomlpwuYC" role="jymVt">
      <property role="TrG5h" value="wrappedArea" />
      <node concept="3Tm6S6" id="5mRomlpwuYD" role="1B3o_S" />
      <node concept="3uibUv" id="5mRomlpwvm4" role="1tU5fm">
        <ref role="3uigEE" to="qvpu:~IArea" resolve="IArea" />
      </node>
    </node>
    <node concept="312cEg" id="5mRomlpxx4Z" role="jymVt">
      <property role="TrG5h" value="root" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5mRomlpxx50" role="1B3o_S" />
      <node concept="3uibUv" id="5mRomlpxxSR" role="1tU5fm">
        <ref role="3uigEE" node="5mRomlpwn_7" resolve="VirtualRepositoryArea.RootNode" />
      </node>
      <node concept="2ShNRf" id="5mRomlpxz20" role="33vP2m">
        <node concept="1pGfFk" id="5mRomlpxAvk" role="2ShVmc">
          <ref role="37wK5l" node="5mRomlpx_Cg" resolve="VirtualRepositoryArea.RootNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5mRomlpwuBk" role="jymVt" />
    <node concept="3Tm1VV" id="5mRomlpwjXg" role="1B3o_S" />
    <node concept="3uibUv" id="5mRomlpwk_d" role="EKbjA">
      <ref role="3uigEE" to="qvpu:~IArea" resolve="IArea" />
    </node>
    <node concept="3clFbW" id="28I3pJBZSRq" role="jymVt">
      <node concept="3cqZAl" id="28I3pJBZSRr" role="3clF45" />
      <node concept="3Tm1VV" id="28I3pJBZSRs" role="1B3o_S" />
      <node concept="3clFbS" id="28I3pJBZSRu" role="3clF47">
        <node concept="3clFbF" id="28I3pJBZSRy" role="3cqZAp">
          <node concept="37vLTI" id="28I3pJBZSR$" role="3clFbG">
            <node concept="2OqwBi" id="28I3pJBZSRC" role="37vLTJ">
              <node concept="Xjq3P" id="28I3pJBZSRD" role="2Oq$k0" />
              <node concept="2OwXpG" id="28I3pJBZSRE" role="2OqNvi">
                <ref role="2Oxat5" node="5mRomlpwuYC" resolve="wrappedArea" />
              </node>
            </node>
            <node concept="37vLTw" id="28I3pJBZSRF" role="37vLTx">
              <ref role="3cqZAo" node="28I3pJBZSRx" resolve="area" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="28I3pJBZSRx" role="3clF46">
        <property role="TrG5h" value="area" />
        <node concept="3uibUv" id="28I3pJBZSRw" role="1tU5fm">
          <ref role="3uigEE" to="qvpu:~IArea" resolve="IArea" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="28I3pJBZVjU" role="jymVt" />
    <node concept="3clFb_" id="7$7_4Ziiz7V" role="jymVt">
      <property role="TrG5h" value="getReference" />
      <node concept="3Tm1VV" id="7$7_4Ziiz7W" role="1B3o_S" />
      <node concept="2AHcQZ" id="7$7_4Ziiz7Y" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="mtS_g4rmlr" role="3clF45">
        <ref role="3uigEE" node="7$7_4ZiinS7" resolve="VirtualRepositoryArea.AreaReference" />
      </node>
      <node concept="3clFbS" id="7$7_4Ziiz80" role="3clF47">
        <node concept="3clFbF" id="7$7_4ZiiAWX" role="3cqZAp">
          <node concept="2ShNRf" id="7$7_4ZiiAWV" role="3clFbG">
            <node concept="1pGfFk" id="7$7_4ZiiFpH" role="2ShVmc">
              <ref role="37wK5l" node="7$7_4Ziiya2" resolve="VirtualRepositoryArea.AreaReference" />
              <node concept="2OqwBi" id="7$7_4ZiiGgG" role="37wK5m">
                <node concept="37vLTw" id="7$7_4ZiiFJ3" role="2Oq$k0">
                  <ref role="3cqZAo" node="5mRomlpwuYC" resolve="wrappedArea" />
                </node>
                <node concept="liA8E" id="7$7_4ZiiGKo" role="2OqNvi">
                  <ref role="37wK5l" to="qvpu:~IArea.getReference()" resolve="getReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7$7_4Ziiz81" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7$7_4Ziiz84" role="jymVt">
      <property role="TrG5h" value="resolveArea" />
      <node concept="3Tm1VV" id="7$7_4Ziiz85" role="1B3o_S" />
      <node concept="2AHcQZ" id="7$7_4Ziiz87" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="7$7_4Ziiz88" role="3clF45">
        <ref role="3uigEE" to="qvpu:~IArea" resolve="IArea" />
      </node>
      <node concept="37vLTG" id="7$7_4Ziiz89" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3uibUv" id="7$7_4Ziiz8a" role="1tU5fm">
          <ref role="3uigEE" to="qvpu:~IAreaReference" resolve="IAreaReference" />
        </node>
        <node concept="2AHcQZ" id="7$7_4Ziiz8b" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="7$7_4Ziiz8c" role="3clF47">
        <node concept="3clFbF" id="7$7_4ZiiHr2" role="3cqZAp">
          <node concept="3K4zz7" id="7$7_4ZiiIWU" role="3clFbG">
            <node concept="Xjq3P" id="7$7_4ZiiJoc" role="3K4E3e" />
            <node concept="2OqwBi" id="7$7_4ZiiJTi" role="3K4GZi">
              <node concept="37vLTw" id="7$7_4ZiiJDw" role="2Oq$k0">
                <ref role="3cqZAo" node="5mRomlpwuYC" resolve="wrappedArea" />
              </node>
              <node concept="liA8E" id="7$7_4ZiiKmE" role="2OqNvi">
                <ref role="37wK5l" to="qvpu:~IArea.resolveArea(org.modelix.model.area.IAreaReference)" resolve="resolveArea" />
                <node concept="37vLTw" id="7$7_4ZiiKV4" role="37wK5m">
                  <ref role="3cqZAo" node="7$7_4Ziiz89" resolve="reference" />
                </node>
              </node>
            </node>
            <node concept="17R0WA" id="7$7_4ZiiHUX" role="3K4Cdx">
              <node concept="1rXfSq" id="7$7_4ZiiIxm" role="3uHU7w">
                <ref role="37wK5l" node="7$7_4Ziiz7V" resolve="getReference" />
              </node>
              <node concept="37vLTw" id="7$7_4ZiiHr1" role="3uHU7B">
                <ref role="3cqZAo" node="7$7_4Ziiz89" resolve="reference" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7$7_4Ziiz8d" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5mRomlpwk_U" role="jymVt">
      <property role="TrG5h" value="getRoot" />
      <node concept="3Tm1VV" id="5mRomlpwk_V" role="1B3o_S" />
      <node concept="2AHcQZ" id="5mRomlpwk_X" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="5mRomlpwk_Y" role="3clF45">
        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
      </node>
      <node concept="3clFbS" id="5mRomlpwk_Z" role="3clF47">
        <node concept="3clFbF" id="5mRomlpxD3X" role="3cqZAp">
          <node concept="37vLTw" id="5mRomlpxD3W" role="3clFbG">
            <ref role="3cqZAo" node="5mRomlpxx4Z" resolve="root" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5mRomlpwkA0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5mRomlpwkA3" role="jymVt">
      <property role="TrG5h" value="resolveNode" />
      <node concept="3Tm1VV" id="5mRomlpwkA4" role="1B3o_S" />
      <node concept="2AHcQZ" id="5mRomlpwkA6" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="5mRomlpwkA7" role="3clF45">
        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
      </node>
      <node concept="37vLTG" id="5mRomlpwkA8" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3uibUv" id="5mRomlpwkA9" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
        </node>
        <node concept="2AHcQZ" id="5mRomlpwkAa" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5mRomlpwkAb" role="3clF47">
        <node concept="3clFbJ" id="28I3pJBZNN9" role="3cqZAp">
          <node concept="3clFbS" id="28I3pJBZNNb" role="3clFbx">
            <node concept="3cpWs6" id="28I3pJBZQNL" role="3cqZAp">
              <node concept="37vLTw" id="28I3pJBZQYx" role="3cqZAk">
                <ref role="3cqZAo" node="5mRomlpxx4Z" resolve="root" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="28I3pJBZOAg" role="3clFbw">
            <node concept="37vLTw" id="28I3pJBZP3r" role="3uHU7w">
              <ref role="3cqZAo" node="5mRomlpxx4Z" resolve="root" />
            </node>
            <node concept="37vLTw" id="28I3pJBZO4Z" role="3uHU7B">
              <ref role="3cqZAo" node="5mRomlpwkA8" resolve="reference" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="28I3pJBZMX9" role="3cqZAp">
          <node concept="1rXfSq" id="28I3pJBZMX3" role="3clFbG">
            <ref role="37wK5l" node="28I3pJBX2AN" resolve="wrapNode" />
            <node concept="2OqwBi" id="28I3pJBZJSS" role="37wK5m">
              <node concept="37vLTw" id="28I3pJBZJEc" role="2Oq$k0">
                <ref role="3cqZAo" node="5mRomlpwuYC" resolve="wrappedArea" />
              </node>
              <node concept="liA8E" id="28I3pJBZKhV" role="2OqNvi">
                <ref role="37wK5l" to="qvpu:~IArea.resolveNode(org.modelix.model.api.INodeReference)" resolve="resolveNode" />
                <node concept="37vLTw" id="28I3pJBZLz2" role="37wK5m">
                  <ref role="3cqZAo" node="5mRomlpwkA8" resolve="reference" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5mRomlpwkAc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5mRomlpwkAf" role="jymVt">
      <property role="TrG5h" value="resolveOriginalNode" />
      <node concept="3Tm1VV" id="5mRomlpwkAg" role="1B3o_S" />
      <node concept="2AHcQZ" id="5mRomlpwkAi" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="5mRomlpwkAj" role="3clF45">
        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
      </node>
      <node concept="37vLTG" id="5mRomlpwkAk" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3uibUv" id="5mRomlpwkAl" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
        </node>
        <node concept="2AHcQZ" id="5mRomlpwkAm" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5mRomlpwkAn" role="3clF47">
        <node concept="3clFbF" id="28I3pJBZHFR" role="3cqZAp">
          <node concept="2OqwBi" id="28I3pJBZI9t" role="3clFbG">
            <node concept="37vLTw" id="28I3pJBZHFQ" role="2Oq$k0">
              <ref role="3cqZAo" node="5mRomlpwuYC" resolve="wrappedArea" />
            </node>
            <node concept="liA8E" id="28I3pJBZIxI" role="2OqNvi">
              <ref role="37wK5l" to="qvpu:~IArea.resolveOriginalNode(org.modelix.model.api.INodeReference)" resolve="resolveOriginalNode" />
              <node concept="37vLTw" id="28I3pJBZJ1O" role="37wK5m">
                <ref role="3cqZAo" node="5mRomlpwkAk" resolve="reference" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5mRomlpwkAo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5mRomlpwkAr" role="jymVt">
      <property role="TrG5h" value="resolveBranch" />
      <node concept="3Tm1VV" id="5mRomlpwkAs" role="1B3o_S" />
      <node concept="2AHcQZ" id="5mRomlpwkAu" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="5mRomlpwkAv" role="3clF45">
        <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
      </node>
      <node concept="37vLTG" id="5mRomlpwkAw" role="3clF46">
        <property role="TrG5h" value="branch" />
        <node concept="17QB3L" id="28I3pJBZwL3" role="1tU5fm" />
        <node concept="2AHcQZ" id="5mRomlpwkAy" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5mRomlpwkAz" role="3clF47">
        <node concept="3clFbF" id="28I3pJBZySd" role="3cqZAp">
          <node concept="2OqwBi" id="28I3pJBZzlz" role="3clFbG">
            <node concept="37vLTw" id="28I3pJBZySc" role="2Oq$k0">
              <ref role="3cqZAo" node="5mRomlpwuYC" resolve="wrappedArea" />
            </node>
            <node concept="liA8E" id="28I3pJBZzH$" role="2OqNvi">
              <ref role="37wK5l" to="qvpu:~IArea.resolveBranch(java.lang.String)" resolve="resolveBranch" />
              <node concept="37vLTw" id="28I3pJBZ$5b" role="37wK5m">
                <ref role="3cqZAo" node="5mRomlpwkAw" resolve="branch" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5mRomlpwkA$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5mRomlpwkAB" role="jymVt">
      <property role="TrG5h" value="collectAreas" />
      <node concept="3Tm1VV" id="5mRomlpwkAC" role="1B3o_S" />
      <node concept="2AHcQZ" id="5mRomlpwkAE" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="5mRomlpwkAF" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5mRomlpwkAG" role="11_B2D">
          <ref role="3uigEE" to="qvpu:~IArea" resolve="IArea" />
        </node>
      </node>
      <node concept="3clFbS" id="5mRomlpwkAH" role="3clF47">
        <node concept="3clFbF" id="28I3pJBZ$y9" role="3cqZAp">
          <node concept="2OqwBi" id="28I3pJBZEVe" role="3clFbG">
            <node concept="2OqwBi" id="28I3pJBZBAi" role="2Oq$k0">
              <node concept="2ShNRf" id="28I3pJBZ$y7" role="2Oq$k0">
                <node concept="2HTt$P" id="28I3pJBZ_V3" role="2ShVmc">
                  <node concept="3uibUv" id="28I3pJBZA3W" role="2HTBi0">
                    <ref role="3uigEE" to="qvpu:~IArea" resolve="IArea" />
                  </node>
                  <node concept="Xjq3P" id="28I3pJBZBn_" role="2HTEbv" />
                </node>
              </node>
              <node concept="3QWeyG" id="28I3pJBZD9_" role="2OqNvi">
                <node concept="2OqwBi" id="28I3pJBZDY4" role="576Qk">
                  <node concept="37vLTw" id="28I3pJBZDut" role="2Oq$k0">
                    <ref role="3cqZAo" node="5mRomlpwuYC" resolve="wrappedArea" />
                  </node>
                  <node concept="liA8E" id="28I3pJBZEqO" role="2OqNvi">
                    <ref role="37wK5l" to="qvpu:~IArea.collectAreas()" resolve="collectAreas" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="28I3pJBZGc8" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5mRomlpwkAI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5mRomlpwkAL" role="jymVt">
      <property role="TrG5h" value="executeRead" />
      <node concept="3Tm1VV" id="5mRomlpwkAM" role="1B3o_S" />
      <node concept="16euLQ" id="5mRomlpwkAO" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="16syzq" id="5mRomlpwkAP" role="3clF45">
        <ref role="16sUi3" node="5mRomlpwkAO" resolve="T" />
      </node>
      <node concept="37vLTG" id="5mRomlpwkAQ" role="3clF46">
        <property role="TrG5h" value="f" />
        <node concept="3uibUv" id="5mRomlpwkAR" role="1tU5fm">
          <ref role="3uigEE" to="ouht:~Function0" resolve="Function0" />
          <node concept="3qUE_q" id="5mRomlpwkAS" role="11_B2D">
            <node concept="16syzq" id="5mRomlpwkAT" role="3qUE_r">
              <ref role="16sUi3" node="5mRomlpwkAO" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5mRomlpwkAU" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5mRomlpwkAV" role="3clF47">
        <node concept="3clFbF" id="28I3pJBZuaE" role="3cqZAp">
          <node concept="2OqwBi" id="28I3pJBZuCG" role="3clFbG">
            <node concept="37vLTw" id="28I3pJBZuaD" role="2Oq$k0">
              <ref role="3cqZAo" node="5mRomlpwuYC" resolve="wrappedArea" />
            </node>
            <node concept="liA8E" id="28I3pJBZv0M" role="2OqNvi">
              <ref role="37wK5l" to="qvpu:~IArea.executeRead(kotlin.jvm.functions.Function0)" resolve="executeRead" />
              <node concept="37vLTw" id="28I3pJBZvOb" role="37wK5m">
                <ref role="3cqZAo" node="5mRomlpwkAQ" resolve="f" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5mRomlpwkAW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5mRomlpwkAX" role="jymVt">
      <property role="TrG5h" value="executeWrite" />
      <node concept="3Tm1VV" id="5mRomlpwkAY" role="1B3o_S" />
      <node concept="16euLQ" id="5mRomlpwkB0" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="16syzq" id="5mRomlpwkB1" role="3clF45">
        <ref role="16sUi3" node="5mRomlpwkB0" resolve="T" />
      </node>
      <node concept="37vLTG" id="5mRomlpwkB2" role="3clF46">
        <property role="TrG5h" value="f" />
        <node concept="3uibUv" id="5mRomlpwkB3" role="1tU5fm">
          <ref role="3uigEE" to="ouht:~Function0" resolve="Function0" />
          <node concept="3qUE_q" id="5mRomlpwkB4" role="11_B2D">
            <node concept="16syzq" id="5mRomlpwkB5" role="3qUE_r">
              <ref role="16sUi3" node="5mRomlpwkB0" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5mRomlpwkB6" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5mRomlpwkB7" role="3clF47">
        <node concept="3clFbF" id="28I3pJBZw6l" role="3cqZAp">
          <node concept="2OqwBi" id="28I3pJBZw6m" role="3clFbG">
            <node concept="37vLTw" id="28I3pJBZw6n" role="2Oq$k0">
              <ref role="3cqZAo" node="5mRomlpwuYC" resolve="wrappedArea" />
            </node>
            <node concept="liA8E" id="28I3pJBZw6o" role="2OqNvi">
              <ref role="37wK5l" to="qvpu:~IArea.executeWrite(kotlin.jvm.functions.Function0)" resolve="executeWrite" />
              <node concept="37vLTw" id="28I3pJBZw6p" role="37wK5m">
                <ref role="3cqZAo" node="5mRomlpwkB2" resolve="f" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5mRomlpwkB8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5mRomlpwkB9" role="jymVt">
      <property role="TrG5h" value="canRead" />
      <node concept="3Tm1VV" id="5mRomlpwkBa" role="1B3o_S" />
      <node concept="10P_77" id="5mRomlpwkBc" role="3clF45" />
      <node concept="3clFbS" id="5mRomlpwkBd" role="3clF47">
        <node concept="3clFbF" id="5mRomlpwkBg" role="3cqZAp">
          <node concept="3clFbT" id="5mRomlpwkBf" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5mRomlpwkBe" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5mRomlpwkBh" role="jymVt">
      <property role="TrG5h" value="canWrite" />
      <node concept="3Tm1VV" id="5mRomlpwkBi" role="1B3o_S" />
      <node concept="10P_77" id="5mRomlpwkBk" role="3clF45" />
      <node concept="3clFbS" id="5mRomlpwkBl" role="3clF47">
        <node concept="3clFbF" id="5mRomlpwkBo" role="3cqZAp">
          <node concept="3clFbT" id="5mRomlpwkBn" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5mRomlpwkBm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5mRomlpwkBp" role="jymVt">
      <property role="TrG5h" value="addListener" />
      <node concept="3Tm1VV" id="5mRomlpwkBq" role="1B3o_S" />
      <node concept="3cqZAl" id="5mRomlpwkBs" role="3clF45" />
      <node concept="37vLTG" id="5mRomlpwkBt" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="5mRomlpwkBu" role="1tU5fm">
          <ref role="3uigEE" to="qvpu:~IAreaListener" resolve="IAreaListener" />
        </node>
        <node concept="2AHcQZ" id="5mRomlpwkBv" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5mRomlpwkBw" role="3clF47">
        <node concept="3clFbF" id="28I3pJBZsGk" role="3cqZAp">
          <node concept="2OqwBi" id="28I3pJBZsMt" role="3clFbG">
            <node concept="10M0yZ" id="28I3pJBZsGC" role="2Oq$k0">
              <ref role="3cqZAo" to="qvpu:~AreaListenerRegistry.INSTANCE" resolve="INSTANCE" />
              <ref role="1PxDUh" to="qvpu:~AreaListenerRegistry" resolve="AreaListenerRegistry" />
            </node>
            <node concept="liA8E" id="28I3pJBZsUZ" role="2OqNvi">
              <ref role="37wK5l" to="qvpu:~AreaListenerRegistry.registerListener(org.modelix.model.area.IArea,org.modelix.model.area.IAreaListener)" resolve="registerListener" />
              <node concept="Xjq3P" id="28I3pJBZt3V" role="37wK5m" />
              <node concept="37vLTw" id="28I3pJBZthW" role="37wK5m">
                <ref role="3cqZAo" node="5mRomlpwkBt" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5mRomlpwkBx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5mRomlpwkBy" role="jymVt">
      <property role="TrG5h" value="removeListener" />
      <node concept="3Tm1VV" id="5mRomlpwkBz" role="1B3o_S" />
      <node concept="3cqZAl" id="5mRomlpwkB_" role="3clF45" />
      <node concept="37vLTG" id="5mRomlpwkBA" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="5mRomlpwkBB" role="1tU5fm">
          <ref role="3uigEE" to="qvpu:~IAreaListener" resolve="IAreaListener" />
        </node>
        <node concept="2AHcQZ" id="5mRomlpwkBC" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="5mRomlpwkBD" role="3clF47">
        <node concept="3clFbF" id="28I3pJBZtwD" role="3cqZAp">
          <node concept="2OqwBi" id="28I3pJBZtwE" role="3clFbG">
            <node concept="10M0yZ" id="28I3pJBZtwF" role="2Oq$k0">
              <ref role="1PxDUh" to="qvpu:~AreaListenerRegistry" resolve="AreaListenerRegistry" />
              <ref role="3cqZAo" to="qvpu:~AreaListenerRegistry.INSTANCE" resolve="INSTANCE" />
            </node>
            <node concept="liA8E" id="28I3pJBZtwG" role="2OqNvi">
              <ref role="37wK5l" to="qvpu:~AreaListenerRegistry.registerListener(org.modelix.model.area.IArea,org.modelix.model.area.IAreaListener)" resolve="registerListener" />
              <node concept="Xjq3P" id="28I3pJBZtwH" role="37wK5m" />
              <node concept="37vLTw" id="28I3pJBZtwI" role="37wK5m">
                <ref role="3cqZAo" node="5mRomlpwkBA" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5mRomlpwkBE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5mRomlpwmyU" role="jymVt" />
    <node concept="3clFb_" id="28I3pJBX2AN" role="jymVt">
      <property role="TrG5h" value="wrapNode" />
      <node concept="37vLTG" id="28I3pJBX4KS" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="28I3pJBX5ry" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
        <node concept="2AHcQZ" id="28I3pJBXnvW" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3uibUv" id="28I3pJBX6FH" role="3clF45">
        <ref role="3uigEE" node="28I3pJBWGG9" resolve="VirtualRepositoryArea.NodeWrapper" />
      </node>
      <node concept="3Tm1VV" id="28I3pJBX2AQ" role="1B3o_S" />
      <node concept="3clFbS" id="28I3pJBX2AR" role="3clF47">
        <node concept="3clFbF" id="28I3pJBXl2i" role="3cqZAp">
          <node concept="3K4zz7" id="28I3pJBXlww" role="3clFbG">
            <node concept="3clFbC" id="28I3pJBXl7V" role="3K4Cdx">
              <node concept="10Nm6u" id="28I3pJBXlnJ" role="3uHU7w" />
              <node concept="37vLTw" id="28I3pJBXl2h" role="3uHU7B">
                <ref role="3cqZAo" node="28I3pJBX4KS" resolve="node" />
              </node>
            </node>
            <node concept="10Nm6u" id="28I3pJBXmgW" role="3K4E3e" />
            <node concept="2ShNRf" id="28I3pJBX86a" role="3K4GZi">
              <node concept="1pGfFk" id="28I3pJBXju6" role="2ShVmc">
                <ref role="37wK5l" node="28I3pJBWNNh" resolve="VirtualRepositoryArea.NodeWrapper" />
                <node concept="37vLTw" id="28I3pJBXkbS" role="37wK5m">
                  <ref role="3cqZAo" node="28I3pJBX4KS" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4z6TrYVZLvh" role="jymVt" />
    <node concept="3clFb_" id="4z6TrYVZNRA" role="jymVt">
      <property role="TrG5h" value="unwrap" />
      <node concept="37vLTG" id="4z6TrYVZUoL" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="4z6TrYVZWaD" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
      </node>
      <node concept="3uibUv" id="4z6TrYVZSeq" role="3clF45">
        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
      </node>
      <node concept="3Tm1VV" id="4z6TrYVZNRD" role="1B3o_S" />
      <node concept="3clFbS" id="4z6TrYVZNRE" role="3clF47">
        <node concept="3clFbF" id="4z6TrYVZXD_" role="3cqZAp">
          <node concept="3K4zz7" id="4z6TrYW0a_U" role="3clFbG">
            <node concept="2OqwBi" id="4z6TrYW0dy$" role="3K4E3e">
              <node concept="1eOMI4" id="4z6TrYW0c2q" role="2Oq$k0">
                <node concept="10QFUN" id="4z6TrYW0c2n" role="1eOMHV">
                  <node concept="3uibUv" id="4z6TrYW0cfw" role="10QFUM">
                    <ref role="3uigEE" node="28I3pJBWGG9" resolve="VirtualRepositoryArea.NodeWrapper" />
                  </node>
                  <node concept="37vLTw" id="4z6TrYW0dgn" role="10QFUP">
                    <ref role="3cqZAo" node="4z6TrYVZUoL" resolve="node" />
                  </node>
                </node>
              </node>
              <node concept="2OwXpG" id="4z6TrYW0eL5" role="2OqNvi">
                <ref role="2Oxat5" node="28I3pJBWL4h" resolve="node" />
              </node>
            </node>
            <node concept="37vLTw" id="4z6TrYW0f_1" role="3K4GZi">
              <ref role="3cqZAo" node="4z6TrYVZUoL" resolve="node" />
            </node>
            <node concept="1Wc70l" id="4z6TrYW00nH" role="3K4Cdx">
              <node concept="2ZW3vV" id="4z6TrYVZYMX" role="3uHU7B">
                <node concept="3uibUv" id="4z6TrYVZZ4u" role="2ZW6by">
                  <ref role="3uigEE" node="28I3pJBWGG9" resolve="VirtualRepositoryArea.NodeWrapper" />
                </node>
                <node concept="37vLTw" id="4z6TrYVZXD$" role="2ZW6bz">
                  <ref role="3cqZAo" node="4z6TrYVZUoL" resolve="node" />
                </node>
              </node>
              <node concept="17R0WA" id="4z6TrYW099W" role="3uHU7w">
                <node concept="Xjq3P" id="4z6TrYW0akx" role="3uHU7w" />
                <node concept="2OqwBi" id="4z6TrYW04XI" role="3uHU7B">
                  <node concept="37vLTw" id="4z6TrYW04MX" role="2Oq$k0">
                    <ref role="3cqZAo" node="4z6TrYVZUoL" resolve="node" />
                  </node>
                  <node concept="liA8E" id="4z6TrYW05TR" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~INode.getArea()" resolve="getArea" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="28I3pJBYjbC" role="jymVt" />
    <node concept="3clFb_" id="28I3pJBXNZk" role="jymVt">
      <property role="TrG5h" value="isTransparentParent" />
      <node concept="37vLTG" id="28I3pJBXShc" role="3clF46">
        <property role="TrG5h" value="parent" />
        <node concept="3uibUv" id="28I3pJBXTdY" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
      </node>
      <node concept="10P_77" id="28I3pJBXVu2" role="3clF45" />
      <node concept="3Tmbuc" id="28I3pJBXUnN" role="1B3o_S" />
      <node concept="3clFbS" id="28I3pJBXNZo" role="3clF47">
        <node concept="3cpWs8" id="28I3pJBXWtd" role="3cqZAp">
          <node concept="3cpWsn" id="28I3pJBXWte" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3uibUv" id="28I3pJBXWtf" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
            </node>
            <node concept="2OqwBi" id="28I3pJBXWtg" role="33vP2m">
              <node concept="37vLTw" id="28I3pJBXXMi" role="2Oq$k0">
                <ref role="3cqZAo" node="28I3pJBXShc" resolve="parent" />
              </node>
              <node concept="liA8E" id="28I3pJBXWti" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~INode.getConcept()" resolve="getConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="28I3pJBXWkq" role="3cqZAp">
          <node concept="22lmx$" id="28I3pJBXWks" role="3clFbG">
            <node concept="22lmx$" id="28I3pJBXWkt" role="3uHU7B">
              <node concept="3clFbC" id="28I3pJBXWku" role="3uHU7B">
                <node concept="37vLTw" id="28I3pJBXYeU" role="3uHU7B">
                  <ref role="3cqZAo" node="28I3pJBXWte" resolve="concept" />
                </node>
                <node concept="10Nm6u" id="28I3pJBXWkw" role="3uHU7w" />
              </node>
              <node concept="2OqwBi" id="28I3pJBXWkx" role="3uHU7w">
                <node concept="37vLTw" id="28I3pJBXWky" role="2Oq$k0">
                  <ref role="3cqZAo" node="28I3pJBXWte" resolve="concept" />
                </node>
                <node concept="liA8E" id="28I3pJBXWkz" role="2OqNvi">
                  <ref role="37wK5l" to="jks5:~IConcept.isSubconceptOf(org.modelix.model.api.IConcept)" resolve="isSubconceptOf" />
                  <node concept="2YIFZM" id="28I3pJBXWk$" role="37wK5m">
                    <ref role="1Pybhc" to="xxte:5gTrVpGjuL2" resolve="SConceptAdapter" />
                    <ref role="37wK5l" to="xxte:3ECE8iPOmg5" resolve="wrap" />
                    <node concept="35c_gC" id="28I3pJBXWk_" role="37wK5m">
                      <ref role="35c_gD" to="jh6v:qmkA5fOskm" resolve="Repository" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="28I3pJBXWkA" role="3uHU7w">
              <node concept="37vLTw" id="28I3pJBXWkB" role="2Oq$k0">
                <ref role="3cqZAo" node="28I3pJBXWte" resolve="concept" />
              </node>
              <node concept="liA8E" id="28I3pJBXWkC" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~IConcept.isSubconceptOf(org.modelix.model.api.IConcept)" resolve="isSubconceptOf" />
                <node concept="2YIFZM" id="28I3pJBXWkD" role="37wK5m">
                  <ref role="1Pybhc" to="xxte:5gTrVpGjuL2" resolve="SConceptAdapter" />
                  <ref role="37wK5l" to="xxte:3ECE8iPOmg5" resolve="wrap" />
                  <node concept="35c_gC" id="28I3pJBXWkE" role="37wK5m">
                    <ref role="35c_gD" to="jh6v:3uw$nPCBu_p" resolve="Project" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="28I3pJBX1J4" role="jymVt" />
    <node concept="312cEu" id="5mRomlpwn_7" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="RootNode" />
      <node concept="3Tm1VV" id="5mRomlpwn_8" role="1B3o_S" />
      <node concept="3uibUv" id="5mRomlpwokq" role="EKbjA">
        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
      </node>
      <node concept="3clFbW" id="5mRomlpx_Cg" role="jymVt">
        <node concept="3cqZAl" id="5mRomlpx_Ch" role="3clF45" />
        <node concept="3Tm6S6" id="5mRomlpxCiV" role="1B3o_S" />
        <node concept="3clFbS" id="5mRomlpx_Ck" role="3clF47" />
      </node>
      <node concept="3clFb_" id="5mRomlpwoZ4" role="jymVt">
        <property role="TrG5h" value="getArea" />
        <node concept="3Tm1VV" id="5mRomlpwoZ5" role="1B3o_S" />
        <node concept="2AHcQZ" id="5mRomlpwoZ7" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="mtS_g4rjfH" role="3clF45">
          <ref role="3uigEE" node="5mRomlpwjXf" resolve="VirtualRepositoryArea" />
        </node>
        <node concept="3clFbS" id="5mRomlpwoZ9" role="3clF47">
          <node concept="3clFbF" id="5mRomlpwqhQ" role="3cqZAp">
            <node concept="Xjq3P" id="5mRomlpwqhP" role="3clFbG">
              <ref role="1HBi2w" node="5mRomlpwjXf" resolve="VirtualRepositoryArea" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5mRomlpwoZa" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5mRomlpwoZd" role="jymVt">
        <property role="TrG5h" value="isValid" />
        <node concept="3Tm1VV" id="5mRomlpwoZe" role="1B3o_S" />
        <node concept="10P_77" id="5mRomlpwoZg" role="3clF45" />
        <node concept="3clFbS" id="5mRomlpwoZh" role="3clF47">
          <node concept="3clFbF" id="5mRomlpwqOT" role="3cqZAp">
            <node concept="3clFbT" id="5mRomlpwqOS" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5mRomlpwoZi" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5mRomlpwoZl" role="jymVt">
        <property role="TrG5h" value="getReference" />
        <node concept="3Tm1VV" id="5mRomlpwoZm" role="1B3o_S" />
        <node concept="2AHcQZ" id="5mRomlpwoZo" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="5mRomlpwoZp" role="3clF45">
          <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
        </node>
        <node concept="3clFbS" id="5mRomlpwoZq" role="3clF47">
          <node concept="3clFbF" id="mtS_g4refO" role="3cqZAp">
            <node concept="2ShNRf" id="mtS_g4refI" role="3clFbG">
              <node concept="1pGfFk" id="mtS_g4rhT3" role="2ShVmc">
                <ref role="37wK5l" node="mtS_g4qYKl" resolve="VirtualRepositoryArea.RootNodeReference" />
                <node concept="2OqwBi" id="mtS_g4ris_" role="37wK5m">
                  <node concept="1rXfSq" id="mtS_g4ri2r" role="2Oq$k0">
                    <ref role="37wK5l" node="5mRomlpwoZ4" resolve="getArea" />
                  </node>
                  <node concept="liA8E" id="mtS_g4riTA" role="2OqNvi">
                    <ref role="37wK5l" node="7$7_4Ziiz7V" resolve="getReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5mRomlpwoZr" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5mRomlpwoZu" role="jymVt">
        <property role="TrG5h" value="getConcept" />
        <node concept="3Tm1VV" id="5mRomlpwoZv" role="1B3o_S" />
        <node concept="2AHcQZ" id="5mRomlpwoZx" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="5mRomlpwoZy" role="3clF45">
          <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
        </node>
        <node concept="3clFbS" id="5mRomlpwoZz" role="3clF47">
          <node concept="3clFbF" id="5mRomlpwsWM" role="3cqZAp">
            <node concept="2YIFZM" id="5mRomlpwsXr" role="3clFbG">
              <ref role="37wK5l" to="xxte:3ECE8iPOmg5" resolve="wrap" />
              <ref role="1Pybhc" to="xxte:5gTrVpGjuL2" resolve="SConceptAdapter" />
              <node concept="35c_gC" id="5mRomlpwtBw" role="37wK5m">
                <ref role="35c_gD" to="jh6v:qmkA5fOskm" resolve="Repository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5mRomlpwoZ$" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5mRomlpwoZB" role="jymVt">
        <property role="TrG5h" value="getRoleInParent" />
        <node concept="3Tm1VV" id="5mRomlpwoZC" role="1B3o_S" />
        <node concept="2AHcQZ" id="5mRomlpwoZE" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="17QB3L" id="28I3pJBZaar" role="3clF45" />
        <node concept="3clFbS" id="5mRomlpwoZG" role="3clF47">
          <node concept="3clFbF" id="5mRomlpwoZJ" role="3cqZAp">
            <node concept="10Nm6u" id="5mRomlpwoZI" role="3clFbG" />
          </node>
        </node>
        <node concept="2AHcQZ" id="5mRomlpwoZH" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5mRomlpwoZK" role="jymVt">
        <property role="TrG5h" value="getParent" />
        <node concept="3Tm1VV" id="5mRomlpwoZL" role="1B3o_S" />
        <node concept="2AHcQZ" id="5mRomlpwoZN" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="5mRomlpwoZO" role="3clF45">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
        <node concept="3clFbS" id="5mRomlpwoZP" role="3clF47">
          <node concept="3clFbF" id="5mRomlpwoZS" role="3cqZAp">
            <node concept="10Nm6u" id="5mRomlpwoZR" role="3clFbG" />
          </node>
        </node>
        <node concept="2AHcQZ" id="5mRomlpwoZQ" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5mRomlpwoZT" role="jymVt">
        <property role="TrG5h" value="getChildren" />
        <node concept="3Tm1VV" id="5mRomlpwoZU" role="1B3o_S" />
        <node concept="2AHcQZ" id="5mRomlpwoZW" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="5mRomlpwoZX" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="5mRomlpwoZY" role="11_B2D">
            <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
          </node>
        </node>
        <node concept="37vLTG" id="5mRomlpwoZZ" role="3clF46">
          <property role="TrG5h" value="role" />
          <node concept="17QB3L" id="5mRomlpwtQO" role="1tU5fm" />
          <node concept="2AHcQZ" id="5mRomlpwp01" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          </node>
        </node>
        <node concept="3clFbS" id="5mRomlpwp02" role="3clF47">
          <node concept="3clFbJ" id="5mRomlpwwBv" role="3cqZAp">
            <node concept="17R0WA" id="5mRomlpwxQj" role="3clFbw">
              <node concept="2OqwBi" id="5mRomlpwzcP" role="3uHU7w">
                <node concept="359W_D" id="5mRomlpwyJ7" role="2Oq$k0">
                  <ref role="359W_E" to="jh6v:qmkA5fOskm" resolve="Repository" />
                  <ref role="359W_F" to="jh6v:qmkA5fOskn" resolve="modules" />
                </node>
                <node concept="liA8E" id="5mRomlpw$kr" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                </node>
              </node>
              <node concept="37vLTw" id="5mRomlpwwWw" role="3uHU7B">
                <ref role="3cqZAo" node="5mRomlpwoZZ" resolve="role" />
              </node>
            </node>
            <node concept="3clFbS" id="5mRomlpwwBx" role="3clFbx">
              <node concept="3cpWs8" id="5mRomlpxc28" role="3cqZAp">
                <node concept="3cpWsn" id="5mRomlpxc2b" role="3cpWs9">
                  <property role="TrG5h" value="modules" />
                  <node concept="_YKpA" id="5mRomlpxc24" role="1tU5fm">
                    <node concept="3uibUv" id="5mRomlpxclO" role="_ZDj9">
                      <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="5mRomlpxdEy" role="33vP2m">
                    <node concept="Tc6Ow" id="5mRomlpxdlj" role="2ShVmc">
                      <node concept="3uibUv" id="5mRomlpxdlk" role="HW$YZ">
                        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5mRomlpxf7c" role="3cqZAp">
                <node concept="1rXfSq" id="5mRomlpxf7a" role="3clFbG">
                  <ref role="37wK5l" node="5mRomlpwOvy" resolve="collectModules" />
                  <node concept="2OqwBi" id="5mRomlpxgVN" role="37wK5m">
                    <node concept="37vLTw" id="5mRomlpxgcc" role="2Oq$k0">
                      <ref role="3cqZAo" node="5mRomlpwuYC" resolve="wrappedArea" />
                    </node>
                    <node concept="liA8E" id="5mRomlpxhpX" role="2OqNvi">
                      <ref role="37wK5l" to="qvpu:~IArea.getRoot()" resolve="getRoot" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5mRomlpxier" role="37wK5m">
                    <ref role="3cqZAo" node="5mRomlpxc2b" resolve="modules" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5mRomlpxj5F" role="3cqZAp">
                <node concept="37vLTw" id="5mRomlpxj_d" role="3cqZAk">
                  <ref role="3cqZAo" node="5mRomlpxc2b" resolve="modules" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="5mRomlpw$lB" role="9aQIa">
              <node concept="3clFbS" id="5mRomlpw$lC" role="9aQI4">
                <node concept="3cpWs6" id="5mRomlpw$It" role="3cqZAp">
                  <node concept="2YIFZM" id="5mRomlpwKOM" role="3cqZAk">
                    <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                    <node concept="3uibUv" id="5mRomlpxb0p" role="3PaCim">
                      <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5mRomlpwp03" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5mRomlpwOvy" role="jymVt">
        <property role="TrG5h" value="collectModules" />
        <node concept="37vLTG" id="5mRomlpwQnh" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="5mRomlpwR9N" role="1tU5fm">
            <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
          </node>
        </node>
        <node concept="37vLTG" id="5mRomlpwRB3" role="3clF46">
          <property role="TrG5h" value="acc" />
          <node concept="_YKpA" id="5mRomlpwSpB" role="1tU5fm">
            <node concept="3uibUv" id="5mRomlpwSBS" role="_ZDj9">
              <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="5mRomlpwOv$" role="3clF45" />
        <node concept="3Tm6S6" id="5mRomlpwT6u" role="1B3o_S" />
        <node concept="3clFbS" id="5mRomlpwOvA" role="3clF47">
          <node concept="3clFbJ" id="5mRomlpwVZG" role="3cqZAp">
            <node concept="3clFbS" id="5mRomlpwVZI" role="3clFbx">
              <node concept="2Gpval" id="5mRomlpx457" role="3cqZAp">
                <node concept="2GrKxI" id="5mRomlpx45a" role="2Gsz3X">
                  <property role="TrG5h" value="child" />
                </node>
                <node concept="2OqwBi" id="5mRomlpx4y4" role="2GsD0m">
                  <node concept="37vLTw" id="5mRomlpx4qY" role="2Oq$k0">
                    <ref role="3cqZAo" node="5mRomlpwQnh" resolve="node" />
                  </node>
                  <node concept="liA8E" id="5mRomlpx4HU" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~INode.getAllChildren()" resolve="getAllChildren" />
                  </node>
                </node>
                <node concept="3clFbS" id="5mRomlpx45g" role="2LFqv$">
                  <node concept="3clFbF" id="5mRomlpx5LH" role="3cqZAp">
                    <node concept="1rXfSq" id="5mRomlpx5LG" role="3clFbG">
                      <ref role="37wK5l" node="5mRomlpwOvy" resolve="collectModules" />
                      <node concept="2GrUjf" id="5mRomlpx6nA" role="37wK5m">
                        <ref role="2Gs0qQ" node="5mRomlpx45a" resolve="child" />
                      </node>
                      <node concept="37vLTw" id="5mRomlpx6M_" role="37wK5m">
                        <ref role="3cqZAo" node="5mRomlpwRB3" resolve="acc" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1rXfSq" id="28I3pJBXZ80" role="3clFbw">
              <ref role="37wK5l" node="28I3pJBXNZk" resolve="isTransparentParent" />
              <node concept="37vLTw" id="28I3pJBXZP5" role="37wK5m">
                <ref role="3cqZAo" node="5mRomlpwQnh" resolve="node" />
              </node>
            </node>
            <node concept="3eNFk2" id="5mRomlpx6RA" role="3eNLev">
              <node concept="3clFbS" id="5mRomlpx6RC" role="3eOfB_">
                <node concept="3clFbF" id="5mRomlpx7rz" role="3cqZAp">
                  <node concept="2OqwBi" id="5mRomlpx8ps" role="3clFbG">
                    <node concept="37vLTw" id="5mRomlpx7ry" role="2Oq$k0">
                      <ref role="3cqZAo" node="5mRomlpwRB3" resolve="acc" />
                    </node>
                    <node concept="TSZUe" id="5mRomlpx9Ah" role="2OqNvi">
                      <node concept="37vLTw" id="5mRomlpx9Yq" role="25WWJ7">
                        <ref role="3cqZAo" node="5mRomlpwQnh" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2EnYce" id="28I3pJBY1OY" role="3eO9$A">
                <node concept="2OqwBi" id="28I3pJBXZTj" role="2Oq$k0">
                  <node concept="37vLTw" id="28I3pJBXZTk" role="2Oq$k0">
                    <ref role="3cqZAo" node="5mRomlpwQnh" resolve="node" />
                  </node>
                  <node concept="liA8E" id="28I3pJBXZTl" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~INode.getConcept()" resolve="getConcept" />
                  </node>
                </node>
                <node concept="liA8E" id="5mRomlpx6Yl" role="2OqNvi">
                  <ref role="37wK5l" to="jks5:~IConcept.isSubconceptOf(org.modelix.model.api.IConcept)" resolve="isSubconceptOf" />
                  <node concept="2YIFZM" id="5mRomlpx6Ym" role="37wK5m">
                    <ref role="1Pybhc" to="xxte:5gTrVpGjuL2" resolve="SConceptAdapter" />
                    <ref role="37wK5l" to="xxte:3ECE8iPOmg5" resolve="wrap" />
                    <node concept="35c_gC" id="5mRomlpx6Yn" role="37wK5m">
                      <ref role="35c_gD" to="jh6v:qmkA5fOskf" resolve="Module" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="5mRomlpwp06" role="jymVt">
        <property role="TrG5h" value="getAllChildren" />
        <node concept="3Tm1VV" id="5mRomlpwp07" role="1B3o_S" />
        <node concept="2AHcQZ" id="5mRomlpwp09" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="5mRomlpwp0a" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="5mRomlpwp0b" role="11_B2D">
            <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
          </node>
        </node>
        <node concept="3clFbS" id="5mRomlpwp0c" role="3clF47">
          <node concept="3clFbF" id="5mRomlpxl5I" role="3cqZAp">
            <node concept="1rXfSq" id="5mRomlpxl5H" role="3clFbG">
              <ref role="37wK5l" node="5mRomlpwoZT" resolve="getChildren" />
              <node concept="2OqwBi" id="5mRomlpxlnu" role="37wK5m">
                <node concept="359W_D" id="5mRomlpxlnv" role="2Oq$k0">
                  <ref role="359W_E" to="jh6v:qmkA5fOskm" resolve="Repository" />
                  <ref role="359W_F" to="jh6v:qmkA5fOskn" resolve="modules" />
                </node>
                <node concept="liA8E" id="5mRomlpxlnw" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5mRomlpwp0d" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5mRomlpwp0g" role="jymVt">
        <property role="TrG5h" value="moveChild" />
        <node concept="3Tm1VV" id="5mRomlpwp0h" role="1B3o_S" />
        <node concept="3cqZAl" id="5mRomlpwp0j" role="3clF45" />
        <node concept="37vLTG" id="5mRomlpwp0k" role="3clF46">
          <property role="TrG5h" value="role" />
          <node concept="17QB3L" id="5mRomlpxlzT" role="1tU5fm" />
          <node concept="2AHcQZ" id="5mRomlpwp0m" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          </node>
        </node>
        <node concept="37vLTG" id="5mRomlpwp0n" role="3clF46">
          <property role="TrG5h" value="index" />
          <node concept="10Oyi0" id="5mRomlpwp0o" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="5mRomlpwp0p" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="5mRomlpwp0q" role="1tU5fm">
            <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
          </node>
          <node concept="2AHcQZ" id="5mRomlpwp0r" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="5mRomlpwp0s" role="3clF47">
          <node concept="YS8fn" id="5mRomlpxn5L" role="3cqZAp">
            <node concept="2ShNRf" id="5mRomlpxnr6" role="YScLw">
              <node concept="1pGfFk" id="5mRomlpxpoH" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                <node concept="Xl_RD" id="5mRomlpxpKW" role="37wK5m">
                  <property role="Xl_RC" value="read only" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5mRomlpwp0t" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5mRomlpwp0u" role="jymVt">
        <property role="TrG5h" value="addNewChild" />
        <node concept="3Tm1VV" id="5mRomlpwp0v" role="1B3o_S" />
        <node concept="2AHcQZ" id="5mRomlpwp0x" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="5mRomlpwp0y" role="3clF45">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
        <node concept="37vLTG" id="5mRomlpwp0z" role="3clF46">
          <property role="TrG5h" value="role" />
          <node concept="17QB3L" id="5mRomlpxmdw" role="1tU5fm" />
          <node concept="2AHcQZ" id="5mRomlpwp0_" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          </node>
        </node>
        <node concept="37vLTG" id="5mRomlpwp0A" role="3clF46">
          <property role="TrG5h" value="index" />
          <node concept="10Oyi0" id="5mRomlpwp0B" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="5mRomlpwp0C" role="3clF46">
          <property role="TrG5h" value="concept" />
          <node concept="3uibUv" id="5mRomlpwp0D" role="1tU5fm">
            <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
          </node>
          <node concept="2AHcQZ" id="5mRomlpwp0E" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          </node>
        </node>
        <node concept="3clFbS" id="5mRomlpwp0F" role="3clF47">
          <node concept="3clFbJ" id="7eBq7Rk6Pzf" role="3cqZAp">
            <node concept="3clFbS" id="7eBq7Rk6Pzh" role="3clFbx">
              <node concept="3cpWs8" id="7eBq7Rk7iQC" role="3cqZAp">
                <node concept="3cpWsn" id="7eBq7Rk7iQD" role="3cpWs9">
                  <property role="TrG5h" value="existing_" />
                  <node concept="A3Dl8" id="7eBq7Rk7o5J" role="1tU5fm">
                    <node concept="3uibUv" id="7eBq7Rk7o5L" role="A3Ik2">
                      <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                    </node>
                  </node>
                  <node concept="1rXfSq" id="7eBq7Rk7iQE" role="33vP2m">
                    <ref role="37wK5l" node="5mRomlpwoZT" resolve="getChildren" />
                    <node concept="37vLTw" id="7eBq7Rk7iQF" role="37wK5m">
                      <ref role="3cqZAo" node="5mRomlpwp0z" resolve="role" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7eBq7Rk7uRQ" role="3cqZAp">
                <node concept="3cpWsn" id="7eBq7Rk7uRR" role="3cpWs9">
                  <property role="TrG5h" value="existing" />
                  <node concept="_YKpA" id="7eBq7Rk7tkh" role="1tU5fm">
                    <node concept="3uibUv" id="7eBq7Rk7tkk" role="_ZDj9">
                      <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7eBq7Rk7uRS" role="33vP2m">
                    <node concept="37vLTw" id="7eBq7Rk7uRT" role="2Oq$k0">
                      <ref role="3cqZAo" node="7eBq7Rk7iQD" resolve="existing_" />
                    </node>
                    <node concept="ANE8D" id="7eBq7Rk7uRU" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="7eBq7Rk7AKn" role="3cqZAp">
                <node concept="3clFbS" id="7eBq7Rk7AKp" role="3clFbx">
                  <node concept="3cpWs8" id="7eBq7Rk7IFZ" role="3cqZAp">
                    <node concept="3cpWsn" id="7eBq7Rk7IG0" role="3cpWs9">
                      <property role="TrG5h" value="anchor" />
                      <node concept="3uibUv" id="7eBq7Rk7HNv" role="1tU5fm">
                        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                      </node>
                      <node concept="1rXfSq" id="7eBq7Rk86d5" role="33vP2m">
                        <ref role="37wK5l" node="4z6TrYVZNRA" resolve="unwrap" />
                        <node concept="1y4W85" id="7eBq7Rk85c5" role="37wK5m">
                          <node concept="37vLTw" id="7eBq7Rk85g_" role="1y58nS">
                            <ref role="3cqZAo" node="5mRomlpwp0A" resolve="index" />
                          </node>
                          <node concept="37vLTw" id="7eBq7Rk7IG2" role="1y566C">
                            <ref role="3cqZAo" node="7eBq7Rk7uRR" resolve="existing" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="7eBq7Rk8bQi" role="3cqZAp">
                    <node concept="3cpWsn" id="7eBq7Rk8bQj" role="3cpWs9">
                      <property role="TrG5h" value="parent" />
                      <node concept="3uibUv" id="7eBq7Rk8b0V" role="1tU5fm">
                        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                      </node>
                      <node concept="2OqwBi" id="7eBq7Rk8bQk" role="33vP2m">
                        <node concept="37vLTw" id="7eBq7Rk8bQl" role="2Oq$k0">
                          <ref role="3cqZAo" node="7eBq7Rk7IG0" resolve="anchor" />
                        </node>
                        <node concept="liA8E" id="7eBq7Rk8bQm" role="2OqNvi">
                          <ref role="37wK5l" to="jks5:~INode.getParent()" resolve="getParent" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="7eBq7Rk8gDc" role="3cqZAp">
                    <node concept="3cpWsn" id="7eBq7Rk8gDd" role="3cpWs9">
                      <property role="TrG5h" value="localChildren" />
                      <node concept="A3Dl8" id="7eBq7Rk8jaM" role="1tU5fm">
                        <node concept="3uibUv" id="7eBq7Rk8jaO" role="A3Ik2">
                          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7eBq7Rk8gDe" role="33vP2m">
                        <node concept="37vLTw" id="7eBq7Rk8gDf" role="2Oq$k0">
                          <ref role="3cqZAo" node="7eBq7Rk8bQj" resolve="parent" />
                        </node>
                        <node concept="liA8E" id="7eBq7Rk8gDg" role="2OqNvi">
                          <ref role="37wK5l" to="jks5:~INode.getChildren(java.lang.String)" resolve="getChildren" />
                          <node concept="37vLTw" id="7eBq7Rk8gDh" role="37wK5m">
                            <ref role="3cqZAo" node="5mRomlpwp0z" resolve="role" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="7eBq7Rk8l97" role="3cqZAp">
                    <node concept="3cpWsn" id="7eBq7Rk8l98" role="3cpWs9">
                      <property role="TrG5h" value="localIndex" />
                      <node concept="10Oyi0" id="7eBq7Rk8l7s" role="1tU5fm" />
                      <node concept="2OqwBi" id="7eBq7Rk8l99" role="33vP2m">
                        <node concept="37vLTw" id="7eBq7Rk8l9a" role="2Oq$k0">
                          <ref role="3cqZAo" node="7eBq7Rk8gDd" resolve="localChildren" />
                        </node>
                        <node concept="2WmjW8" id="7eBq7Rk8l9b" role="2OqNvi">
                          <node concept="37vLTw" id="7eBq7Rk8l9c" role="25WWJ7">
                            <ref role="3cqZAo" node="7eBq7Rk7IG0" resolve="anchor" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="7eBq7Rk8m6O" role="3cqZAp">
                    <node concept="1rXfSq" id="7eBq7Rk8pZf" role="3cqZAk">
                      <ref role="37wK5l" node="28I3pJBX2AN" resolve="wrapNode" />
                      <node concept="2OqwBi" id="7eBq7Rk8m6Q" role="37wK5m">
                        <node concept="2OqwBi" id="7eBq7Rk8m6R" role="2Oq$k0">
                          <node concept="37vLTw" id="7eBq7Rk8m6S" role="2Oq$k0">
                            <ref role="3cqZAo" node="7eBq7Rk7IG0" resolve="anchor" />
                          </node>
                          <node concept="liA8E" id="7eBq7Rk8m6T" role="2OqNvi">
                            <ref role="37wK5l" to="jks5:~INode.getParent()" resolve="getParent" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7eBq7Rk8m6U" role="2OqNvi">
                          <ref role="37wK5l" to="jks5:~INode.addNewChild(java.lang.String,int,org.modelix.model.api.IConcept)" resolve="addNewChild" />
                          <node concept="37vLTw" id="7eBq7Rk8m6V" role="37wK5m">
                            <ref role="3cqZAo" node="5mRomlpwp0z" resolve="role" />
                          </node>
                          <node concept="37vLTw" id="7eBq7Rk8m6W" role="37wK5m">
                            <ref role="3cqZAo" node="7eBq7Rk8l98" resolve="localIndex" />
                          </node>
                          <node concept="37vLTw" id="7eBq7Rk8m6X" role="37wK5m">
                            <ref role="3cqZAo" node="5mRomlpwp0C" resolve="concept" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="22lmx$" id="7eBq7Rk7XqL" role="3clFbw">
                  <node concept="3eOVzh" id="7eBq7Rk80rf" role="3uHU7w">
                    <node concept="2OqwBi" id="7eBq7Rk81nd" role="3uHU7w">
                      <node concept="37vLTw" id="7eBq7Rk80Mv" role="2Oq$k0">
                        <ref role="3cqZAo" node="7eBq7Rk7uRR" resolve="existing" />
                      </node>
                      <node concept="34oBXx" id="7eBq7Rk81Do" role="2OqNvi" />
                    </node>
                    <node concept="37vLTw" id="7eBq7Rk7XKT" role="3uHU7B">
                      <ref role="3cqZAo" node="5mRomlpwp0A" resolve="index" />
                    </node>
                  </node>
                  <node concept="2dkUwp" id="7eBq7Rk7ZnD" role="3uHU7B">
                    <node concept="37vLTw" id="7eBq7Rk7ZpW" role="3uHU7w">
                      <ref role="3cqZAo" node="5mRomlpwp0A" resolve="index" />
                    </node>
                    <node concept="3cmrfG" id="7eBq7Rk7Yy_" role="3uHU7B">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="7eBq7Rk7POY" role="9aQIa">
                  <node concept="3clFbS" id="7eBq7Rk7POZ" role="9aQI4">
                    <node concept="3cpWs6" id="7eBq7Rk8yMe" role="3cqZAp">
                      <node concept="2OqwBi" id="7eBq7Rk8yMg" role="3cqZAk">
                        <node concept="2OqwBi" id="7eBq7Rk8yMh" role="2Oq$k0">
                          <node concept="1rXfSq" id="7eBq7Rk8Cbu" role="2Oq$k0">
                            <ref role="37wK5l" node="4z6TrYVZNRA" resolve="unwrap" />
                            <node concept="2OqwBi" id="7eBq7Rk8yMi" role="37wK5m">
                              <node concept="37vLTw" id="7eBq7Rk8yMj" role="2Oq$k0">
                                <ref role="3cqZAo" node="7eBq7Rk7uRR" resolve="existing" />
                              </node>
                              <node concept="1yVyf7" id="7eBq7Rk8yMk" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7eBq7Rk8yMl" role="2OqNvi">
                            <ref role="37wK5l" to="jks5:~INode.getParent()" resolve="getParent" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7eBq7Rk8yMm" role="2OqNvi">
                          <ref role="37wK5l" to="jks5:~INode.addNewChild(java.lang.String,int,org.modelix.model.api.IConcept)" resolve="addNewChild" />
                          <node concept="37vLTw" id="7eBq7Rk8yMn" role="37wK5m">
                            <ref role="3cqZAo" node="5mRomlpwp0z" resolve="role" />
                          </node>
                          <node concept="3cmrfG" id="7eBq7Rk8yMo" role="37wK5m">
                            <property role="3cmrfH" value="-1" />
                          </node>
                          <node concept="37vLTw" id="7eBq7Rk8yMp" role="37wK5m">
                            <ref role="3cqZAo" node="5mRomlpwp0C" resolve="concept" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="17R0WA" id="7eBq7Rk6P$n" role="3clFbw">
              <node concept="2OqwBi" id="7eBq7Rk6P$o" role="3uHU7w">
                <node concept="359W_D" id="7eBq7Rk6P$p" role="2Oq$k0">
                  <ref role="359W_E" to="jh6v:qmkA5fOskm" resolve="Repository" />
                  <ref role="359W_F" to="jh6v:qmkA5fOskn" resolve="modules" />
                </node>
                <node concept="liA8E" id="7eBq7Rk6P$q" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                </node>
              </node>
              <node concept="37vLTw" id="7eBq7Rk6P$r" role="3uHU7B">
                <ref role="3cqZAo" node="5mRomlpwp0z" resolve="role" />
              </node>
            </node>
            <node concept="9aQIb" id="7eBq7Rk6PSP" role="9aQIa">
              <node concept="3clFbS" id="7eBq7Rk6PSQ" role="9aQI4">
                <node concept="YS8fn" id="5mRomlpxq2L" role="3cqZAp">
                  <node concept="2ShNRf" id="5mRomlpxq2M" role="YScLw">
                    <node concept="1pGfFk" id="5mRomlpxq2N" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                      <node concept="3cpWs3" id="7eBq7Rk6QNZ" role="37wK5m">
                        <node concept="Xl_RD" id="7eBq7Rk6Qd8" role="3uHU7B">
                          <property role="Xl_RC" value="can only add to role " />
                        </node>
                        <node concept="2OqwBi" id="7eBq7Rk6QQt" role="3uHU7w">
                          <node concept="359W_D" id="7eBq7Rk6QQu" role="2Oq$k0">
                            <ref role="359W_E" to="jh6v:qmkA5fOskm" resolve="Repository" />
                            <ref role="359W_F" to="jh6v:qmkA5fOskn" resolve="modules" />
                          </node>
                          <node concept="liA8E" id="7eBq7Rk6QQv" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
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
        <node concept="2AHcQZ" id="5mRomlpwp0G" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5mRomlpwp0J" role="jymVt">
        <property role="TrG5h" value="removeChild" />
        <node concept="3Tm1VV" id="5mRomlpwp0K" role="1B3o_S" />
        <node concept="3cqZAl" id="5mRomlpwp0M" role="3clF45" />
        <node concept="37vLTG" id="5mRomlpwp0N" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="5mRomlpwp0O" role="1tU5fm">
            <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
          </node>
          <node concept="2AHcQZ" id="5mRomlpwp0P" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="5mRomlpwp0Q" role="3clF47">
          <node concept="YS8fn" id="5mRomlpxqa_" role="3cqZAp">
            <node concept="2ShNRf" id="5mRomlpxqaA" role="YScLw">
              <node concept="1pGfFk" id="5mRomlpxqaB" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                <node concept="Xl_RD" id="5mRomlpxqaC" role="37wK5m">
                  <property role="Xl_RC" value="read only" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5mRomlpwp0R" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5mRomlpwp0S" role="jymVt">
        <property role="TrG5h" value="getReferenceTarget" />
        <node concept="3Tm1VV" id="5mRomlpwp0T" role="1B3o_S" />
        <node concept="2AHcQZ" id="5mRomlpwp0V" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="5mRomlpwp0W" role="3clF45">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
        <node concept="37vLTG" id="5mRomlpwp0X" role="3clF46">
          <property role="TrG5h" value="role" />
          <node concept="17QB3L" id="5mRomlpxqm0" role="1tU5fm" />
          <node concept="2AHcQZ" id="5mRomlpwp0Z" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="5mRomlpwp10" role="3clF47">
          <node concept="3clFbF" id="5mRomlpwp13" role="3cqZAp">
            <node concept="10Nm6u" id="5mRomlpwp12" role="3clFbG" />
          </node>
        </node>
        <node concept="2AHcQZ" id="5mRomlpwp11" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5mRomlpwp14" role="jymVt">
        <property role="TrG5h" value="setReferenceTarget" />
        <node concept="3Tm1VV" id="5mRomlpwp15" role="1B3o_S" />
        <node concept="3cqZAl" id="5mRomlpwp17" role="3clF45" />
        <node concept="37vLTG" id="5mRomlpwp18" role="3clF46">
          <property role="TrG5h" value="role" />
          <node concept="17QB3L" id="5mRomlpxrlO" role="1tU5fm" />
          <node concept="2AHcQZ" id="5mRomlpwp1a" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="5mRomlpwp1b" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="5mRomlpwp1c" role="1tU5fm">
            <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
          </node>
          <node concept="2AHcQZ" id="5mRomlpwp1d" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          </node>
        </node>
        <node concept="3clFbS" id="5mRomlpwp1e" role="3clF47">
          <node concept="YS8fn" id="5mRomlpxsbU" role="3cqZAp">
            <node concept="2ShNRf" id="5mRomlpxsbV" role="YScLw">
              <node concept="1pGfFk" id="5mRomlpxsbW" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                <node concept="Xl_RD" id="5mRomlpxsbX" role="37wK5m">
                  <property role="Xl_RC" value="read only" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5mRomlpwp1f" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5mRomlpwp1g" role="jymVt">
        <property role="TrG5h" value="getPropertyValue" />
        <node concept="3Tm1VV" id="5mRomlpwp1h" role="1B3o_S" />
        <node concept="2AHcQZ" id="5mRomlpwp1j" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="17QB3L" id="5mRomlpxsus" role="3clF45" />
        <node concept="37vLTG" id="5mRomlpwp1l" role="3clF46">
          <property role="TrG5h" value="role" />
          <node concept="17QB3L" id="5mRomlpxtuR" role="1tU5fm" />
          <node concept="2AHcQZ" id="5mRomlpwp1n" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="5mRomlpwp1o" role="3clF47">
          <node concept="3clFbF" id="5mRomlpwp1r" role="3cqZAp">
            <node concept="10Nm6u" id="5mRomlpwp1q" role="3clFbG" />
          </node>
        </node>
        <node concept="2AHcQZ" id="5mRomlpwp1p" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="5mRomlpwp1s" role="jymVt">
        <property role="TrG5h" value="setPropertyValue" />
        <node concept="3Tm1VV" id="5mRomlpwp1t" role="1B3o_S" />
        <node concept="3cqZAl" id="5mRomlpwp1v" role="3clF45" />
        <node concept="37vLTG" id="5mRomlpwp1w" role="3clF46">
          <property role="TrG5h" value="role" />
          <node concept="17QB3L" id="5mRomlpxu$9" role="1tU5fm" />
          <node concept="2AHcQZ" id="5mRomlpwp1y" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="5mRomlpwp1z" role="3clF46">
          <property role="TrG5h" value="value" />
          <node concept="17QB3L" id="5mRomlpxvxb" role="1tU5fm" />
          <node concept="2AHcQZ" id="5mRomlpwp1_" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          </node>
        </node>
        <node concept="3clFbS" id="5mRomlpwp1A" role="3clF47">
          <node concept="YS8fn" id="5mRomlpxuhk" role="3cqZAp">
            <node concept="2ShNRf" id="5mRomlpxuhl" role="YScLw">
              <node concept="1pGfFk" id="5mRomlpxuhm" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;(java.lang.String)" resolve="UnsupportedOperationException" />
                <node concept="Xl_RD" id="5mRomlpxuhn" role="37wK5m">
                  <property role="Xl_RC" value="read only" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="5mRomlpwp1B" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="mtS_g4qB$x" role="jymVt" />
    <node concept="312cEu" id="mtS_g4qKWx" role="jymVt">
      <property role="TrG5h" value="RootNodeReference" />
      <node concept="312cEg" id="mtS_g4qSdU" role="jymVt">
        <property role="TrG5h" value="areaRef" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm1VV" id="mtS_g4sdVn" role="1B3o_S" />
        <node concept="3uibUv" id="mtS_g4qX9Q" role="1tU5fm">
          <ref role="3uigEE" node="7$7_4ZiinS7" resolve="VirtualRepositoryArea.AreaReference" />
        </node>
      </node>
      <node concept="2tJIrI" id="mtS_g4qYt4" role="jymVt" />
      <node concept="3Tm1VV" id="mtS_g4qKWy" role="1B3o_S" />
      <node concept="3uibUv" id="mtS_g4qOFU" role="EKbjA">
        <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
      </node>
      <node concept="3clFbW" id="mtS_g4qYKl" role="jymVt">
        <node concept="3cqZAl" id="mtS_g4qYKm" role="3clF45" />
        <node concept="3Tm1VV" id="mtS_g4qYKn" role="1B3o_S" />
        <node concept="3clFbS" id="mtS_g4qYKp" role="3clF47">
          <node concept="3clFbF" id="mtS_g4qYKt" role="3cqZAp">
            <node concept="37vLTI" id="mtS_g4qYKv" role="3clFbG">
              <node concept="2OqwBi" id="mtS_g4qYKz" role="37vLTJ">
                <node concept="Xjq3P" id="mtS_g4qYK$" role="2Oq$k0" />
                <node concept="2OwXpG" id="mtS_g4qYK_" role="2OqNvi">
                  <ref role="2Oxat5" node="mtS_g4qSdU" resolve="areaRef" />
                </node>
              </node>
              <node concept="37vLTw" id="mtS_g4qYKA" role="37vLTx">
                <ref role="3cqZAo" node="mtS_g4qYKs" resolve="area" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="mtS_g4qYKs" role="3clF46">
          <property role="TrG5h" value="area" />
          <node concept="3uibUv" id="mtS_g4qYKr" role="1tU5fm">
            <ref role="3uigEE" node="7$7_4ZiinS7" resolve="VirtualRepositoryArea.AreaReference" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="mtS_g4qQ0s" role="jymVt">
        <property role="TrG5h" value="resolveNode" />
        <node concept="3Tm1VV" id="mtS_g4qQ0t" role="1B3o_S" />
        <node concept="2AHcQZ" id="mtS_g4qQ0v" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="mtS_g4qQ0w" role="3clF45">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
        <node concept="37vLTG" id="mtS_g4qQ0x" role="3clF46">
          <property role="TrG5h" value="contextArea" />
          <node concept="3uibUv" id="mtS_g4qQ0y" role="1tU5fm">
            <ref role="3uigEE" to="qvpu:~IArea" resolve="IArea" />
          </node>
          <node concept="2AHcQZ" id="mtS_g4qQ0z" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          </node>
        </node>
        <node concept="3clFbS" id="mtS_g4qQ0$" role="3clF47">
          <node concept="3cpWs8" id="6nnW$cPtYHn" role="3cqZAp">
            <node concept="3cpWsn" id="6nnW$cPtYHo" role="3cpWs9">
              <property role="TrG5h" value="virtualArea" />
              <node concept="3uibUv" id="6nnW$cPtvC7" role="1tU5fm">
                <ref role="3uigEE" to="qvpu:~IArea" resolve="IArea" />
              </node>
              <node concept="2EnYce" id="6nnW$cPtYHp" role="33vP2m">
                <node concept="37vLTw" id="6nnW$cPtYHq" role="2Oq$k0">
                  <ref role="3cqZAo" node="mtS_g4qQ0x" resolve="contextArea" />
                </node>
                <node concept="liA8E" id="6nnW$cPtYHr" role="2OqNvi">
                  <ref role="37wK5l" to="qvpu:~IArea.resolveArea(org.modelix.model.area.IAreaReference)" resolve="resolveArea" />
                  <node concept="37vLTw" id="6nnW$cPtYHs" role="37wK5m">
                    <ref role="3cqZAo" node="mtS_g4qSdU" resolve="areaRef" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6nnW$cPtZV7" role="3cqZAp">
            <node concept="3clFbS" id="6nnW$cPtZV9" role="3clFbx">
              <node concept="3cpWs8" id="6nnW$cPu4pF" role="3cqZAp">
                <node concept="3cpWsn" id="6nnW$cPu4pG" role="3cpWs9">
                  <property role="TrG5h" value="wrappedArea" />
                  <node concept="3uibUv" id="6nnW$cPu3W6" role="1tU5fm">
                    <ref role="3uigEE" to="qvpu:~IArea" resolve="IArea" />
                  </node>
                  <node concept="2EnYce" id="6nnW$cPu4pH" role="33vP2m">
                    <node concept="37vLTw" id="6nnW$cPu4pI" role="2Oq$k0">
                      <ref role="3cqZAo" node="mtS_g4qQ0x" resolve="contextArea" />
                    </node>
                    <node concept="liA8E" id="6nnW$cPu4pJ" role="2OqNvi">
                      <ref role="37wK5l" to="qvpu:~IArea.resolveArea(org.modelix.model.area.IAreaReference)" resolve="resolveArea" />
                      <node concept="2OqwBi" id="6nnW$cPu4pK" role="37wK5m">
                        <node concept="37vLTw" id="6nnW$cPu4pL" role="2Oq$k0">
                          <ref role="3cqZAo" node="mtS_g4qSdU" resolve="areaRef" />
                        </node>
                        <node concept="2OwXpG" id="6nnW$cPu4pM" role="2OqNvi">
                          <ref role="2Oxat5" node="7$7_4Ziis$R" resolve="wrappedArea" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6nnW$cPu5FU" role="3cqZAp">
                <node concept="3clFbS" id="6nnW$cPu5FW" role="3clFbx">
                  <node concept="3clFbF" id="6nnW$cPu5UV" role="3cqZAp">
                    <node concept="37vLTI" id="6nnW$cPu61O" role="3clFbG">
                      <node concept="2ShNRf" id="6nnW$cPu62W" role="37vLTx">
                        <node concept="1pGfFk" id="6nnW$cPu9NQ" role="2ShVmc">
                          <ref role="37wK5l" node="28I3pJBZSRq" resolve="VirtualRepositoryArea" />
                          <node concept="37vLTw" id="6nnW$cPua8$" role="37wK5m">
                            <ref role="3cqZAo" node="6nnW$cPu4pG" resolve="wrappedArea" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="6nnW$cPu5UT" role="37vLTJ">
                        <ref role="3cqZAo" node="6nnW$cPtYHo" resolve="virtualArea" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="6nnW$cPu5Rs" role="3clFbw">
                  <node concept="10Nm6u" id="6nnW$cPu5S_" role="3uHU7w" />
                  <node concept="37vLTw" id="6nnW$cPu5Ji" role="3uHU7B">
                    <ref role="3cqZAo" node="6nnW$cPu4pG" resolve="wrappedArea" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="6nnW$cPu0hG" role="3clFbw">
              <node concept="10Nm6u" id="6nnW$cPu0mF" role="3uHU7w" />
              <node concept="37vLTw" id="6nnW$cPtZYn" role="3uHU7B">
                <ref role="3cqZAo" node="6nnW$cPtYHo" resolve="virtualArea" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="mtS_g4qZUn" role="3cqZAp">
            <node concept="2EnYce" id="mtS_g4r4Xu" role="3clFbG">
              <node concept="37vLTw" id="6nnW$cPtYHt" role="2Oq$k0">
                <ref role="3cqZAo" node="6nnW$cPtYHo" resolve="virtualArea" />
              </node>
              <node concept="liA8E" id="mtS_g4r4Bk" role="2OqNvi">
                <ref role="37wK5l" to="qvpu:~IArea.getRoot()" resolve="getRoot" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="mtS_g4qQ0_" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="mtS_g4r5JO" role="jymVt">
        <property role="TrG5h" value="equals" />
        <node concept="10P_77" id="mtS_g4r5JP" role="3clF45" />
        <node concept="3Tm1VV" id="mtS_g4r5JQ" role="1B3o_S" />
        <node concept="3clFbS" id="mtS_g4r5JR" role="3clF47">
          <node concept="3clFbJ" id="mtS_g4r5JS" role="3cqZAp">
            <node concept="3clFbS" id="mtS_g4r5JT" role="3clFbx">
              <node concept="3cpWs6" id="mtS_g4r5JU" role="3cqZAp">
                <node concept="3clFbT" id="mtS_g4r5JV" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="mtS_g4r5JW" role="3clFbw">
              <node concept="Xjq3P" id="mtS_g4r5JN" role="3uHU7B" />
              <node concept="37vLTw" id="mtS_g4r5JX" role="3uHU7w">
                <ref role="3cqZAo" node="mtS_g4r5Kk" resolve="o" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="mtS_g4r5JY" role="3cqZAp">
            <node concept="3clFbS" id="mtS_g4r5JZ" role="3clFbx">
              <node concept="3cpWs6" id="mtS_g4r5K0" role="3cqZAp">
                <node concept="3clFbT" id="mtS_g4r5K1" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="22lmx$" id="mtS_g4r5K2" role="3clFbw">
              <node concept="3clFbC" id="mtS_g4r5K3" role="3uHU7B">
                <node concept="37vLTw" id="mtS_g4r5K4" role="3uHU7B">
                  <ref role="3cqZAo" node="mtS_g4r5Kk" resolve="o" />
                </node>
                <node concept="10Nm6u" id="mtS_g4r5K5" role="3uHU7w" />
              </node>
              <node concept="3y3z36" id="mtS_g4r5K6" role="3uHU7w">
                <node concept="2OqwBi" id="mtS_g4r5K7" role="3uHU7B">
                  <node concept="Xjq3P" id="mtS_g4r5K8" role="2Oq$k0" />
                  <node concept="liA8E" id="mtS_g4r5K9" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                  </node>
                </node>
                <node concept="2OqwBi" id="mtS_g4r5Ka" role="3uHU7w">
                  <node concept="37vLTw" id="mtS_g4r5Kb" role="2Oq$k0">
                    <ref role="3cqZAo" node="mtS_g4r5Kk" resolve="o" />
                  </node>
                  <node concept="liA8E" id="mtS_g4r5Kc" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="mtS_g4r5Kd" role="3cqZAp" />
          <node concept="3cpWs8" id="mtS_g4r5Ke" role="3cqZAp">
            <node concept="3cpWsn" id="mtS_g4r5Kf" role="3cpWs9">
              <property role="TrG5h" value="that" />
              <node concept="3uibUv" id="mtS_g4r5Kg" role="1tU5fm">
                <ref role="3uigEE" node="mtS_g4qKWx" resolve="VirtualRepositoryArea.RootNodeReference" />
              </node>
              <node concept="10QFUN" id="mtS_g4r5Kh" role="33vP2m">
                <node concept="3uibUv" id="mtS_g4r5Ki" role="10QFUM">
                  <ref role="3uigEE" node="mtS_g4qKWx" resolve="VirtualRepositoryArea.RootNodeReference" />
                </node>
                <node concept="37vLTw" id="mtS_g4r5Kj" role="10QFUP">
                  <ref role="3cqZAo" node="mtS_g4r5Kk" resolve="o" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="mtS_g4r5Ku" role="3cqZAp">
            <node concept="3clFbS" id="mtS_g4r5Kv" role="3clFbx">
              <node concept="3cpWs6" id="mtS_g4r5Kw" role="3cqZAp">
                <node concept="3clFbT" id="mtS_g4r5Kx" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3K4zz7" id="mtS_g4r5Ky" role="3clFbw">
              <node concept="3fqX7Q" id="mtS_g4r5Kz" role="3K4E3e">
                <node concept="2OqwBi" id="mtS_g4r5K$" role="3fr31v">
                  <node concept="liA8E" id="mtS_g4r5K_" role="2OqNvi">
                    <ref role="37wK5l" node="7$7_4Ziiv08" resolve="equals" />
                    <node concept="2OqwBi" id="mtS_g4r5KA" role="37wK5m">
                      <node concept="37vLTw" id="mtS_g4r5Kn" role="2Oq$k0">
                        <ref role="3cqZAo" node="mtS_g4r5Kf" resolve="that" />
                      </node>
                      <node concept="2OwXpG" id="mtS_g4r5Kq" role="2OqNvi">
                        <ref role="2Oxat5" node="mtS_g4qSdU" resolve="areaRef" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="mtS_g4r5Kr" role="2Oq$k0">
                    <ref role="3cqZAo" node="mtS_g4qSdU" resolve="areaRef" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="mtS_g4r5KB" role="3K4Cdx">
                <node concept="10Nm6u" id="mtS_g4r5KC" role="3uHU7w" />
                <node concept="37vLTw" id="mtS_g4r5Ks" role="3uHU7B">
                  <ref role="3cqZAo" node="mtS_g4qSdU" resolve="areaRef" />
                </node>
              </node>
              <node concept="3y3z36" id="mtS_g4r5KD" role="3K4GZi">
                <node concept="10Nm6u" id="mtS_g4r5KE" role="3uHU7w" />
                <node concept="2OqwBi" id="mtS_g4r5KF" role="3uHU7B">
                  <node concept="37vLTw" id="mtS_g4r5KG" role="2Oq$k0">
                    <ref role="3cqZAo" node="mtS_g4r5Kf" resolve="that" />
                  </node>
                  <node concept="2OwXpG" id="mtS_g4r5Kt" role="2OqNvi">
                    <ref role="2Oxat5" node="mtS_g4qSdU" resolve="areaRef" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="mtS_g4r5KH" role="3cqZAp" />
          <node concept="3clFbF" id="mtS_g4r5KI" role="3cqZAp">
            <node concept="3clFbT" id="mtS_g4r5KJ" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="mtS_g4r5Kk" role="3clF46">
          <property role="TrG5h" value="o" />
          <node concept="3uibUv" id="mtS_g4r5Kl" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="2AHcQZ" id="mtS_g4r5Km" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="mtS_g4r5KK" role="jymVt">
        <property role="TrG5h" value="hashCode" />
        <node concept="10Oyi0" id="mtS_g4r5KL" role="3clF45" />
        <node concept="3Tm1VV" id="mtS_g4r5KM" role="1B3o_S" />
        <node concept="3clFbS" id="mtS_g4r5KN" role="3clF47">
          <node concept="3cpWs8" id="mtS_g4r5KP" role="3cqZAp">
            <node concept="3cpWsn" id="mtS_g4r5KQ" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="10Oyi0" id="mtS_g4r5KR" role="1tU5fm" />
              <node concept="3cmrfG" id="mtS_g4r5KS" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="mtS_g4r5L2" role="3cqZAp">
            <node concept="37vLTI" id="mtS_g4r5L3" role="3clFbG">
              <node concept="3cpWs3" id="mtS_g4r5L4" role="37vLTx">
                <node concept="1eOMI4" id="mtS_g4r5L5" role="3uHU7w">
                  <node concept="3K4zz7" id="mtS_g4r5L6" role="1eOMHV">
                    <node concept="3cmrfG" id="mtS_g4r5L7" role="3K4GZi">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3y3z36" id="mtS_g4r5L8" role="3K4Cdx">
                      <node concept="10Nm6u" id="mtS_g4r5L9" role="3uHU7w" />
                      <node concept="37vLTw" id="mtS_g4r5L0" role="3uHU7B">
                        <ref role="3cqZAo" node="mtS_g4qSdU" resolve="areaRef" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="mtS_g4r5La" role="3K4E3e">
                      <node concept="1eOMI4" id="mtS_g4r5Lb" role="2Oq$k0">
                        <node concept="10QFUN" id="mtS_g4r5Lc" role="1eOMHV">
                          <node concept="3uibUv" id="mtS_g4r5Ld" role="10QFUM">
                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          </node>
                          <node concept="37vLTw" id="mtS_g4r5L1" role="10QFUP">
                            <ref role="3cqZAo" node="mtS_g4qSdU" resolve="areaRef" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="mtS_g4r5Le" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="17qRlL" id="mtS_g4r5KY" role="3uHU7B">
                  <node concept="3cmrfG" id="mtS_g4r5KZ" role="3uHU7B">
                    <property role="3cmrfH" value="31" />
                  </node>
                  <node concept="37vLTw" id="mtS_g4r5KT" role="3uHU7w">
                    <ref role="3cqZAo" node="mtS_g4r5KQ" resolve="result" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="mtS_g4r5Lf" role="37vLTJ">
                <ref role="3cqZAo" node="mtS_g4r5KQ" resolve="result" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="mtS_g4r5Lg" role="3cqZAp">
            <node concept="37vLTw" id="mtS_g4r5Lh" role="3clFbG">
              <ref role="3cqZAo" node="mtS_g4r5KQ" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="mtS_g4r5KO" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="28I3pJBWFfi" role="jymVt" />
    <node concept="312cEu" id="28I3pJBWGG9" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="NodeWrapper" />
      <node concept="2tJIrI" id="28I3pJBWIDt" role="jymVt" />
      <node concept="312cEg" id="28I3pJBWL4h" role="jymVt">
        <property role="TrG5h" value="node" />
        <node concept="3Tm6S6" id="28I3pJBWL4i" role="1B3o_S" />
        <node concept="3uibUv" id="28I3pJBWLPy" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
      </node>
      <node concept="2tJIrI" id="28I3pJBWKj8" role="jymVt" />
      <node concept="3Tm1VV" id="28I3pJBWGGa" role="1B3o_S" />
      <node concept="3uibUv" id="28I3pJBWIqK" role="EKbjA">
        <ref role="3uigEE" to="jks5:~INodeWrapper" resolve="INodeWrapper" />
      </node>
      <node concept="3clFbW" id="28I3pJBWNNh" role="jymVt">
        <node concept="3cqZAl" id="28I3pJBWNNi" role="3clF45" />
        <node concept="3Tm1VV" id="28I3pJBWNNj" role="1B3o_S" />
        <node concept="3clFbS" id="28I3pJBWNNl" role="3clF47">
          <node concept="3clFbF" id="28I3pJBWNNp" role="3cqZAp">
            <node concept="37vLTI" id="28I3pJBWNNr" role="3clFbG">
              <node concept="2OqwBi" id="28I3pJBWNNv" role="37vLTJ">
                <node concept="Xjq3P" id="28I3pJBWNNw" role="2Oq$k0" />
                <node concept="2OwXpG" id="28I3pJBWNNx" role="2OqNvi">
                  <ref role="2Oxat5" node="28I3pJBWL4h" resolve="node" />
                </node>
              </node>
              <node concept="37vLTw" id="28I3pJBWNNy" role="37vLTx">
                <ref role="3cqZAo" node="28I3pJBWNNo" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="28I3pJBWNNo" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="28I3pJBWNNn" role="1tU5fm">
            <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="28I3pJBZ8kD" role="jymVt" />
      <node concept="3clFb_" id="28I3pJBWIP6" role="jymVt">
        <property role="TrG5h" value="getWrappedNode" />
        <node concept="3Tm1VV" id="28I3pJBWIP7" role="1B3o_S" />
        <node concept="2AHcQZ" id="28I3pJBWIP9" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="28I3pJBWIPa" role="3clF45">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
        <node concept="3clFbS" id="28I3pJBWIPb" role="3clF47">
          <node concept="3clFbF" id="28I3pJBWQvD" role="3cqZAp">
            <node concept="37vLTw" id="28I3pJBWQvA" role="3clFbG">
              <ref role="3cqZAo" node="28I3pJBWL4h" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="28I3pJBWIPc" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="28I3pJBWIPf" role="jymVt">
        <property role="TrG5h" value="getArea" />
        <node concept="3Tm1VV" id="28I3pJBWIPg" role="1B3o_S" />
        <node concept="2AHcQZ" id="28I3pJBWIPi" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="mtS_g4s6_n" role="3clF45">
          <ref role="3uigEE" node="5mRomlpwjXf" resolve="VirtualRepositoryArea" />
        </node>
        <node concept="3clFbS" id="28I3pJBWIPl" role="3clF47">
          <node concept="3clFbF" id="28I3pJBWRyP" role="3cqZAp">
            <node concept="Xjq3P" id="28I3pJBWRyO" role="3clFbG">
              <ref role="1HBi2w" node="5mRomlpwjXf" resolve="VirtualRepositoryArea" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="28I3pJBWIPm" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="28I3pJBWIPp" role="jymVt">
        <property role="TrG5h" value="isValid" />
        <node concept="3Tm1VV" id="28I3pJBWIPq" role="1B3o_S" />
        <node concept="10P_77" id="28I3pJBWIPs" role="3clF45" />
        <node concept="3clFbS" id="28I3pJBWIPu" role="3clF47">
          <node concept="3clFbF" id="28I3pJBWS8E" role="3cqZAp">
            <node concept="2OqwBi" id="28I3pJBWSgi" role="3clFbG">
              <node concept="37vLTw" id="28I3pJBWS8D" role="2Oq$k0">
                <ref role="3cqZAo" node="28I3pJBWL4h" resolve="node" />
              </node>
              <node concept="liA8E" id="28I3pJBWSOt" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~INode.isValid()" resolve="isValid" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="28I3pJBWIPv" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="28I3pJBWIPy" role="jymVt">
        <property role="TrG5h" value="getReference" />
        <node concept="3Tm1VV" id="28I3pJBWIPz" role="1B3o_S" />
        <node concept="2AHcQZ" id="28I3pJBWIP_" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="28I3pJBWIPA" role="3clF45">
          <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
        </node>
        <node concept="3clFbS" id="28I3pJBWIPC" role="3clF47">
          <node concept="3clFbF" id="mtS_g4s1QZ" role="3cqZAp">
            <node concept="2ShNRf" id="mtS_g4s1QT" role="3clFbG">
              <node concept="1pGfFk" id="mtS_g4s2zE" role="2ShVmc">
                <ref role="37wK5l" node="mtS_g4rt4q" resolve="VirtualRepositoryArea.NodeWrapperReference" />
                <node concept="2OqwBi" id="mtS_g4s3n1" role="37wK5m">
                  <node concept="37vLTw" id="mtS_g4s2E$" role="2Oq$k0">
                    <ref role="3cqZAo" node="28I3pJBWL4h" resolve="node" />
                  </node>
                  <node concept="liA8E" id="mtS_g4s40z" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~INode.getReference()" resolve="getReference" />
                  </node>
                </node>
                <node concept="2OqwBi" id="mtS_g4s5xf" role="37wK5m">
                  <node concept="1rXfSq" id="mtS_g4s4TX" role="2Oq$k0">
                    <ref role="37wK5l" node="28I3pJBWIPf" resolve="getArea" />
                  </node>
                  <node concept="liA8E" id="mtS_g4s6e9" role="2OqNvi">
                    <ref role="37wK5l" node="7$7_4Ziiz7V" resolve="getReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="28I3pJBWIPD" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="28I3pJBWIPG" role="jymVt">
        <property role="TrG5h" value="getConcept" />
        <node concept="3Tm1VV" id="28I3pJBWIPH" role="1B3o_S" />
        <node concept="2AHcQZ" id="28I3pJBWIPJ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="28I3pJBWIPK" role="3clF45">
          <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
        </node>
        <node concept="3clFbS" id="28I3pJBWIPM" role="3clF47">
          <node concept="3clFbF" id="28I3pJBWXCC" role="3cqZAp">
            <node concept="2OqwBi" id="28I3pJBWXIW" role="3clFbG">
              <node concept="37vLTw" id="28I3pJBWXCB" role="2Oq$k0">
                <ref role="3cqZAo" node="28I3pJBWL4h" resolve="node" />
              </node>
              <node concept="liA8E" id="28I3pJBWYue" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~INode.getConcept()" resolve="getConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="28I3pJBWIPN" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="28I3pJBWIPQ" role="jymVt">
        <property role="TrG5h" value="getRoleInParent" />
        <node concept="3Tm1VV" id="28I3pJBWIPR" role="1B3o_S" />
        <node concept="2AHcQZ" id="28I3pJBWIPT" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="17QB3L" id="28I3pJBWW3l" role="3clF45" />
        <node concept="3clFbS" id="28I3pJBWIPW" role="3clF47">
          <node concept="3clFbF" id="28I3pJBZjgh" role="3cqZAp">
            <node concept="3K4zz7" id="28I3pJBZkFU" role="3clFbG">
              <node concept="2OqwBi" id="28I3pJBZruP" role="3K4E3e">
                <node concept="359W_D" id="28I3pJBZpli" role="2Oq$k0">
                  <ref role="359W_E" to="jh6v:qmkA5fOskm" resolve="Repository" />
                  <ref role="359W_F" to="jh6v:qmkA5fOskn" resolve="modules" />
                </node>
                <node concept="liA8E" id="28I3pJBZsfX" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                </node>
              </node>
              <node concept="2OqwBi" id="28I3pJBZmOx" role="3K4GZi">
                <node concept="37vLTw" id="28I3pJBZmA$" role="2Oq$k0">
                  <ref role="3cqZAo" node="28I3pJBWL4h" resolve="node" />
                </node>
                <node concept="liA8E" id="28I3pJBZnDx" role="2OqNvi">
                  <ref role="37wK5l" to="jks5:~INode.getRoleInParent()" resolve="getRoleInParent" />
                </node>
              </node>
              <node concept="17R0WA" id="28I3pJBZjgj" role="3K4Cdx">
                <node concept="37vLTw" id="28I3pJBZjgk" role="3uHU7w">
                  <ref role="3cqZAo" node="5mRomlpxx4Z" resolve="root" />
                </node>
                <node concept="1rXfSq" id="28I3pJBZjgl" role="3uHU7B">
                  <ref role="37wK5l" node="28I3pJBWIQ0" resolve="getParent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="28I3pJBWIPX" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="28I3pJBWIQ0" role="jymVt">
        <property role="TrG5h" value="getParent" />
        <node concept="3Tm1VV" id="28I3pJBWIQ1" role="1B3o_S" />
        <node concept="2AHcQZ" id="28I3pJBWIQ3" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="28I3pJBWIQ4" role="3clF45">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
        <node concept="3clFbS" id="28I3pJBWIQ6" role="3clF47">
          <node concept="3clFbJ" id="28I3pJBXBYN" role="3cqZAp">
            <node concept="3clFbS" id="28I3pJBXBYP" role="3clFbx">
              <node concept="3cpWs8" id="28I3pJBYdjW" role="3cqZAp">
                <node concept="3cpWsn" id="28I3pJBYdjZ" role="3cpWs9">
                  <property role="TrG5h" value="allTransparent" />
                  <node concept="10P_77" id="28I3pJBYdjU" role="1tU5fm" />
                  <node concept="3clFbT" id="28I3pJBYdKA" role="33vP2m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="1Dw8fO" id="28I3pJBY4rQ" role="3cqZAp">
                <node concept="3clFbS" id="28I3pJBY4rS" role="2LFqv$">
                  <node concept="3clFbJ" id="28I3pJBYeb7" role="3cqZAp">
                    <node concept="3clFbS" id="28I3pJBYeb9" role="3clFbx">
                      <node concept="3clFbF" id="28I3pJBYmii" role="3cqZAp">
                        <node concept="37vLTI" id="28I3pJBYmVm" role="3clFbG">
                          <node concept="3clFbT" id="28I3pJBYnip" role="37vLTx" />
                          <node concept="37vLTw" id="28I3pJBYmig" role="37vLTJ">
                            <ref role="3cqZAo" node="28I3pJBYdjZ" resolve="allTransparent" />
                          </node>
                        </node>
                      </node>
                      <node concept="3zACq4" id="28I3pJBYnH5" role="3cqZAp" />
                    </node>
                    <node concept="3fqX7Q" id="28I3pJBYliX" role="3clFbw">
                      <node concept="1rXfSq" id="28I3pJBYliZ" role="3fr31v">
                        <ref role="37wK5l" node="28I3pJBXNZk" resolve="isTransparentParent" />
                        <node concept="37vLTw" id="28I3pJBYlj0" role="37wK5m">
                          <ref role="3cqZAo" node="28I3pJBY4rT" resolve="ancestor" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="28I3pJBY4rT" role="1Duv9x">
                  <property role="TrG5h" value="ancestor" />
                  <node concept="3uibUv" id="28I3pJBY4Ay" role="1tU5fm">
                    <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                  </node>
                  <node concept="2OqwBi" id="28I3pJBY6dz" role="33vP2m">
                    <node concept="37vLTw" id="28I3pJBY657" role="2Oq$k0">
                      <ref role="3cqZAo" node="28I3pJBWL4h" resolve="node" />
                    </node>
                    <node concept="liA8E" id="28I3pJBY73N" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~INode.getParent()" resolve="getParent" />
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="28I3pJBY997" role="1Dwp0S">
                  <node concept="10Nm6u" id="28I3pJBY9xw" role="3uHU7w" />
                  <node concept="37vLTw" id="28I3pJBY8E4" role="3uHU7B">
                    <ref role="3cqZAo" node="28I3pJBY4rT" resolve="ancestor" />
                  </node>
                </node>
                <node concept="37vLTI" id="28I3pJBYaDd" role="1Dwrff">
                  <node concept="2OqwBi" id="28I3pJBYbOB" role="37vLTx">
                    <node concept="37vLTw" id="28I3pJBYbmw" role="2Oq$k0">
                      <ref role="3cqZAo" node="28I3pJBY4rT" resolve="ancestor" />
                    </node>
                    <node concept="liA8E" id="28I3pJBYbZf" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~INode.getParent()" resolve="getParent" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="28I3pJBYado" role="37vLTJ">
                    <ref role="3cqZAo" node="28I3pJBY4rT" resolve="ancestor" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="28I3pJBYo7X" role="3cqZAp">
                <node concept="3clFbS" id="28I3pJBYo7Z" role="3clFbx">
                  <node concept="3cpWs6" id="28I3pJBYpP5" role="3cqZAp">
                    <node concept="37vLTw" id="28I3pJBYqVZ" role="3cqZAk">
                      <ref role="3cqZAo" node="5mRomlpxx4Z" resolve="root" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="28I3pJBYpqA" role="3clFbw">
                  <ref role="3cqZAo" node="28I3pJBYdjZ" resolve="allTransparent" />
                </node>
              </node>
            </node>
            <node concept="2EnYce" id="28I3pJBXExL" role="3clFbw">
              <node concept="2OqwBi" id="28I3pJBXExM" role="2Oq$k0">
                <node concept="37vLTw" id="28I3pJBXExN" role="2Oq$k0">
                  <ref role="3cqZAo" node="28I3pJBWL4h" resolve="node" />
                </node>
                <node concept="liA8E" id="28I3pJBXExO" role="2OqNvi">
                  <ref role="37wK5l" to="jks5:~INode.getConcept()" resolve="getConcept" />
                </node>
              </node>
              <node concept="liA8E" id="28I3pJBXExP" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~IConcept.isSubconceptOf(org.modelix.model.api.IConcept)" resolve="isSubconceptOf" />
                <node concept="2YIFZM" id="28I3pJBXExQ" role="37wK5m">
                  <ref role="1Pybhc" to="xxte:5gTrVpGjuL2" resolve="SConceptAdapter" />
                  <ref role="37wK5l" to="xxte:3ECE8iPOmg5" resolve="wrap" />
                  <node concept="35c_gC" id="28I3pJBXExR" role="37wK5m">
                    <ref role="35c_gD" to="jh6v:qmkA5fOskf" resolve="Module" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="28I3pJBXFLx" role="3cqZAp">
            <node concept="1rXfSq" id="28I3pJBXFLz" role="3clFbG">
              <ref role="37wK5l" node="28I3pJBX2AN" resolve="wrapNode" />
              <node concept="2OqwBi" id="28I3pJBXFL$" role="37wK5m">
                <node concept="37vLTw" id="28I3pJBXFL_" role="2Oq$k0">
                  <ref role="3cqZAo" node="28I3pJBWL4h" resolve="node" />
                </node>
                <node concept="liA8E" id="28I3pJBXFLA" role="2OqNvi">
                  <ref role="37wK5l" to="jks5:~INode.getParent()" resolve="getParent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="28I3pJBWIQ7" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="28I3pJBWIQa" role="jymVt">
        <property role="TrG5h" value="getChildren" />
        <node concept="3Tm1VV" id="28I3pJBWIQb" role="1B3o_S" />
        <node concept="2AHcQZ" id="28I3pJBWIQd" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="28I3pJBWIQe" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="28I3pJBWIQf" role="11_B2D">
            <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
          </node>
        </node>
        <node concept="37vLTG" id="28I3pJBWIQg" role="3clF46">
          <property role="TrG5h" value="role" />
          <node concept="17QB3L" id="28I3pJBXA9q" role="1tU5fm" />
          <node concept="2AHcQZ" id="28I3pJBWIQi" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          </node>
        </node>
        <node concept="3clFbS" id="28I3pJBWIQk" role="3clF47">
          <node concept="3cpWs8" id="28I3pJBYvI7" role="3cqZAp">
            <node concept="3cpWsn" id="28I3pJBYvI8" role="3cpWs9">
              <property role="TrG5h" value="children" />
              <node concept="A3Dl8" id="28I3pJBYyiQ" role="1tU5fm">
                <node concept="3uibUv" id="28I3pJBYyiS" role="A3Ik2">
                  <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                </node>
              </node>
              <node concept="2OqwBi" id="28I3pJBYvI9" role="33vP2m">
                <node concept="37vLTw" id="28I3pJBYvIa" role="2Oq$k0">
                  <ref role="3cqZAo" node="28I3pJBWL4h" resolve="node" />
                </node>
                <node concept="liA8E" id="28I3pJBYvIb" role="2OqNvi">
                  <ref role="37wK5l" to="jks5:~INode.getChildren(java.lang.String)" resolve="getChildren" />
                  <node concept="37vLTw" id="28I3pJBYvIc" role="37wK5m">
                    <ref role="3cqZAo" node="28I3pJBWIQg" resolve="role" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="28I3pJBYsS_" role="3cqZAp">
            <node concept="2OqwBi" id="28I3pJBYzUF" role="3clFbG">
              <node concept="37vLTw" id="28I3pJBYvId" role="2Oq$k0">
                <ref role="3cqZAo" node="28I3pJBYvI8" resolve="children" />
              </node>
              <node concept="3$u5V9" id="28I3pJBY$iU" role="2OqNvi">
                <node concept="1bVj0M" id="28I3pJBY$iW" role="23t8la">
                  <node concept="3clFbS" id="28I3pJBY$iX" role="1bW5cS">
                    <node concept="3cpWs8" id="28I3pJBY_N0" role="3cqZAp">
                      <node concept="3cpWsn" id="28I3pJBY_N1" role="3cpWs9">
                        <property role="TrG5h" value="n" />
                        <node concept="3uibUv" id="28I3pJBYAML" role="1tU5fm">
                          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                        </node>
                        <node concept="1rXfSq" id="28I3pJBY_N2" role="33vP2m">
                          <ref role="37wK5l" node="28I3pJBX2AN" resolve="wrapNode" />
                          <node concept="37vLTw" id="28I3pJBY_N3" role="37wK5m">
                            <ref role="3cqZAo" node="28I3pJBY$iY" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="28I3pJBY_5f" role="3cqZAp">
                      <node concept="37vLTw" id="28I3pJBY_N4" role="3clFbG">
                        <ref role="3cqZAo" node="28I3pJBY_N1" resolve="n" />
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="28I3pJBY$iY" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="28I3pJBY$iZ" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="28I3pJBWIQl" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="28I3pJBWIQo" role="jymVt">
        <property role="TrG5h" value="getAllChildren" />
        <node concept="3Tm1VV" id="28I3pJBWIQp" role="1B3o_S" />
        <node concept="2AHcQZ" id="28I3pJBWIQr" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="28I3pJBWIQs" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="28I3pJBWIQt" role="11_B2D">
            <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
          </node>
        </node>
        <node concept="3clFbS" id="28I3pJBWIQv" role="3clF47">
          <node concept="3cpWs8" id="28I3pJBYC1r" role="3cqZAp">
            <node concept="3cpWsn" id="28I3pJBYC1s" role="3cpWs9">
              <property role="TrG5h" value="children" />
              <node concept="A3Dl8" id="28I3pJBYC1t" role="1tU5fm">
                <node concept="3uibUv" id="28I3pJBYC1u" role="A3Ik2">
                  <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                </node>
              </node>
              <node concept="2OqwBi" id="28I3pJBYC1v" role="33vP2m">
                <node concept="37vLTw" id="28I3pJBYC1w" role="2Oq$k0">
                  <ref role="3cqZAo" node="28I3pJBWL4h" resolve="node" />
                </node>
                <node concept="liA8E" id="28I3pJBYC1x" role="2OqNvi">
                  <ref role="37wK5l" to="jks5:~INode.getAllChildren()" resolve="getAllChildren" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="28I3pJBYC1z" role="3cqZAp">
            <node concept="2OqwBi" id="28I3pJBYC1$" role="3clFbG">
              <node concept="37vLTw" id="28I3pJBYC1_" role="2Oq$k0">
                <ref role="3cqZAo" node="28I3pJBYC1s" resolve="children" />
              </node>
              <node concept="3$u5V9" id="28I3pJBYC1A" role="2OqNvi">
                <node concept="1bVj0M" id="28I3pJBYC1B" role="23t8la">
                  <node concept="3clFbS" id="28I3pJBYC1C" role="1bW5cS">
                    <node concept="3cpWs8" id="28I3pJBYC1D" role="3cqZAp">
                      <node concept="3cpWsn" id="28I3pJBYC1E" role="3cpWs9">
                        <property role="TrG5h" value="n" />
                        <node concept="3uibUv" id="28I3pJBYC1F" role="1tU5fm">
                          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                        </node>
                        <node concept="1rXfSq" id="28I3pJBYC1G" role="33vP2m">
                          <ref role="37wK5l" node="28I3pJBX2AN" resolve="wrapNode" />
                          <node concept="37vLTw" id="28I3pJBYC1H" role="37wK5m">
                            <ref role="3cqZAo" node="28I3pJBYC1K" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="28I3pJBYC1I" role="3cqZAp">
                      <node concept="37vLTw" id="28I3pJBYC1J" role="3clFbG">
                        <ref role="3cqZAo" node="28I3pJBYC1E" resolve="n" />
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="28I3pJBYC1K" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="28I3pJBYC1L" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="28I3pJBWIQw" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="28I3pJBWIQz" role="jymVt">
        <property role="TrG5h" value="moveChild" />
        <node concept="3Tm1VV" id="28I3pJBWIQ$" role="1B3o_S" />
        <node concept="3cqZAl" id="28I3pJBWIQA" role="3clF45" />
        <node concept="37vLTG" id="28I3pJBWIQB" role="3clF46">
          <property role="TrG5h" value="role" />
          <node concept="17QB3L" id="28I3pJBYF8U" role="1tU5fm" />
          <node concept="2AHcQZ" id="28I3pJBWIQD" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          </node>
        </node>
        <node concept="37vLTG" id="28I3pJBWIQE" role="3clF46">
          <property role="TrG5h" value="index" />
          <node concept="10Oyi0" id="28I3pJBWIQF" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="28I3pJBWIQG" role="3clF46">
          <property role="TrG5h" value="child" />
          <node concept="3uibUv" id="28I3pJBWIQH" role="1tU5fm">
            <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
          </node>
          <node concept="2AHcQZ" id="28I3pJBWIQI" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="28I3pJBWIQK" role="3clF47">
          <node concept="3clFbF" id="4z6TrYVZFOm" role="3cqZAp">
            <node concept="2OqwBi" id="4z6TrYVZFUC" role="3clFbG">
              <node concept="37vLTw" id="4z6TrYVZFOl" role="2Oq$k0">
                <ref role="3cqZAo" node="28I3pJBWL4h" resolve="node" />
              </node>
              <node concept="liA8E" id="4z6TrYVZHvx" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~INode.moveChild(java.lang.String,int,org.modelix.model.api.INode)" resolve="moveChild" />
                <node concept="37vLTw" id="4z6TrYVZINd" role="37wK5m">
                  <ref role="3cqZAo" node="28I3pJBWIQB" resolve="role" />
                </node>
                <node concept="37vLTw" id="4z6TrYVZJPm" role="37wK5m">
                  <ref role="3cqZAo" node="28I3pJBWIQE" resolve="index" />
                </node>
                <node concept="1rXfSq" id="4z6TrYW0g0E" role="37wK5m">
                  <ref role="37wK5l" node="4z6TrYVZNRA" resolve="unwrap" />
                  <node concept="37vLTw" id="4z6TrYW0g_Q" role="37wK5m">
                    <ref role="3cqZAo" node="28I3pJBWIQG" resolve="child" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="28I3pJBWIQL" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="28I3pJBWIQM" role="jymVt">
        <property role="TrG5h" value="addNewChild" />
        <node concept="3Tm1VV" id="28I3pJBWIQN" role="1B3o_S" />
        <node concept="2AHcQZ" id="28I3pJBWIQP" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="28I3pJBWIQQ" role="3clF45">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
        <node concept="37vLTG" id="28I3pJBWIQR" role="3clF46">
          <property role="TrG5h" value="role" />
          <node concept="17QB3L" id="4z6TrYW0iKM" role="1tU5fm" />
          <node concept="2AHcQZ" id="28I3pJBWIQT" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          </node>
        </node>
        <node concept="37vLTG" id="28I3pJBWIQU" role="3clF46">
          <property role="TrG5h" value="index" />
          <node concept="10Oyi0" id="28I3pJBWIQV" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="28I3pJBWIQW" role="3clF46">
          <property role="TrG5h" value="concept" />
          <node concept="3uibUv" id="28I3pJBWIQX" role="1tU5fm">
            <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
          </node>
          <node concept="2AHcQZ" id="28I3pJBWIQY" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          </node>
        </node>
        <node concept="3clFbS" id="28I3pJBWIR0" role="3clF47">
          <node concept="3clFbF" id="4z6TrYW0rJw" role="3cqZAp">
            <node concept="1rXfSq" id="4z6TrYW0rJv" role="3clFbG">
              <ref role="37wK5l" node="28I3pJBX2AN" resolve="wrapNode" />
              <node concept="2OqwBi" id="4z6TrYW0kGL" role="37wK5m">
                <node concept="37vLTw" id="4z6TrYW0kAs" role="2Oq$k0">
                  <ref role="3cqZAo" node="28I3pJBWL4h" resolve="node" />
                </node>
                <node concept="liA8E" id="4z6TrYW0l_b" role="2OqNvi">
                  <ref role="37wK5l" to="jks5:~INode.addNewChild(java.lang.String,int,org.modelix.model.api.IConcept)" resolve="addNewChild" />
                  <node concept="37vLTw" id="4z6TrYW0mTJ" role="37wK5m">
                    <ref role="3cqZAo" node="28I3pJBWIQR" resolve="role" />
                  </node>
                  <node concept="37vLTw" id="4z6TrYW0nVU" role="37wK5m">
                    <ref role="3cqZAo" node="28I3pJBWIQU" resolve="index" />
                  </node>
                  <node concept="37vLTw" id="4z6TrYW0pj9" role="37wK5m">
                    <ref role="3cqZAo" node="28I3pJBWIQW" resolve="concept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="28I3pJBWIR1" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="28I3pJBWIR4" role="jymVt">
        <property role="TrG5h" value="removeChild" />
        <node concept="3Tm1VV" id="28I3pJBWIR5" role="1B3o_S" />
        <node concept="3cqZAl" id="28I3pJBWIR7" role="3clF45" />
        <node concept="37vLTG" id="28I3pJBWIR8" role="3clF46">
          <property role="TrG5h" value="child" />
          <node concept="3uibUv" id="28I3pJBWIR9" role="1tU5fm">
            <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
          </node>
          <node concept="2AHcQZ" id="28I3pJBWIRa" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="28I3pJBWIRc" role="3clF47">
          <node concept="3clFbF" id="4z6TrYW0txZ" role="3cqZAp">
            <node concept="2OqwBi" id="4z6TrYW0tBy" role="3clFbG">
              <node concept="37vLTw" id="4z6TrYW0EYC" role="2Oq$k0">
                <ref role="3cqZAo" node="28I3pJBWL4h" resolve="node" />
              </node>
              <node concept="liA8E" id="4z6TrYW0urI" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~INode.removeChild(org.modelix.model.api.INode)" resolve="removeChild" />
                <node concept="1rXfSq" id="4z6TrYW0w5s" role="37wK5m">
                  <ref role="37wK5l" node="4z6TrYVZNRA" resolve="unwrap" />
                  <node concept="37vLTw" id="4z6TrYW0wFq" role="37wK5m">
                    <ref role="3cqZAo" node="28I3pJBWIR8" resolve="child" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="28I3pJBWIRd" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="28I3pJBWIRe" role="jymVt">
        <property role="TrG5h" value="getReferenceTarget" />
        <node concept="3Tm1VV" id="28I3pJBWIRf" role="1B3o_S" />
        <node concept="2AHcQZ" id="28I3pJBWIRh" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="28I3pJBWIRi" role="3clF45">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
        <node concept="37vLTG" id="28I3pJBWIRj" role="3clF46">
          <property role="TrG5h" value="role" />
          <node concept="17QB3L" id="28I3pJBYMF5" role="1tU5fm" />
          <node concept="2AHcQZ" id="28I3pJBWIRl" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="28I3pJBWIRn" role="3clF47">
          <node concept="3clFbF" id="28I3pJBYPk3" role="3cqZAp">
            <node concept="1rXfSq" id="28I3pJBYPk2" role="3clFbG">
              <ref role="37wK5l" node="28I3pJBX2AN" resolve="wrapNode" />
              <node concept="2OqwBi" id="28I3pJBYQ25" role="37wK5m">
                <node concept="37vLTw" id="28I3pJBYPTn" role="2Oq$k0">
                  <ref role="3cqZAo" node="28I3pJBWL4h" resolve="node" />
                </node>
                <node concept="liA8E" id="28I3pJBYQTb" role="2OqNvi">
                  <ref role="37wK5l" to="jks5:~INode.getReferenceTarget(java.lang.String)" resolve="getReferenceTarget" />
                  <node concept="37vLTw" id="28I3pJBYScL" role="37wK5m">
                    <ref role="3cqZAo" node="28I3pJBWIRj" resolve="role" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="28I3pJBWIRo" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="28I3pJBWIRr" role="jymVt">
        <property role="TrG5h" value="setReferenceTarget" />
        <node concept="3Tm1VV" id="28I3pJBWIRs" role="1B3o_S" />
        <node concept="3cqZAl" id="28I3pJBWIRu" role="3clF45" />
        <node concept="37vLTG" id="28I3pJBWIRv" role="3clF46">
          <property role="TrG5h" value="role" />
          <node concept="17QB3L" id="28I3pJBZ09j" role="1tU5fm" />
          <node concept="2AHcQZ" id="28I3pJBWIRx" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="28I3pJBWIRy" role="3clF46">
          <property role="TrG5h" value="target" />
          <node concept="3uibUv" id="28I3pJBWIRz" role="1tU5fm">
            <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
          </node>
          <node concept="2AHcQZ" id="28I3pJBWIR$" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          </node>
        </node>
        <node concept="3clFbS" id="28I3pJBWIRA" role="3clF47">
          <node concept="3clFbF" id="4z6TrYW0xRR" role="3cqZAp">
            <node concept="2OqwBi" id="4z6TrYW0yYR" role="3clFbG">
              <node concept="37vLTw" id="4z6TrYW0DcT" role="2Oq$k0">
                <ref role="3cqZAo" node="28I3pJBWL4h" resolve="node" />
              </node>
              <node concept="liA8E" id="4z6TrYW0zLZ" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~INode.setReferenceTarget(java.lang.String,org.modelix.model.api.INode)" resolve="setReferenceTarget" />
                <node concept="37vLTw" id="4z6TrYW0_75" role="37wK5m">
                  <ref role="3cqZAo" node="28I3pJBWIRv" resolve="role" />
                </node>
                <node concept="1rXfSq" id="4z6TrYW0A8U" role="37wK5m">
                  <ref role="37wK5l" node="4z6TrYVZNRA" resolve="unwrap" />
                  <node concept="37vLTw" id="4z6TrYW0AJl" role="37wK5m">
                    <ref role="3cqZAo" node="28I3pJBWIRy" resolve="target" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="28I3pJBWIRB" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="28I3pJBWIRC" role="jymVt">
        <property role="TrG5h" value="getPropertyValue" />
        <node concept="3Tm1VV" id="28I3pJBWIRD" role="1B3o_S" />
        <node concept="2AHcQZ" id="28I3pJBWIRF" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="17QB3L" id="28I3pJBYTmi" role="3clF45" />
        <node concept="37vLTG" id="28I3pJBWIRH" role="3clF46">
          <property role="TrG5h" value="role" />
          <node concept="17QB3L" id="28I3pJBYUXY" role="1tU5fm" />
          <node concept="2AHcQZ" id="28I3pJBWIRJ" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="28I3pJBWIRL" role="3clF47">
          <node concept="3clFbF" id="28I3pJBYXc5" role="3cqZAp">
            <node concept="2OqwBi" id="28I3pJBYXip" role="3clFbG">
              <node concept="37vLTw" id="28I3pJBYXc2" role="2Oq$k0">
                <ref role="3cqZAo" node="28I3pJBWL4h" resolve="node" />
              </node>
              <node concept="liA8E" id="28I3pJBYY3t" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~INode.getPropertyValue(java.lang.String)" resolve="getPropertyValue" />
                <node concept="37vLTw" id="28I3pJBYZli" role="37wK5m">
                  <ref role="3cqZAo" node="28I3pJBWIRH" resolve="role" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="28I3pJBWIRM" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="28I3pJBWIRP" role="jymVt">
        <property role="TrG5h" value="setPropertyValue" />
        <node concept="3Tm1VV" id="28I3pJBWIRQ" role="1B3o_S" />
        <node concept="3cqZAl" id="28I3pJBWIRS" role="3clF45" />
        <node concept="37vLTG" id="28I3pJBWIRT" role="3clF46">
          <property role="TrG5h" value="role" />
          <node concept="17QB3L" id="28I3pJBZ1Ai" role="1tU5fm" />
          <node concept="2AHcQZ" id="28I3pJBWIRV" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="28I3pJBWIRW" role="3clF46">
          <property role="TrG5h" value="value" />
          <node concept="17QB3L" id="28I3pJBZ33z" role="1tU5fm" />
          <node concept="2AHcQZ" id="28I3pJBWIRY" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          </node>
        </node>
        <node concept="3clFbS" id="28I3pJBWIS0" role="3clF47">
          <node concept="3clFbF" id="4z6TrYW0Gbx" role="3cqZAp">
            <node concept="2OqwBi" id="4z6TrYW0GhN" role="3clFbG">
              <node concept="37vLTw" id="4z6TrYW0Gbw" role="2Oq$k0">
                <ref role="3cqZAo" node="28I3pJBWL4h" resolve="node" />
              </node>
              <node concept="liA8E" id="4z6TrYW0H7p" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~INode.setPropertyValue(java.lang.String,java.lang.String)" resolve="setPropertyValue" />
                <node concept="37vLTw" id="4z6TrYW0Itc" role="37wK5m">
                  <ref role="3cqZAo" node="28I3pJBWIRT" resolve="role" />
                </node>
                <node concept="37vLTw" id="4z6TrYW0JvK" role="37wK5m">
                  <ref role="3cqZAo" node="28I3pJBWIRW" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="28I3pJBWIS1" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7$7_4Ziil1P" role="jymVt" />
    <node concept="312cEu" id="mtS_g4raHN" role="jymVt">
      <property role="TrG5h" value="NodeWrapperReference" />
      <node concept="312cEg" id="mtS_g4rqeZ" role="jymVt">
        <property role="TrG5h" value="nodeRef" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm1VV" id="mtS_g4sgqz" role="1B3o_S" />
        <node concept="3uibUv" id="mtS_g4rqxC" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
        </node>
      </node>
      <node concept="312cEg" id="mtS_g4rs8x" role="jymVt">
        <property role="TrG5h" value="areaRef" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm1VV" id="mtS_g4sgHZ" role="1B3o_S" />
        <node concept="3uibUv" id="mtS_g4rsrd" role="1tU5fm">
          <ref role="3uigEE" node="7$7_4ZiinS7" resolve="VirtualRepositoryArea.AreaReference" />
        </node>
      </node>
      <node concept="3Tm1VV" id="mtS_g4raHO" role="1B3o_S" />
      <node concept="3clFbW" id="mtS_g4rt4q" role="jymVt">
        <node concept="3cqZAl" id="mtS_g4rt4r" role="3clF45" />
        <node concept="3Tm1VV" id="mtS_g4rt4s" role="1B3o_S" />
        <node concept="3clFbS" id="mtS_g4rt4u" role="3clF47">
          <node concept="3clFbF" id="mtS_g4rt4y" role="3cqZAp">
            <node concept="37vLTI" id="mtS_g4rt4$" role="3clFbG">
              <node concept="2OqwBi" id="mtS_g4rt4C" role="37vLTJ">
                <node concept="Xjq3P" id="mtS_g4rt4D" role="2Oq$k0" />
                <node concept="2OwXpG" id="mtS_g4rt4E" role="2OqNvi">
                  <ref role="2Oxat5" node="mtS_g4rqeZ" resolve="nodeRef" />
                </node>
              </node>
              <node concept="37vLTw" id="mtS_g4rt4F" role="37vLTx">
                <ref role="3cqZAo" node="mtS_g4rt4x" resolve="nodeRef" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="mtS_g4rt4I" role="3cqZAp">
            <node concept="37vLTI" id="mtS_g4rt4K" role="3clFbG">
              <node concept="2OqwBi" id="mtS_g4rt4O" role="37vLTJ">
                <node concept="Xjq3P" id="mtS_g4rt4P" role="2Oq$k0" />
                <node concept="2OwXpG" id="mtS_g4rt4Q" role="2OqNvi">
                  <ref role="2Oxat5" node="mtS_g4rs8x" resolve="areaRef" />
                </node>
              </node>
              <node concept="37vLTw" id="mtS_g4rt4R" role="37vLTx">
                <ref role="3cqZAo" node="mtS_g4rt4H" resolve="areaRef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="mtS_g4rt4x" role="3clF46">
          <property role="TrG5h" value="nodeRef" />
          <node concept="3uibUv" id="mtS_g4rt4w" role="1tU5fm">
            <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
          </node>
        </node>
        <node concept="37vLTG" id="mtS_g4rt4H" role="3clF46">
          <property role="TrG5h" value="areaRef" />
          <node concept="3uibUv" id="mtS_g4rt4G" role="1tU5fm">
            <ref role="3uigEE" node="7$7_4ZiinS7" resolve="VirtualRepositoryArea.AreaReference" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="mtS_g4ruT0" role="jymVt">
        <property role="TrG5h" value="equals" />
        <node concept="10P_77" id="mtS_g4ruT1" role="3clF45" />
        <node concept="3Tm1VV" id="mtS_g4ruT2" role="1B3o_S" />
        <node concept="3clFbS" id="mtS_g4ruT3" role="3clF47">
          <node concept="3clFbJ" id="mtS_g4ruT4" role="3cqZAp">
            <node concept="3clFbS" id="mtS_g4ruT5" role="3clFbx">
              <node concept="3cpWs6" id="mtS_g4ruT6" role="3cqZAp">
                <node concept="3clFbT" id="mtS_g4ruT7" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="mtS_g4ruT8" role="3clFbw">
              <node concept="Xjq3P" id="mtS_g4ruSZ" role="3uHU7B" />
              <node concept="37vLTw" id="mtS_g4ruT9" role="3uHU7w">
                <ref role="3cqZAo" node="mtS_g4ruTw" resolve="o" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="mtS_g4ruTa" role="3cqZAp">
            <node concept="3clFbS" id="mtS_g4ruTb" role="3clFbx">
              <node concept="3cpWs6" id="mtS_g4ruTc" role="3cqZAp">
                <node concept="3clFbT" id="mtS_g4ruTd" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="22lmx$" id="mtS_g4ruTe" role="3clFbw">
              <node concept="3clFbC" id="mtS_g4ruTf" role="3uHU7B">
                <node concept="37vLTw" id="mtS_g4ruTg" role="3uHU7B">
                  <ref role="3cqZAo" node="mtS_g4ruTw" resolve="o" />
                </node>
                <node concept="10Nm6u" id="mtS_g4ruTh" role="3uHU7w" />
              </node>
              <node concept="3y3z36" id="mtS_g4ruTi" role="3uHU7w">
                <node concept="2OqwBi" id="mtS_g4ruTj" role="3uHU7B">
                  <node concept="Xjq3P" id="mtS_g4ruTk" role="2Oq$k0" />
                  <node concept="liA8E" id="mtS_g4ruTl" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                  </node>
                </node>
                <node concept="2OqwBi" id="mtS_g4ruTm" role="3uHU7w">
                  <node concept="37vLTw" id="mtS_g4ruTn" role="2Oq$k0">
                    <ref role="3cqZAo" node="mtS_g4ruTw" resolve="o" />
                  </node>
                  <node concept="liA8E" id="mtS_g4ruTo" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="mtS_g4ruTp" role="3cqZAp" />
          <node concept="3cpWs8" id="mtS_g4ruTq" role="3cqZAp">
            <node concept="3cpWsn" id="mtS_g4ruTr" role="3cpWs9">
              <property role="TrG5h" value="that" />
              <node concept="3uibUv" id="mtS_g4ruTs" role="1tU5fm">
                <ref role="3uigEE" node="mtS_g4raHN" resolve="VirtualRepositoryArea.NodeWrapperReference" />
              </node>
              <node concept="10QFUN" id="mtS_g4ruTt" role="33vP2m">
                <node concept="3uibUv" id="mtS_g4ruTu" role="10QFUM">
                  <ref role="3uigEE" node="mtS_g4raHN" resolve="VirtualRepositoryArea.NodeWrapperReference" />
                </node>
                <node concept="37vLTw" id="mtS_g4ruTv" role="10QFUP">
                  <ref role="3cqZAo" node="mtS_g4ruTw" resolve="o" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="mtS_g4ruTE" role="3cqZAp">
            <node concept="3clFbS" id="mtS_g4ruTF" role="3clFbx">
              <node concept="3cpWs6" id="mtS_g4ruTG" role="3cqZAp">
                <node concept="3clFbT" id="mtS_g4ruTH" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3K4zz7" id="mtS_g4ruTI" role="3clFbw">
              <node concept="3fqX7Q" id="mtS_g4ruTJ" role="3K4E3e">
                <node concept="2OqwBi" id="mtS_g4ruTK" role="3fr31v">
                  <node concept="liA8E" id="mtS_g4ruTL" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="mtS_g4ruTM" role="37wK5m">
                      <node concept="37vLTw" id="mtS_g4ruTz" role="2Oq$k0">
                        <ref role="3cqZAo" node="mtS_g4ruTr" resolve="that" />
                      </node>
                      <node concept="2OwXpG" id="mtS_g4ruTA" role="2OqNvi">
                        <ref role="2Oxat5" node="mtS_g4rqeZ" resolve="nodeRef" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="mtS_g4ruTB" role="2Oq$k0">
                    <ref role="3cqZAo" node="mtS_g4rqeZ" resolve="nodeRef" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="mtS_g4ruTN" role="3K4Cdx">
                <node concept="10Nm6u" id="mtS_g4ruTO" role="3uHU7w" />
                <node concept="37vLTw" id="mtS_g4ruTC" role="3uHU7B">
                  <ref role="3cqZAo" node="mtS_g4rqeZ" resolve="nodeRef" />
                </node>
              </node>
              <node concept="3y3z36" id="mtS_g4ruTP" role="3K4GZi">
                <node concept="10Nm6u" id="mtS_g4ruTQ" role="3uHU7w" />
                <node concept="2OqwBi" id="mtS_g4ruTR" role="3uHU7B">
                  <node concept="37vLTw" id="mtS_g4ruTS" role="2Oq$k0">
                    <ref role="3cqZAo" node="mtS_g4ruTr" resolve="that" />
                  </node>
                  <node concept="2OwXpG" id="mtS_g4ruTD" role="2OqNvi">
                    <ref role="2Oxat5" node="mtS_g4rqeZ" resolve="nodeRef" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="mtS_g4ruTX" role="3cqZAp">
            <node concept="3clFbS" id="mtS_g4ruTY" role="3clFbx">
              <node concept="3cpWs6" id="mtS_g4ruTZ" role="3cqZAp">
                <node concept="3clFbT" id="mtS_g4ruU0" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3K4zz7" id="mtS_g4ruU1" role="3clFbw">
              <node concept="3fqX7Q" id="mtS_g4ruU2" role="3K4E3e">
                <node concept="2OqwBi" id="mtS_g4ruU3" role="3fr31v">
                  <node concept="liA8E" id="mtS_g4ruU4" role="2OqNvi">
                    <ref role="37wK5l" node="7$7_4Ziiv08" resolve="equals" />
                    <node concept="2OqwBi" id="mtS_g4ruU5" role="37wK5m">
                      <node concept="37vLTw" id="mtS_g4ruU6" role="2Oq$k0">
                        <ref role="3cqZAo" node="mtS_g4ruTr" resolve="that" />
                      </node>
                      <node concept="2OwXpG" id="mtS_g4ruTT" role="2OqNvi">
                        <ref role="2Oxat5" node="mtS_g4rs8x" resolve="areaRef" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="mtS_g4ruTU" role="2Oq$k0">
                    <ref role="3cqZAo" node="mtS_g4rs8x" resolve="areaRef" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="mtS_g4ruU7" role="3K4Cdx">
                <node concept="10Nm6u" id="mtS_g4ruU8" role="3uHU7w" />
                <node concept="37vLTw" id="mtS_g4ruTV" role="3uHU7B">
                  <ref role="3cqZAo" node="mtS_g4rs8x" resolve="areaRef" />
                </node>
              </node>
              <node concept="3y3z36" id="mtS_g4ruU9" role="3K4GZi">
                <node concept="10Nm6u" id="mtS_g4ruUa" role="3uHU7w" />
                <node concept="2OqwBi" id="mtS_g4ruUb" role="3uHU7B">
                  <node concept="37vLTw" id="mtS_g4ruUc" role="2Oq$k0">
                    <ref role="3cqZAo" node="mtS_g4ruTr" resolve="that" />
                  </node>
                  <node concept="2OwXpG" id="mtS_g4ruTW" role="2OqNvi">
                    <ref role="2Oxat5" node="mtS_g4rs8x" resolve="areaRef" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="mtS_g4ruUd" role="3cqZAp" />
          <node concept="3clFbF" id="mtS_g4ruUe" role="3cqZAp">
            <node concept="3clFbT" id="mtS_g4ruUf" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="mtS_g4ruTw" role="3clF46">
          <property role="TrG5h" value="o" />
          <node concept="3uibUv" id="mtS_g4ruTx" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="2AHcQZ" id="mtS_g4ruTy" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="mtS_g4ruUg" role="jymVt">
        <property role="TrG5h" value="hashCode" />
        <node concept="10Oyi0" id="mtS_g4ruUh" role="3clF45" />
        <node concept="3Tm1VV" id="mtS_g4ruUi" role="1B3o_S" />
        <node concept="3clFbS" id="mtS_g4ruUj" role="3clF47">
          <node concept="3cpWs8" id="mtS_g4ruUl" role="3cqZAp">
            <node concept="3cpWsn" id="mtS_g4ruUm" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="10Oyi0" id="mtS_g4ruUn" role="1tU5fm" />
              <node concept="3cmrfG" id="mtS_g4ruUo" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="mtS_g4ruUy" role="3cqZAp">
            <node concept="37vLTI" id="mtS_g4ruUz" role="3clFbG">
              <node concept="3cpWs3" id="mtS_g4ruU$" role="37vLTx">
                <node concept="1eOMI4" id="mtS_g4ruU_" role="3uHU7w">
                  <node concept="3K4zz7" id="mtS_g4ruUA" role="1eOMHV">
                    <node concept="3cmrfG" id="mtS_g4ruUB" role="3K4GZi">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3y3z36" id="mtS_g4ruUC" role="3K4Cdx">
                      <node concept="10Nm6u" id="mtS_g4ruUD" role="3uHU7w" />
                      <node concept="37vLTw" id="mtS_g4ruUw" role="3uHU7B">
                        <ref role="3cqZAo" node="mtS_g4rqeZ" resolve="nodeRef" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="mtS_g4ruUE" role="3K4E3e">
                      <node concept="1eOMI4" id="mtS_g4ruUF" role="2Oq$k0">
                        <node concept="10QFUN" id="mtS_g4ruUG" role="1eOMHV">
                          <node concept="3uibUv" id="mtS_g4ruUH" role="10QFUM">
                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          </node>
                          <node concept="37vLTw" id="mtS_g4ruUx" role="10QFUP">
                            <ref role="3cqZAo" node="mtS_g4rqeZ" resolve="nodeRef" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="mtS_g4ruUI" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="17qRlL" id="mtS_g4ruUu" role="3uHU7B">
                  <node concept="3cmrfG" id="mtS_g4ruUv" role="3uHU7B">
                    <property role="3cmrfH" value="31" />
                  </node>
                  <node concept="37vLTw" id="mtS_g4ruUp" role="3uHU7w">
                    <ref role="3cqZAo" node="mtS_g4ruUm" resolve="result" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="mtS_g4ruUJ" role="37vLTJ">
                <ref role="3cqZAo" node="mtS_g4ruUm" resolve="result" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="mtS_g4ruUP" role="3cqZAp">
            <node concept="37vLTI" id="mtS_g4ruUQ" role="3clFbG">
              <node concept="3cpWs3" id="mtS_g4ruUR" role="37vLTx">
                <node concept="1eOMI4" id="mtS_g4ruUS" role="3uHU7w">
                  <node concept="3K4zz7" id="mtS_g4ruUT" role="1eOMHV">
                    <node concept="3cmrfG" id="mtS_g4ruUU" role="3K4GZi">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3y3z36" id="mtS_g4ruUV" role="3K4Cdx">
                      <node concept="10Nm6u" id="mtS_g4ruUW" role="3uHU7w" />
                      <node concept="37vLTw" id="mtS_g4ruUN" role="3uHU7B">
                        <ref role="3cqZAo" node="mtS_g4rs8x" resolve="areaRef" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="mtS_g4ruUX" role="3K4E3e">
                      <node concept="1eOMI4" id="mtS_g4ruUY" role="2Oq$k0">
                        <node concept="10QFUN" id="mtS_g4ruUZ" role="1eOMHV">
                          <node concept="3uibUv" id="mtS_g4ruV0" role="10QFUM">
                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          </node>
                          <node concept="37vLTw" id="mtS_g4ruUO" role="10QFUP">
                            <ref role="3cqZAo" node="mtS_g4rs8x" resolve="areaRef" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="mtS_g4ruV1" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="17qRlL" id="mtS_g4ruUK" role="3uHU7B">
                  <node concept="3cmrfG" id="mtS_g4ruUL" role="3uHU7B">
                    <property role="3cmrfH" value="31" />
                  </node>
                  <node concept="37vLTw" id="mtS_g4ruUM" role="3uHU7w">
                    <ref role="3cqZAo" node="mtS_g4ruUm" resolve="result" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="mtS_g4ruV2" role="37vLTJ">
                <ref role="3cqZAo" node="mtS_g4ruUm" resolve="result" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="mtS_g4ruV3" role="3cqZAp">
            <node concept="37vLTw" id="mtS_g4ruV4" role="3clFbG">
              <ref role="3cqZAo" node="mtS_g4ruUm" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="mtS_g4ruUk" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3uibUv" id="mtS_g4rzgC" role="EKbjA">
        <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
      </node>
      <node concept="3clFb_" id="mtS_g4r_58" role="jymVt">
        <property role="TrG5h" value="resolveNode" />
        <node concept="3Tm1VV" id="mtS_g4r_59" role="1B3o_S" />
        <node concept="2AHcQZ" id="mtS_g4r_5b" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="mtS_g4r_5c" role="3clF45">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
        <node concept="37vLTG" id="mtS_g4r_5d" role="3clF46">
          <property role="TrG5h" value="contextArea" />
          <node concept="3uibUv" id="mtS_g4r_5e" role="1tU5fm">
            <ref role="3uigEE" to="qvpu:~IArea" resolve="IArea" />
          </node>
          <node concept="2AHcQZ" id="mtS_g4r_5f" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          </node>
        </node>
        <node concept="3clFbS" id="mtS_g4r_5g" role="3clF47">
          <node concept="3clFbF" id="mtS_g4rL8q" role="3cqZAp">
            <node concept="2EnYce" id="mtS_g4rIYA" role="3clFbG">
              <node concept="1eOMI4" id="mtS_g4rHdF" role="2Oq$k0">
                <node concept="0kSF2" id="mtS_g4rEkK" role="1eOMHV">
                  <node concept="3uibUv" id="mtS_g4rFIl" role="0kSFW">
                    <ref role="3uigEE" node="5mRomlpwjXf" resolve="VirtualRepositoryArea" />
                  </node>
                  <node concept="2EnYce" id="mtS_g4rCN4" role="0kSFX">
                    <node concept="37vLTw" id="mtS_g4rCN5" role="2Oq$k0">
                      <ref role="3cqZAo" node="mtS_g4r_5d" resolve="contextArea" />
                    </node>
                    <node concept="liA8E" id="mtS_g4rCN6" role="2OqNvi">
                      <ref role="37wK5l" to="qvpu:~IArea.resolveArea(org.modelix.model.area.IAreaReference)" resolve="resolveArea" />
                      <node concept="37vLTw" id="mtS_g4rCN7" role="37wK5m">
                        <ref role="3cqZAo" node="mtS_g4rs8x" resolve="areaRef" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="mtS_g4rIvX" role="2OqNvi">
                <ref role="37wK5l" node="5mRomlpwkA3" resolve="resolveNode" />
                <node concept="37vLTw" id="mtS_g4rIOL" role="37wK5m">
                  <ref role="3cqZAo" node="mtS_g4rqeZ" resolve="nodeRef" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="mtS_g4r_5h" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="mtS_g4r802" role="jymVt" />
    <node concept="312cEu" id="7$7_4ZiinS7" role="jymVt">
      <property role="TrG5h" value="AreaReference" />
      <node concept="312cEg" id="7$7_4Ziis$R" role="jymVt">
        <property role="TrG5h" value="wrappedArea" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm1VV" id="mtS_g4twZ0" role="1B3o_S" />
        <node concept="3uibUv" id="7$7_4Ziit6m" role="1tU5fm">
          <ref role="3uigEE" to="qvpu:~IAreaReference" resolve="IAreaReference" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7$7_4ZiinS8" role="1B3o_S" />
      <node concept="3uibUv" id="7$7_4ZiirIn" role="EKbjA">
        <ref role="3uigEE" to="qvpu:~IAreaReference" resolve="IAreaReference" />
      </node>
      <node concept="3clFbW" id="7$7_4Ziiya2" role="jymVt">
        <node concept="3cqZAl" id="7$7_4Ziiya3" role="3clF45" />
        <node concept="3Tm1VV" id="7$7_4Ziiya4" role="1B3o_S" />
        <node concept="3clFbS" id="7$7_4Ziiya6" role="3clF47">
          <node concept="3clFbF" id="7$7_4Ziiyaa" role="3cqZAp">
            <node concept="37vLTI" id="7$7_4Ziiyac" role="3clFbG">
              <node concept="2OqwBi" id="7$7_4Ziiyag" role="37vLTJ">
                <node concept="Xjq3P" id="7$7_4Ziiyah" role="2Oq$k0" />
                <node concept="2OwXpG" id="7$7_4Ziiyai" role="2OqNvi">
                  <ref role="2Oxat5" node="7$7_4Ziis$R" resolve="wrappedArea" />
                </node>
              </node>
              <node concept="37vLTw" id="7$7_4Ziiyaj" role="37vLTx">
                <ref role="3cqZAo" node="7$7_4Ziiya9" resolve="wrappedArea" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7$7_4Ziiya9" role="3clF46">
          <property role="TrG5h" value="wrappedArea" />
          <node concept="3uibUv" id="7$7_4Ziiya8" role="1tU5fm">
            <ref role="3uigEE" to="qvpu:~IAreaReference" resolve="IAreaReference" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="7$7_4Ziiv08" role="jymVt">
        <property role="TrG5h" value="equals" />
        <node concept="10P_77" id="7$7_4Ziiv09" role="3clF45" />
        <node concept="3Tm1VV" id="7$7_4Ziiv0a" role="1B3o_S" />
        <node concept="3clFbS" id="7$7_4Ziiv0b" role="3clF47">
          <node concept="3clFbJ" id="7$7_4Ziiv0c" role="3cqZAp">
            <node concept="3clFbS" id="7$7_4Ziiv0d" role="3clFbx">
              <node concept="3cpWs6" id="7$7_4Ziiv0e" role="3cqZAp">
                <node concept="3clFbT" id="7$7_4Ziiv0f" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="7$7_4Ziiv0g" role="3clFbw">
              <node concept="Xjq3P" id="7$7_4Ziiv07" role="3uHU7B" />
              <node concept="37vLTw" id="7$7_4Ziiv0h" role="3uHU7w">
                <ref role="3cqZAo" node="7$7_4Ziiv0C" resolve="o" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7$7_4Ziiv0i" role="3cqZAp">
            <node concept="3clFbS" id="7$7_4Ziiv0j" role="3clFbx">
              <node concept="3cpWs6" id="7$7_4Ziiv0k" role="3cqZAp">
                <node concept="3clFbT" id="7$7_4Ziiv0l" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="22lmx$" id="7$7_4Ziiv0m" role="3clFbw">
              <node concept="3clFbC" id="7$7_4Ziiv0n" role="3uHU7B">
                <node concept="37vLTw" id="7$7_4Ziiv0o" role="3uHU7B">
                  <ref role="3cqZAo" node="7$7_4Ziiv0C" resolve="o" />
                </node>
                <node concept="10Nm6u" id="7$7_4Ziiv0p" role="3uHU7w" />
              </node>
              <node concept="3y3z36" id="7$7_4Ziiv0q" role="3uHU7w">
                <node concept="2OqwBi" id="7$7_4Ziiv0r" role="3uHU7B">
                  <node concept="Xjq3P" id="7$7_4Ziiv0s" role="2Oq$k0" />
                  <node concept="liA8E" id="7$7_4Ziiv0t" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7$7_4Ziiv0u" role="3uHU7w">
                  <node concept="37vLTw" id="7$7_4Ziiv0v" role="2Oq$k0">
                    <ref role="3cqZAo" node="7$7_4Ziiv0C" resolve="o" />
                  </node>
                  <node concept="liA8E" id="7$7_4Ziiv0w" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7$7_4Ziiv0x" role="3cqZAp" />
          <node concept="3cpWs8" id="7$7_4Ziiv0y" role="3cqZAp">
            <node concept="3cpWsn" id="7$7_4Ziiv0z" role="3cpWs9">
              <property role="TrG5h" value="that" />
              <node concept="3uibUv" id="7$7_4Ziiv0$" role="1tU5fm">
                <ref role="3uigEE" node="7$7_4ZiinS7" resolve="VirtualRepositoryArea.AreaReference" />
              </node>
              <node concept="10QFUN" id="7$7_4Ziiv0_" role="33vP2m">
                <node concept="3uibUv" id="7$7_4Ziiv0A" role="10QFUM">
                  <ref role="3uigEE" node="7$7_4ZiinS7" resolve="VirtualRepositoryArea.AreaReference" />
                </node>
                <node concept="37vLTw" id="7$7_4Ziiv0B" role="10QFUP">
                  <ref role="3cqZAo" node="7$7_4Ziiv0C" resolve="o" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7$7_4Ziiv0M" role="3cqZAp">
            <node concept="3clFbS" id="7$7_4Ziiv0N" role="3clFbx">
              <node concept="3cpWs6" id="7$7_4Ziiv0O" role="3cqZAp">
                <node concept="3clFbT" id="7$7_4Ziiv0P" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3K4zz7" id="7$7_4Ziiv0Q" role="3clFbw">
              <node concept="3fqX7Q" id="7$7_4Ziiv0R" role="3K4E3e">
                <node concept="2OqwBi" id="7$7_4Ziiv0S" role="3fr31v">
                  <node concept="liA8E" id="7$7_4Ziiv0T" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                    <node concept="2OqwBi" id="7$7_4Ziiv0U" role="37wK5m">
                      <node concept="37vLTw" id="7$7_4Ziiv0F" role="2Oq$k0">
                        <ref role="3cqZAo" node="7$7_4Ziiv0z" resolve="that" />
                      </node>
                      <node concept="2OwXpG" id="7$7_4Ziiv0I" role="2OqNvi">
                        <ref role="2Oxat5" node="7$7_4Ziis$R" resolve="wrappedArea" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="7$7_4Ziiv0J" role="2Oq$k0">
                    <ref role="3cqZAo" node="7$7_4Ziis$R" resolve="wrappedArea" />
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="7$7_4Ziiv0V" role="3K4Cdx">
                <node concept="10Nm6u" id="7$7_4Ziiv0W" role="3uHU7w" />
                <node concept="37vLTw" id="7$7_4Ziiv0K" role="3uHU7B">
                  <ref role="3cqZAo" node="7$7_4Ziis$R" resolve="wrappedArea" />
                </node>
              </node>
              <node concept="3y3z36" id="7$7_4Ziiv0X" role="3K4GZi">
                <node concept="10Nm6u" id="7$7_4Ziiv0Y" role="3uHU7w" />
                <node concept="2OqwBi" id="7$7_4Ziiv0Z" role="3uHU7B">
                  <node concept="37vLTw" id="7$7_4Ziiv10" role="2Oq$k0">
                    <ref role="3cqZAo" node="7$7_4Ziiv0z" resolve="that" />
                  </node>
                  <node concept="2OwXpG" id="7$7_4Ziiv0L" role="2OqNvi">
                    <ref role="2Oxat5" node="7$7_4Ziis$R" resolve="wrappedArea" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7$7_4Ziiv11" role="3cqZAp" />
          <node concept="3clFbF" id="7$7_4Ziiv12" role="3cqZAp">
            <node concept="3clFbT" id="7$7_4Ziiv13" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7$7_4Ziiv0C" role="3clF46">
          <property role="TrG5h" value="o" />
          <node concept="3uibUv" id="7$7_4Ziiv0D" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="2AHcQZ" id="7$7_4Ziiv0E" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="7$7_4Ziiv14" role="jymVt">
        <property role="TrG5h" value="hashCode" />
        <node concept="10Oyi0" id="7$7_4Ziiv15" role="3clF45" />
        <node concept="3Tm1VV" id="7$7_4Ziiv16" role="1B3o_S" />
        <node concept="3clFbS" id="7$7_4Ziiv17" role="3clF47">
          <node concept="3cpWs8" id="7$7_4Ziiv19" role="3cqZAp">
            <node concept="3cpWsn" id="7$7_4Ziiv1a" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="10Oyi0" id="7$7_4Ziiv1b" role="1tU5fm" />
              <node concept="3cmrfG" id="7$7_4Ziiv1c" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7$7_4Ziiv1m" role="3cqZAp">
            <node concept="37vLTI" id="7$7_4Ziiv1n" role="3clFbG">
              <node concept="3cpWs3" id="7$7_4Ziiv1o" role="37vLTx">
                <node concept="1eOMI4" id="7$7_4Ziiv1p" role="3uHU7w">
                  <node concept="3K4zz7" id="7$7_4Ziiv1q" role="1eOMHV">
                    <node concept="3cmrfG" id="7$7_4Ziiv1r" role="3K4GZi">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3y3z36" id="7$7_4Ziiv1s" role="3K4Cdx">
                      <node concept="10Nm6u" id="7$7_4Ziiv1t" role="3uHU7w" />
                      <node concept="37vLTw" id="7$7_4Ziiv1k" role="3uHU7B">
                        <ref role="3cqZAo" node="7$7_4Ziis$R" resolve="wrappedArea" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7$7_4Ziiv1u" role="3K4E3e">
                      <node concept="1eOMI4" id="7$7_4Ziiv1v" role="2Oq$k0">
                        <node concept="10QFUN" id="7$7_4Ziiv1w" role="1eOMHV">
                          <node concept="3uibUv" id="7$7_4Ziiv1x" role="10QFUM">
                            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                          </node>
                          <node concept="37vLTw" id="7$7_4Ziiv1l" role="10QFUP">
                            <ref role="3cqZAo" node="7$7_4Ziis$R" resolve="wrappedArea" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7$7_4Ziiv1y" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="17qRlL" id="7$7_4Ziiv1i" role="3uHU7B">
                  <node concept="3cmrfG" id="7$7_4Ziiv1j" role="3uHU7B">
                    <property role="3cmrfH" value="31" />
                  </node>
                  <node concept="37vLTw" id="7$7_4Ziiv1d" role="3uHU7w">
                    <ref role="3cqZAo" node="7$7_4Ziiv1a" resolve="result" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="7$7_4Ziiv1z" role="37vLTJ">
                <ref role="3cqZAo" node="7$7_4Ziiv1a" resolve="result" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7$7_4Ziiv1$" role="3cqZAp">
            <node concept="37vLTw" id="7$7_4Ziiv1_" role="3clFbG">
              <ref role="3cqZAo" node="7$7_4Ziiv1a" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7$7_4Ziiv18" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="26WjidFWrSR">
    <property role="TrG5h" value="ReferenceDeserializationException" />
    <node concept="2tJIrI" id="26WjidFWtyy" role="jymVt" />
    <node concept="3Tm1VV" id="26WjidFWrSS" role="1B3o_S" />
    <node concept="3uibUv" id="26WjidFWtyq" role="1zkMxy">
      <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
    </node>
    <node concept="3clFbW" id="26WjidFWtyG" role="jymVt">
      <node concept="3cqZAl" id="26WjidFWtyH" role="3clF45" />
      <node concept="3Tm1VV" id="26WjidFWtyI" role="1B3o_S" />
      <node concept="3clFbS" id="26WjidFWtyK" role="3clF47">
        <node concept="XkiVB" id="26WjidFWtyM" role="3cqZAp">
          <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="RuntimeException" />
          <node concept="3cpWs3" id="26WjidFWtVO" role="37wK5m">
            <node concept="37vLTw" id="26WjidFWtWN" role="3uHU7w">
              <ref role="3cqZAo" node="26WjidFWtyN" resolve="serializedData" />
            </node>
            <node concept="Xl_RD" id="26WjidFWtAP" role="3uHU7B">
              <property role="Xl_RC" value="Failed to deserialize reference: " />
            </node>
          </node>
          <node concept="37vLTw" id="26WjidFWtyU" role="37wK5m">
            <ref role="3cqZAo" node="26WjidFWtyR" resolve="cause" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="26WjidFWtyR" role="3clF46">
        <property role="TrG5h" value="cause" />
        <node concept="3uibUv" id="26WjidFWtyT" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
        </node>
      </node>
      <node concept="37vLTG" id="26WjidFWtyN" role="3clF46">
        <property role="TrG5h" value="serializedData" />
        <node concept="17QB3L" id="26WjidFWtzS" role="1tU5fm" />
      </node>
    </node>
  </node>
</model>

