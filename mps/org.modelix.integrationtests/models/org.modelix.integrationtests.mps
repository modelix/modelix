<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ec75a426-3f03-4e3f-b2c1-8c6910d05061(org.modelix.integrationtests)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="false" />
  <languages>
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="5dc5fc0d-37ef-4782-8192-8b5ce1f69f80" name="jetbrains.mps.baseLanguage.extensionMethods" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="5" />
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="5" />
  </languages>
  <imports>
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="q7tw" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.apache.log4j(MPS.Core/)" />
    <import index="79ha" ref="r:2876f1ee-0b45-4db5-8c09-0682cdee5c67(jetbrains.mps.tool.environment)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="csg2" ref="r:b0cc4f86-cf49-4ffc-b138-1f9973329ce1(org.modelix.model.mpsplugin)" />
    <import index="nhvc" ref="r:38471075-de8a-4a91-a626-13195397f5c5(org.modelix.model.mpsplugin.plugin)" />
    <import index="xkhl" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.lazy(org.modelix.model.client/)" />
    <import index="5440" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.client(org.modelix.model.client/)" />
    <import index="v18h" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:kotlin(org.modelix.model.client/)" />
    <import index="jks5" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.api(org.modelix.model.client/)" />
    <import index="wy2b" ref="87f4b21e-a3a5-459e-a54b-408fd9eb7350/java:com.google.gson(org.modelix.lib/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="xxte" ref="r:a79f28f8-6055-40c6-bc5e-47a42a3b97e8(org.modelix.model.mps)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="pa15" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.persistence(MPS.Core/)" />
    <import index="w7di" ref="r:f1cc96fe-d6ef-4a58-b607-1b2e4d02e1de(org.modelix.model.runtimelang.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1238852151516" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType" flags="in" index="1LlUBW">
        <child id="1238852204892" name="componentType" index="1Lm7xW" />
      </concept>
      <concept id="1238853782547" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleLiteral" flags="nn" index="1Ls8ON">
        <child id="1238853845806" name="component" index="1Lso8e" />
      </concept>
      <concept id="1238857743184" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleMemberAccessExpression" flags="nn" index="1LFfDK">
        <child id="1238857764950" name="tuple" index="1LFl5Q" />
        <child id="1238857834412" name="index" index="1LF_Uc" />
      </concept>
    </language>
    <language id="5dc5fc0d-37ef-4782-8192-8b5ce1f69f80" name="jetbrains.mps.baseLanguage.extensionMethods">
      <concept id="8022092943110829337" name="jetbrains.mps.baseLanguage.extensionMethods.structure.BaseExtensionMethodContainer" flags="ng" index="a7sou">
        <child id="8022092943110829339" name="methods" index="a7sos" />
      </concept>
      <concept id="1550313277221324859" name="jetbrains.mps.baseLanguage.extensionMethods.structure.ExtensionMethodCall" flags="nn" index="AQDAd" />
      <concept id="1550313277222152185" name="jetbrains.mps.baseLanguage.extensionMethods.structure.ExtensionMethodDeclaration" flags="ng" index="ATzpf" />
      <concept id="1894531970723270160" name="jetbrains.mps.baseLanguage.extensionMethods.structure.TypeExtension" flags="ng" index="KRBjq">
        <child id="1894531970723323134" name="type" index="KRMoO" />
      </concept>
      <concept id="7685333756920172912" name="jetbrains.mps.baseLanguage.extensionMethods.structure.LocalExtendedMethodCall" flags="nn" index="Vb5G_" />
      <concept id="3316739663067157299" name="jetbrains.mps.baseLanguage.extensionMethods.structure.ThisExtensionExpression" flags="nn" index="2V_BSl" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
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
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
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
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
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
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
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
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
        <child id="1160998916832" name="message" index="1gVpfI" />
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
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1208623485264" name="jetbrains.mps.baseLanguage.structure.AbstractOperation" flags="nn" index="1B$H19" />
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="ng" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367509" name="finallyClause" index="1zxBo6" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="1423104411234567454" name="repo" index="ukAjM" />
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
      <concept id="8974276187400348177" name="jetbrains.mps.lang.access.structure.ExecuteCommandStatement" flags="nn" index="1QHqEO" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8465538089690331492" name="jetbrains.mps.baseLanguage.javadoc.structure.DeprecatedBlockDocTag" flags="ng" index="TZ5HI">
        <child id="2667874559098216723" name="text" index="3HnX3l" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="7080278351417106679" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertIsNotNull" flags="nn" index="2Hmddi">
        <child id="7080278351417106681" name="expression" index="2Hmdds" />
      </concept>
      <concept id="8427750732757990717" name="jetbrains.mps.baseLanguage.unitTest.structure.BinaryAssert" flags="nn" index="3tpDYu">
        <child id="8427750732757990725" name="actual" index="3tpDZA" />
        <child id="8427750732757990724" name="expected" index="3tpDZB" />
      </concept>
      <concept id="1171978097730" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertEquals" flags="nn" index="3vlDli" />
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1168401810208" name="jetbrains.mps.baseLanguage.logging.structure.PrintStatement" flags="nn" index="abc8K">
        <child id="1168401864803" name="textExpression" index="abp_N" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1212008292747" name="jetbrains.mps.lang.smodel.structure.Model_GetLongNameOperation" flags="nn" index="LkI2h" />
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG" />
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
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
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
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
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
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1162934736510" name="jetbrains.mps.baseLanguage.collections.structure.GetElementOperation" flags="nn" index="34jXtK" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="312cEu" id="4ZsvGZupGNR">
    <property role="TrG5h" value="MainClass" />
    <node concept="2tJIrI" id="6Jg9HT9UWvi" role="jymVt" />
    <node concept="2YIFZL" id="6Jg9HT9UXq2" role="jymVt">
      <property role="TrG5h" value="considerExtraLogging" />
      <node concept="3clFbS" id="6Jg9HT9UXq4" role="3clF47">
        <node concept="3cpWs8" id="6Jg9HT9UXq5" role="3cqZAp">
          <node concept="3cpWsn" id="6Jg9HT9UXq6" role="3cpWs9">
            <property role="TrG5h" value="enableExtraLogging" />
            <node concept="17QB3L" id="6Jg9HT9UXq7" role="1tU5fm" />
            <node concept="2YIFZM" id="6Jg9HT9UXq8" role="33vP2m">
              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
              <ref role="37wK5l" to="wyt6:~System.getenv(java.lang.String)" resolve="getenv" />
              <node concept="Xl_RD" id="6Jg9HT9UXq9" role="37wK5m">
                <property role="Xl_RC" value="MODELIX_EXTRALOGGING" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6Jg9HT9UXqa" role="3cqZAp">
          <node concept="3clFbS" id="6Jg9HT9UXqb" role="3clFbx">
            <node concept="3cpWs8" id="6Jg9HT9UXqc" role="3cqZAp">
              <node concept="3cpWsn" id="6Jg9HT9UXqd" role="3cpWs9">
                <property role="TrG5h" value="consoleAppender" />
                <node concept="3uibUv" id="6Jg9HT9UXqe" role="1tU5fm">
                  <ref role="3uigEE" to="q7tw:~ConsoleAppender" resolve="ConsoleAppender" />
                </node>
                <node concept="2ShNRf" id="6Jg9HT9UXqf" role="33vP2m">
                  <node concept="1pGfFk" id="6Jg9HT9UXqg" role="2ShVmc">
                    <ref role="37wK5l" to="q7tw:~ConsoleAppender.&lt;init&gt;()" resolve="ConsoleAppender" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6Jg9HT9UXqh" role="3cqZAp">
              <node concept="2OqwBi" id="6Jg9HT9UXqi" role="3clFbG">
                <node concept="37vLTw" id="6Jg9HT9UXqj" role="2Oq$k0">
                  <ref role="3cqZAo" node="6Jg9HT9UXqd" resolve="consoleAppender" />
                </node>
                <node concept="liA8E" id="6Jg9HT9UXqk" role="2OqNvi">
                  <ref role="37wK5l" to="q7tw:~AppenderSkeleton.setThreshold(org.apache.log4j.Priority)" resolve="setThreshold" />
                  <node concept="10M0yZ" id="6Jg9HT9UXql" role="37wK5m">
                    <ref role="3cqZAo" to="q7tw:~Priority.DEBUG" resolve="DEBUG" />
                    <ref role="1PxDUh" to="q7tw:~Priority" resolve="Priority" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6Jg9HT9UXqm" role="3cqZAp">
              <node concept="2OqwBi" id="6Jg9HT9UXqn" role="3clFbG">
                <node concept="2YIFZM" id="6Jg9HT9UXqo" role="2Oq$k0">
                  <ref role="1Pybhc" to="q7tw:~LogManager" resolve="LogManager" />
                  <ref role="37wK5l" to="q7tw:~LogManager.getRootLogger()" resolve="getRootLogger" />
                </node>
                <node concept="liA8E" id="6Jg9HT9UXqp" role="2OqNvi">
                  <ref role="37wK5l" to="q7tw:~Category.setLevel(org.apache.log4j.Level)" resolve="setLevel" />
                  <node concept="10M0yZ" id="6Jg9HT9UXqq" role="37wK5m">
                    <ref role="1PxDUh" to="q7tw:~Level" resolve="Level" />
                    <ref role="3cqZAo" to="q7tw:~Level.DEBUG" resolve="DEBUG" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6Jg9HT9UXqr" role="3cqZAp">
              <node concept="2OqwBi" id="6Jg9HT9UXqs" role="3clFbG">
                <node concept="2YIFZM" id="6Jg9HT9UXqt" role="2Oq$k0">
                  <ref role="1Pybhc" to="q7tw:~LogManager" resolve="LogManager" />
                  <ref role="37wK5l" to="q7tw:~LogManager.getRootLogger()" resolve="getRootLogger" />
                </node>
                <node concept="liA8E" id="6Jg9HT9UXqu" role="2OqNvi">
                  <ref role="37wK5l" to="q7tw:~Category.addAppender(org.apache.log4j.Appender)" resolve="addAppender" />
                  <node concept="37vLTw" id="6Jg9HT9UXqv" role="37wK5m">
                    <ref role="3cqZAo" node="6Jg9HT9UXqd" resolve="consoleAppender" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="3pfWNm6rWIz" role="3clFbw">
            <node concept="17R0WA" id="6Jg9HT9UXqw" role="3uHU7B">
              <node concept="37vLTw" id="6Jg9HT9UXqy" role="3uHU7B">
                <ref role="3cqZAo" node="6Jg9HT9UXq6" resolve="enableExtraLogging" />
              </node>
              <node concept="Xl_RD" id="6Jg9HT9UXqx" role="3uHU7w">
                <property role="Xl_RC" value="enabled" />
              </node>
            </node>
            <node concept="17R0WA" id="3pfWNm6rWNk" role="3uHU7w">
              <node concept="Xl_RD" id="3pfWNm6rWNl" role="3uHU7w">
                <property role="Xl_RC" value="true" />
              </node>
              <node concept="37vLTw" id="3pfWNm6rWNm" role="3uHU7B">
                <ref role="3cqZAo" node="6Jg9HT9UXq6" resolve="enableExtraLogging" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6Jg9HT9UXq$" role="3clF45" />
      <node concept="3Tm6S6" id="6Jg9HT9UXqz" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6Jg9HT9UXI5" role="jymVt" />
    <node concept="2tJIrI" id="Aop38Ik_hv" role="jymVt" />
    <node concept="2YIFZL" id="Aop38Ik_Bn" role="jymVt">
      <property role="TrG5h" value="cleaning" />
      <node concept="3clFbS" id="Aop38Ik_Bq" role="3clF47">
        <node concept="3cpWs8" id="Aop38Ik_H2" role="3cqZAp">
          <node concept="3cpWsn" id="Aop38Ik_H3" role="3cpWs9">
            <property role="TrG5h" value="modelixRootDir" />
            <node concept="3uibUv" id="Aop38Ik_H4" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2OqwBi" id="Aop38Ik_H5" role="33vP2m">
              <node concept="2OqwBi" id="Aop38Ik_H6" role="2Oq$k0">
                <node concept="37vLTw" id="Aop38Ik_H7" role="2Oq$k0">
                  <ref role="3cqZAo" node="Aop38Ik_Wh" resolve="referenceDir" />
                </node>
                <node concept="liA8E" id="Aop38Ik_H8" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.getParentFile()" resolve="getParentFile" />
                </node>
              </node>
              <node concept="liA8E" id="Aop38Ik_H9" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.getParentFile()" resolve="getParentFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Aop38Ik_Hz" role="3cqZAp">
          <node concept="3cpWsn" id="Aop38Ik_H$" role="3cpWs9">
            <property role="TrG5h" value="buildDir" />
            <node concept="3uibUv" id="Aop38Ik_H_" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="Aop38Ik_HA" role="33vP2m">
              <node concept="1pGfFk" id="Aop38Ik_HB" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                <node concept="37vLTw" id="Aop38Ik_HC" role="37wK5m">
                  <ref role="3cqZAo" node="Aop38Ik_H3" resolve="modelixRootDir" />
                </node>
                <node concept="Xl_RD" id="Aop38Ik_HD" role="37wK5m">
                  <property role="Xl_RC" value="build" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Aop38Ik_HE" role="3cqZAp">
          <node concept="3cpWsn" id="Aop38Ik_HF" role="3cpWs9">
            <property role="TrG5h" value="integrationTests" />
            <node concept="3uibUv" id="Aop38Ik_HG" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="Aop38Ik_HH" role="33vP2m">
              <node concept="1pGfFk" id="Aop38Ik_HI" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                <node concept="37vLTw" id="Aop38Ik_HJ" role="37wK5m">
                  <ref role="3cqZAo" node="Aop38Ik_H$" resolve="buildDir" />
                </node>
                <node concept="Xl_RD" id="Aop38Ik_HK" role="37wK5m">
                  <property role="Xl_RC" value="integrationTests" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Aop38IkAN4" role="3cqZAp">
          <node concept="3clFbS" id="Aop38IkAN6" role="3clFbx">
            <node concept="3clFbF" id="Aop38IkBIe" role="3cqZAp">
              <node concept="2OqwBi" id="Aop38IkBPM" role="3clFbG">
                <node concept="37vLTw" id="Aop38IkBIc" role="2Oq$k0">
                  <ref role="3cqZAo" node="Aop38Ik_HF" resolve="integrationTests" />
                </node>
                <node concept="AQDAd" id="Aop38IkC38" role="2OqNvi">
                  <ref role="37wK5l" node="6V2G5GpUcfv" resolve="deleteDir" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="Aop38IkBku" role="3clFbw">
            <node concept="37vLTw" id="Aop38IkAWL" role="2Oq$k0">
              <ref role="3cqZAo" node="Aop38Ik_HF" resolve="integrationTests" />
            </node>
            <node concept="liA8E" id="Aop38IkB_u" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="5cWpYFRE520" role="3cqZAp">
          <node concept="3fqX7Q" id="5cWpYFRE66I" role="1gVkn0">
            <node concept="2OqwBi" id="5cWpYFRE66K" role="3fr31v">
              <node concept="37vLTw" id="5cWpYFRE66L" role="2Oq$k0">
                <ref role="3cqZAo" node="Aop38Ik_HF" resolve="integrationTests" />
              </node>
              <node concept="liA8E" id="5cWpYFRE66M" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="Aop38Ik_uB" role="1B3o_S" />
      <node concept="3cqZAl" id="Aop38Ik_AU" role="3clF45" />
      <node concept="37vLTG" id="Aop38Ik_Wh" role="3clF46">
        <property role="TrG5h" value="referenceDir" />
        <node concept="3uibUv" id="Aop38Ik_Wg" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Aop38Ik_nY" role="jymVt" />
    <node concept="2tJIrI" id="6Jg9HT9UZSu" role="jymVt" />
    <node concept="2YIFZL" id="4ZsvGZupGOJ" role="jymVt">
      <property role="TrG5h" value="mpsMain" />
      <node concept="3clFbS" id="4ZsvGZupGOM" role="3clF47">
        <node concept="3clFbF" id="6Jg9HT9UX$G" role="3cqZAp">
          <node concept="1rXfSq" id="6Jg9HT9UX$E" role="3clFbG">
            <ref role="37wK5l" node="6Jg9HT9UXq2" resolve="considerExtraLogging" />
          </node>
        </node>
        <node concept="3clFbF" id="nkanBusX4b" role="3cqZAp">
          <node concept="2YIFZM" id="nkanBusXRZ" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~System.setProperty(java.lang.String,java.lang.String)" resolve="setProperty" />
            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
            <node concept="Xl_RD" id="nkanBusXS0" role="37wK5m">
              <property role="Xl_RC" value="disable.autobinding" />
            </node>
            <node concept="Xl_RD" id="nkanBusXS1" role="37wK5m">
              <property role="Xl_RC" value="true" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5yNJPA6tewe" role="3cqZAp" />
        <node concept="3cpWs8" id="5yNJPA6tn0o" role="3cqZAp">
          <node concept="3cpWsn" id="5yNJPA6tn0p" role="3cpWs9">
            <property role="TrG5h" value="referenceDir" />
            <node concept="3uibUv" id="5yNJPA6tn0q" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="5yNJPA6tnht" role="33vP2m">
              <node concept="1pGfFk" id="5yNJPA6tnhk" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                <node concept="2YIFZM" id="5yNJPA6tn4e" role="37wK5m">
                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                  <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
                  <node concept="Xl_RD" id="5yNJPA6tn4f" role="37wK5m">
                    <property role="Xl_RC" value="user.dir" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Aop38IkCBp" role="3cqZAp">
          <node concept="1rXfSq" id="Aop38IkCBn" role="3clFbG">
            <ref role="37wK5l" node="Aop38Ik_Bn" resolve="cleaning" />
            <node concept="37vLTw" id="Aop38IkDbV" role="37wK5m">
              <ref role="3cqZAo" node="5yNJPA6tn0p" resolve="referenceDir" />
            </node>
          </node>
        </node>
        <node concept="abc8K" id="5yNJPA6tn8K" role="3cqZAp">
          <node concept="Xl_RD" id="5yNJPA6tncA" role="abp_N">
            <property role="Xl_RC" value="Reference dir: " />
          </node>
          <node concept="37vLTw" id="5yNJPA6tnfe" role="abp_N">
            <ref role="3cqZAo" node="5yNJPA6tn0p" resolve="referenceDir" />
          </node>
        </node>
        <node concept="3cpWs8" id="5yNJPA6buwh" role="3cqZAp">
          <node concept="3cpWsn" id="5yNJPA6buwk" role="3cpWs9">
            <property role="TrG5h" value="integrationTests" />
            <node concept="_YKpA" id="5yNJPA6buwd" role="1tU5fm">
              <node concept="3uibUv" id="5yNJPA6buy7" role="_ZDj9">
                <ref role="3uigEE" node="5yNJPA6tjxd" resolve="IntegrationTest" />
              </node>
            </node>
            <node concept="2ShNRf" id="5yNJPA6buzR" role="33vP2m">
              <node concept="Tc6Ow" id="5yNJPA6buzF" role="2ShVmc">
                <node concept="3uibUv" id="5yNJPA6buzG" role="HW$YZ">
                  <ref role="3uigEE" node="5yNJPA6tjxd" resolve="IntegrationTest" />
                </node>
                <node concept="2ShNRf" id="lO9TSUBHIm" role="HW$Y0">
                  <node concept="1pGfFk" id="lO9TSUBOeL" role="2ShVmc">
                    <ref role="37wK5l" node="lO9TSUBsvB" resolve="ProjectCanBeCopiedAndSyncOnCloudTest" />
                    <node concept="37vLTw" id="lO9TSUBOLV" role="37wK5m">
                      <ref role="3cqZAo" node="5yNJPA6tn0p" resolve="referenceDir" />
                    </node>
                    <node concept="37vLTw" id="lO9TSUBPLW" role="37wK5m">
                      <ref role="3cqZAo" node="4ZsvGZutXBI" resolve="ideaEnvironment" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="6Oq35Wg1Xie" role="HW$Y0">
                  <node concept="1pGfFk" id="6Oq35Wg1Xif" role="2ShVmc">
                    <ref role="37wK5l" node="6Oq35Wg1Gb6" resolve="ProjectCanBeCopiedFromTheCloudToLocalAndSyncedTest" />
                    <node concept="37vLTw" id="6Oq35Wg1Xig" role="37wK5m">
                      <ref role="3cqZAo" node="5yNJPA6tn0p" resolve="referenceDir" />
                    </node>
                    <node concept="37vLTw" id="6Oq35Wg1Xih" role="37wK5m">
                      <ref role="3cqZAo" node="4ZsvGZutXBI" resolve="ideaEnvironment" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="11vVX88rG6M" role="HW$Y0">
                  <node concept="1pGfFk" id="11vVX88rGJ1" role="2ShVmc">
                    <ref role="37wK5l" node="11vVX88rChk" resolve="ModuleCanBeCopiedOnCloudTest" />
                    <node concept="37vLTw" id="11vVX88rGTQ" role="37wK5m">
                      <ref role="3cqZAo" node="5yNJPA6tn0p" resolve="referenceDir" />
                    </node>
                    <node concept="37vLTw" id="11vVX88rGTR" role="37wK5m">
                      <ref role="3cqZAo" node="4ZsvGZutXBI" resolve="ideaEnvironment" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="5i$4SBK0p2U" role="HW$Y0">
                  <node concept="1pGfFk" id="5i$4SBK0p2V" role="2ShVmc">
                    <ref role="37wK5l" node="5i$4SBK0dxT" resolve="ModuleCanBeCopiedOnAndSyncedCloudTest" />
                    <node concept="37vLTw" id="5i$4SBK0p2W" role="37wK5m">
                      <ref role="3cqZAo" node="5yNJPA6tn0p" resolve="referenceDir" />
                    </node>
                    <node concept="37vLTw" id="5i$4SBK0p2X" role="37wK5m">
                      <ref role="3cqZAo" node="4ZsvGZutXBI" resolve="ideaEnvironment" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="7jRNnvCjypP" role="HW$Y0">
                  <node concept="1pGfFk" id="7jRNnvCjztD" role="2ShVmc">
                    <ref role="37wK5l" node="7jRNnvC91jg" resolve="ModuleOnTheCloudCanBeCheckoutAsTransientModuleTest" />
                    <node concept="37vLTw" id="7jRNnvCjAi0" role="37wK5m">
                      <ref role="3cqZAo" node="5yNJPA6tn0p" resolve="referenceDir" />
                    </node>
                    <node concept="37vLTw" id="7jRNnvCjAi1" role="37wK5m">
                      <ref role="3cqZAo" node="4ZsvGZutXBI" resolve="ideaEnvironment" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="7jRNnvCjzOE" role="HW$Y0">
                  <node concept="1pGfFk" id="7jRNnvCj$UB" role="2ShVmc">
                    <ref role="37wK5l" node="7jRNnvCgEAa" resolve="ModuleCanBeCopiedFromTheCloudToLocalProjectTest" />
                    <node concept="37vLTw" id="7jRNnvCjArx" role="37wK5m">
                      <ref role="3cqZAo" node="5yNJPA6tn0p" resolve="referenceDir" />
                    </node>
                    <node concept="37vLTw" id="7jRNnvCjAry" role="37wK5m">
                      <ref role="3cqZAo" node="4ZsvGZutXBI" resolve="ideaEnvironment" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="7jRNnvCj_vg" role="HW$Y0">
                  <node concept="1pGfFk" id="7jRNnvCjA5Q" role="2ShVmc">
                    <ref role="37wK5l" node="7jRNnvChqK7" resolve="ModuleCanBeCopiedFromTheCloudToLocalProjectAndSyncedTest" />
                    <node concept="37vLTw" id="7jRNnvCjACs" role="37wK5m">
                      <ref role="3cqZAo" node="5yNJPA6tn0p" resolve="referenceDir" />
                    </node>
                    <node concept="37vLTw" id="7jRNnvCjACt" role="37wK5m">
                      <ref role="3cqZAo" node="4ZsvGZutXBI" resolve="ideaEnvironment" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5yNJPA6bDOX" role="3cqZAp">
          <node concept="3cpWsn" id="5yNJPA6bDP0" role="3cpWs9">
            <property role="TrG5h" value="failures" />
            <node concept="10P_77" id="5yNJPA6bDOV" role="1tU5fm" />
            <node concept="3clFbT" id="5yNJPA6bDSy" role="33vP2m" />
          </node>
        </node>
        <node concept="abc8K" id="5yNJPA6tnSm" role="3cqZAp">
          <node concept="Xl_RD" id="5yNJPA6to3v" role="abp_N">
            <property role="Xl_RC" value="" />
          </node>
        </node>
        <node concept="abc8K" id="5yNJPA6toI5" role="3cqZAp">
          <node concept="Xl_RD" id="5yNJPA6toTi" role="abp_N">
            <property role="Xl_RC" value="Starting tests execution" />
          </node>
        </node>
        <node concept="3cpWs8" id="5yNJPA6bwp4" role="3cqZAp">
          <node concept="3cpWsn" id="5yNJPA6bwp7" role="3cpWs9">
            <property role="TrG5h" value="results" />
            <node concept="_YKpA" id="5yNJPA6bwp0" role="1tU5fm">
              <node concept="1LlUBW" id="5yNJPA6bwMn" role="_ZDj9">
                <node concept="17QB3L" id="5yNJPA6bwMZ" role="1Lm7xW" />
                <node concept="3uibUv" id="5yNJPA6bwNM" role="1Lm7xW">
                  <ref role="3uigEE" node="5yNJPA6btY7" resolve="TestResult" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5yNJPA6byZb" role="33vP2m">
              <node concept="2OqwBi" id="5yNJPA6bxvB" role="2Oq$k0">
                <node concept="37vLTw" id="5yNJPA6bwPJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="5yNJPA6buwk" resolve="integrationTests" />
                </node>
                <node concept="3$u5V9" id="5yNJPA6bxL8" role="2OqNvi">
                  <node concept="1bVj0M" id="5yNJPA6bxLa" role="23t8la">
                    <node concept="3clFbS" id="5yNJPA6bxLb" role="1bW5cS">
                      <node concept="abc8K" id="5i$4SBK3_CE" role="3cqZAp" />
                      <node concept="abc8K" id="5i$4SBK3$Gh" role="3cqZAp">
                        <node concept="Xl_RD" id="5i$4SBK3$Oe" role="abp_N">
                          <property role="Xl_RC" value="****************************************************" />
                        </node>
                      </node>
                      <node concept="abc8K" id="5yNJPA6bzRg" role="3cqZAp">
                        <node concept="Xl_RD" id="5yNJPA6bzXz" role="abp_N">
                          <property role="Xl_RC" value="Executing " />
                        </node>
                        <node concept="2OqwBi" id="5yNJPA6b$vS" role="abp_N">
                          <node concept="37vLTw" id="5yNJPA6b$lT" role="2Oq$k0">
                            <ref role="3cqZAo" node="5yNJPA6bxLc" resolve="it" />
                          </node>
                          <node concept="liA8E" id="5yNJPA6tmmt" role="2OqNvi">
                            <ref role="37wK5l" node="5yNJPA6tlbs" resolve="testName" />
                          </node>
                        </node>
                      </node>
                      <node concept="abc8K" id="5i$4SBK3_9y" role="3cqZAp">
                        <node concept="Xl_RD" id="5i$4SBK3_9z" role="abp_N">
                          <property role="Xl_RC" value="****************************************************" />
                        </node>
                      </node>
                      <node concept="abc8K" id="5i$4SBK3_le" role="3cqZAp" />
                      <node concept="3cpWs8" id="5yNJPA6b$Zq" role="3cqZAp">
                        <node concept="3cpWsn" id="5yNJPA6b$Zr" role="3cpWs9">
                          <property role="TrG5h" value="testResult" />
                          <node concept="3uibUv" id="5yNJPA6b$Zs" role="1tU5fm">
                            <ref role="3uigEE" node="5yNJPA6btY7" resolve="TestResult" />
                          </node>
                          <node concept="2OqwBi" id="5yNJPA6b_zA" role="33vP2m">
                            <node concept="37vLTw" id="5yNJPA6b_pk" role="2Oq$k0">
                              <ref role="3cqZAo" node="5yNJPA6bxLc" resolve="it" />
                            </node>
                            <node concept="liA8E" id="5yNJPA6tmtR" role="2OqNvi">
                              <ref role="37wK5l" node="5yNJPA6tk3c" resolve="execute" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="5yNJPA6bAak" role="3cqZAp">
                        <node concept="3clFbS" id="5yNJPA6bAam" role="3clFbx">
                          <node concept="abc8K" id="5yNJPA6bC5A" role="3cqZAp">
                            <node concept="Xl_RD" id="5yNJPA6bCcu" role="abp_N">
                              <property role="Xl_RC" value="  OK" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5yNJPA6bBPC" role="3clFbw">
                          <node concept="37vLTw" id="5yNJPA6bBDw" role="2Oq$k0">
                            <ref role="3cqZAo" node="5yNJPA6b$Zr" resolve="testResult" />
                          </node>
                          <node concept="liA8E" id="5yNJPA6bBYy" role="2OqNvi">
                            <ref role="37wK5l" node="5yNJPA6bAkE" resolve="isSuccessful" />
                          </node>
                        </node>
                        <node concept="9aQIb" id="5yNJPA6bCq4" role="9aQIa">
                          <node concept="3clFbS" id="5yNJPA6bCq5" role="9aQI4">
                            <node concept="abc8K" id="5yNJPA6bCwX" role="3cqZAp">
                              <node concept="Xl_RD" id="5yNJPA6bCBO" role="abp_N">
                                <property role="Xl_RC" value="  KO: " />
                              </node>
                              <node concept="2OqwBi" id="5yNJPA6bDxm" role="abp_N">
                                <node concept="37vLTw" id="5yNJPA6bDmS" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5yNJPA6b$Zr" resolve="testResult" />
                                </node>
                                <node concept="liA8E" id="5yNJPA6bDEx" role="2OqNvi">
                                  <ref role="37wK5l" node="5yNJPA6bAJu" resolve="getError" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="5yNJPA6bE0g" role="3cqZAp">
                              <node concept="37vLTI" id="5yNJPA6bElV" role="3clFbG">
                                <node concept="3clFbT" id="5yNJPA6bEsA" role="37vLTx">
                                  <property role="3clFbU" value="true" />
                                </node>
                                <node concept="37vLTw" id="5yNJPA6bE0e" role="37vLTJ">
                                  <ref role="3cqZAo" node="5yNJPA6bDP0" resolve="failures" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="5yNJPA6bxQu" role="3cqZAp">
                        <node concept="1Ls8ON" id="5yNJPA6bxQt" role="3clFbG">
                          <node concept="2OqwBi" id="5yNJPA6by9h" role="1Lso8e">
                            <node concept="37vLTw" id="5yNJPA6bxZa" role="2Oq$k0">
                              <ref role="3cqZAo" node="5yNJPA6bxLc" resolve="it" />
                            </node>
                            <node concept="liA8E" id="5yNJPA6tmf3" role="2OqNvi">
                              <ref role="37wK5l" node="5yNJPA6tlbs" resolve="testName" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="5yNJPA6b_WY" role="1Lso8e">
                            <ref role="3cqZAo" node="5yNJPA6b$Zr" resolve="testResult" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="5yNJPA6bxLc" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5yNJPA6bxLd" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="5yNJPA6bzwM" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5yNJPA6bEAH" role="3cqZAp">
          <node concept="3clFbS" id="5yNJPA6bEAJ" role="3clFbx">
            <node concept="abc8K" id="5yNJPA6bHQo" role="3cqZAp">
              <node concept="Xl_RD" id="5yNJPA6bHQT" role="abp_N">
                <property role="Xl_RC" value="At least one test failed: passed " />
              </node>
              <node concept="2OqwBi" id="7jRNnvCjKgY" role="abp_N">
                <node concept="2OqwBi" id="7jRNnvCjEP0" role="2Oq$k0">
                  <node concept="37vLTw" id="7jRNnvCjE59" role="2Oq$k0">
                    <ref role="3cqZAo" node="5yNJPA6bwp7" resolve="results" />
                  </node>
                  <node concept="3zZkjj" id="7jRNnvCjGRw" role="2OqNvi">
                    <node concept="1bVj0M" id="7jRNnvCjGRy" role="23t8la">
                      <node concept="3clFbS" id="7jRNnvCjGRz" role="1bW5cS">
                        <node concept="3clFbF" id="7jRNnvCjH48" role="3cqZAp">
                          <node concept="2OqwBi" id="7jRNnvCjJMb" role="3clFbG">
                            <node concept="1LFfDK" id="7jRNnvCjIKh" role="2Oq$k0">
                              <node concept="3cmrfG" id="7jRNnvCjIRm" role="1LF_Uc">
                                <property role="3cmrfH" value="1" />
                              </node>
                              <node concept="37vLTw" id="7jRNnvCjH47" role="1LFl5Q">
                                <ref role="3cqZAo" node="7jRNnvCjGR$" resolve="it" />
                              </node>
                            </node>
                            <node concept="liA8E" id="7jRNnvCjJYF" role="2OqNvi">
                              <ref role="37wK5l" node="5yNJPA6bAkE" resolve="isSuccessful" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="7jRNnvCjGR$" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="7jRNnvCjGR_" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="34oBXx" id="7jRNnvCjL3k" role="2OqNvi" />
              </node>
              <node concept="Xl_RD" id="7jRNnvCjL8Q" role="abp_N">
                <property role="Xl_RC" value=", failed " />
              </node>
              <node concept="2OqwBi" id="7jRNnvCjLb8" role="abp_N">
                <node concept="2OqwBi" id="7jRNnvCjLb9" role="2Oq$k0">
                  <node concept="37vLTw" id="7jRNnvCjLba" role="2Oq$k0">
                    <ref role="3cqZAo" node="5yNJPA6bwp7" resolve="results" />
                  </node>
                  <node concept="3zZkjj" id="7jRNnvCjLbb" role="2OqNvi">
                    <node concept="1bVj0M" id="7jRNnvCjLbc" role="23t8la">
                      <node concept="3clFbS" id="7jRNnvCjLbd" role="1bW5cS">
                        <node concept="3clFbF" id="7jRNnvCjLbe" role="3cqZAp">
                          <node concept="3fqX7Q" id="7jRNnvCjLqL" role="3clFbG">
                            <node concept="2OqwBi" id="7jRNnvCjLqN" role="3fr31v">
                              <node concept="1LFfDK" id="7jRNnvCjLqO" role="2Oq$k0">
                                <node concept="3cmrfG" id="7jRNnvCjLqP" role="1LF_Uc">
                                  <property role="3cmrfH" value="1" />
                                </node>
                                <node concept="37vLTw" id="7jRNnvCjLqQ" role="1LFl5Q">
                                  <ref role="3cqZAo" node="7jRNnvCjLbk" resolve="it" />
                                </node>
                              </node>
                              <node concept="liA8E" id="7jRNnvCjLqR" role="2OqNvi">
                                <ref role="37wK5l" node="5yNJPA6bAkE" resolve="isSuccessful" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="7jRNnvCjLbk" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="7jRNnvCjLbl" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="34oBXx" id="7jRNnvCjLbm" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbF" id="5yNJPA6bEMj" role="3cqZAp">
              <node concept="2YIFZM" id="5yNJPA6bEN4" role="3clFbG">
                <ref role="37wK5l" to="wyt6:~System.exit(int)" resolve="exit" />
                <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                <node concept="3cmrfG" id="5yNJPA6bENw" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="5yNJPA6bEDW" role="3clFbw">
            <ref role="3cqZAo" node="5yNJPA6bDP0" resolve="failures" />
          </node>
          <node concept="9aQIb" id="5yNJPA6bEPo" role="9aQIa">
            <node concept="3clFbS" id="5yNJPA6bEPp" role="9aQI4">
              <node concept="abc8K" id="5yNJPA6bHTk" role="3cqZAp">
                <node concept="Xl_RD" id="5yNJPA6bHTP" role="abp_N">
                  <property role="Xl_RC" value="All tests were successful: " />
                </node>
                <node concept="2OqwBi" id="7jRNnvCjB_Y" role="abp_N">
                  <node concept="37vLTw" id="7jRNnvCjAQ7" role="2Oq$k0">
                    <ref role="3cqZAo" node="5yNJPA6bwp7" resolve="results" />
                  </node>
                  <node concept="34oBXx" id="7jRNnvCjDZU" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbF" id="5yNJPA6bEQf" role="3cqZAp">
                <node concept="2YIFZM" id="5yNJPA6bEQI" role="3clFbG">
                  <ref role="37wK5l" to="wyt6:~System.exit(int)" resolve="exit" />
                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                  <node concept="3cmrfG" id="5yNJPA6bERb" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4ZsvGZupGOu" role="1B3o_S" />
      <node concept="3cqZAl" id="4ZsvGZupGP5" role="3clF45" />
      <node concept="37vLTG" id="4ZsvGZutXBI" role="3clF46">
        <property role="TrG5h" value="ideaEnvironment" />
        <node concept="3uibUv" id="4ZsvGZuHVCd" role="1tU5fm">
          <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4ZsvGZupGNS" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5yNJPA6btY7">
    <property role="TrG5h" value="TestResult" />
    <property role="3GE5qa" value="support" />
    <node concept="312cEg" id="5yNJPA6btZd" role="jymVt">
      <property role="TrG5h" value="error" />
      <node concept="3Tm6S6" id="5yNJPA6btYN" role="1B3o_S" />
      <node concept="17QB3L" id="5yNJPA6btZ2" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="5yNJPA6btZu" role="jymVt" />
    <node concept="3clFbW" id="5yNJPA6btZX" role="jymVt">
      <node concept="3cqZAl" id="5yNJPA6btZZ" role="3clF45" />
      <node concept="3Tm1VV" id="5yNJPA6bu00" role="1B3o_S" />
      <node concept="3clFbS" id="5yNJPA6bu01" role="3clF47">
        <node concept="3clFbF" id="5yNJPA6bu1e" role="3cqZAp">
          <node concept="37vLTI" id="5yNJPA6buhE" role="3clFbG">
            <node concept="37vLTw" id="5yNJPA6buiK" role="37vLTx">
              <ref role="3cqZAo" node="5yNJPA6bu0s" resolve="error" />
            </node>
            <node concept="2OqwBi" id="5yNJPA6bu4a" role="37vLTJ">
              <node concept="Xjq3P" id="5yNJPA6bu1d" role="2Oq$k0" />
              <node concept="2OwXpG" id="5yNJPA6bu6C" role="2OqNvi">
                <ref role="2Oxat5" node="5yNJPA6btZd" resolve="error" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5yNJPA6bu0s" role="3clF46">
        <property role="TrG5h" value="error" />
        <node concept="17QB3L" id="5yNJPA6bu0r" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5yNJPA6bAhI" role="jymVt" />
    <node concept="3clFb_" id="5yNJPA6bAkE" role="jymVt">
      <property role="TrG5h" value="isSuccessful" />
      <node concept="3clFbS" id="5yNJPA6bAkH" role="3clF47">
        <node concept="3cpWs6" id="5yNJPA6bAmC" role="3cqZAp">
          <node concept="3clFbC" id="5yNJPA6bADK" role="3cqZAk">
            <node concept="10Nm6u" id="5yNJPA6bAEX" role="3uHU7w" />
            <node concept="37vLTw" id="5yNJPA6bAn3" role="3uHU7B">
              <ref role="3cqZAo" node="5yNJPA6btZd" resolve="error" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5yNJPA6bAjC" role="1B3o_S" />
      <node concept="10P_77" id="5yNJPA6bAkx" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5yNJPA6bAG1" role="jymVt" />
    <node concept="3clFb_" id="5yNJPA6bAJu" role="jymVt">
      <property role="TrG5h" value="getError" />
      <node concept="3clFbS" id="5yNJPA6bAJx" role="3clF47">
        <node concept="3clFbJ" id="5yNJPA6bALf" role="3cqZAp">
          <node concept="1rXfSq" id="5yNJPA6bBuu" role="3clFbw">
            <ref role="37wK5l" node="5yNJPA6bAkE" resolve="isSuccessful" />
          </node>
          <node concept="3clFbS" id="5yNJPA6bALh" role="3clFbx">
            <node concept="YS8fn" id="5yNJPA6bATe" role="3cqZAp">
              <node concept="2ShNRf" id="5yNJPA6bATq" role="YScLw">
                <node concept="1pGfFk" id="5yNJPA6bBbq" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="5yNJPA6bBew" role="37wK5m">
                    <property role="Xl_RC" value="It is successful, no error available" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5yNJPA6bBqa" role="3cqZAp">
          <node concept="37vLTw" id="5yNJPA6t9h0" role="3cqZAk">
            <ref role="3cqZAo" node="5yNJPA6btZd" resolve="error" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5yNJPA6bAHR" role="1B3o_S" />
      <node concept="17QB3L" id="5yNJPA6bAJl" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5yNJPA6trPq" role="jymVt" />
    <node concept="2YIFZL" id="5yNJPA6trVb" role="jymVt">
      <property role="TrG5h" value="ok" />
      <node concept="3clFbS" id="5yNJPA6trVe" role="3clF47">
        <node concept="3cpWs6" id="5yNJPA6trYB" role="3cqZAp">
          <node concept="2ShNRf" id="5yNJPA6trZd" role="3cqZAk">
            <node concept="1pGfFk" id="5yNJPA6tsbu" role="2ShVmc">
              <ref role="37wK5l" node="5yNJPA6btZX" resolve="TestResult" />
              <node concept="10Nm6u" id="5yNJPA6tsco" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5yNJPA6trXy" role="1B3o_S" />
      <node concept="3uibUv" id="5yNJPA6trXR" role="3clF45">
        <ref role="3uigEE" node="5yNJPA6btY7" resolve="TestResult" />
      </node>
    </node>
    <node concept="2tJIrI" id="5yNJPA6tuny" role="jymVt" />
    <node concept="2YIFZL" id="5yNJPA6tup7" role="jymVt">
      <property role="TrG5h" value="fail" />
      <node concept="3clFbS" id="5yNJPA6tup8" role="3clF47">
        <node concept="3clFbJ" id="5yNJPA6tuwf" role="3cqZAp">
          <node concept="3clFbS" id="5yNJPA6tuwh" role="3clFbx">
            <node concept="YS8fn" id="5yNJPA6tuYB" role="3cqZAp">
              <node concept="2ShNRf" id="5yNJPA6tuYS" role="YScLw">
                <node concept="1pGfFk" id="5yNJPA6tvgO" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                  <node concept="Xl_RD" id="6JwgQ7UVzWJ" role="37wK5m">
                    <property role="Xl_RC" value="Error should not be null" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5yNJPA6tuX9" role="3clFbw">
            <node concept="10Nm6u" id="5yNJPA6tuY2" role="3uHU7w" />
            <node concept="37vLTw" id="5yNJPA6tuwB" role="3uHU7B">
              <ref role="3cqZAo" node="5yNJPA6tutP" resolve="error" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5yNJPA6tup9" role="3cqZAp">
          <node concept="2ShNRf" id="5yNJPA6tupa" role="3cqZAk">
            <node concept="1pGfFk" id="5yNJPA6tupb" role="2ShVmc">
              <ref role="37wK5l" node="5yNJPA6btZX" resolve="TestResult" />
              <node concept="37vLTw" id="5yNJPA6tuuK" role="37wK5m">
                <ref role="3cqZAo" node="5yNJPA6tutP" resolve="error" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5yNJPA6tupd" role="1B3o_S" />
      <node concept="3uibUv" id="5yNJPA6tupe" role="3clF45">
        <ref role="3uigEE" node="5yNJPA6btY7" resolve="TestResult" />
      </node>
      <node concept="37vLTG" id="5yNJPA6tutP" role="3clF46">
        <property role="TrG5h" value="error" />
        <node concept="17QB3L" id="5yNJPA6tutO" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5yNJPA6tuok" role="jymVt" />
    <node concept="3Tm1VV" id="5yNJPA6btY8" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5yNJPA6tjxd">
    <property role="TrG5h" value="IntegrationTest" />
    <property role="1sVAO0" value="true" />
    <property role="3GE5qa" value="support" />
    <node concept="312cEg" id="5yNJPA6tkqm" role="jymVt">
      <property role="TrG5h" value="referenceDir" />
      <node concept="3Tmbuc" id="5yNJPA6tktD" role="1B3o_S" />
      <node concept="3uibUv" id="5yNJPA6tkqp" role="1tU5fm">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
    </node>
    <node concept="312cEg" id="5yNJPA6tjz9" role="jymVt">
      <property role="TrG5h" value="environment" />
      <node concept="3Tmbuc" id="5yNJPA6tkoF" role="1B3o_S" />
      <node concept="3uibUv" id="5yNJPA6tjMf" role="1tU5fm">
        <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
      </node>
    </node>
    <node concept="2tJIrI" id="7JjSHvQ4c5a" role="jymVt" />
    <node concept="Wx3nA" id="7JjSHvQ4ehg" role="jymVt">
      <property role="TrG5h" value="usedPorts" />
      <node concept="2hMVRd" id="7JjSHvQ4ehj" role="1tU5fm">
        <node concept="10Oyi0" id="7JjSHvQ4ehk" role="2hN53Y" />
      </node>
      <node concept="2ShNRf" id="7JjSHvQ4ehl" role="33vP2m">
        <node concept="2i4dXS" id="7JjSHvQ4ehm" role="2ShVmc">
          <node concept="10Oyi0" id="7JjSHvQ4ehn" role="HW$YZ" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7JjSHvQ4ehi" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="7JjSHvQ4fmh" role="jymVt">
      <property role="TrG5h" value="modelServerPort" />
      <node concept="3Tm6S6" id="7JjSHvQ4eZm" role="1B3o_S" />
      <node concept="10Oyi0" id="7JjSHvQ4fig" role="1tU5fm" />
      <node concept="3cmrfG" id="7JjSHvQ4fME" role="33vP2m">
        <property role="3cmrfH" value="-1" />
      </node>
    </node>
    <node concept="Wx3nA" id="5i$4SBK2X7W" role="jymVt">
      <property role="TrG5h" value="projectTmpDirectories" />
      <node concept="3Tm6S6" id="5i$4SBK2SRp" role="1B3o_S" />
      <node concept="3rvAFt" id="5i$4SBK2Wqj" role="1tU5fm">
        <node concept="3uibUv" id="6V2G5GpT$rm" role="3rvQeY">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
        <node concept="3uibUv" id="6V2G5GpRmM$" role="3rvSg0">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="2ShNRf" id="5i$4SBK2Zo1" role="33vP2m">
        <node concept="3rGOSV" id="6V2G5GpR$S6" role="2ShVmc">
          <node concept="3uibUv" id="6V2G5GpTAGD" role="3rHrn6">
            <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
          </node>
          <node concept="3uibUv" id="6V2G5GpRFlj" role="3rHtpV">
            <ref role="3uigEE" to="guwi:~File" resolve="File" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="Aop38I4QWG" role="jymVt">
      <property role="TrG5h" value="variableFounds" />
      <node concept="3rvAFt" id="Aop38I4QWK" role="1tU5fm">
        <node concept="17QB3L" id="Aop38I4QWL" role="3rvQeY" />
        <node concept="17QB3L" id="Aop38I4QWM" role="3rvSg0" />
      </node>
      <node concept="2ShNRf" id="Aop38I4QWN" role="33vP2m">
        <node concept="3rGOSV" id="Aop38I4QWO" role="2ShVmc">
          <node concept="17QB3L" id="Aop38I4QWP" role="3rHrn6" />
          <node concept="17QB3L" id="Aop38I4QWQ" role="3rHtpV" />
        </node>
      </node>
      <node concept="3Tm6S6" id="Aop38I4QWJ" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="1QKKVBBC5ZF" role="jymVt">
      <property role="TrG5h" value="ms" />
      <node concept="3Tm6S6" id="1QKKVBBC3vd" role="1B3o_S" />
      <node concept="3uibUv" id="1QKKVBBC5VQ" role="1tU5fm">
        <ref role="3uigEE" node="5yNJPA6tDKp" resolve="ModelixServerController" />
      </node>
    </node>
    <node concept="312cEg" id="1QKKVBBCvUT" role="jymVt">
      <property role="TrG5h" value="cr" />
      <node concept="3Tm6S6" id="1QKKVBBCtnj" role="1B3o_S" />
      <node concept="3uibUv" id="1QKKVBBCvQR" role="1tU5fm">
        <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
      </node>
    </node>
    <node concept="312cEg" id="1QKKVBBCQX7" role="jymVt">
      <property role="TrG5h" value="project" />
      <node concept="3Tm6S6" id="1QKKVBBCOhA" role="1B3o_S" />
      <node concept="3uibUv" id="1QKKVBBCQSJ" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="2tJIrI" id="7JjSHvQ4diX" role="jymVt" />
    <node concept="3clFb_" id="7JjSHvQ4ewY" role="jymVt">
      <property role="TrG5h" value="getOwnModelServerPort" />
      <node concept="3clFbS" id="7JjSHvQ4ex1" role="3clF47">
        <node concept="3clFbJ" id="7JjSHvQ4fU_" role="3cqZAp">
          <node concept="3clFbC" id="7JjSHvQ4gMP" role="3clFbw">
            <node concept="3cmrfG" id="7JjSHvQ4gQQ" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
            </node>
            <node concept="37vLTw" id="7JjSHvQ4fYK" role="3uHU7B">
              <ref role="3cqZAo" node="7JjSHvQ4fmh" resolve="modelServerPort" />
            </node>
          </node>
          <node concept="3clFbS" id="7JjSHvQ4fUB" role="3clFbx">
            <node concept="3cpWs8" id="7JjSHvQ4gZ7" role="3cqZAp">
              <node concept="3cpWsn" id="7JjSHvQ4gZa" role="3cpWs9">
                <property role="TrG5h" value="candidate" />
                <node concept="10Oyi0" id="7JjSHvQ4gZ6" role="1tU5fm" />
                <node concept="3cmrfG" id="7JjSHvQ4hav" role="33vP2m">
                  <property role="3cmrfH" value="4000" />
                </node>
              </node>
            </node>
            <node concept="2$JKZl" id="5i$4SBK3AMJ" role="3cqZAp">
              <node concept="3clFbS" id="5i$4SBK3AMT" role="2LFqv$">
                <node concept="3clFbF" id="5i$4SBK3AMM" role="3cqZAp">
                  <node concept="3uNrnE" id="5i$4SBK3AMN" role="3clFbG">
                    <node concept="37vLTw" id="5i$4SBK3AMO" role="2$L3a6">
                      <ref role="3cqZAo" node="7JjSHvQ4gZa" resolve="candidate" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5i$4SBK3AMV" role="2$JKZa">
                <node concept="37vLTw" id="5i$4SBK3AMW" role="2Oq$k0">
                  <ref role="3cqZAo" node="7JjSHvQ4ehg" resolve="usedPorts" />
                </node>
                <node concept="3JPx81" id="5i$4SBK3AMX" role="2OqNvi">
                  <node concept="37vLTw" id="5i$4SBK3AMY" role="25WWJ7">
                    <ref role="3cqZAo" node="7JjSHvQ4gZa" resolve="candidate" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7JjSHvQ4mes" role="3cqZAp">
              <node concept="37vLTI" id="7JjSHvQ4mpO" role="3clFbG">
                <node concept="37vLTw" id="7JjSHvQ4mxJ" role="37vLTx">
                  <ref role="3cqZAo" node="7JjSHvQ4gZa" resolve="candidate" />
                </node>
                <node concept="37vLTw" id="7JjSHvQ4meq" role="37vLTJ">
                  <ref role="3cqZAo" node="7JjSHvQ4fmh" resolve="modelServerPort" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7JjSHvQ4mPO" role="3cqZAp">
              <node concept="2OqwBi" id="7JjSHvQ4noo" role="3clFbG">
                <node concept="37vLTw" id="7JjSHvQ4mPM" role="2Oq$k0">
                  <ref role="3cqZAo" node="7JjSHvQ4ehg" resolve="usedPorts" />
                </node>
                <node concept="TSZUe" id="7JjSHvQ4oop" role="2OqNvi">
                  <node concept="37vLTw" id="7JjSHvQ4owg" role="25WWJ7">
                    <ref role="3cqZAo" node="7JjSHvQ4fmh" resolve="modelServerPort" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7JjSHvQ4pi$" role="3cqZAp">
          <node concept="37vLTw" id="7JjSHvQ4prP" role="3cqZAk">
            <ref role="3cqZAo" node="7JjSHvQ4fmh" resolve="modelServerPort" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7JjSHvQ4dL2" role="1B3o_S" />
      <node concept="10Oyi0" id="7JjSHvQ4edd" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5yNJPA6tkis" role="jymVt" />
    <node concept="3clFbW" id="5yNJPA6tklF" role="jymVt">
      <node concept="37vLTG" id="5yNJPA6tkpp" role="3clF46">
        <property role="TrG5h" value="referenceDir" />
        <node concept="3uibUv" id="5yNJPA6tkpP" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="37vLTG" id="5yNJPA6tkoW" role="3clF46">
        <property role="TrG5h" value="environment" />
        <node concept="3uibUv" id="5yNJPA6tkoY" role="1tU5fm">
          <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
        </node>
      </node>
      <node concept="3cqZAl" id="5yNJPA6tklH" role="3clF45" />
      <node concept="3Tm1VV" id="5yNJPA6tklI" role="1B3o_S" />
      <node concept="3clFbS" id="5yNJPA6tklJ" role="3clF47">
        <node concept="3clFbF" id="5yNJPA6tku4" role="3cqZAp">
          <node concept="37vLTI" id="5yNJPA6tkN6" role="3clFbG">
            <node concept="37vLTw" id="5yNJPA6tkPd" role="37vLTx">
              <ref role="3cqZAo" node="5yNJPA6tkpp" resolve="referenceDir" />
            </node>
            <node concept="2OqwBi" id="5yNJPA6tkyq" role="37vLTJ">
              <node concept="Xjq3P" id="5yNJPA6tku3" role="2Oq$k0" />
              <node concept="2OwXpG" id="5yNJPA6tk_W" role="2OqNvi">
                <ref role="2Oxat5" node="5yNJPA6tkqm" resolve="referenceDir" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5yNJPA6tkPZ" role="3cqZAp">
          <node concept="37vLTI" id="5yNJPA6tl2w" role="3clFbG">
            <node concept="37vLTw" id="5yNJPA6tl4x" role="37vLTx">
              <ref role="3cqZAo" node="5yNJPA6tkoW" resolve="environment" />
            </node>
            <node concept="2OqwBi" id="5yNJPA6tkQv" role="37vLTJ">
              <node concept="Xjq3P" id="5yNJPA6tkPX" role="2Oq$k0" />
              <node concept="2OwXpG" id="5yNJPA6tkSl" role="2OqNvi">
                <ref role="2Oxat5" node="5yNJPA6tjz9" resolve="environment" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5yNJPA6tIFy" role="jymVt" />
    <node concept="3clFb_" id="5yNJPA6tJ7L" role="jymVt">
      <property role="TrG5h" value="pathToModelServerJar" />
      <node concept="3clFbS" id="5yNJPA6tJ7O" role="3clF47">
        <node concept="3cpWs8" id="5yNJPA6tJp1" role="3cqZAp">
          <node concept="3cpWsn" id="5yNJPA6tJp2" role="3cpWs9">
            <property role="TrG5h" value="modelixRootDir" />
            <node concept="3uibUv" id="5yNJPA6tJp3" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2OqwBi" id="5yNJPA6tJp4" role="33vP2m">
              <node concept="2OqwBi" id="5yNJPA6tJp5" role="2Oq$k0">
                <node concept="37vLTw" id="5yNJPA6tJp6" role="2Oq$k0">
                  <ref role="3cqZAo" node="5yNJPA6tkqm" resolve="referenceDir" />
                </node>
                <node concept="liA8E" id="5yNJPA6tJp7" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.getParentFile()" resolve="getParentFile" />
                </node>
              </node>
              <node concept="liA8E" id="5yNJPA6tJp8" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.getParentFile()" resolve="getParentFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5yNJPA6tJXt" role="3cqZAp">
          <node concept="3cpWsn" id="5yNJPA6tJXu" role="3cpWs9">
            <property role="TrG5h" value="modelServerBuildLibsDir" />
            <node concept="3uibUv" id="5yNJPA6tJXv" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="5yNJPA6tK7e" role="33vP2m">
              <node concept="1pGfFk" id="5yNJPA6tKk3" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                <node concept="2ShNRf" id="5yNJPA6tLXV" role="37wK5m">
                  <node concept="1pGfFk" id="5yNJPA6tMjn" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                    <node concept="2ShNRf" id="5yNJPA6tNaJ" role="37wK5m">
                      <node concept="1pGfFk" id="5yNJPA6tNwH" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                        <node concept="37vLTw" id="5yNJPA6tO6p" role="37wK5m">
                          <ref role="3cqZAo" node="5yNJPA6tJp2" resolve="modelixRootDir" />
                        </node>
                        <node concept="Xl_RD" id="5yNJPA6tOqm" role="37wK5m">
                          <property role="Xl_RC" value="model-server" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="5yNJPA6tMIY" role="37wK5m">
                      <property role="Xl_RC" value="build" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="5yNJPA6tLAH" role="37wK5m">
                  <property role="Xl_RC" value="libs" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="53_gmpoM2Ki" role="3cqZAp">
          <node concept="3cpWsn" id="53_gmpoM2Kj" role="3cpWs9">
            <property role="TrG5h" value="jar" />
            <node concept="3uibUv" id="53_gmpoM2Kk" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="5yNJPA6tKmQ" role="33vP2m">
              <node concept="1pGfFk" id="5yNJPA6tKNN" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                <node concept="37vLTw" id="5yNJPA6tKWh" role="37wK5m">
                  <ref role="3cqZAo" node="5yNJPA6tJXu" resolve="modelServerBuildLibsDir" />
                </node>
                <node concept="Xl_RD" id="5yNJPA6tLdv" role="37wK5m">
                  <property role="Xl_RC" value="model-server-fatJar-latest.jar" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="53_gmpoMcIX" role="3cqZAp">
          <node concept="3clFbS" id="53_gmpoMcIZ" role="3clFbx">
            <node concept="YS8fn" id="53_gmpoMhsM" role="3cqZAp">
              <node concept="2ShNRf" id="53_gmpoMhwH" role="YScLw">
                <node concept="1pGfFk" id="53_gmpoMouy" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="3cpWs3" id="53_gmpoMqyA" role="37wK5m">
                    <node concept="Xl_RD" id="53_gmpoMqAu" role="3uHU7w">
                      <property role="Xl_RC" value=" but it was not found" />
                    </node>
                    <node concept="3cpWs3" id="53_gmpoMplK" role="3uHU7B">
                      <node concept="Xl_RD" id="53_gmpoMoFG" role="3uHU7B">
                        <property role="Xl_RC" value="The model server fat jar was expected at " />
                      </node>
                      <node concept="2OqwBi" id="53_gmpoMpOs" role="3uHU7w">
                        <node concept="37vLTw" id="53_gmpoMps0" role="2Oq$k0">
                          <ref role="3cqZAo" node="53_gmpoM2Kj" resolve="jar" />
                        </node>
                        <node concept="liA8E" id="53_gmpoMq9m" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="53_gmpoMedY" role="3clFbw">
            <node concept="2OqwBi" id="53_gmpoMfKV" role="3fr31v">
              <node concept="37vLTw" id="53_gmpoMfqH" role="2Oq$k0">
                <ref role="3cqZAo" node="53_gmpoM2Kj" resolve="jar" />
              </node>
              <node concept="liA8E" id="53_gmpoMhgo" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5yNJPA6tJ$$" role="3cqZAp">
          <node concept="37vLTw" id="53_gmpoM9Mj" role="3cqZAk">
            <ref role="3cqZAo" node="53_gmpoM2Kj" resolve="jar" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="5yNJPA6tONL" role="1B3o_S" />
      <node concept="3uibUv" id="5yNJPA6tJ6d" role="3clF45">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
    </node>
    <node concept="2tJIrI" id="5yNJPA6tp8B" role="jymVt" />
    <node concept="3clFb_" id="5yNJPA6tpld" role="jymVt">
      <property role="TrG5h" value="openProject" />
      <node concept="3clFbS" id="5yNJPA6tplg" role="3clF47">
        <node concept="3clFbJ" id="1QKKVBBD4Lt" role="3cqZAp">
          <node concept="3clFbS" id="1QKKVBBD4Lv" role="3clFbx">
            <node concept="YS8fn" id="1QKKVBBDc3X" role="3cqZAp">
              <node concept="2ShNRf" id="1QKKVBBDc7S" role="YScLw">
                <node concept="1pGfFk" id="1QKKVBBDd$o" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;()" resolve="IllegalStateException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1QKKVBBD93F" role="3clFbw">
            <node concept="10Nm6u" id="1QKKVBBDaW6" role="3uHU7w" />
            <node concept="37vLTw" id="1QKKVBBD7oe" role="3uHU7B">
              <ref role="3cqZAo" node="1QKKVBBCQX7" resolve="project" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1QKKVBBD3FI" role="3cqZAp" />
        <node concept="3SKdUt" id="6V2G5GpRjZE" role="3cqZAp">
          <node concept="1PaTwC" id="6V2G5GpRjZF" role="1aUNEU">
            <node concept="3oM_SD" id="6V2G5GpRjZG" role="1PaTwD">
              <property role="3oM_SC" value="When" />
            </node>
            <node concept="3oM_SD" id="6V2G5GpRm_9" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="6V2G5GpRm_c" role="1PaTwD">
              <property role="3oM_SC" value="open" />
            </node>
            <node concept="3oM_SD" id="6V2G5GpRm_o" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6V2G5GpRm_t" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="6V2G5GpRm_z" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="6V2G5GpRm_E" role="1PaTwD">
              <property role="3oM_SC" value="copy" />
            </node>
            <node concept="3oM_SD" id="6V2G5GpRmA2" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="6V2G5GpRmAj" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="6V2G5GpRmAt" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6V2G5GpRmAC" role="1PaTwD">
              <property role="3oM_SC" value="temporary" />
            </node>
            <node concept="3oM_SD" id="6V2G5GpRmAO" role="1PaTwD">
              <property role="3oM_SC" value="directory," />
            </node>
            <node concept="3oM_SD" id="6V2G5GpRmB1" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6V2G5GpRmBf" role="1PaTwD">
              <property role="3oM_SC" value="avoid" />
            </node>
            <node concept="3oM_SD" id="6V2G5GpRmBu" role="1PaTwD">
              <property role="3oM_SC" value="modifications" />
            </node>
            <node concept="3oM_SD" id="6V2G5GpRmBQ" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6V2G5GpRmC7" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="6V2G5GpRmCp" role="1PaTwD">
              <property role="3oM_SC" value="persisted" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6V2G5GpR7KP" role="3cqZAp" />
        <node concept="3cpWs8" id="5yNJPA6tpT4" role="3cqZAp">
          <node concept="3cpWsn" id="5yNJPA6tpT5" role="3cpWs9">
            <property role="TrG5h" value="modelixRootDir" />
            <node concept="3uibUv" id="5yNJPA6tpT6" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2OqwBi" id="5yNJPA6tpM_" role="33vP2m">
              <node concept="2OqwBi" id="5yNJPA6tpEV" role="2Oq$k0">
                <node concept="37vLTw" id="5yNJPA6tpuG" role="2Oq$k0">
                  <ref role="3cqZAo" node="5yNJPA6tkqm" resolve="referenceDir" />
                </node>
                <node concept="liA8E" id="5yNJPA6tpLH" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.getParentFile()" resolve="getParentFile" />
                </node>
              </node>
              <node concept="liA8E" id="5yNJPA6tpQ8" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.getParentFile()" resolve="getParentFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5yNJPA6tq0J" role="3cqZAp">
          <node concept="3cpWsn" id="5yNJPA6tq0K" role="3cpWs9">
            <property role="TrG5h" value="originalProjectDir" />
            <node concept="3uibUv" id="5yNJPA6tq0L" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="5yNJPA6tqBC" role="33vP2m">
              <node concept="1pGfFk" id="5yNJPA6tqNJ" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                <node concept="2ShNRf" id="5yNJPA6tq2J" role="37wK5m">
                  <node concept="1pGfFk" id="5yNJPA6tqeQ" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                    <node concept="37vLTw" id="5yNJPA6tqfD" role="37wK5m">
                      <ref role="3cqZAo" node="5yNJPA6tpT5" resolve="modelixRootDir" />
                    </node>
                    <node concept="Xl_RD" id="5yNJPA6tqhU" role="37wK5m">
                      <property role="Xl_RC" value="integrationtests" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5yNJPA6tqRv" role="37wK5m">
                  <ref role="3cqZAo" node="5yNJPA6tpp3" resolve="projectName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5yNJPA6tBQ7" role="3cqZAp">
          <node concept="3clFbS" id="5yNJPA6tBQ9" role="3clFbx">
            <node concept="YS8fn" id="5yNJPA6tCA8" role="3cqZAp">
              <node concept="2ShNRf" id="5yNJPA6tCAQ" role="YScLw">
                <node concept="1pGfFk" id="5yNJPA6tCNC" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                  <node concept="3cpWs3" id="5yNJPA6tDo6" role="37wK5m">
                    <node concept="2OqwBi" id="5yNJPA6tD__" role="3uHU7w">
                      <node concept="37vLTw" id="5yNJPA6tDpg" role="2Oq$k0">
                        <ref role="3cqZAo" node="5yNJPA6tq0K" resolve="originalProjectDir" />
                      </node>
                      <node concept="liA8E" id="5yNJPA6tDIu" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="5yNJPA6tCQN" role="3uHU7B">
                      <property role="Xl_RC" value="Project dir does not exist: " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="5yNJPA6tCvP" role="3clFbw">
            <node concept="2OqwBi" id="5yNJPA6tCvR" role="3fr31v">
              <node concept="37vLTw" id="5yNJPA6tCvS" role="2Oq$k0">
                <ref role="3cqZAo" node="5yNJPA6tq0K" resolve="originalProjectDir" />
              </node>
              <node concept="liA8E" id="5yNJPA6tCvT" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6V2G5GpRUUe" role="3cqZAp" />
        <node concept="3cpWs8" id="6V2G5GpRYDw" role="3cqZAp">
          <node concept="3cpWsn" id="6V2G5GpRYDx" role="3cpWs9">
            <property role="TrG5h" value="buildDir" />
            <node concept="3uibUv" id="6V2G5GpRYDy" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="6V2G5GpS0O8" role="33vP2m">
              <node concept="1pGfFk" id="6V2G5GpS1Ei" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                <node concept="37vLTw" id="6V2G5GpS1P4" role="37wK5m">
                  <ref role="3cqZAo" node="5yNJPA6tpT5" resolve="modelixRootDir" />
                </node>
                <node concept="Xl_RD" id="6V2G5GpS1Vv" role="37wK5m">
                  <property role="Xl_RC" value="build" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6V2G5GpS6Iy" role="3cqZAp">
          <node concept="3cpWsn" id="6V2G5GpS6Iz" role="3cpWs9">
            <property role="TrG5h" value="integrationTests" />
            <node concept="3uibUv" id="6V2G5GpS6I$" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="6V2G5GpS8Oh" role="33vP2m">
              <node concept="1pGfFk" id="6V2G5GpS9Ga" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                <node concept="37vLTw" id="6V2G5GpS9R8" role="37wK5m">
                  <ref role="3cqZAo" node="6V2G5GpRYDx" resolve="buildDir" />
                </node>
                <node concept="Xl_RD" id="6V2G5GpS9Xg" role="37wK5m">
                  <property role="Xl_RC" value="integrationTests" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6V2G5GpSa3d" role="3cqZAp" />
        <node concept="3cpWs8" id="6V2G5GpSfme" role="3cqZAp">
          <node concept="3cpWsn" id="6V2G5GpSfmf" role="3cpWs9">
            <property role="TrG5h" value="copiedProjectDir" />
            <node concept="3uibUv" id="6V2G5GpSfmg" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="6V2G5GpShdL" role="33vP2m">
              <node concept="1pGfFk" id="6V2G5GpSi3V" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                <node concept="37vLTw" id="6V2G5GpSie$" role="37wK5m">
                  <ref role="3cqZAo" node="6V2G5GpS6Iz" resolve="integrationTests" />
                </node>
                <node concept="37vLTw" id="6V2G5GpSir$" role="37wK5m">
                  <ref role="3cqZAo" node="5yNJPA6tpp3" resolve="projectName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6V2G5GpSkRK" role="3cqZAp">
          <node concept="3clFbS" id="6V2G5GpSkRM" role="3clFbx">
            <node concept="3clFbF" id="6V2G5GpSqxl" role="3cqZAp">
              <node concept="2OqwBi" id="6V2G5GpSqOe" role="3clFbG">
                <node concept="37vLTw" id="6V2G5GpSqxj" role="2Oq$k0">
                  <ref role="3cqZAo" node="6V2G5GpSfmf" resolve="copiedProjectDir" />
                </node>
                <node concept="AQDAd" id="6V2G5GpUBWr" role="2OqNvi">
                  <ref role="37wK5l" node="6V2G5GpUcfv" resolve="deleteDir" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6V2G5GpSo4Z" role="3clFbw">
            <node concept="37vLTw" id="6V2G5GpSmhM" role="2Oq$k0">
              <ref role="3cqZAo" node="6V2G5GpSfmf" resolve="copiedProjectDir" />
            </node>
            <node concept="liA8E" id="6V2G5GpSqeS" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="6V2G5GpTpIw" role="3cqZAp">
          <node concept="3uVAMA" id="6V2G5GpTvNZ" role="1zxBo5">
            <node concept="XOnhg" id="6V2G5GpTvO0" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="6V2G5GpTvO1" role="1tU5fm">
                <node concept="3uibUv" id="6V2G5GpTy4_" role="nSUat">
                  <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="6V2G5GpTvO2" role="1zc67A">
              <node concept="YS8fn" id="6V2G5GpTygM" role="3cqZAp">
                <node concept="2ShNRf" id="6V2G5GpTykF" role="YScLw">
                  <node concept="1pGfFk" id="6V2G5GpTzft" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="6V2G5GpTzrR" role="37wK5m">
                      <ref role="3cqZAo" node="6V2G5GpTvO0" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6V2G5GpTpIy" role="1zxBo7">
            <node concept="abc8K" id="6V2G5GpTYlT" role="3cqZAp">
              <node concept="Xl_RD" id="6V2G5GpU0$N" role="abp_N">
                <property role="Xl_RC" value="Copying " />
              </node>
              <node concept="2OqwBi" id="6V2G5GpU1dV" role="abp_N">
                <node concept="37vLTw" id="6V2G5GpU0Oz" role="2Oq$k0">
                  <ref role="3cqZAo" node="5yNJPA6tq0K" resolve="originalProjectDir" />
                </node>
                <node concept="liA8E" id="6V2G5GpU1$a" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                </node>
              </node>
              <node concept="Xl_RD" id="6V2G5GpU1K7" role="abp_N">
                <property role="Xl_RC" value=" to " />
              </node>
              <node concept="2OqwBi" id="6V2G5GpU2pN" role="abp_N">
                <node concept="37vLTw" id="6V2G5GpU21m" role="2Oq$k0">
                  <ref role="3cqZAo" node="6V2G5GpSfmf" resolve="copiedProjectDir" />
                </node>
                <node concept="liA8E" id="6V2G5GpU2FB" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6V2G5GpUL_9" role="3cqZAp">
              <node concept="2OqwBi" id="6V2G5GpUN37" role="3clFbG">
                <node concept="37vLTw" id="6V2G5GpUL_7" role="2Oq$k0">
                  <ref role="3cqZAo" node="5yNJPA6tq0K" resolve="originalProjectDir" />
                </node>
                <node concept="AQDAd" id="6V2G5GpUO8x" role="2OqNvi">
                  <ref role="37wK5l" node="6V2G5GpUDau" resolve="copyDirectory" />
                  <node concept="37vLTw" id="6V2G5GpUOeF" role="37wK5m">
                    <ref role="3cqZAo" node="6V2G5GpSfmf" resolve="copiedProjectDir" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6V2G5GpRUWt" role="3cqZAp" />
            <node concept="3clFbF" id="1QKKVBBCTsR" role="3cqZAp">
              <node concept="37vLTI" id="1QKKVBBCTsT" role="3clFbG">
                <node concept="2OqwBi" id="5yNJPA6tri1" role="37vLTx">
                  <node concept="37vLTw" id="5yNJPA6trq1" role="2Oq$k0">
                    <ref role="3cqZAo" node="5yNJPA6tjz9" resolve="environment" />
                  </node>
                  <node concept="liA8E" id="5yNJPA6tri3" role="2OqNvi">
                    <ref role="37wK5l" to="79ha:6rx4kZDjWg4" resolve="openProject" />
                    <node concept="37vLTw" id="6V2G5GpTm55" role="37wK5m">
                      <ref role="3cqZAo" node="6V2G5GpSfmf" resolve="copiedProjectDir" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1QKKVBBCYhR" role="37vLTJ">
                  <ref role="3cqZAo" node="1QKKVBBCQX7" resolve="project" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5i$4SBK31r3" role="3cqZAp">
              <node concept="37vLTI" id="5i$4SBK37Ty" role="3clFbG">
                <node concept="3EllGN" id="5i$4SBK32Ha" role="37vLTJ">
                  <node concept="37vLTw" id="1QKKVBBD2o0" role="3ElVtu">
                    <ref role="3cqZAo" node="1QKKVBBCQX7" resolve="project" />
                  </node>
                  <node concept="10M0yZ" id="6V2G5GpRtkE" role="3ElQJh">
                    <ref role="1PxDUh" node="5yNJPA6tjxd" resolve="IntegrationTest" />
                    <ref role="3cqZAo" node="5i$4SBK2X7W" resolve="projectTmpDirectories" />
                  </node>
                </node>
                <node concept="37vLTw" id="6V2G5GpTzWd" role="37vLTx">
                  <ref role="3cqZAo" node="6V2G5GpSfmf" resolve="copiedProjectDir" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5yNJPA6tszm" role="3cqZAp">
              <node concept="10QFUN" id="lO9TSUHzFO" role="3cqZAk">
                <node concept="3uibUv" id="lO9TSUHBou" role="10QFUM">
                  <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
                </node>
                <node concept="37vLTw" id="1QKKVBBD02o" role="10QFUP">
                  <ref role="3cqZAo" node="1QKKVBBCQX7" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="5yNJPA6tOXq" role="1B3o_S" />
      <node concept="3uibUv" id="lO9TSUCcuE" role="3clF45">
        <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
      </node>
      <node concept="37vLTG" id="5yNJPA6tpp3" role="3clF46">
        <property role="TrG5h" value="projectName" />
        <node concept="17QB3L" id="5yNJPA6tpp2" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6V2G5GpTE3j" role="jymVt" />
    <node concept="3clFb_" id="6V2G5GpTIBg" role="jymVt">
      <property role="TrG5h" value="closeProject" />
      <node concept="37vLTG" id="6V2G5GpTLbS" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="6V2G5GpTLbU" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="6V2G5GpTIBj" role="3clF47">
        <node concept="3clFbF" id="6V2G5GpTNxz" role="3cqZAp">
          <node concept="2OqwBi" id="6V2G5GpTNNG" role="3clFbG">
            <node concept="37vLTw" id="6V2G5GpTNxy" role="2Oq$k0">
              <ref role="3cqZAo" node="5yNJPA6tjz9" resolve="environment" />
            </node>
            <node concept="liA8E" id="6V2G5GpTO5v" role="2OqNvi">
              <ref role="37wK5l" to="79ha:3hj1t46fvYr" resolve="closeProject" />
              <node concept="37vLTw" id="6V2G5GpTOa_" role="37wK5m">
                <ref role="3cqZAo" node="6V2G5GpTLbS" resolve="project" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1QKKVBBDIYJ" role="1B3o_S" />
      <node concept="3cqZAl" id="6V2G5GpTIzw" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6V2G5GpSr7h" role="jymVt" />
    <node concept="3clFb_" id="5yNJPA6tk3c" role="jymVt">
      <property role="TrG5h" value="execute" />
      <property role="DiZV1" value="true" />
      <node concept="3uibUv" id="5yNJPA6tkdt" role="3clF45">
        <ref role="3uigEE" node="5yNJPA6btY7" resolve="TestResult" />
      </node>
      <node concept="3Tm1VV" id="5yNJPA6tk3f" role="1B3o_S" />
      <node concept="3clFbS" id="5yNJPA6tk3g" role="3clF47">
        <node concept="3J1_TO" id="1QKKVBBBL4B" role="3cqZAp">
          <node concept="3uVAMA" id="1QKKVBBBL5m" role="1zxBo5">
            <node concept="XOnhg" id="1QKKVBBBL5n" role="1zc67B">
              <property role="TrG5h" value="t" />
              <node concept="nSUau" id="1QKKVBBBL5o" role="1tU5fm">
                <node concept="3uibUv" id="1QKKVBBBLb2" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1QKKVBBBL5p" role="1zc67A">
              <node concept="abc8K" id="2FX9uaKLqYd" role="3cqZAp">
                <node concept="Xl_RD" id="2FX9uaKLuzm" role="abp_N">
                  <property role="Xl_RC" value="Issue during execution" />
                </node>
              </node>
              <node concept="3clFbF" id="1QKKVBBBNeg" role="3cqZAp">
                <node concept="2OqwBi" id="1QKKVBBBNeh" role="3clFbG">
                  <node concept="37vLTw" id="1QKKVBBBNei" role="2Oq$k0">
                    <ref role="3cqZAo" node="1QKKVBBBL5n" resolve="t" />
                  </node>
                  <node concept="liA8E" id="1QKKVBBBNej" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1QKKVBBBNek" role="3cqZAp">
                <node concept="2YIFZM" id="1QKKVBBBNel" role="3cqZAk">
                  <ref role="37wK5l" node="5yNJPA6tup7" resolve="fail" />
                  <ref role="1Pybhc" node="5yNJPA6btY7" resolve="TestResult" />
                  <node concept="3K4zz7" id="1QKKVBBBNem" role="37wK5m">
                    <node concept="2OqwBi" id="1QKKVBBBNen" role="3K4E3e">
                      <node concept="2OqwBi" id="1QKKVBBBNeo" role="2Oq$k0">
                        <node concept="37vLTw" id="1QKKVBBBNep" role="2Oq$k0">
                          <ref role="3cqZAo" node="1QKKVBBBL5n" resolve="t" />
                        </node>
                        <node concept="liA8E" id="1QKKVBBBNeq" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1QKKVBBBNer" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Class.getCanonicalName()" resolve="getCanonicalName" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1QKKVBBBNes" role="3K4GZi">
                      <node concept="37vLTw" id="1QKKVBBBNet" role="2Oq$k0">
                        <ref role="3cqZAo" node="1QKKVBBBL5n" resolve="t" />
                      </node>
                      <node concept="liA8E" id="1QKKVBBBNeu" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                      </node>
                    </node>
                    <node concept="3clFbC" id="1QKKVBBBNev" role="3K4Cdx">
                      <node concept="10Nm6u" id="1QKKVBBBNew" role="3uHU7w" />
                      <node concept="2OqwBi" id="1QKKVBBBNex" role="3uHU7B">
                        <node concept="37vLTw" id="1QKKVBBBNey" role="2Oq$k0">
                          <ref role="3cqZAo" node="1QKKVBBBL5n" resolve="t" />
                        </node>
                        <node concept="liA8E" id="1QKKVBBBNez" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1QKKVBBBL4C" role="1zxBo7">
            <node concept="3cpWs6" id="1QKKVBBBLCg" role="3cqZAp">
              <node concept="1rXfSq" id="1QKKVBBBLGb" role="3cqZAk">
                <ref role="37wK5l" node="1QKKVBBB9Dq" resolve="logic" />
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="1QKKVBBBLks" role="1zxBo6">
            <node concept="3clFbS" id="1QKKVBBBLkt" role="1wplMD">
              <node concept="abc8K" id="2FX9uaKLuEp" role="3cqZAp">
                <node concept="Xl_RD" id="2FX9uaKLuJE" role="abp_N">
                  <property role="Xl_RC" value="CLEANING - START" />
                </node>
              </node>
              <node concept="3clFbF" id="1QKKVBBBLsJ" role="3cqZAp">
                <node concept="1rXfSq" id="1QKKVBBBLsI" role="3clFbG">
                  <ref role="37wK5l" node="1QKKVBBB3gt" resolve="cleaning" />
                </node>
              </node>
              <node concept="abc8K" id="2FX9uaKLuK8" role="3cqZAp">
                <node concept="Xl_RD" id="2FX9uaKLuK9" role="abp_N">
                  <property role="Xl_RC" value="CLEANING - END" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1QKKVBBB55$" role="jymVt" />
    <node concept="3clFb_" id="1QKKVBBB9Dq" role="jymVt">
      <property role="TrG5h" value="logic" />
      <property role="1EzhhJ" value="true" />
      <node concept="3clFbS" id="1QKKVBBB9Dt" role="3clF47" />
      <node concept="3Tm1VV" id="1QKKVBBB7XU" role="1B3o_S" />
      <node concept="3uibUv" id="1QKKVBBBdT8" role="3clF45">
        <ref role="3uigEE" node="5yNJPA6btY7" resolve="TestResult" />
      </node>
      <node concept="3uibUv" id="1QKKVBBBGUG" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
    </node>
    <node concept="2tJIrI" id="5yNJPA6tl5G" role="jymVt" />
    <node concept="3clFb_" id="5yNJPA6tlbs" role="jymVt">
      <property role="TrG5h" value="testName" />
      <node concept="17QB3L" id="5yNJPA6tlxX" role="3clF45" />
      <node concept="3Tm1VV" id="5yNJPA6tlbv" role="1B3o_S" />
      <node concept="3clFbS" id="5yNJPA6tlbw" role="3clF47">
        <node concept="3cpWs6" id="5yNJPA6tllS" role="3cqZAp">
          <node concept="2OqwBi" id="5yNJPA6tllT" role="3cqZAk">
            <node concept="2OqwBi" id="5yNJPA6tllU" role="2Oq$k0">
              <node concept="Xjq3P" id="5yNJPA6tllV" role="2Oq$k0" />
              <node concept="liA8E" id="5yNJPA6tllW" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
              </node>
            </node>
            <node concept="liA8E" id="5yNJPA6tllX" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Class.getSimpleName()" resolve="getSimpleName" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5i$4SBK4t$8" role="jymVt" />
    <node concept="312cEu" id="5i$4SBK4wud" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="JsonDiff" />
      <node concept="312cEg" id="5i$4SBK4yUw" role="jymVt">
        <property role="TrG5h" value="desc" />
        <node concept="3Tm6S6" id="5i$4SBK4yLz" role="1B3o_S" />
        <node concept="17QB3L" id="5i$4SBK4yUl" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="5i$4SBK4zLA" role="jymVt">
        <property role="TrG5h" value="expected" />
        <node concept="3Tm6S6" id="5i$4SBK4z66" role="1B3o_S" />
        <node concept="3uibUv" id="5i$4SBK4z_3" role="1tU5fm">
          <ref role="3uigEE" to="wy2b:~JsonElement" resolve="JsonElement" />
        </node>
      </node>
      <node concept="312cEg" id="5i$4SBK4zRt" role="jymVt">
        <property role="TrG5h" value="actual" />
        <node concept="3Tm6S6" id="5i$4SBK4zRu" role="1B3o_S" />
        <node concept="3uibUv" id="5i$4SBK4zRv" role="1tU5fm">
          <ref role="3uigEE" to="wy2b:~JsonElement" resolve="JsonElement" />
        </node>
      </node>
      <node concept="2tJIrI" id="5i$4SBK4$4_" role="jymVt" />
      <node concept="3clFbW" id="5i$4SBK4$jD" role="jymVt">
        <node concept="37vLTG" id="5i$4SBK4$n2" role="3clF46">
          <property role="TrG5h" value="desc" />
          <node concept="17QB3L" id="5i$4SBK4$n4" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="5i$4SBK4$n5" role="3clF46">
          <property role="TrG5h" value="expected" />
          <node concept="3uibUv" id="5i$4SBK4$n7" role="1tU5fm">
            <ref role="3uigEE" to="wy2b:~JsonElement" resolve="JsonElement" />
          </node>
        </node>
        <node concept="37vLTG" id="5i$4SBK4$n8" role="3clF46">
          <property role="TrG5h" value="actual" />
          <node concept="3uibUv" id="5i$4SBK4$na" role="1tU5fm">
            <ref role="3uigEE" to="wy2b:~JsonElement" resolve="JsonElement" />
          </node>
        </node>
        <node concept="3cqZAl" id="5i$4SBK4$jF" role="3clF45" />
        <node concept="3Tm6S6" id="5i$4SBK4$mK" role="1B3o_S" />
        <node concept="3clFbS" id="5i$4SBK4$jH" role="3clF47">
          <node concept="3clFbF" id="5i$4SBK4$Jg" role="3cqZAp">
            <node concept="37vLTI" id="5i$4SBK4_fO" role="3clFbG">
              <node concept="37vLTw" id="5i$4SBK4_ov" role="37vLTx">
                <ref role="3cqZAo" node="5i$4SBK4$n2" resolve="desc" />
              </node>
              <node concept="2OqwBi" id="5i$4SBK4$OO" role="37vLTJ">
                <node concept="Xjq3P" id="5i$4SBK4$Jf" role="2Oq$k0" />
                <node concept="2OwXpG" id="5i$4SBK4$W5" role="2OqNvi">
                  <ref role="2Oxat5" node="5i$4SBK4yUw" resolve="desc" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5i$4SBK4__e" role="3cqZAp">
            <node concept="37vLTI" id="5i$4SBK4A2D" role="3clFbG">
              <node concept="37vLTw" id="5i$4SBK4Aj5" role="37vLTx">
                <ref role="3cqZAo" node="5i$4SBK4$n5" resolve="expected" />
              </node>
              <node concept="2OqwBi" id="5i$4SBK4_FR" role="37vLTJ">
                <node concept="Xjq3P" id="5i$4SBK4__c" role="2Oq$k0" />
                <node concept="2OwXpG" id="5i$4SBK4_NO" role="2OqNvi">
                  <ref role="2Oxat5" node="5i$4SBK4zLA" resolve="expected" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5i$4SBK4AuU" role="3cqZAp">
            <node concept="37vLTI" id="5i$4SBK4APz" role="3clFbG">
              <node concept="37vLTw" id="5i$4SBK4AYy" role="37vLTx">
                <ref role="3cqZAo" node="5i$4SBK4$n8" resolve="actual" />
              </node>
              <node concept="2OqwBi" id="5i$4SBK4AA$" role="37vLTJ">
                <node concept="Xjq3P" id="5i$4SBK4AuS" role="2Oq$k0" />
                <node concept="2OwXpG" id="5i$4SBK4AI1" role="2OqNvi">
                  <ref role="2Oxat5" node="5i$4SBK4zRt" resolve="actual" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5i$4SBK4wue" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1QKKVBBC8xP" role="jymVt" />
    <node concept="3clFb_" id="1QKKVBBCeoe" role="jymVt">
      <property role="TrG5h" value="startModelixServer" />
      <node concept="3clFbS" id="1QKKVBBCeoh" role="3clF47">
        <node concept="3clFbF" id="1QKKVBBCgw$" role="3cqZAp">
          <node concept="37vLTI" id="1QKKVBBCgw_" role="3clFbG">
            <node concept="2ShNRf" id="1QKKVBBCgwA" role="37vLTx">
              <node concept="1pGfFk" id="1QKKVBBCgwB" role="2ShVmc">
                <ref role="37wK5l" node="5yNJPA6tDU$" resolve="ModelixServerController" />
                <node concept="2OqwBi" id="1QKKVBBCgwC" role="37wK5m">
                  <node concept="Xjq3P" id="1QKKVBBCgwD" role="2Oq$k0" />
                  <node concept="liA8E" id="1QKKVBBCgwE" role="2OqNvi">
                    <ref role="37wK5l" node="5yNJPA6tJ7L" resolve="pathToModelServerJar" />
                  </node>
                </node>
                <node concept="1rXfSq" id="1QKKVBBCna1" role="37wK5m">
                  <ref role="37wK5l" node="7JjSHvQ4ewY" resolve="getOwnModelServerPort" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1QKKVBBCgwG" role="37vLTJ">
              <ref role="3cqZAo" node="1QKKVBBC5ZF" resolve="ms" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1QKKVBBCgwH" role="3cqZAp">
          <node concept="2OqwBi" id="1QKKVBBCgwI" role="3clFbG">
            <node concept="37vLTw" id="1QKKVBBCgwJ" role="2Oq$k0">
              <ref role="3cqZAo" node="1QKKVBBC5ZF" resolve="ms" />
            </node>
            <node concept="liA8E" id="1QKKVBBCgwK" role="2OqNvi">
              <ref role="37wK5l" node="5yNJPA6tDNi" resolve="start" />
            </node>
          </node>
        </node>
        <node concept="abc8K" id="5cWpYFRKYJN" role="3cqZAp">
          <node concept="Xl_RD" id="5cWpYFRL22P" role="abp_N">
            <property role="Xl_RC" value="Started Modelix server on " />
          </node>
          <node concept="1rXfSq" id="5cWpYFRL2v7" role="abp_N">
            <ref role="37wK5l" node="7JjSHvQ4ewY" resolve="getOwnModelServerPort" />
          </node>
        </node>
        <node concept="3cpWs6" id="1QKKVBBCgS0" role="3cqZAp">
          <node concept="37vLTw" id="1QKKVBBCh3S" role="3cqZAk">
            <ref role="3cqZAo" node="1QKKVBBC5ZF" resolve="ms" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1QKKVBBCbnh" role="1B3o_S" />
      <node concept="3uibUv" id="1QKKVBBCjee" role="3clF45">
        <ref role="3uigEE" node="5yNJPA6tDKp" resolve="ModelixServerController" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QKKVBBCyys" role="jymVt" />
    <node concept="3clFb_" id="1QKKVBBCC1x" role="jymVt">
      <property role="TrG5h" value="addCloudRepository" />
      <node concept="3clFbS" id="1QKKVBBCC1$" role="3clF47">
        <node concept="1gVbGN" id="1QKKVBBCEAq" role="3cqZAp">
          <node concept="2OqwBi" id="1QKKVBBCEAr" role="1gVkn0">
            <node concept="2OqwBi" id="1QKKVBBCEAs" role="2Oq$k0">
              <node concept="2YIFZM" id="1QKKVBBCEAt" role="2Oq$k0">
                <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
              </node>
              <node concept="liA8E" id="1QKKVBBCEAu" role="2OqNvi">
                <ref role="37wK5l" to="csg2:1LVcV5KxBgM" resolve="getRepositories" />
              </node>
            </node>
            <node concept="1v1jN8" id="1QKKVBBCEAv" role="2OqNvi" />
          </node>
          <node concept="3cpWs3" id="1QKKVBBCEAw" role="1gVpfI">
            <node concept="Xl_RD" id="1QKKVBBCEAx" role="3uHU7B">
              <property role="Xl_RC" value="Expected not to find CloudRepositories: " />
            </node>
            <node concept="2OqwBi" id="1QKKVBBCEAy" role="3uHU7w">
              <node concept="2OqwBi" id="1QKKVBBCEAz" role="2Oq$k0">
                <node concept="2YIFZM" id="1QKKVBBCEA$" role="2Oq$k0">
                  <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                  <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                </node>
                <node concept="liA8E" id="1QKKVBBCEA_" role="2OqNvi">
                  <ref role="37wK5l" to="csg2:1LVcV5KxBgM" resolve="getRepositories" />
                </node>
              </node>
              <node concept="ANE8D" id="1QKKVBBCEAA" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1QKKVBBCEAB" role="3cqZAp" />
        <node concept="3SKdUt" id="1QKKVBBCEAC" role="3cqZAp">
          <node concept="1PaTwC" id="1QKKVBBCEAD" role="1aUNEU">
            <node concept="3oM_SD" id="1QKKVBBCEAE" role="1PaTwD">
              <property role="3oM_SC" value="add" />
            </node>
            <node concept="3oM_SD" id="1QKKVBBCEAF" role="1PaTwD">
              <property role="3oM_SC" value="CloudRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1QKKVBBCEAG" role="3cqZAp">
          <node concept="37vLTI" id="1QKKVBBCEAH" role="3clFbG">
            <node concept="2OqwBi" id="1QKKVBBCEAI" role="37vLTx">
              <node concept="2YIFZM" id="1QKKVBBCEAJ" role="2Oq$k0">
                <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
              </node>
              <node concept="liA8E" id="1QKKVBBCEAK" role="2OqNvi">
                <ref role="37wK5l" to="csg2:5rz8NqPS7qi" resolve="ensureCloudRepoIsPresent" />
                <node concept="3cpWs3" id="1QKKVBBCEAL" role="37wK5m">
                  <node concept="1rXfSq" id="1QKKVBBCFqL" role="3uHU7w">
                    <ref role="37wK5l" node="7JjSHvQ4ewY" resolve="getOwnModelServerPort" />
                  </node>
                  <node concept="Xl_RD" id="1QKKVBBCEAN" role="3uHU7B">
                    <property role="Xl_RC" value="http://localhost:" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1QKKVBBCEAO" role="37vLTJ">
              <ref role="3cqZAo" node="1QKKVBBCvUT" resolve="cr" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1QKKVBBCEZJ" role="3cqZAp">
          <node concept="37vLTw" id="1QKKVBBCF45" role="3cqZAk">
            <ref role="3cqZAo" node="1QKKVBBCvUT" resolve="cr" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1QKKVBBC_n7" role="1B3o_S" />
      <node concept="3uibUv" id="1QKKVBBCFEN" role="3clF45">
        <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="7JjSHvQ4TKQ" role="jymVt" />
    <node concept="3clFb_" id="7JjSHvQ4V3I" role="jymVt">
      <property role="TrG5h" value="assertJsonsAreEquals" />
      <node concept="3clFbS" id="7JjSHvQ4V3L" role="3clF47">
        <node concept="3cpWs8" id="7JjSHvQ4Z$3" role="3cqZAp">
          <node concept="3cpWsn" id="7JjSHvQ4Z$6" role="3cpWs9">
            <property role="TrG5h" value="diff" />
            <node concept="3uibUv" id="5i$4SBK4Doe" role="1tU5fm">
              <ref role="3uigEE" node="5i$4SBK4wud" resolve="IntegrationTest.JsonDiff" />
            </node>
            <node concept="1rXfSq" id="7JjSHvQ4ZG0" role="33vP2m">
              <ref role="37wK5l" node="7JjSHvQ4WKE" resolve="assertJsonsAreEqualsHelper" />
              <node concept="37vLTw" id="7JjSHvQ4ZLE" role="37wK5m">
                <ref role="3cqZAo" node="7JjSHvQ4VJB" resolve="expected" />
              </node>
              <node concept="37vLTw" id="7JjSHvQ4ZR1" role="37wK5m">
                <ref role="3cqZAo" node="7JjSHvQ4VNc" resolve="actual" />
              </node>
              <node concept="Xl_RD" id="7JjSHvQ500g" role="37wK5m">
                <property role="Xl_RC" value="&lt;root&gt;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7JjSHvQ78Oc" role="3cqZAp">
          <node concept="3cpWsn" id="7JjSHvQ78Od" role="3cpWs9">
            <property role="TrG5h" value="gson" />
            <node concept="3uibUv" id="7JjSHvQ78Oe" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~Gson" resolve="Gson" />
            </node>
            <node concept="2OqwBi" id="7JjSHvQ79fI" role="33vP2m">
              <node concept="2OqwBi" id="7JjSHvQ7948" role="2Oq$k0">
                <node concept="2ShNRf" id="7JjSHvQ78Ur" role="2Oq$k0">
                  <node concept="1pGfFk" id="7JjSHvQ78P3" role="2ShVmc">
                    <ref role="37wK5l" to="wy2b:~GsonBuilder.&lt;init&gt;()" resolve="GsonBuilder" />
                  </node>
                </node>
                <node concept="liA8E" id="7JjSHvQ79bN" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~GsonBuilder.setPrettyPrinting()" resolve="setPrettyPrinting" />
                </node>
              </node>
              <node concept="liA8E" id="7JjSHvQ79oN" role="2OqNvi">
                <ref role="37wK5l" to="wy2b:~GsonBuilder.create()" resolve="create" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7JjSHvQ77Je" role="3cqZAp">
          <node concept="3clFbS" id="7JjSHvQ77Jg" role="3clFbx">
            <node concept="3clFbF" id="7JjSHvQ7rfN" role="3cqZAp">
              <node concept="2OqwBi" id="7JjSHvQ7rAI" role="3clFbG">
                <node concept="10M0yZ" id="7JjSHvQ7rlw" role="2Oq$k0">
                  <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                </node>
                <node concept="liA8E" id="7JjSHvQ7rVx" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println()" resolve="println" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7JjSHvQ7rZP" role="3cqZAp">
              <node concept="2OqwBi" id="7JjSHvQ7rZQ" role="3clFbG">
                <node concept="10M0yZ" id="7JjSHvQ7rZR" role="2Oq$k0">
                  <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                </node>
                <node concept="liA8E" id="7JjSHvQ7rZS" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="Xl_RD" id="7JjSHvQ7sxQ" role="37wK5m">
                    <property role="Xl_RC" value="Expected JSON:" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7JjSHvQ7s0w" role="3cqZAp">
              <node concept="2OqwBi" id="7JjSHvQ7s0x" role="3clFbG">
                <node concept="10M0yZ" id="7JjSHvQ7s0y" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                </node>
                <node concept="liA8E" id="7JjSHvQ7s0z" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="2OqwBi" id="7JjSHvQ7ttS" role="37wK5m">
                    <node concept="37vLTw" id="7JjSHvQ7tfn" role="2Oq$k0">
                      <ref role="3cqZAo" node="7JjSHvQ78Od" resolve="gson" />
                    </node>
                    <node concept="liA8E" id="7JjSHvQ7tC$" role="2OqNvi">
                      <ref role="37wK5l" to="wy2b:~Gson.toJson(com.google.gson.JsonElement)" resolve="toJson" />
                      <node concept="37vLTw" id="7JjSHvQ7tWZ" role="37wK5m">
                        <ref role="3cqZAo" node="7JjSHvQ4VJB" resolve="expected" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7JjSHvQ7s1f" role="3cqZAp">
              <node concept="2OqwBi" id="7JjSHvQ7s1g" role="3clFbG">
                <node concept="10M0yZ" id="7JjSHvQ7s1h" role="2Oq$k0">
                  <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                </node>
                <node concept="liA8E" id="7JjSHvQ7s1i" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println()" resolve="println" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7JjSHvQ7s22" role="3cqZAp">
              <node concept="2OqwBi" id="7JjSHvQ7s23" role="3clFbG">
                <node concept="10M0yZ" id="7JjSHvQ7s24" role="2Oq$k0">
                  <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                </node>
                <node concept="liA8E" id="7JjSHvQ7s25" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="Xl_RD" id="7JjSHvQ7u6F" role="37wK5m">
                    <property role="Xl_RC" value="Actual JSON:" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7JjSHvQ7s6q" role="3cqZAp">
              <node concept="2OqwBi" id="7JjSHvQ7s6r" role="3clFbG">
                <node concept="10M0yZ" id="7JjSHvQ7s6s" role="2Oq$k0">
                  <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                </node>
                <node concept="liA8E" id="7JjSHvQ7s6t" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="2OqwBi" id="7JjSHvQ7uKR" role="37wK5m">
                    <node concept="37vLTw" id="7JjSHvQ7u$8" role="2Oq$k0">
                      <ref role="3cqZAo" node="7JjSHvQ78Od" resolve="gson" />
                    </node>
                    <node concept="liA8E" id="7JjSHvQ7uYS" role="2OqNvi">
                      <ref role="37wK5l" to="wy2b:~Gson.toJson(com.google.gson.JsonElement)" resolve="toJson" />
                      <node concept="37vLTw" id="7JjSHvQ7v58" role="37wK5m">
                        <ref role="3cqZAo" node="7JjSHvQ4VNc" resolve="actual" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7JjSHvQ7vd_" role="3cqZAp">
              <node concept="2OqwBi" id="7JjSHvQ7vdA" role="3clFbG">
                <node concept="10M0yZ" id="7JjSHvQ7vdB" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                </node>
                <node concept="liA8E" id="7JjSHvQ7vdC" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println()" resolve="println" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5i$4SBK4Du2" role="3cqZAp" />
            <node concept="3clFbF" id="5i$4SBK4DVQ" role="3cqZAp">
              <node concept="2OqwBi" id="5i$4SBK4DVR" role="3clFbG">
                <node concept="10M0yZ" id="5i$4SBK4DVS" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                </node>
                <node concept="liA8E" id="5i$4SBK4DVT" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="Xl_RD" id="5i$4SBK4DVU" role="37wK5m">
                    <property role="Xl_RC" value="Expected JSON (element where issues is found):" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5i$4SBK4DW0" role="3cqZAp">
              <node concept="2OqwBi" id="5i$4SBK4DW1" role="3clFbG">
                <node concept="10M0yZ" id="5i$4SBK4DW2" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                </node>
                <node concept="liA8E" id="5i$4SBK4DW3" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="2OqwBi" id="5i$4SBK4DW4" role="37wK5m">
                    <node concept="37vLTw" id="5i$4SBK4DW5" role="2Oq$k0">
                      <ref role="3cqZAo" node="7JjSHvQ78Od" resolve="gson" />
                    </node>
                    <node concept="liA8E" id="5i$4SBK4DW6" role="2OqNvi">
                      <ref role="37wK5l" to="wy2b:~Gson.toJson(com.google.gson.JsonElement)" resolve="toJson" />
                      <node concept="2OqwBi" id="5i$4SBK4Gp1" role="37wK5m">
                        <node concept="37vLTw" id="5i$4SBK4Ga2" role="2Oq$k0">
                          <ref role="3cqZAo" node="7JjSHvQ4Z$6" resolve="diff" />
                        </node>
                        <node concept="2OwXpG" id="5i$4SBK4GX_" role="2OqNvi">
                          <ref role="2Oxat5" node="5i$4SBK4zLA" resolve="expected" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5i$4SBK4DWd" role="3cqZAp">
              <node concept="2OqwBi" id="5i$4SBK4DWe" role="3clFbG">
                <node concept="10M0yZ" id="5i$4SBK4DWf" role="2Oq$k0">
                  <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                </node>
                <node concept="liA8E" id="5i$4SBK4DWg" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println()" resolve="println" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5i$4SBK4DWm" role="3cqZAp">
              <node concept="2OqwBi" id="5i$4SBK4DWn" role="3clFbG">
                <node concept="10M0yZ" id="5i$4SBK4DWo" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                </node>
                <node concept="liA8E" id="5i$4SBK4DWp" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="Xl_RD" id="5i$4SBK4DWq" role="37wK5m">
                    <property role="Xl_RC" value="Actual JSON (element where issues is found):" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5i$4SBK4DWw" role="3cqZAp">
              <node concept="2OqwBi" id="5i$4SBK4DWx" role="3clFbG">
                <node concept="10M0yZ" id="5i$4SBK4DWy" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                </node>
                <node concept="liA8E" id="5i$4SBK4DWz" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="2OqwBi" id="5i$4SBK4DW$" role="37wK5m">
                    <node concept="37vLTw" id="5i$4SBK4DW_" role="2Oq$k0">
                      <ref role="3cqZAo" node="7JjSHvQ78Od" resolve="gson" />
                    </node>
                    <node concept="liA8E" id="5i$4SBK4DWA" role="2OqNvi">
                      <ref role="37wK5l" to="wy2b:~Gson.toJson(com.google.gson.JsonElement)" resolve="toJson" />
                      <node concept="2OqwBi" id="5i$4SBK4Hvd" role="37wK5m">
                        <node concept="37vLTw" id="5i$4SBK4Hfo" role="2Oq$k0">
                          <ref role="3cqZAo" node="7JjSHvQ4Z$6" resolve="diff" />
                        </node>
                        <node concept="2OwXpG" id="5i$4SBK4HHK" role="2OqNvi">
                          <ref role="2Oxat5" node="5i$4SBK4zRt" resolve="actual" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5i$4SBK4DWH" role="3cqZAp">
              <node concept="2OqwBi" id="5i$4SBK4DWI" role="3clFbG">
                <node concept="10M0yZ" id="5i$4SBK4DWJ" role="2Oq$k0">
                  <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                </node>
                <node concept="liA8E" id="5i$4SBK4DWK" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println()" resolve="println" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5i$4SBK4DuI" role="3cqZAp" />
            <node concept="3clFbF" id="7JjSHvQ7qLk" role="3cqZAp">
              <node concept="2OqwBi" id="7JjSHvQ7qLl" role="3clFbG">
                <node concept="10M0yZ" id="7JjSHvQ7qY7" role="2Oq$k0">
                  <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                </node>
                <node concept="liA8E" id="7JjSHvQ7qLn" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.flush()" resolve="flush" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7JjSHvQ786n" role="3clFbw">
            <node concept="10Nm6u" id="7JjSHvQ78aq" role="3uHU7w" />
            <node concept="37vLTw" id="7JjSHvQ77JU" role="3uHU7B">
              <ref role="3cqZAo" node="7JjSHvQ4Z$6" resolve="diff" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7JjSHvQ6RQb" role="3cqZAp">
          <node concept="3clFbS" id="7JjSHvQ6RQd" role="3clFbx">
            <node concept="YS8fn" id="7JjSHvQ6SsH" role="3cqZAp">
              <node concept="2ShNRf" id="7JjSHvQ6SwS" role="YScLw">
                <node concept="1pGfFk" id="7JjSHvQ6T3t" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="3cpWs3" id="7JjSHvQ6THP" role="37wK5m">
                    <node concept="2OqwBi" id="5i$4SBK4IvE" role="3uHU7w">
                      <node concept="37vLTw" id="7JjSHvQ6TId" role="2Oq$k0">
                        <ref role="3cqZAo" node="7JjSHvQ4Z$6" resolve="diff" />
                      </node>
                      <node concept="2OwXpG" id="5i$4SBK4IKB" role="2OqNvi">
                        <ref role="2Oxat5" node="5i$4SBK4yUw" resolve="desc" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="7JjSHvQ6T8J" role="3uHU7B">
                      <property role="Xl_RC" value="JSON different from what expected: " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7JjSHvQ6SgT" role="3clFbw">
            <node concept="10Nm6u" id="7JjSHvQ6Slg" role="3uHU7w" />
            <node concept="37vLTw" id="7JjSHvQ6RUY" role="3uHU7B">
              <ref role="3cqZAo" node="7JjSHvQ4Z$6" resolve="diff" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7JjSHvQ6QDI" role="1B3o_S" />
      <node concept="3cqZAl" id="7JjSHvQ4UZN" role="3clF45" />
      <node concept="37vLTG" id="7JjSHvQ4VJB" role="3clF46">
        <property role="TrG5h" value="expected" />
        <node concept="3uibUv" id="7JjSHvQ4VJA" role="1tU5fm">
          <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
        </node>
      </node>
      <node concept="37vLTG" id="7JjSHvQ4VNc" role="3clF46">
        <property role="TrG5h" value="actual" />
        <node concept="3uibUv" id="7JjSHvQ4WBB" role="1tU5fm">
          <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7JjSHvQ4XqD" role="jymVt" />
    <node concept="3clFb_" id="7JjSHvQ4WKE" role="jymVt">
      <property role="TrG5h" value="assertJsonsAreEqualsHelper" />
      <node concept="3clFbS" id="7JjSHvQ4WKF" role="3clF47">
        <node concept="3clFbJ" id="7JjSHvQ50aO" role="3cqZAp">
          <node concept="2OqwBi" id="7JjSHvQ50oz" role="3clFbw">
            <node concept="37vLTw" id="7JjSHvQ50f5" role="2Oq$k0">
              <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
            </node>
            <node concept="liA8E" id="7JjSHvQ50xc" role="2OqNvi">
              <ref role="37wK5l" to="wy2b:~JsonElement.isJsonObject()" resolve="isJsonObject" />
            </node>
          </node>
          <node concept="3clFbS" id="7JjSHvQ50aQ" role="3clFbx">
            <node concept="3clFbJ" id="7JjSHvQ517Z" role="3cqZAp">
              <node concept="2OqwBi" id="7JjSHvQ51id" role="3clFbw">
                <node concept="37vLTw" id="7JjSHvQ51cg" role="2Oq$k0">
                  <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
                </node>
                <node concept="liA8E" id="7JjSHvQ51pB" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonElement.isJsonObject()" resolve="isJsonObject" />
                </node>
              </node>
              <node concept="3clFbS" id="7JjSHvQ5181" role="3clFbx">
                <node concept="3cpWs8" id="7JjSHvQ5gzP" role="3cqZAp">
                  <node concept="3cpWsn" id="7JjSHvQ5gzS" role="3cpWs9">
                    <property role="TrG5h" value="expectedKeys" />
                    <node concept="2OqwBi" id="7JjSHvQ5h1T" role="33vP2m">
                      <node concept="2OqwBi" id="7JjSHvQ5gOd" role="2Oq$k0">
                        <node concept="37vLTw" id="7JjSHvQ5gFZ" role="2Oq$k0">
                          <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
                        </node>
                        <node concept="liA8E" id="7JjSHvQ5gTO" role="2OqNvi">
                          <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonObject()" resolve="getAsJsonObject" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7JjSHvQ5hac" role="2OqNvi">
                        <ref role="37wK5l" to="wy2b:~JsonObject.keySet()" resolve="keySet" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="7JjSHvQ5L9L" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                      <node concept="3uibUv" id="7JjSHvQ5L9M" role="11_B2D">
                        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7JjSHvQ5i46" role="3cqZAp">
                  <node concept="3cpWsn" id="7JjSHvQ5i47" role="3cpWs9">
                    <property role="TrG5h" value="actulKeys" />
                    <node concept="3uibUv" id="7JjSHvQ5CTu" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                      <node concept="3uibUv" id="7JjSHvQ5JNO" role="11_B2D">
                        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7JjSHvQ5i4a" role="33vP2m">
                      <node concept="2OqwBi" id="7JjSHvQ5i4b" role="2Oq$k0">
                        <node concept="37vLTw" id="7JjSHvQ5icu" role="2Oq$k0">
                          <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
                        </node>
                        <node concept="liA8E" id="7JjSHvQ5i4d" role="2OqNvi">
                          <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonObject()" resolve="getAsJsonObject" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7JjSHvQ5i4e" role="2OqNvi">
                        <ref role="37wK5l" to="wy2b:~JsonObject.keySet()" resolve="keySet" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7JjSHvQ5iGZ" role="3cqZAp">
                  <node concept="3clFbS" id="7JjSHvQ5iH1" role="3clFbx">
                    <node concept="2Gpval" id="7JjSHvQ5NwW" role="3cqZAp">
                      <node concept="2GrKxI" id="7JjSHvQ5NwY" role="2Gsz3X">
                        <property role="TrG5h" value="key" />
                      </node>
                      <node concept="37vLTw" id="7JjSHvQ5NDe" role="2GsD0m">
                        <ref role="3cqZAo" node="7JjSHvQ5gzS" resolve="expectedKeys" />
                      </node>
                      <node concept="3clFbS" id="7JjSHvQ5Nx2" role="2LFqv$">
                        <node concept="3cpWs8" id="7JjSHvQ5Ynz" role="3cqZAp">
                          <node concept="3cpWsn" id="7JjSHvQ5YnA" role="3cpWs9">
                            <property role="TrG5h" value="diff" />
                            <node concept="3uibUv" id="5i$4SBK4IZR" role="1tU5fm">
                              <ref role="3uigEE" node="5i$4SBK4wud" resolve="IntegrationTest.JsonDiff" />
                            </node>
                            <node concept="1rXfSq" id="7JjSHvQ5ZlQ" role="33vP2m">
                              <ref role="37wK5l" node="7JjSHvQ4WKE" resolve="assertJsonsAreEqualsHelper" />
                              <node concept="2OqwBi" id="7JjSHvQ64ZW" role="37wK5m">
                                <node concept="2OqwBi" id="7JjSHvQ63z9" role="2Oq$k0">
                                  <node concept="37vLTw" id="7JjSHvQ62Dk" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
                                  </node>
                                  <node concept="liA8E" id="7JjSHvQ64mc" role="2OqNvi">
                                    <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonObject()" resolve="getAsJsonObject" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="7JjSHvQ65AB" role="2OqNvi">
                                  <ref role="37wK5l" to="wy2b:~JsonObject.get(java.lang.String)" resolve="get" />
                                  <node concept="2GrUjf" id="7JjSHvQ66nk" role="37wK5m">
                                    <ref role="2Gs0qQ" node="7JjSHvQ5NwY" resolve="key" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="7JjSHvQ67vd" role="37wK5m">
                                <node concept="2OqwBi" id="7JjSHvQ67ve" role="2Oq$k0">
                                  <node concept="37vLTw" id="7JjSHvQ68uZ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
                                  </node>
                                  <node concept="liA8E" id="7JjSHvQ67vg" role="2OqNvi">
                                    <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonObject()" resolve="getAsJsonObject" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="7JjSHvQ67vh" role="2OqNvi">
                                  <ref role="37wK5l" to="wy2b:~JsonObject.get(java.lang.String)" resolve="get" />
                                  <node concept="2GrUjf" id="7JjSHvQ67vi" role="37wK5m">
                                    <ref role="2Gs0qQ" node="7JjSHvQ5NwY" resolve="key" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs3" id="7JjSHvQ6bWN" role="37wK5m">
                                <node concept="2GrUjf" id="7JjSHvQ6bXs" role="3uHU7w">
                                  <ref role="2Gs0qQ" node="7JjSHvQ5NwY" resolve="key" />
                                </node>
                                <node concept="3cpWs3" id="7JjSHvQ6ayL" role="3uHU7B">
                                  <node concept="37vLTw" id="7JjSHvQ69_p" role="3uHU7B">
                                    <ref role="3cqZAo" node="7JjSHvQ5O3s" resolve="path" />
                                  </node>
                                  <node concept="Xl_RD" id="7JjSHvQ6az5" role="3uHU7w">
                                    <property role="Xl_RC" value="." />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="7JjSHvQ5YEJ" role="3cqZAp">
                          <node concept="3clFbS" id="7JjSHvQ5YEL" role="3clFbx">
                            <node concept="3cpWs6" id="7JjSHvQ5ZgS" role="3cqZAp">
                              <node concept="37vLTw" id="7JjSHvQ5Zhf" role="3cqZAk">
                                <ref role="3cqZAo" node="7JjSHvQ5YnA" resolve="diff" />
                              </node>
                            </node>
                          </node>
                          <node concept="3y3z36" id="7JjSHvQ5Z4E" role="3clFbw">
                            <node concept="10Nm6u" id="7JjSHvQ5Z94" role="3uHU7w" />
                            <node concept="37vLTw" id="7JjSHvQ5YIY" role="3uHU7B">
                              <ref role="3cqZAo" node="7JjSHvQ5YnA" resolve="diff" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="7JjSHvQ6cAU" role="3cqZAp">
                      <node concept="10Nm6u" id="7JjSHvQ6cBL" role="3cqZAk" />
                    </node>
                  </node>
                  <node concept="17R0WA" id="7JjSHvQ5ldY" role="3clFbw">
                    <node concept="37vLTw" id="7JjSHvQ5liF" role="3uHU7w">
                      <ref role="3cqZAo" node="7JjSHvQ5i47" resolve="actulKeys" />
                    </node>
                    <node concept="37vLTw" id="7JjSHvQ5iUn" role="3uHU7B">
                      <ref role="3cqZAo" node="7JjSHvQ5gzS" resolve="expectedKeys" />
                    </node>
                  </node>
                  <node concept="9aQIb" id="7JjSHvQ5lu8" role="9aQIa">
                    <node concept="3clFbS" id="7JjSHvQ5lu9" role="9aQI4">
                      <node concept="3cpWs6" id="7JjSHvQ5lA3" role="3cqZAp">
                        <node concept="2ShNRf" id="5i$4SBK4O1s" role="3cqZAk">
                          <node concept="1pGfFk" id="5i$4SBK4Q0b" role="2ShVmc">
                            <ref role="37wK5l" node="5i$4SBK4$jD" resolve="IntegrationTest.JsonDiff" />
                            <node concept="3cpWs3" id="7JjSHvQ5s1w" role="37wK5m">
                              <node concept="37vLTw" id="7JjSHvQ5swd" role="3uHU7w">
                                <ref role="3cqZAo" node="7JjSHvQ5i47" resolve="actulKeys" />
                              </node>
                              <node concept="3cpWs3" id="7JjSHvQ5pdy" role="3uHU7B">
                                <node concept="3cpWs3" id="7JjSHvQ5nwd" role="3uHU7B">
                                  <node concept="3cpWs3" id="7JjSHvQ5PMB" role="3uHU7B">
                                    <node concept="37vLTw" id="7JjSHvQ5QCt" role="3uHU7B">
                                      <ref role="3cqZAo" node="7JjSHvQ5O3s" resolve="path" />
                                    </node>
                                    <node concept="Xl_RD" id="7JjSHvQ5lE5" role="3uHU7w">
                                      <property role="Xl_RC" value=" expected keys: " />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="7JjSHvQ5nY7" role="3uHU7w">
                                    <ref role="3cqZAo" node="7JjSHvQ5gzS" resolve="expectedKeys" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="7JjSHvQ5p$B" role="3uHU7w">
                                  <property role="Xl_RC" value=", actual keys: " />
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="5i$4SBK4Uzj" role="37wK5m">
                              <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
                            </node>
                            <node concept="37vLTw" id="5i$4SBK4WbU" role="37wK5m">
                              <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="7JjSHvQ51Ai" role="9aQIa">
                <node concept="3clFbS" id="7JjSHvQ51Aj" role="9aQI4">
                  <node concept="3cpWs6" id="7JjSHvQ51I8" role="3cqZAp">
                    <node concept="2ShNRf" id="5i$4SBK50_c" role="3cqZAk">
                      <node concept="1pGfFk" id="5i$4SBK53m_" role="2ShVmc">
                        <ref role="37wK5l" node="5i$4SBK4$jD" resolve="IntegrationTest.JsonDiff" />
                        <node concept="3cpWs3" id="7JjSHvQ54Y2" role="37wK5m">
                          <node concept="37vLTw" id="7JjSHvQ55A0" role="3uHU7w">
                            <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
                          </node>
                          <node concept="3cpWs3" id="7JjSHvQ5Sbe" role="3uHU7B">
                            <node concept="37vLTw" id="7JjSHvQ5T2d" role="3uHU7B">
                              <ref role="3cqZAo" node="7JjSHvQ5O3s" resolve="path" />
                            </node>
                            <node concept="Xl_RD" id="7JjSHvQ51Ma" role="3uHU7w">
                              <property role="Xl_RC" value=" expected JSON Object but found " />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="5i$4SBK56L5" role="37wK5m">
                          <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
                        </node>
                        <node concept="37vLTw" id="5i$4SBK58Ah" role="37wK5m">
                          <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7JjSHvQ59ai" role="3eNLev">
            <node concept="2OqwBi" id="7JjSHvQ59GU" role="3eO9$A">
              <node concept="37vLTw" id="7JjSHvQ59zq" role="2Oq$k0">
                <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
              </node>
              <node concept="liA8E" id="7JjSHvQ59Om" role="2OqNvi">
                <ref role="37wK5l" to="wy2b:~JsonElement.isJsonArray()" resolve="isJsonArray" />
              </node>
            </node>
            <node concept="3clFbS" id="7JjSHvQ59ak" role="3eOfB_">
              <node concept="3clFbJ" id="7JjSHvQ5d_j" role="3cqZAp">
                <node concept="2OqwBi" id="7JjSHvQ5d_k" role="3clFbw">
                  <node concept="37vLTw" id="7JjSHvQ5d_l" role="2Oq$k0">
                    <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
                  </node>
                  <node concept="liA8E" id="7JjSHvQ5fm_" role="2OqNvi">
                    <ref role="37wK5l" to="wy2b:~JsonElement.isJsonArray()" resolve="isJsonArray" />
                  </node>
                </node>
                <node concept="3clFbS" id="7JjSHvQ5d_n" role="3clFbx">
                  <node concept="3cpWs8" id="7JjSHvQ6dQP" role="3cqZAp">
                    <node concept="3cpWsn" id="7JjSHvQ6dQS" role="3cpWs9">
                      <property role="TrG5h" value="expectedSize" />
                      <node concept="10Oyi0" id="7JjSHvQ6dQO" role="1tU5fm" />
                      <node concept="2OqwBi" id="7JjSHvQ6ezy" role="33vP2m">
                        <node concept="2OqwBi" id="7JjSHvQ6ee1" role="2Oq$k0">
                          <node concept="37vLTw" id="7JjSHvQ6e74" role="2Oq$k0">
                            <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
                          </node>
                          <node concept="liA8E" id="7JjSHvQ6eiw" role="2OqNvi">
                            <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonArray()" resolve="getAsJsonArray" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7JjSHvQ6eNG" role="2OqNvi">
                          <ref role="37wK5l" to="wy2b:~JsonArray.size()" resolve="size" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="7JjSHvQ6eSC" role="3cqZAp">
                    <node concept="3cpWsn" id="7JjSHvQ6eSD" role="3cpWs9">
                      <property role="TrG5h" value="actualSize" />
                      <node concept="10Oyi0" id="7JjSHvQ6eSE" role="1tU5fm" />
                      <node concept="2OqwBi" id="7JjSHvQ6eSF" role="33vP2m">
                        <node concept="2OqwBi" id="7JjSHvQ6eSG" role="2Oq$k0">
                          <node concept="37vLTw" id="7JjSHvQ6f1f" role="2Oq$k0">
                            <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
                          </node>
                          <node concept="liA8E" id="7JjSHvQ6eSI" role="2OqNvi">
                            <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonArray()" resolve="getAsJsonArray" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7JjSHvQ6eSJ" role="2OqNvi">
                          <ref role="37wK5l" to="wy2b:~JsonArray.size()" resolve="size" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="7JjSHvQ6hlk" role="3cqZAp">
                    <node concept="3clFbS" id="7JjSHvQ6hlm" role="3clFbx">
                      <node concept="1Dw8fO" id="7JjSHvQ6pf1" role="3cqZAp">
                        <node concept="3clFbS" id="7JjSHvQ6pf3" role="2LFqv$">
                          <node concept="3cpWs8" id="7JjSHvQ6qOG" role="3cqZAp">
                            <node concept="3cpWsn" id="7JjSHvQ6qOH" role="3cpWs9">
                              <property role="TrG5h" value="diff" />
                              <node concept="1rXfSq" id="7JjSHvQ6qOJ" role="33vP2m">
                                <ref role="37wK5l" node="7JjSHvQ4WKE" resolve="assertJsonsAreEqualsHelper" />
                                <node concept="2OqwBi" id="7JjSHvQ6qOK" role="37wK5m">
                                  <node concept="2OqwBi" id="7JjSHvQ6qOL" role="2Oq$k0">
                                    <node concept="37vLTw" id="7JjSHvQ6qOM" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
                                    </node>
                                    <node concept="liA8E" id="7JjSHvQ6yt1" role="2OqNvi">
                                      <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonArray()" resolve="getAsJsonArray" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="7JjSHvQ6qOO" role="2OqNvi">
                                    <ref role="37wK5l" to="wy2b:~JsonArray.get(int)" resolve="get" />
                                    <node concept="37vLTw" id="7JjSHvQ6zj9" role="37wK5m">
                                      <ref role="3cqZAo" node="7JjSHvQ6pf4" resolve="i" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="7JjSHvQ6qOQ" role="37wK5m">
                                  <node concept="2OqwBi" id="7JjSHvQ6qOR" role="2Oq$k0">
                                    <node concept="37vLTw" id="7JjSHvQ6qOS" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
                                    </node>
                                    <node concept="liA8E" id="7JjSHvQ6$HY" role="2OqNvi">
                                      <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonArray()" resolve="getAsJsonArray" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="7JjSHvQ6qOU" role="2OqNvi">
                                    <ref role="37wK5l" to="wy2b:~JsonArray.get(int)" resolve="get" />
                                    <node concept="37vLTw" id="7JjSHvQ6DTg" role="37wK5m">
                                      <ref role="3cqZAo" node="7JjSHvQ6pf4" resolve="i" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs3" id="7JjSHvQ6w9s" role="37wK5m">
                                  <node concept="Xl_RD" id="7JjSHvQ6wFB" role="3uHU7w">
                                    <property role="Xl_RC" value="]" />
                                  </node>
                                  <node concept="3cpWs3" id="7JjSHvQ6qOW" role="3uHU7B">
                                    <node concept="3cpWs3" id="7JjSHvQ6qOY" role="3uHU7B">
                                      <node concept="37vLTw" id="7JjSHvQ6qOZ" role="3uHU7B">
                                        <ref role="3cqZAo" node="7JjSHvQ5O3s" resolve="path" />
                                      </node>
                                      <node concept="Xl_RD" id="7JjSHvQ6qP0" role="3uHU7w">
                                        <property role="Xl_RC" value="[" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="7JjSHvQ6uOh" role="3uHU7w">
                                      <ref role="3cqZAo" node="7JjSHvQ6pf4" resolve="i" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3uibUv" id="5i$4SBK5cq8" role="1tU5fm">
                                <ref role="3uigEE" node="5i$4SBK4wud" resolve="IntegrationTest.JsonDiff" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="7JjSHvQ6qP1" role="3cqZAp">
                            <node concept="3clFbS" id="7JjSHvQ6qP2" role="3clFbx">
                              <node concept="3cpWs6" id="7JjSHvQ6qP3" role="3cqZAp">
                                <node concept="37vLTw" id="7JjSHvQ6qP4" role="3cqZAk">
                                  <ref role="3cqZAo" node="7JjSHvQ6qOH" resolve="diff" />
                                </node>
                              </node>
                            </node>
                            <node concept="3y3z36" id="7JjSHvQ6qP5" role="3clFbw">
                              <node concept="10Nm6u" id="7JjSHvQ6qP6" role="3uHU7w" />
                              <node concept="37vLTw" id="7JjSHvQ6qP7" role="3uHU7B">
                                <ref role="3cqZAo" node="7JjSHvQ6qOH" resolve="diff" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWsn" id="7JjSHvQ6pf4" role="1Duv9x">
                          <property role="TrG5h" value="i" />
                          <node concept="10Oyi0" id="7JjSHvQ6pm_" role="1tU5fm" />
                          <node concept="3cmrfG" id="7JjSHvQ6py$" role="33vP2m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                        <node concept="3eOVzh" id="7JjSHvQ6qjc" role="1Dwp0S">
                          <node concept="37vLTw" id="7JjSHvQ6qnX" role="3uHU7w">
                            <ref role="3cqZAo" node="7JjSHvQ6dQS" resolve="expectedSize" />
                          </node>
                          <node concept="37vLTw" id="7JjSHvQ6pAW" role="3uHU7B">
                            <ref role="3cqZAo" node="7JjSHvQ6pf4" resolve="i" />
                          </node>
                        </node>
                        <node concept="3uNrnE" id="7JjSHvQ6qKe" role="1Dwrff">
                          <node concept="37vLTw" id="7JjSHvQ6qKg" role="2$L3a6">
                            <ref role="3cqZAo" node="7JjSHvQ6pf4" resolve="i" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="7JjSHvQ6rZy" role="3cqZAp">
                        <node concept="10Nm6u" id="7JjSHvQ6s41" role="3cqZAk" />
                      </node>
                    </node>
                    <node concept="3clFbC" id="7JjSHvQ6ijR" role="3clFbw">
                      <node concept="37vLTw" id="7JjSHvQ6hry" role="3uHU7B">
                        <ref role="3cqZAo" node="7JjSHvQ6dQS" resolve="expectedSize" />
                      </node>
                      <node concept="37vLTw" id="7JjSHvQ6ioN" role="3uHU7w">
                        <ref role="3cqZAo" node="7JjSHvQ6eSD" resolve="actualSize" />
                      </node>
                    </node>
                    <node concept="9aQIb" id="7JjSHvQ6i$d" role="9aQIa">
                      <node concept="3clFbS" id="7JjSHvQ6i$e" role="9aQI4">
                        <node concept="3cpWs6" id="7JjSHvQ6iCx" role="3cqZAp">
                          <node concept="2ShNRf" id="5i$4SBK5qj4" role="3cqZAk">
                            <node concept="1pGfFk" id="5i$4SBK5sqB" role="2ShVmc">
                              <ref role="37wK5l" node="5i$4SBK4$jD" resolve="IntegrationTest.JsonDiff" />
                              <node concept="3cpWs3" id="7JjSHvQ6nwM" role="37wK5m">
                                <node concept="3cpWs3" id="7JjSHvQ6l6F" role="3uHU7B">
                                  <node concept="3cpWs3" id="7JjSHvQ6iCy" role="3uHU7B">
                                    <node concept="3cpWs3" id="7JjSHvQ6iC$" role="3uHU7B">
                                      <node concept="37vLTw" id="7JjSHvQ6iC_" role="3uHU7B">
                                        <ref role="3cqZAo" node="7JjSHvQ5O3s" resolve="path" />
                                      </node>
                                      <node concept="Xl_RD" id="7JjSHvQ6iCA" role="3uHU7w">
                                        <property role="Xl_RC" value=" expected " />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="7JjSHvQ6jD8" role="3uHU7w">
                                      <ref role="3cqZAo" node="7JjSHvQ6dQS" resolve="expectedSize" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="7JjSHvQ6l6Z" role="3uHU7w">
                                    <property role="Xl_RC" value=" elements, found " />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="7JjSHvQ6o8X" role="3uHU7w">
                                  <ref role="3cqZAo" node="7JjSHvQ6eSD" resolve="actualSize" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="5i$4SBK5wg8" role="37wK5m">
                                <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
                              </node>
                              <node concept="37vLTw" id="5i$4SBK5yz4" role="37wK5m">
                                <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="7JjSHvQ5d_o" role="9aQIa">
                  <node concept="3clFbS" id="7JjSHvQ5d_p" role="9aQI4">
                    <node concept="3cpWs6" id="7JjSHvQ5d_q" role="3cqZAp">
                      <node concept="2ShNRf" id="5i$4SBK5_Ue" role="3cqZAk">
                        <node concept="1pGfFk" id="5i$4SBK5CFm" role="2ShVmc">
                          <ref role="37wK5l" node="5i$4SBK4$jD" resolve="IntegrationTest.JsonDiff" />
                          <node concept="3cpWs3" id="7JjSHvQ5d_r" role="37wK5m">
                            <node concept="37vLTw" id="7JjSHvQ5d_s" role="3uHU7w">
                              <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
                            </node>
                            <node concept="3cpWs3" id="7JjSHvQ5Usg" role="3uHU7B">
                              <node concept="37vLTw" id="7JjSHvQ5V6C" role="3uHU7B">
                                <ref role="3cqZAo" node="7JjSHvQ5O3s" resolve="path" />
                              </node>
                              <node concept="Xl_RD" id="7JjSHvQ5d_t" role="3uHU7w">
                                <property role="Xl_RC" value=" expected JSON Array but found " />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="5i$4SBK5FFN" role="37wK5m">
                            <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
                          </node>
                          <node concept="37vLTw" id="5i$4SBK5HnD" role="37wK5m">
                            <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7JjSHvQ59Xf" role="3eNLev">
            <node concept="2OqwBi" id="7JjSHvQ5b5Q" role="3eO9$A">
              <node concept="37vLTw" id="7JjSHvQ5aGN" role="2Oq$k0">
                <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
              </node>
              <node concept="liA8E" id="7JjSHvQ5bdi" role="2OqNvi">
                <ref role="37wK5l" to="wy2b:~JsonElement.isJsonNull()" resolve="isJsonNull" />
              </node>
            </node>
            <node concept="3clFbS" id="7JjSHvQ59Xh" role="3eOfB_">
              <node concept="3clFbJ" id="7JjSHvQ5dFm" role="3cqZAp">
                <node concept="2OqwBi" id="7JjSHvQ5dFn" role="3clFbw">
                  <node concept="37vLTw" id="7JjSHvQ5dFo" role="2Oq$k0">
                    <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
                  </node>
                  <node concept="liA8E" id="7JjSHvQ5fhJ" role="2OqNvi">
                    <ref role="37wK5l" to="wy2b:~JsonElement.isJsonNull()" resolve="isJsonNull" />
                  </node>
                </node>
                <node concept="3clFbS" id="7JjSHvQ5dFq" role="3clFbx">
                  <node concept="3cpWs6" id="7JjSHvQ6CWs" role="3cqZAp">
                    <node concept="10Nm6u" id="7JjSHvQ6CWM" role="3cqZAk" />
                  </node>
                </node>
                <node concept="9aQIb" id="7JjSHvQ5dFr" role="9aQIa">
                  <node concept="3clFbS" id="7JjSHvQ5dFs" role="9aQI4">
                    <node concept="3cpWs6" id="7JjSHvQ5dFt" role="3cqZAp">
                      <node concept="2ShNRf" id="5i$4SBK5KvH" role="3cqZAk">
                        <node concept="1pGfFk" id="5i$4SBK5N2g" role="2ShVmc">
                          <ref role="37wK5l" node="5i$4SBK4$jD" resolve="IntegrationTest.JsonDiff" />
                          <node concept="3cpWs3" id="7JjSHvQ5dFu" role="37wK5m">
                            <node concept="37vLTw" id="7JjSHvQ5dFv" role="3uHU7w">
                              <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
                            </node>
                            <node concept="3cpWs3" id="7JjSHvQ5VDq" role="3uHU7B">
                              <node concept="37vLTw" id="7JjSHvQ5VHj" role="3uHU7B">
                                <ref role="3cqZAo" node="7JjSHvQ5O3s" resolve="path" />
                              </node>
                              <node concept="Xl_RD" id="7JjSHvQ5dFw" role="3uHU7w">
                                <property role="Xl_RC" value=" expected JSON Null but found " />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="5i$4SBK5RaI" role="37wK5m">
                            <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
                          </node>
                          <node concept="37vLTw" id="5i$4SBK5SW8" role="37wK5m">
                            <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7JjSHvQ5bmd" role="3eNLev">
            <node concept="2OqwBi" id="7JjSHvQ5bJ3" role="3eO9$A">
              <node concept="37vLTw" id="7JjSHvQ5bDH" role="2Oq$k0">
                <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
              </node>
              <node concept="liA8E" id="7JjSHvQ5c7Q" role="2OqNvi">
                <ref role="37wK5l" to="wy2b:~JsonElement.isJsonPrimitive()" resolve="isJsonPrimitive" />
              </node>
            </node>
            <node concept="3clFbS" id="7JjSHvQ5bmf" role="3eOfB_">
              <node concept="3clFbJ" id="7JjSHvQ5dLt" role="3cqZAp">
                <node concept="2OqwBi" id="7JjSHvQ5dLu" role="3clFbw">
                  <node concept="37vLTw" id="7JjSHvQ5dLv" role="2Oq$k0">
                    <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
                  </node>
                  <node concept="liA8E" id="7JjSHvQ5dSm" role="2OqNvi">
                    <ref role="37wK5l" to="wy2b:~JsonElement.isJsonPrimitive()" resolve="isJsonPrimitive" />
                  </node>
                </node>
                <node concept="3clFbS" id="7JjSHvQ5dLx" role="3clFbx">
                  <node concept="3clFbJ" id="7JjSHvQ6FdN" role="3cqZAp">
                    <node concept="17R0WA" id="7JjSHvQ6FC_" role="3clFbw">
                      <node concept="2OqwBi" id="7JjSHvQ6FTS" role="3uHU7w">
                        <node concept="37vLTw" id="7JjSHvQ6FLA" role="2Oq$k0">
                          <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
                        </node>
                        <node concept="liA8E" id="7JjSHvQ6FYR" role="2OqNvi">
                          <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonPrimitive()" resolve="getAsJsonPrimitive" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7JjSHvQ6Fpz" role="3uHU7B">
                        <node concept="37vLTw" id="7JjSHvQ6Fiw" role="2Oq$k0">
                          <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
                        </node>
                        <node concept="liA8E" id="7JjSHvQ6Fu7" role="2OqNvi">
                          <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonPrimitive()" resolve="getAsJsonPrimitive" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="7JjSHvQ6FdP" role="3clFbx">
                      <node concept="3cpWs6" id="7JjSHvQ6G7m" role="3cqZAp">
                        <node concept="10Nm6u" id="7JjSHvQ6GeL" role="3cqZAk" />
                      </node>
                    </node>
                    <node concept="9aQIb" id="7JjSHvQ6H5D" role="9aQIa">
                      <node concept="3clFbS" id="7JjSHvQ6H5E" role="9aQI4">
                        <node concept="3clFbJ" id="6h4an0SWDP6" role="3cqZAp">
                          <node concept="3clFbS" id="6h4an0SWDP8" role="3clFbx">
                            <node concept="3SKdUt" id="6h4an0SWJ8S" role="3cqZAp">
                              <node concept="1PaTwC" id="6h4an0SWJ8T" role="1aUNEU">
                                <node concept="3oM_SD" id="6h4an0SWJ8U" role="1PaTwD">
                                  <property role="3oM_SC" value="We" />
                                </node>
                                <node concept="3oM_SD" id="6h4an0SWJ9y" role="1PaTwD">
                                  <property role="3oM_SC" value="got" />
                                </node>
                                <node concept="3oM_SD" id="6h4an0SWJ9_" role="1PaTwD">
                                  <property role="3oM_SC" value="a" />
                                </node>
                                <node concept="3oM_SD" id="6h4an0SWJ9D" role="1PaTwD">
                                  <property role="3oM_SC" value="variable," />
                                </node>
                                <node concept="3oM_SD" id="6h4an0SWJaT" role="1PaTwD">
                                  <property role="3oM_SC" value="i.e.," />
                                </node>
                                <node concept="3oM_SD" id="6h4an0SWJaZ" role="1PaTwD">
                                  <property role="3oM_SC" value="a" />
                                </node>
                                <node concept="3oM_SD" id="6h4an0SWJbe" role="1PaTwD">
                                  <property role="3oM_SC" value="value" />
                                </node>
                                <node concept="3oM_SD" id="6h4an0SWJbm" role="1PaTwD">
                                  <property role="3oM_SC" value="that" />
                                </node>
                                <node concept="3oM_SD" id="6h4an0SWJbB" role="1PaTwD">
                                  <property role="3oM_SC" value="we" />
                                </node>
                                <node concept="3oM_SD" id="6h4an0SWJbT" role="1PaTwD">
                                  <property role="3oM_SC" value="cannot" />
                                </node>
                                <node concept="3oM_SD" id="6h4an0SWJc4" role="1PaTwD">
                                  <property role="3oM_SC" value="know" />
                                </node>
                                <node concept="3oM_SD" id="6h4an0SWJcg" role="1PaTwD">
                                  <property role="3oM_SC" value="in" />
                                </node>
                                <node concept="3oM_SD" id="6h4an0SWJct" role="1PaTwD">
                                  <property role="3oM_SC" value="advance" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="6h4an0SWJkh" role="3cqZAp">
                              <node concept="3clFbS" id="6h4an0SWJkj" role="3clFbx">
                                <node concept="3clFbJ" id="6h4an0SWOqC" role="3cqZAp">
                                  <node concept="17R0WA" id="6h4an0SWPA7" role="3clFbw">
                                    <node concept="2OqwBi" id="6h4an0SWQcv" role="3uHU7w">
                                      <node concept="37vLTw" id="6h4an0SWPS0" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
                                      </node>
                                      <node concept="liA8E" id="6h4an0SWQse" role="2OqNvi">
                                        <ref role="37wK5l" to="wy2b:~JsonElement.getAsString()" resolve="getAsString" />
                                      </node>
                                    </node>
                                    <node concept="3EllGN" id="6h4an0SWP2k" role="3uHU7B">
                                      <node concept="37vLTw" id="6h4an0SWOz0" role="3ElQJh">
                                        <ref role="3cqZAo" node="Aop38I4QWG" resolve="variableFounds" />
                                      </node>
                                      <node concept="2OqwBi" id="6h4an0SWPaB" role="3ElVtu">
                                        <node concept="37vLTw" id="6h4an0SWPaC" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
                                        </node>
                                        <node concept="liA8E" id="6h4an0SWPaD" role="2OqNvi">
                                          <ref role="37wK5l" to="wy2b:~JsonElement.getAsString()" resolve="getAsString" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbS" id="6h4an0SWOqE" role="3clFbx">
                                    <node concept="3cpWs6" id="6h4an0SWQNF" role="3cqZAp">
                                      <node concept="10Nm6u" id="6h4an0SWQNH" role="3cqZAk" />
                                    </node>
                                  </node>
                                  <node concept="9aQIb" id="6h4an0SWQZQ" role="9aQIa">
                                    <node concept="3clFbS" id="6h4an0SWQZR" role="9aQI4">
                                      <node concept="3cpWs6" id="6h4an0SWTeS" role="3cqZAp">
                                        <node concept="2ShNRf" id="6h4an0SWTeT" role="3cqZAk">
                                          <node concept="1pGfFk" id="6h4an0SWTeU" role="2ShVmc">
                                            <ref role="37wK5l" node="5i$4SBK4$jD" resolve="IntegrationTest.JsonDiff" />
                                            <node concept="3cpWs3" id="6h4an0SWTeV" role="37wK5m">
                                              <node concept="37vLTw" id="6h4an0SWTeW" role="3uHU7w">
                                                <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
                                              </node>
                                              <node concept="3cpWs3" id="6h4an0SX3xq" role="3uHU7B">
                                                <node concept="Xl_RD" id="6h4an0SX5Bw" role="3uHU7w">
                                                  <property role="Xl_RC" value=", found" />
                                                </node>
                                                <node concept="3cpWs3" id="6h4an0SX97x" role="3uHU7B">
                                                  <node concept="3cpWs3" id="6h4an0SWTeX" role="3uHU7B">
                                                    <node concept="3cpWs3" id="6h4an0SWTeY" role="3uHU7B">
                                                      <node concept="3cpWs3" id="6h4an0SWTeZ" role="3uHU7B">
                                                        <node concept="37vLTw" id="6h4an0SWTf0" role="3uHU7B">
                                                          <ref role="3cqZAo" node="7JjSHvQ5O3s" resolve="path" />
                                                        </node>
                                                        <node concept="Xl_RD" id="6h4an0SWTf1" role="3uHU7w">
                                                          <property role="Xl_RC" value=" expected " />
                                                        </node>
                                                      </node>
                                                      <node concept="3EllGN" id="6h4an0SWTjX" role="3uHU7w">
                                                        <node concept="37vLTw" id="6h4an0SWTk6" role="3ElQJh">
                                                          <ref role="3cqZAo" node="Aop38I4QWG" resolve="variableFounds" />
                                                        </node>
                                                        <node concept="2OqwBi" id="6h4an0SWTjY" role="3ElVtu">
                                                          <node concept="37vLTw" id="6h4an0SWTjZ" role="2Oq$k0">
                                                            <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
                                                          </node>
                                                          <node concept="liA8E" id="6h4an0SWTk0" role="2OqNvi">
                                                            <ref role="37wK5l" to="wy2b:~JsonElement.getAsString()" resolve="getAsString" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="Xl_RD" id="6h4an0SWTf3" role="3uHU7w">
                                                      <property role="Xl_RC" value=" because of previous matches of " />
                                                    </node>
                                                  </node>
                                                  <node concept="2OqwBi" id="6h4an0SXbdG" role="3uHU7w">
                                                    <node concept="37vLTw" id="6h4an0SXbdH" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
                                                    </node>
                                                    <node concept="liA8E" id="6h4an0SXbdI" role="2OqNvi">
                                                      <ref role="37wK5l" to="wy2b:~JsonElement.getAsString()" resolve="getAsString" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="37vLTw" id="6h4an0SWTf4" role="37wK5m">
                                              <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
                                            </node>
                                            <node concept="37vLTw" id="6h4an0SWTf5" role="37wK5m">
                                              <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="6h4an0SWJW5" role="3clFbw">
                                <node concept="37vLTw" id="6h4an0SWJsV" role="2Oq$k0">
                                  <ref role="3cqZAo" node="Aop38I4QWG" resolve="variableFounds" />
                                </node>
                                <node concept="2Nt0df" id="6h4an0SWLKB" role="2OqNvi">
                                  <node concept="2OqwBi" id="6h4an0SWLPG" role="38cxEo">
                                    <node concept="37vLTw" id="6h4an0SWLPH" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
                                    </node>
                                    <node concept="liA8E" id="6h4an0SWLPI" role="2OqNvi">
                                      <ref role="37wK5l" to="wy2b:~JsonElement.getAsString()" resolve="getAsString" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="9aQIb" id="6h4an0SWM6G" role="9aQIa">
                                <node concept="3clFbS" id="6h4an0SWM6H" role="9aQI4">
                                  <node concept="3clFbF" id="6h4an0SWMn4" role="3cqZAp">
                                    <node concept="37vLTI" id="6h4an0SWNlK" role="3clFbG">
                                      <node concept="2OqwBi" id="6h4an0SWNS3" role="37vLTx">
                                        <node concept="37vLTw" id="6h4an0SWNzM" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
                                        </node>
                                        <node concept="liA8E" id="6h4an0SWO7h" role="2OqNvi">
                                          <ref role="37wK5l" to="wy2b:~JsonElement.getAsString()" resolve="getAsString" />
                                        </node>
                                      </node>
                                      <node concept="3EllGN" id="6h4an0SWMMf" role="37vLTJ">
                                        <node concept="37vLTw" id="6h4an0SWMn3" role="3ElQJh">
                                          <ref role="3cqZAo" node="Aop38I4QWG" resolve="variableFounds" />
                                        </node>
                                        <node concept="2OqwBi" id="6h4an0SWMUs" role="3ElVtu">
                                          <node concept="37vLTw" id="6h4an0SWMUt" role="2Oq$k0">
                                            <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
                                          </node>
                                          <node concept="liA8E" id="6h4an0SWMUu" role="2OqNvi">
                                            <ref role="37wK5l" to="wy2b:~JsonElement.getAsString()" resolve="getAsString" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs6" id="6h4an0SYuY2" role="3cqZAp">
                                    <node concept="10Nm6u" id="6h4an0SYv88" role="3cqZAk" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1Wc70l" id="6h4an0SWHzq" role="3clFbw">
                            <node concept="2OqwBi" id="6h4an0SWIsx" role="3uHU7w">
                              <node concept="2OqwBi" id="6h4an0SWHSY" role="2Oq$k0">
                                <node concept="37vLTw" id="6h4an0SWHH0" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
                                </node>
                                <node concept="liA8E" id="6h4an0SWI3Q" role="2OqNvi">
                                  <ref role="37wK5l" to="wy2b:~JsonElement.getAsString()" resolve="getAsString" />
                                </node>
                              </node>
                              <node concept="liA8E" id="6h4an0SWIS9" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                                <node concept="Xl_RD" id="6h4an0SWIYe" role="37wK5m">
                                  <property role="Xl_RC" value="$$" />
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="6h4an0SWGCE" role="3uHU7B">
                              <node concept="2OqwBi" id="6h4an0SWG5X" role="2Oq$k0">
                                <node concept="37vLTw" id="6h4an0SWFTj" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
                                </node>
                                <node concept="liA8E" id="6h4an0SWGgK" role="2OqNvi">
                                  <ref role="37wK5l" to="wy2b:~JsonElement.getAsString()" resolve="getAsString" />
                                </node>
                              </node>
                              <node concept="liA8E" id="6h4an0SWH8I" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                                <node concept="Xl_RD" id="6h4an0SWHe2" role="37wK5m">
                                  <property role="Xl_RC" value="$$" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="9aQIb" id="6h4an0SXgVn" role="9aQIa">
                            <node concept="3clFbS" id="6h4an0SXgVo" role="9aQI4">
                              <node concept="3cpWs6" id="5i$4SBK5Uog" role="3cqZAp">
                                <node concept="2ShNRf" id="5i$4SBK5Uoh" role="3cqZAk">
                                  <node concept="1pGfFk" id="5i$4SBK5Uoi" role="2ShVmc">
                                    <ref role="37wK5l" node="5i$4SBK4$jD" resolve="IntegrationTest.JsonDiff" />
                                    <node concept="3cpWs3" id="7JjSHvQ6I9z" role="37wK5m">
                                      <node concept="37vLTw" id="7JjSHvQ6KWk" role="3uHU7w">
                                        <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
                                      </node>
                                      <node concept="3cpWs3" id="7JjSHvQ6I9_" role="3uHU7B">
                                        <node concept="3cpWs3" id="7JjSHvQ6I9A" role="3uHU7B">
                                          <node concept="3cpWs3" id="7JjSHvQ6I9B" role="3uHU7B">
                                            <node concept="37vLTw" id="7JjSHvQ6I9C" role="3uHU7B">
                                              <ref role="3cqZAo" node="7JjSHvQ5O3s" resolve="path" />
                                            </node>
                                            <node concept="Xl_RD" id="7JjSHvQ6I9D" role="3uHU7w">
                                              <property role="Xl_RC" value=" expected " />
                                            </node>
                                          </node>
                                          <node concept="37vLTw" id="7JjSHvQ6IjH" role="3uHU7w">
                                            <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
                                          </node>
                                        </node>
                                        <node concept="Xl_RD" id="7JjSHvQ6I9F" role="3uHU7w">
                                          <property role="Xl_RC" value=", found " />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="5i$4SBK5Uoo" role="37wK5m">
                                      <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
                                    </node>
                                    <node concept="37vLTw" id="5i$4SBK5Uop" role="37wK5m">
                                      <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
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
                <node concept="9aQIb" id="7JjSHvQ5dLy" role="9aQIa">
                  <node concept="3clFbS" id="7JjSHvQ5dLz" role="9aQI4">
                    <node concept="3cpWs6" id="5i$4SBK5W$H" role="3cqZAp">
                      <node concept="2ShNRf" id="5i$4SBK5W$I" role="3cqZAk">
                        <node concept="1pGfFk" id="5i$4SBK5W$J" role="2ShVmc">
                          <ref role="37wK5l" node="5i$4SBK4$jD" resolve="IntegrationTest.JsonDiff" />
                          <node concept="3cpWs3" id="7JjSHvQ5dL_" role="37wK5m">
                            <node concept="37vLTw" id="7JjSHvQ5dLA" role="3uHU7w">
                              <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
                            </node>
                            <node concept="3cpWs3" id="7JjSHvQ5X9A" role="3uHU7B">
                              <node concept="37vLTw" id="7JjSHvQ5Xdv" role="3uHU7B">
                                <ref role="3cqZAo" node="7JjSHvQ5O3s" resolve="path" />
                              </node>
                              <node concept="Xl_RD" id="7JjSHvQ5dLB" role="3uHU7w">
                                <property role="Xl_RC" value=" expected JSON Primitive but found " />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="5i$4SBK5W$P" role="37wK5m">
                            <ref role="3cqZAo" node="7JjSHvQ4WKI" resolve="expected" />
                          </node>
                          <node concept="37vLTw" id="5i$4SBK5W$Q" role="37wK5m">
                            <ref role="3cqZAo" node="7JjSHvQ4WKK" resolve="actual" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="7JjSHvQ5cfG" role="9aQIa">
            <node concept="3clFbS" id="7JjSHvQ5cfH" role="9aQI4">
              <node concept="YS8fn" id="7JjSHvQ5cjA" role="3cqZAp">
                <node concept="2ShNRf" id="7JjSHvQ5cjS" role="YScLw">
                  <node concept="1pGfFk" id="7JjSHvQ5duN" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7JjSHvQ4WKG" role="1B3o_S" />
      <node concept="3uibUv" id="5i$4SBK4BaI" role="3clF45">
        <ref role="3uigEE" node="5i$4SBK4wud" resolve="IntegrationTest.JsonDiff" />
      </node>
      <node concept="37vLTG" id="7JjSHvQ4WKI" role="3clF46">
        <property role="TrG5h" value="expected" />
        <node concept="3uibUv" id="7JjSHvQ4YjO" role="1tU5fm">
          <ref role="3uigEE" to="wy2b:~JsonElement" resolve="JsonElement" />
        </node>
      </node>
      <node concept="37vLTG" id="7JjSHvQ4WKK" role="3clF46">
        <property role="TrG5h" value="actual" />
        <node concept="3uibUv" id="7JjSHvQ4Ys9" role="1tU5fm">
          <ref role="3uigEE" to="wy2b:~JsonElement" resolve="JsonElement" />
        </node>
      </node>
      <node concept="37vLTG" id="7JjSHvQ5O3s" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="17QB3L" id="7JjSHvQ5P2l" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7JjSHvQ4GEr" role="jymVt" />
    <node concept="3clFb_" id="7JjSHvQ4HQK" role="jymVt">
      <property role="TrG5h" value="loadJsonDump" />
      <node concept="3clFbS" id="7JjSHvQ4HQN" role="3clF47">
        <node concept="3cpWs8" id="7JjSHvQ4L2w" role="3cqZAp">
          <node concept="3cpWsn" id="7JjSHvQ4L2x" role="3cpWs9">
            <property role="TrG5h" value="modelixRootDir" />
            <node concept="3uibUv" id="7JjSHvQ4L2y" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2OqwBi" id="7JjSHvQ4L2z" role="33vP2m">
              <node concept="2OqwBi" id="7JjSHvQ4L2$" role="2Oq$k0">
                <node concept="37vLTw" id="7JjSHvQ4L2_" role="2Oq$k0">
                  <ref role="3cqZAo" node="5yNJPA6tkqm" resolve="referenceDir" />
                </node>
                <node concept="liA8E" id="7JjSHvQ4L2A" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.getParentFile()" resolve="getParentFile" />
                </node>
              </node>
              <node concept="liA8E" id="7JjSHvQ4L2B" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.getParentFile()" resolve="getParentFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7JjSHvQ4L2C" role="3cqZAp">
          <node concept="3cpWsn" id="7JjSHvQ4L2D" role="3cpWs9">
            <property role="TrG5h" value="dumpsDir" />
            <node concept="3uibUv" id="7JjSHvQ4L2E" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="7JjSHvQ4L2F" role="33vP2m">
              <node concept="1pGfFk" id="7JjSHvQ4L2G" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                <node concept="2ShNRf" id="7JjSHvQ4L2H" role="37wK5m">
                  <node concept="1pGfFk" id="7JjSHvQ4L2I" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                    <node concept="37vLTw" id="7JjSHvQ4L2J" role="37wK5m">
                      <ref role="3cqZAo" node="7JjSHvQ4L2x" resolve="modelixRootDir" />
                    </node>
                    <node concept="Xl_RD" id="7JjSHvQ4L2K" role="37wK5m">
                      <property role="Xl_RC" value="integrationtests" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="7JjSHvQ4LhH" role="37wK5m">
                  <property role="Xl_RC" value="expected_server_dumps" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7JjSHvQ4LYT" role="3cqZAp">
          <node concept="3cpWsn" id="7JjSHvQ4LYU" role="3cpWs9">
            <property role="TrG5h" value="dumpFile" />
            <node concept="3uibUv" id="7JjSHvQ4LYV" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="7JjSHvQ4Mbg" role="33vP2m">
              <node concept="1pGfFk" id="7JjSHvQ4Mb1" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                <node concept="37vLTw" id="7JjSHvQ4Mhw" role="37wK5m">
                  <ref role="3cqZAo" node="7JjSHvQ4L2D" resolve="dumpsDir" />
                </node>
                <node concept="3cpWs3" id="7JjSHvQ4MHS" role="37wK5m">
                  <node concept="Xl_RD" id="7JjSHvQ4MI9" role="3uHU7w">
                    <property role="Xl_RC" value=".json" />
                  </node>
                  <node concept="37vLTw" id="7JjSHvQ4Msl" role="3uHU7B">
                    <ref role="3cqZAo" node="7JjSHvQ4JPp" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7JjSHvQ4MXA" role="3cqZAp">
          <node concept="3clFbS" id="7JjSHvQ4MXC" role="3clFbx">
            <node concept="YS8fn" id="7JjSHvQ4NNw" role="3cqZAp">
              <node concept="2ShNRf" id="7JjSHvQ4NNO" role="YScLw">
                <node concept="1pGfFk" id="7JjSHvQ4Ohf" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalAccessError.&lt;init&gt;(java.lang.String)" resolve="IllegalAccessError" />
                  <node concept="3cpWs3" id="7JjSHvQ4Pgq" role="37wK5m">
                    <node concept="2OqwBi" id="7JjSHvQ4PBD" role="3uHU7w">
                      <node concept="37vLTw" id="7JjSHvQ4Po4" role="2Oq$k0">
                        <ref role="3cqZAo" node="7JjSHvQ4LYU" resolve="dumpFile" />
                      </node>
                      <node concept="liA8E" id="7JjSHvQ4PWw" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="7JjSHvQ4OXg" role="3uHU7B">
                      <node concept="3cpWs3" id="7JjSHvQ4OIm" role="3uHU7B">
                        <node concept="Xl_RD" id="7JjSHvQ4OnM" role="3uHU7B">
                          <property role="Xl_RC" value="Dump file not found: " />
                        </node>
                        <node concept="37vLTw" id="7JjSHvQ4OMc" role="3uHU7w">
                          <ref role="3cqZAo" node="7JjSHvQ4JPp" resolve="name" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7JjSHvQ4OXE" role="3uHU7w">
                        <property role="Xl_RC" value=" -&gt; " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="7JjSHvQ4N3w" role="3clFbw">
            <node concept="2OqwBi" id="7JjSHvQ4Ntz" role="3fr31v">
              <node concept="37vLTw" id="7JjSHvQ4NaX" role="2Oq$k0">
                <ref role="3cqZAo" node="7JjSHvQ4LYU" resolve="dumpFile" />
              </node>
              <node concept="liA8E" id="7JjSHvQ4NFI" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7JjSHvQ6Mg6" role="3cqZAp">
          <node concept="3clFbS" id="7JjSHvQ6Mg7" role="1zxBo7">
            <node concept="3cpWs6" id="7JjSHvQ6NJQ" role="3cqZAp">
              <node concept="2OqwBi" id="7JjSHvQ4SwH" role="3cqZAk">
                <node concept="2YIFZM" id="7JjSHvQ4REH" role="2Oq$k0">
                  <ref role="1Pybhc" to="wy2b:~JsonParser" resolve="JsonParser" />
                  <ref role="37wK5l" to="wy2b:~JsonParser.parseReader(java.io.Reader)" resolve="parseReader" />
                  <node concept="2ShNRf" id="7JjSHvQ4RLl" role="37wK5m">
                    <node concept="1pGfFk" id="7JjSHvQ4Sgn" role="2ShVmc">
                      <ref role="37wK5l" to="guwi:~FileReader.&lt;init&gt;(java.io.File)" resolve="FileReader" />
                      <node concept="37vLTw" id="7JjSHvQ4Sml" role="37wK5m">
                        <ref role="3cqZAo" node="7JjSHvQ4LYU" resolve="dumpFile" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7JjSHvQ4SHi" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonObject()" resolve="getAsJsonObject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="7JjSHvQ6Mg9" role="1zxBo5">
            <node concept="3clFbS" id="7JjSHvQ6Mga" role="1zc67A">
              <node concept="YS8fn" id="7JjSHvQ6MxC" role="3cqZAp">
                <node concept="2ShNRf" id="7JjSHvQ6MxX" role="YScLw">
                  <node concept="1pGfFk" id="7JjSHvQ6Nk4" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="7JjSHvQ6NpF" role="37wK5m">
                      <ref role="3cqZAo" node="7JjSHvQ6Mgb" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="7JjSHvQ6Mgb" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="7JjSHvQ6Mgc" role="1tU5fm">
                <node concept="3uibUv" id="7JjSHvQ6Mg8" role="nSUat">
                  <ref role="3uigEE" to="guwi:~FileNotFoundException" resolve="FileNotFoundException" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7JjSHvQ4Hc0" role="1B3o_S" />
      <node concept="37vLTG" id="7JjSHvQ4JPp" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7JjSHvQ4JPo" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="7JjSHvQ4Kxo" role="3clF45">
        <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
      </node>
    </node>
    <node concept="2tJIrI" id="Aop38HZLEq" role="jymVt" />
    <node concept="312cEu" id="Aop38HZObG" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="ReferencesProcessor" />
      <node concept="312cEg" id="Aop38HZS2M" role="jymVt">
        <property role="TrG5h" value="mpsNodeIdToCloudNodeId" />
        <node concept="3Tm6S6" id="Aop38HZS2N" role="1B3o_S" />
        <node concept="3rvAFt" id="Aop38HZyTo" role="1tU5fm">
          <node concept="3cpWsb" id="Aop38I3p9f" role="3rvQeY" />
          <node concept="3cpWsb" id="Aop38I3dzX" role="3rvSg0" />
        </node>
        <node concept="2ShNRf" id="Aop38HZ$1X" role="33vP2m">
          <node concept="3rGOSV" id="Aop38HZzXH" role="2ShVmc">
            <node concept="3cpWsb" id="Aop38I3pCb" role="3rHrn6" />
            <node concept="3cpWsb" id="Aop38HZzXJ" role="3rHtpV" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="Aop38I07Nx" role="jymVt">
        <property role="TrG5h" value="refs" />
        <node concept="3Tm6S6" id="Aop38I07fM" role="1B3o_S" />
        <node concept="_YKpA" id="Aop38I07Ce" role="1tU5fm">
          <node concept="1LlUBW" id="Aop38I07Fu" role="_ZDj9">
            <node concept="3cpWsb" id="Aop38I07Iu" role="1Lm7xW" />
            <node concept="17QB3L" id="Aop38I07KW" role="1Lm7xW" />
            <node concept="3cpWsb" id="Aop38I3q3b" role="1Lm7xW" />
          </node>
        </node>
        <node concept="2ShNRf" id="Aop38I08pP" role="33vP2m">
          <node concept="2Jqq0_" id="Aop38I09ti" role="2ShVmc">
            <node concept="1LlUBW" id="Aop38I09tk" role="HW$YZ">
              <node concept="3cpWsb" id="Aop38I09tl" role="1Lm7xW" />
              <node concept="17QB3L" id="Aop38I09tm" role="1Lm7xW" />
              <node concept="3cpWsb" id="Aop38I3qN2" role="1Lm7xW" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="Aop38HZVib" role="jymVt">
        <property role="TrG5h" value="processReferences" />
        <node concept="3clFbS" id="Aop38HZVie" role="3clF47">
          <node concept="2Gpval" id="Aop38I0e_Z" role="3cqZAp">
            <node concept="2GrKxI" id="Aop38I0eA0" role="2Gsz3X">
              <property role="TrG5h" value="ref" />
            </node>
            <node concept="37vLTw" id="Aop38I0eIe" role="2GsD0m">
              <ref role="3cqZAo" node="Aop38I07Nx" resolve="refs" />
            </node>
            <node concept="3clFbS" id="Aop38I0eA2" role="2LFqv$">
              <node concept="3clFbJ" id="Aop38I2sd4" role="3cqZAp">
                <node concept="3clFbS" id="Aop38I2sd6" role="3clFbx">
                  <node concept="abc8K" id="Aop38I2xVH" role="3cqZAp">
                    <node concept="Xl_RD" id="Aop38I2y6D" role="abp_N">
                      <property role="Xl_RC" value="mpsNodeIdToCloudNodeId " />
                    </node>
                    <node concept="37vLTw" id="Aop38I2yeJ" role="abp_N">
                      <ref role="3cqZAo" node="Aop38HZS2M" resolve="mpsNodeIdToCloudNodeId" />
                    </node>
                  </node>
                  <node concept="YS8fn" id="Aop38I2ul8" role="3cqZAp">
                    <node concept="2ShNRf" id="Aop38I2utG" role="YScLw">
                      <node concept="1pGfFk" id="Aop38I2vtT" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                        <node concept="3cpWs3" id="Aop38I2wv7" role="37wK5m">
                          <node concept="1LFfDK" id="Aop38I2x5A" role="3uHU7w">
                            <node concept="3cmrfG" id="Aop38I2xtg" role="1LF_Uc">
                              <property role="3cmrfH" value="2" />
                            </node>
                            <node concept="2GrUjf" id="Aop38I2wAT" role="1LFl5Q">
                              <ref role="2Gs0qQ" node="Aop38I0eA0" resolve="ref" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="Aop38I2vOm" role="3uHU7B">
                            <property role="Xl_RC" value="There is no cloud node with MPS Node id " />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="Aop38I2tXC" role="3clFbw">
                  <node concept="2OqwBi" id="Aop38I2tXE" role="3fr31v">
                    <node concept="37vLTw" id="Aop38I2tXF" role="2Oq$k0">
                      <ref role="3cqZAo" node="Aop38HZS2M" resolve="mpsNodeIdToCloudNodeId" />
                    </node>
                    <node concept="2Nt0df" id="Aop38I2tXG" role="2OqNvi">
                      <node concept="1LFfDK" id="Aop38I2tXH" role="38cxEo">
                        <node concept="3cmrfG" id="Aop38I2tXI" role="1LF_Uc">
                          <property role="3cmrfH" value="2" />
                        </node>
                        <node concept="2GrUjf" id="Aop38I2tXJ" role="1LFl5Q">
                          <ref role="2Gs0qQ" node="Aop38I0eA0" resolve="ref" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="Aop38I2lDI" role="3cqZAp">
                <node concept="3cpWsn" id="Aop38I2lDL" role="3cpWs9">
                  <property role="TrG5h" value="cloudNode" />
                  <node concept="3cpWsb" id="Aop38I2lDG" role="1tU5fm" />
                  <node concept="3EllGN" id="Aop38I2lT2" role="33vP2m">
                    <node concept="1LFfDK" id="Aop38I2lT3" role="3ElVtu">
                      <node concept="3cmrfG" id="Aop38I2lT4" role="1LF_Uc">
                        <property role="3cmrfH" value="2" />
                      </node>
                      <node concept="2GrUjf" id="Aop38I2lT5" role="1LFl5Q">
                        <ref role="2Gs0qQ" node="Aop38I0eA0" resolve="ref" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="Aop38I2lT6" role="3ElQJh">
                      <ref role="3cqZAo" node="Aop38HZS2M" resolve="mpsNodeIdToCloudNodeId" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="Aop38I0qTm" role="3cqZAp">
                <node concept="3cpWsn" id="Aop38I0qTn" role="3cpWs9">
                  <property role="TrG5h" value="pnr" />
                  <node concept="3uibUv" id="Aop38I0qTo" role="1tU5fm">
                    <ref role="3uigEE" to="jks5:~PNodeReference" resolve="PNodeReference" />
                  </node>
                  <node concept="2ShNRf" id="Aop38I0rh_" role="33vP2m">
                    <node concept="1pGfFk" id="Aop38I0r90" role="2ShVmc">
                      <ref role="37wK5l" to="jks5:~PNodeReference.&lt;init&gt;(long)" resolve="PNodeReference" />
                      <node concept="37vLTw" id="Aop38I2moC" role="37wK5m">
                        <ref role="3cqZAo" node="Aop38I2lDL" resolve="cloudNode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="Aop38I0hSi" role="3cqZAp">
                <node concept="2OqwBi" id="Aop38I0i98" role="3clFbG">
                  <node concept="37vLTw" id="Aop38I0hSh" role="2Oq$k0">
                    <ref role="3cqZAo" node="Aop38I0han" resolve="wt" />
                  </node>
                  <node concept="liA8E" id="Aop38I0iiS" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~IWriteTransaction.setReferenceTarget(long,java.lang.String,org.modelix.model.api.INodeReference)" resolve="setReferenceTarget" />
                    <node concept="1LFfDK" id="Aop38I0iWE" role="37wK5m">
                      <node concept="3cmrfG" id="Aop38I0jeN" role="1LF_Uc">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="2GrUjf" id="Aop38I0itB" role="1LFl5Q">
                        <ref role="2Gs0qQ" node="Aop38I0eA0" resolve="ref" />
                      </node>
                    </node>
                    <node concept="1LFfDK" id="Aop38I0kcO" role="37wK5m">
                      <node concept="3cmrfG" id="Aop38I0kvv" role="1LF_Uc">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="2GrUjf" id="Aop38I0j$n" role="1LFl5Q">
                        <ref role="2Gs0qQ" node="Aop38I0eA0" resolve="ref" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="Aop38I0rI0" role="37wK5m">
                      <ref role="3cqZAo" node="Aop38I0qTn" resolve="pnr" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="Aop38HZUWK" role="1B3o_S" />
        <node concept="3cqZAl" id="Aop38HZUZm" role="3clF45" />
        <node concept="37vLTG" id="Aop38I0han" role="3clF46">
          <property role="TrG5h" value="wt" />
          <node concept="3uibUv" id="Aop38I0ham" role="1tU5fm">
            <ref role="3uigEE" to="jks5:~IWriteTransaction" resolve="IWriteTransaction" />
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="Aop38I01Gs" role="jymVt">
        <property role="TrG5h" value="recordMapping" />
        <node concept="3clFbS" id="Aop38I01Gv" role="3clF47">
          <node concept="3clFbF" id="Aop38I030a" role="3cqZAp">
            <node concept="37vLTI" id="Aop38I04lK" role="3clFbG">
              <node concept="37vLTw" id="Aop38I04AX" role="37vLTx">
                <ref role="3cqZAo" node="Aop38I02ne" resolve="cloudNode" />
              </node>
              <node concept="3EllGN" id="Aop38I03sU" role="37vLTJ">
                <node concept="37vLTw" id="Aop38I03IQ" role="3ElVtu">
                  <ref role="3cqZAo" node="Aop38I0238" resolve="mpsNode" />
                </node>
                <node concept="37vLTw" id="Aop38I0309" role="3ElQJh">
                  <ref role="3cqZAo" node="Aop38HZS2M" resolve="mpsNodeIdToCloudNodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="Aop38I01wg" role="1B3o_S" />
        <node concept="3cqZAl" id="Aop38I01FI" role="3clF45" />
        <node concept="37vLTG" id="Aop38I0238" role="3clF46">
          <property role="TrG5h" value="mpsNode" />
          <node concept="3cpWsb" id="Aop38I3nMk" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="Aop38I02ne" role="3clF46">
          <property role="TrG5h" value="cloudNode" />
          <node concept="3cpWsb" id="Aop38I3h3j" role="1tU5fm" />
        </node>
      </node>
      <node concept="3clFb_" id="Aop38I05p8" role="jymVt">
        <property role="TrG5h" value="recordReferencee" />
        <node concept="37vLTG" id="Aop38I05IA" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3cpWsb" id="Aop38I066S" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="Aop38I069T" role="3clF46">
          <property role="TrG5h" value="refName" />
          <node concept="17QB3L" id="Aop38I06yf" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="Aop38I06$z" role="3clF46">
          <property role="TrG5h" value="target" />
          <node concept="3cpWsb" id="Aop38I3oF1" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="Aop38I05pb" role="3clF47">
          <node concept="3clFbF" id="Aop38I09C_" role="3cqZAp">
            <node concept="2OqwBi" id="Aop38I0a_G" role="3clFbG">
              <node concept="37vLTw" id="Aop38I09C$" role="2Oq$k0">
                <ref role="3cqZAo" node="Aop38I07Nx" resolve="refs" />
              </node>
              <node concept="TSZUe" id="Aop38I0cP5" role="2OqNvi">
                <node concept="1Ls8ON" id="Aop38I0deH" role="25WWJ7">
                  <node concept="37vLTw" id="Aop38I0d_o" role="1Lso8e">
                    <ref role="3cqZAo" node="Aop38I05IA" resolve="node" />
                  </node>
                  <node concept="37vLTw" id="Aop38I0dYX" role="1Lso8e">
                    <ref role="3cqZAo" node="Aop38I069T" resolve="refName" />
                  </node>
                  <node concept="37vLTw" id="Aop38I0eaM" role="1Lso8e">
                    <ref role="3cqZAo" node="Aop38I06$z" resolve="target" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="Aop38I050T" role="1B3o_S" />
        <node concept="3cqZAl" id="Aop38I053L" role="3clF45" />
      </node>
      <node concept="3Tm6S6" id="Aop38HZMtV" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7jRNnvC9fXf" role="jymVt" />
    <node concept="3clFb_" id="7jRNnvC9m0y" role="jymVt">
      <property role="TrG5h" value="loadJsonDumpOnCloudServer" />
      <node concept="3clFbS" id="7jRNnvC9m0_" role="3clF47">
        <node concept="3cpWs8" id="7jRNnvC9yN5" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvC9yN6" role="3cpWs9">
            <property role="TrG5h" value="jo" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="7jRNnvC9yN7" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
            <node concept="1rXfSq" id="7jRNnvC9z5F" role="33vP2m">
              <ref role="37wK5l" node="7JjSHvQ4HQK" resolve="loadJsonDump" />
              <node concept="37vLTw" id="7jRNnvC9zk0" role="37wK5m">
                <ref role="3cqZAo" node="7jRNnvC9psP" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvC9zH2" role="3cqZAp">
          <node concept="1rXfSq" id="7jRNnvC9zH0" role="3clFbG">
            <ref role="37wK5l" node="7jRNnvC87zo" resolve="runOnCloudRepository" />
            <node concept="37vLTw" id="7jRNnvC9DsU" role="37wK5m">
              <ref role="3cqZAo" node="7jRNnvC9zX9" resolve="treeId" />
            </node>
            <node concept="37vLTw" id="7jRNnvC9DIQ" role="37wK5m">
              <ref role="3cqZAo" node="7jRNnvC9zXb" resolve="branchName" />
            </node>
            <node concept="1bVj0M" id="7jRNnvC9E3s" role="37wK5m">
              <node concept="37vLTG" id="7jRNnvC9E5y" role="1bW2Oz">
                <property role="TrG5h" value="wt" />
                <node concept="3uibUv" id="7jRNnvC9Ejz" role="1tU5fm">
                  <ref role="3uigEE" to="jks5:~IWriteTransaction" resolve="IWriteTransaction" />
                </node>
              </node>
              <node concept="3clFbS" id="7jRNnvC9E3u" role="1bW5cS">
                <node concept="3cpWs8" id="Aop38HZVQ1" role="3cqZAp">
                  <node concept="3cpWsn" id="Aop38HZVQ2" role="3cpWs9">
                    <property role="TrG5h" value="referencesProcessor" />
                    <node concept="3uibUv" id="Aop38HZVQ3" role="1tU5fm">
                      <ref role="3uigEE" node="Aop38HZObG" resolve="IntegrationTest.ReferencesProcessor" />
                    </node>
                    <node concept="2ShNRf" id="Aop38HZWf1" role="33vP2m">
                      <node concept="HV5vD" id="Aop38I0gPY" role="2ShVmc">
                        <ref role="HV5vE" node="Aop38HZObG" resolve="IntegrationTest.ReferencesProcessor" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7jRNnvC9Uof" role="3cqZAp">
                  <node concept="1rXfSq" id="7jRNnvC9Uoe" role="3clFbG">
                    <ref role="37wK5l" node="7jRNnvC9IYV" resolve="loadJsonDump" />
                    <node concept="37vLTw" id="7jRNnvC9W8I" role="37wK5m">
                      <ref role="3cqZAo" node="7jRNnvC9E5y" resolve="wt" />
                    </node>
                    <node concept="10M0yZ" id="7jRNnvC9ZAR" role="37wK5m">
                      <ref role="3cqZAo" to="jks5:~ITree.ROOT_ID" resolve="ROOT_ID" />
                      <ref role="1PxDUh" to="jks5:~ITree" resolve="ITree" />
                    </node>
                    <node concept="37vLTw" id="7jRNnvC9ZUB" role="37wK5m">
                      <ref role="3cqZAo" node="7jRNnvC9yN6" resolve="jo" />
                    </node>
                    <node concept="37vLTw" id="7jRNnvCaLii" role="37wK5m">
                      <ref role="3cqZAo" node="7jRNnvCaHO6" resolve="repo" />
                    </node>
                    <node concept="37vLTw" id="Aop38HZXEe" role="37wK5m">
                      <ref role="3cqZAo" node="Aop38HZVQ2" resolve="referencesProcessor" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="Aop38HZZ21" role="3cqZAp">
                  <node concept="2OqwBi" id="Aop38HZZf2" role="3clFbG">
                    <node concept="37vLTw" id="Aop38HZZ1Z" role="2Oq$k0">
                      <ref role="3cqZAo" node="Aop38HZVQ2" resolve="referencesProcessor" />
                    </node>
                    <node concept="liA8E" id="Aop38HZZnX" role="2OqNvi">
                      <ref role="37wK5l" node="Aop38HZVib" resolve="processReferences" />
                      <node concept="37vLTw" id="Aop38I0s2_" role="37wK5m">
                        <ref role="3cqZAo" node="7jRNnvC9E5y" resolve="wt" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7jRNnvC9jhm" role="1B3o_S" />
      <node concept="3cqZAl" id="7jRNnvC9jCY" role="3clF45" />
      <node concept="37vLTG" id="7jRNnvC9zX9" role="3clF46">
        <property role="TrG5h" value="treeId" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7jRNnvC9zXa" role="1tU5fm">
          <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
        </node>
      </node>
      <node concept="37vLTG" id="7jRNnvC9zXb" role="3clF46">
        <property role="TrG5h" value="branchName" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="7jRNnvC9zXc" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7jRNnvC9psP" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7jRNnvC9psO" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7jRNnvCaHO6" role="3clF46">
        <property role="TrG5h" value="repo" />
        <node concept="3uibUv" id="7jRNnvCaHO7" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7AjmLChXb7x" role="jymVt" />
    <node concept="Wx3nA" id="7AjmLChXhvq" role="jymVt">
      <property role="TrG5h" value="registeredSerializer" />
      <node concept="3Tm6S6" id="7AjmLChXeyh" role="1B3o_S" />
      <node concept="10P_77" id="7AjmLChXgmx" role="1tU5fm" />
      <node concept="3clFbT" id="7AjmLChXjwV" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="7AjmLCi9cMi" role="jymVt" />
    <node concept="2tJIrI" id="7AjmLChXv1J" role="jymVt" />
    <node concept="3clFb_" id="7AjmLChXrkk" role="jymVt">
      <property role="TrG5h" value="ensureSerializerIsRegistered" />
      <node concept="3clFbS" id="7AjmLChXrkn" role="3clF47">
        <node concept="3clFbJ" id="7AjmLChXy7$" role="3cqZAp">
          <node concept="3fqX7Q" id="7AjmLChXyxK" role="3clFbw">
            <node concept="37vLTw" id="7AjmLChXyxM" role="3fr31v">
              <ref role="3cqZAo" node="7AjmLChXhvq" resolve="registeredSerializer" />
            </node>
          </node>
          <node concept="3clFbS" id="7AjmLChXy7A" role="3clFbx">
            <node concept="3clFbF" id="7AjmLChXzOv" role="3cqZAp">
              <node concept="2OqwBi" id="7AjmLChXzVj" role="3clFbG">
                <node concept="10M0yZ" id="7AjmLChXzPC" role="2Oq$k0">
                  <ref role="3cqZAo" to="xkhl:~INodeReferenceSerializer.Companion" resolve="Companion" />
                  <ref role="1PxDUh" to="xkhl:~INodeReferenceSerializer" resolve="INodeReferenceSerializer" />
                </node>
                <node concept="liA8E" id="7AjmLChX$2G" role="2OqNvi">
                  <ref role="37wK5l" to="xkhl:~INodeReferenceSerializer$Companion.register(org.modelix.model.lazy.INodeReferenceSerializer)" resolve="register" />
                  <node concept="2ShNRf" id="7AjmLCi9wk5" role="37wK5m">
                    <node concept="HV5vD" id="7AjmLCi9xab" role="2ShVmc">
                      <ref role="HV5vE" to="xxte:7AjmLCi9qca" resolve="ForeignNodeReference.ForeignNodeReferenceSerializer" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7AjmLChXyRC" role="3cqZAp">
              <node concept="37vLTI" id="7AjmLChXzpc" role="3clFbG">
                <node concept="3clFbT" id="7AjmLChXztz" role="37vLTx">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="37vLTw" id="7AjmLChXyRB" role="37vLTJ">
                  <ref role="3cqZAo" node="7AjmLChXhvq" resolve="registeredSerializer" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7AjmLChXqTd" role="1B3o_S" />
      <node concept="3cqZAl" id="7AjmLChXr7n" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7jRNnvC9EwS" role="jymVt" />
    <node concept="3clFb_" id="7jRNnvC9IYV" role="jymVt">
      <property role="TrG5h" value="loadJsonDump" />
      <node concept="3clFbS" id="7jRNnvC9IYY" role="3clF47">
        <node concept="2Gpval" id="7jRNnvCa0ez" role="3cqZAp">
          <node concept="2GrKxI" id="7jRNnvCa0e$" role="2Gsz3X">
            <property role="TrG5h" value="key" />
          </node>
          <node concept="2OqwBi" id="7jRNnvCa0Eb" role="2GsD0m">
            <node concept="37vLTw" id="7jRNnvCa0iX" role="2Oq$k0">
              <ref role="3cqZAo" node="7jRNnvC9Rf1" resolve="dump" />
            </node>
            <node concept="liA8E" id="7jRNnvCa0WX" role="2OqNvi">
              <ref role="37wK5l" to="wy2b:~JsonObject.keySet()" resolve="keySet" />
            </node>
          </node>
          <node concept="3clFbS" id="7jRNnvCa0eA" role="2LFqv$">
            <node concept="3clFbJ" id="7jRNnvCa1e$" role="3cqZAp">
              <node concept="17R0WA" id="7jRNnvCa1EJ" role="3clFbw">
                <node concept="Xl_RD" id="7jRNnvCa1NQ" role="3uHU7w">
                  <property role="Xl_RC" value="$children" />
                </node>
                <node concept="2GrUjf" id="7jRNnvCa1jv" role="3uHU7B">
                  <ref role="2Gs0qQ" node="7jRNnvCa0e$" resolve="key" />
                </node>
              </node>
              <node concept="3clFbS" id="7jRNnvCa1eA" role="3clFbx">
                <node concept="3cpWs8" id="7jRNnvCa2y8" role="3cqZAp">
                  <node concept="3cpWsn" id="7jRNnvCa2y9" role="3cpWs9">
                    <property role="TrG5h" value="jsonChildren" />
                    <node concept="3uibUv" id="7jRNnvCa2ya" role="1tU5fm">
                      <ref role="3uigEE" to="wy2b:~JsonArray" resolve="JsonArray" />
                    </node>
                    <node concept="2OqwBi" id="7jRNnvCa3tl" role="33vP2m">
                      <node concept="2OqwBi" id="7jRNnvCa2XI" role="2Oq$k0">
                        <node concept="37vLTw" id="7jRNnvCa2Cv" role="2Oq$k0">
                          <ref role="3cqZAo" node="7jRNnvC9Rf1" resolve="dump" />
                        </node>
                        <node concept="liA8E" id="7jRNnvCa3gC" role="2OqNvi">
                          <ref role="37wK5l" to="wy2b:~JsonObject.get(java.lang.String)" resolve="get" />
                          <node concept="2GrUjf" id="7jRNnvCa3mj" role="37wK5m">
                            <ref role="2Gs0qQ" node="7jRNnvCa0e$" resolve="key" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7jRNnvCa3Vg" role="2OqNvi">
                        <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonArray()" resolve="getAsJsonArray" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Gpval" id="7jRNnvCa4s4" role="3cqZAp">
                  <node concept="2GrKxI" id="7jRNnvCa4s6" role="2Gsz3X">
                    <property role="TrG5h" value="jsonChild" />
                  </node>
                  <node concept="37vLTw" id="7jRNnvCa4Aj" role="2GsD0m">
                    <ref role="3cqZAo" node="7jRNnvCa2y9" resolve="jsonChildren" />
                  </node>
                  <node concept="3clFbS" id="7jRNnvCa4sa" role="2LFqv$">
                    <node concept="3SKdUt" id="7jRNnvCa5uw" role="3cqZAp">
                      <node concept="1PaTwC" id="7jRNnvCa5ux" role="1aUNEU">
                        <node concept="3oM_SD" id="7jRNnvCa5uy" role="1PaTwD">
                          <property role="3oM_SC" value="We" />
                        </node>
                        <node concept="3oM_SD" id="7jRNnvCa5vi" role="1PaTwD">
                          <property role="3oM_SC" value="cannot" />
                        </node>
                        <node concept="3oM_SD" id="7jRNnvCa5vl" role="1PaTwD">
                          <property role="3oM_SC" value="replicate" />
                        </node>
                        <node concept="3oM_SD" id="7jRNnvCa5vp" role="1PaTwD">
                          <property role="3oM_SC" value="the" />
                        </node>
                        <node concept="3oM_SD" id="7jRNnvCa5vu" role="1PaTwD">
                          <property role="3oM_SC" value="ID," />
                        </node>
                        <node concept="3oM_SD" id="7jRNnvCa5wU" role="1PaTwD">
                          <property role="3oM_SC" value="so" />
                        </node>
                        <node concept="3oM_SD" id="7jRNnvCa5xG" role="1PaTwD">
                          <property role="3oM_SC" value="we" />
                        </node>
                        <node concept="3oM_SD" id="7jRNnvCa5xO" role="1PaTwD">
                          <property role="3oM_SC" value="will" />
                        </node>
                        <node concept="3oM_SD" id="7jRNnvCa5xX" role="1PaTwD">
                          <property role="3oM_SC" value="ignore" />
                        </node>
                        <node concept="3oM_SD" id="7jRNnvCa5y7" role="1PaTwD">
                          <property role="3oM_SC" value="it" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="7jRNnvCabcD" role="3cqZAp">
                      <node concept="3cpWsn" id="7jRNnvCabcG" role="3cpWs9">
                        <property role="TrG5h" value="role" />
                        <node concept="17QB3L" id="7jRNnvCabcB" role="1tU5fm" />
                        <node concept="2OqwBi" id="7jRNnvCaaij" role="33vP2m">
                          <node concept="2OqwBi" id="7jRNnvCa9c4" role="2Oq$k0">
                            <node concept="2OqwBi" id="7jRNnvCa8tC" role="2Oq$k0">
                              <node concept="2GrUjf" id="7jRNnvCa8hf" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="7jRNnvCa4s6" resolve="jsonChild" />
                              </node>
                              <node concept="liA8E" id="7jRNnvCa8SC" role="2OqNvi">
                                <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonObject()" resolve="getAsJsonObject" />
                              </node>
                            </node>
                            <node concept="liA8E" id="7jRNnvCa9Jl" role="2OqNvi">
                              <ref role="37wK5l" to="wy2b:~JsonObject.get(java.lang.String)" resolve="get" />
                              <node concept="Xl_RD" id="7jRNnvCa9Xd" role="37wK5m">
                                <property role="Xl_RC" value="$role" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="7jRNnvCaaSQ" role="2OqNvi">
                            <ref role="37wK5l" to="wy2b:~JsonElement.getAsString()" resolve="getAsString" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="7jRNnvCaSAb" role="3cqZAp">
                      <node concept="3cpWsn" id="7jRNnvCaSAe" role="3cpWs9">
                        <property role="TrG5h" value="conceptName" />
                        <node concept="17QB3L" id="7jRNnvCaSA9" role="1tU5fm" />
                        <node concept="2OqwBi" id="7jRNnvCaSKK" role="33vP2m">
                          <node concept="2OqwBi" id="7jRNnvCaSKL" role="2Oq$k0">
                            <node concept="2OqwBi" id="7jRNnvCaSKM" role="2Oq$k0">
                              <node concept="2GrUjf" id="7jRNnvCaSKN" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="7jRNnvCa4s6" resolve="jsonChild" />
                              </node>
                              <node concept="liA8E" id="7jRNnvCaSKO" role="2OqNvi">
                                <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonObject()" resolve="getAsJsonObject" />
                              </node>
                            </node>
                            <node concept="liA8E" id="7jRNnvCaSKP" role="2OqNvi">
                              <ref role="37wK5l" to="wy2b:~JsonObject.get(java.lang.String)" resolve="get" />
                              <node concept="Xl_RD" id="7jRNnvCaSKQ" role="37wK5m">
                                <property role="Xl_RC" value="$concept" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="7jRNnvCaSKR" role="2OqNvi">
                            <ref role="37wK5l" to="wy2b:~JsonElement.getAsString()" resolve="getAsString" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="7jRNnvClgRK" role="3cqZAp">
                      <node concept="3clFbS" id="7jRNnvClgRM" role="3clFbx">
                        <node concept="YS8fn" id="7jRNnvClhHp" role="3cqZAp">
                          <node concept="2ShNRf" id="7jRNnvClhLA" role="YScLw">
                            <node concept="1pGfFk" id="7jRNnvCliGW" role="2ShVmc">
                              <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                              <node concept="Xl_RD" id="7jRNnvClBDN" role="37wK5m">
                                <property role="Xl_RC" value="the JSON dump has no concept name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="7jRNnvClhi2" role="3clFbw">
                        <node concept="10Nm6u" id="7jRNnvClh$J" role="3uHU7w" />
                        <node concept="37vLTw" id="7jRNnvClh7a" role="3uHU7B">
                          <ref role="3cqZAo" node="7jRNnvCaSAe" resolve="conceptName" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="7jRNnvCaceg" role="3cqZAp">
                      <node concept="3cpWsn" id="7jRNnvCacej" role="3cpWs9">
                        <property role="TrG5h" value="index" />
                        <node concept="10Oyi0" id="7jRNnvCacee" role="1tU5fm" />
                        <node concept="3cmrfG" id="7jRNnvCacp5" role="33vP2m">
                          <property role="3cmrfH" value="-1" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="7jRNnvCa_6B" role="3cqZAp">
                      <node concept="3cpWsn" id="7jRNnvCa_6E" role="3cpWs9">
                        <property role="TrG5h" value="physicalConcept" />
                        <node concept="3bZ5Sz" id="7jRNnvCa_6_" role="1tU5fm" />
                        <node concept="2OqwBi" id="7jRNnvCaRRB" role="33vP2m">
                          <node concept="37vLTw" id="7jRNnvCaR_b" role="2Oq$k0">
                            <ref role="3cqZAo" node="7jRNnvCaEJP" resolve="repo" />
                          </node>
                          <node concept="AQDAd" id="7jRNnvCaSel" role="2OqNvi">
                            <ref role="37wK5l" node="7jRNnvCaLJB" resolve="findConceptByName" />
                            <node concept="37vLTw" id="7jRNnvCaTa7" role="37wK5m">
                              <ref role="3cqZAo" node="7jRNnvCaSAe" resolve="conceptName" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="7jRNnvClCJV" role="3cqZAp">
                      <node concept="3clFbS" id="7jRNnvClCJW" role="3clFbx">
                        <node concept="YS8fn" id="7jRNnvClCJX" role="3cqZAp">
                          <node concept="2ShNRf" id="7jRNnvClCJY" role="YScLw">
                            <node concept="1pGfFk" id="7jRNnvClCJZ" role="2ShVmc">
                              <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                              <node concept="3cpWs3" id="7jRNnvClCK0" role="37wK5m">
                                <node concept="37vLTw" id="7jRNnvClCK1" role="3uHU7w">
                                  <ref role="3cqZAo" node="7jRNnvCaSAe" resolve="conceptName" />
                                </node>
                                <node concept="Xl_RD" id="7jRNnvClCK2" role="3uHU7B">
                                  <property role="Xl_RC" value="we could not find the physical concept: " />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="7jRNnvClCK3" role="3clFbw">
                        <node concept="10Nm6u" id="7jRNnvClCK4" role="3uHU7w" />
                        <node concept="37vLTw" id="7jRNnvClD7X" role="3uHU7B">
                          <ref role="3cqZAo" node="7jRNnvCa_6E" resolve="physicalConcept" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="7jRNnvCaqHt" role="3cqZAp">
                      <node concept="3cpWsn" id="7jRNnvCaqHu" role="3cpWs9">
                        <property role="TrG5h" value="cloudConcept" />
                        <node concept="3uibUv" id="7jRNnvCaqHv" role="1tU5fm">
                          <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
                        </node>
                        <node concept="2YIFZM" id="7jRNnvCa$Dj" role="33vP2m">
                          <ref role="37wK5l" to="xxte:3ECE8iPOmg5" resolve="wrap" />
                          <ref role="1Pybhc" to="xxte:5gTrVpGjuL2" resolve="SConceptAdapter" />
                          <node concept="37vLTw" id="7jRNnvCa_ng" role="37wK5m">
                            <ref role="3cqZAo" node="7jRNnvCa_6E" resolve="physicalConcept" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="7jRNnvCliZb" role="3cqZAp">
                      <node concept="3clFbS" id="7jRNnvCliZd" role="3clFbx">
                        <node concept="YS8fn" id="7jRNnvCljyn" role="3cqZAp">
                          <node concept="2ShNRf" id="7jRNnvCljyo" role="YScLw">
                            <node concept="1pGfFk" id="7jRNnvCljyp" role="2ShVmc">
                              <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                              <node concept="3cpWs3" id="7jRNnvClCuw" role="37wK5m">
                                <node concept="37vLTw" id="7jRNnvClCDn" role="3uHU7w">
                                  <ref role="3cqZAo" node="7jRNnvCaSAe" resolve="conceptName" />
                                </node>
                                <node concept="Xl_RD" id="7jRNnvClC8n" role="3uHU7B">
                                  <property role="Xl_RC" value="we could not find the cloud concept: " />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="7jRNnvCljpj" role="3clFbw">
                        <node concept="10Nm6u" id="7jRNnvCljxq" role="3uHU7w" />
                        <node concept="37vLTw" id="7jRNnvCljeg" role="3uHU7B">
                          <ref role="3cqZAo" node="7jRNnvCaqHu" resolve="cloudConcept" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="7jRNnvCaUXB" role="3cqZAp">
                      <node concept="3cpWsn" id="7jRNnvCaUXE" role="3cpWs9">
                        <property role="TrG5h" value="cloudChild" />
                        <node concept="3cpWsb" id="7jRNnvCaUX_" role="1tU5fm" />
                        <node concept="2OqwBi" id="7jRNnvCa6BZ" role="33vP2m">
                          <node concept="37vLTw" id="7jRNnvCa6rs" role="2Oq$k0">
                            <ref role="3cqZAo" node="7jRNnvC9M6d" resolve="wt" />
                          </node>
                          <node concept="liA8E" id="7jRNnvCa6UU" role="2OqNvi">
                            <ref role="37wK5l" to="jks5:~IWriteTransaction.addNewChild(long,java.lang.String,int,org.modelix.model.api.IConcept)" resolve="addNewChild" />
                            <node concept="37vLTw" id="7jRNnvCa7Rm" role="37wK5m">
                              <ref role="3cqZAo" node="7jRNnvC9OOM" resolve="cloudNode" />
                            </node>
                            <node concept="37vLTw" id="7jRNnvCabAq" role="37wK5m">
                              <ref role="3cqZAo" node="7jRNnvCabcG" resolve="role" />
                            </node>
                            <node concept="37vLTw" id="7jRNnvCac_l" role="37wK5m">
                              <ref role="3cqZAo" node="7jRNnvCacej" resolve="index" />
                            </node>
                            <node concept="37vLTw" id="7jRNnvCar9U" role="37wK5m">
                              <ref role="3cqZAo" node="7jRNnvCaqHu" resolve="cloudConcept" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7jRNnvCaW9W" role="3cqZAp">
                      <node concept="1rXfSq" id="7jRNnvCaW9U" role="3clFbG">
                        <ref role="37wK5l" node="7jRNnvC9IYV" resolve="loadJsonDump" />
                        <node concept="37vLTw" id="7jRNnvCaWA1" role="37wK5m">
                          <ref role="3cqZAo" node="7jRNnvC9M6d" resolve="wt" />
                        </node>
                        <node concept="37vLTw" id="7jRNnvCaWUN" role="37wK5m">
                          <ref role="3cqZAo" node="7jRNnvCaUXE" resolve="cloudChild" />
                        </node>
                        <node concept="2OqwBi" id="7jRNnvCaX6r" role="37wK5m">
                          <node concept="2GrUjf" id="7jRNnvCaX6s" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="7jRNnvCa4s6" resolve="jsonChild" />
                          </node>
                          <node concept="liA8E" id="7jRNnvCaX6t" role="2OqNvi">
                            <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonObject()" resolve="getAsJsonObject" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="7jRNnvCaXiB" role="37wK5m">
                          <ref role="3cqZAo" node="7jRNnvCaEJP" resolve="repo" />
                        </node>
                        <node concept="37vLTw" id="Aop38I00xA" role="37wK5m">
                          <ref role="3cqZAo" node="Aop38HZGw6" resolve="referencesProcessor" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="7jRNnvCaZq2" role="3eNLev">
                <node concept="17R0WA" id="7jRNnvCb053" role="3eO9$A">
                  <node concept="Xl_RD" id="7jRNnvCb0oT" role="3uHU7w">
                    <property role="Xl_RC" value="$role" />
                  </node>
                  <node concept="2GrUjf" id="7jRNnvCaZHN" role="3uHU7B">
                    <ref role="2Gs0qQ" node="7jRNnvCa0e$" resolve="key" />
                  </node>
                </node>
                <node concept="3clFbS" id="7jRNnvCaZq4" role="3eOfB_">
                  <node concept="3SKdUt" id="7jRNnvCb2qj" role="3cqZAp">
                    <node concept="1PaTwC" id="7jRNnvCb2qk" role="1aUNEU">
                      <node concept="3oM_SD" id="7jRNnvCb2ql" role="1PaTwD">
                        <property role="3oM_SC" value="considered" />
                      </node>
                      <node concept="3oM_SD" id="7jRNnvCb2r5" role="1PaTwD">
                        <property role="3oM_SC" value="during" />
                      </node>
                      <node concept="3oM_SD" id="7jRNnvCb2r8" role="1PaTwD">
                        <property role="3oM_SC" value="creation" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="7jRNnvCb15r" role="3eNLev">
                <node concept="17R0WA" id="7jRNnvCb15s" role="3eO9$A">
                  <node concept="Xl_RD" id="7jRNnvCb15t" role="3uHU7w">
                    <property role="Xl_RC" value="$concept" />
                  </node>
                  <node concept="2GrUjf" id="7jRNnvCb15u" role="3uHU7B">
                    <ref role="2Gs0qQ" node="7jRNnvCa0e$" resolve="key" />
                  </node>
                </node>
                <node concept="3clFbS" id="7jRNnvCb15v" role="3eOfB_">
                  <node concept="3SKdUt" id="7jRNnvCb2rR" role="3cqZAp">
                    <node concept="1PaTwC" id="7jRNnvCb2rS" role="1aUNEU">
                      <node concept="3oM_SD" id="7jRNnvCb2rT" role="1PaTwD">
                        <property role="3oM_SC" value="considered" />
                      </node>
                      <node concept="3oM_SD" id="7jRNnvCb2rU" role="1PaTwD">
                        <property role="3oM_SC" value="during" />
                      </node>
                      <node concept="3oM_SD" id="7jRNnvCb2rV" role="1PaTwD">
                        <property role="3oM_SC" value="creation" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3eNFk2" id="7jRNnvCb9o3" role="3eNLev">
                <node concept="17R0WA" id="7jRNnvCba5$" role="3eO9$A">
                  <node concept="2GrUjf" id="7jRNnvCb9Hz" role="3uHU7B">
                    <ref role="2Gs0qQ" node="7jRNnvCa0e$" resolve="key" />
                  </node>
                  <node concept="Xl_RD" id="7jRNnvCbbek" role="3uHU7w">
                    <property role="Xl_RC" value="$references" />
                  </node>
                </node>
                <node concept="3clFbS" id="7jRNnvCb9o5" role="3eOfB_">
                  <node concept="3cpWs8" id="7jRNnvCqANk" role="3cqZAp">
                    <node concept="3cpWsn" id="7jRNnvCqANl" role="3cpWs9">
                      <property role="TrG5h" value="references" />
                      <node concept="3uibUv" id="7jRNnvCqANm" role="1tU5fm">
                        <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
                      </node>
                      <node concept="2OqwBi" id="7jRNnvCqBYe" role="33vP2m">
                        <node concept="2OqwBi" id="7jRNnvCqBxW" role="2Oq$k0">
                          <node concept="37vLTw" id="7jRNnvCqBgC" role="2Oq$k0">
                            <ref role="3cqZAo" node="7jRNnvC9Rf1" resolve="dump" />
                          </node>
                          <node concept="liA8E" id="7jRNnvCqBPs" role="2OqNvi">
                            <ref role="37wK5l" to="wy2b:~JsonObject.get(java.lang.String)" resolve="get" />
                            <node concept="Xl_RD" id="7jRNnvCqBRc" role="37wK5m">
                              <property role="Xl_RC" value="$references" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7jRNnvCqCgN" role="2OqNvi">
                          <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonObject()" resolve="getAsJsonObject" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Gpval" id="7jRNnvCq_Z0" role="3cqZAp">
                    <node concept="2GrKxI" id="7jRNnvCq_Z2" role="2Gsz3X">
                      <property role="TrG5h" value="refName" />
                    </node>
                    <node concept="2OqwBi" id="7jRNnvCqCS2" role="2GsD0m">
                      <node concept="37vLTw" id="7jRNnvCqCCu" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvCqANl" resolve="references" />
                      </node>
                      <node concept="liA8E" id="7jRNnvCqD15" role="2OqNvi">
                        <ref role="37wK5l" to="wy2b:~JsonObject.keySet()" resolve="keySet" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="7jRNnvCq_Z6" role="2LFqv$">
                      <node concept="3cpWs8" id="7jRNnvCqDoM" role="3cqZAp">
                        <node concept="3cpWsn" id="7jRNnvCqDoP" role="3cpWs9">
                          <property role="TrG5h" value="refValueAsString" />
                          <node concept="17QB3L" id="7jRNnvCqDoL" role="1tU5fm" />
                          <node concept="2OqwBi" id="7jRNnvCqEiR" role="33vP2m">
                            <node concept="2OqwBi" id="7jRNnvCqDRs" role="2Oq$k0">
                              <node concept="37vLTw" id="7jRNnvCqDzF" role="2Oq$k0">
                                <ref role="3cqZAo" node="7jRNnvCqANl" resolve="references" />
                              </node>
                              <node concept="liA8E" id="7jRNnvCqE0C" role="2OqNvi">
                                <ref role="37wK5l" to="wy2b:~JsonObject.get(java.lang.String)" resolve="get" />
                                <node concept="2GrUjf" id="7jRNnvCqEbO" role="37wK5m">
                                  <ref role="2Gs0qQ" node="7jRNnvCq_Z2" resolve="refName" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="7jRNnvCqEB8" role="2OqNvi">
                              <ref role="37wK5l" to="wy2b:~JsonElement.getAsString()" resolve="getAsString" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3J1_TO" id="7AjmLChVuPo" role="3cqZAp">
                        <node concept="3uVAMA" id="7AjmLChVvzL" role="1zxBo5">
                          <node concept="XOnhg" id="7AjmLChVvzM" role="1zc67B">
                            <property role="TrG5h" value="t" />
                            <node concept="nSUau" id="7AjmLChVvzN" role="1tU5fm">
                              <node concept="3uibUv" id="7AjmLChVvMn" role="nSUat">
                                <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="7AjmLChVvzO" role="1zc67A">
                            <node concept="YS8fn" id="7AjmLChVw5J" role="3cqZAp">
                              <node concept="2ShNRf" id="7AjmLChVw9U" role="YScLw">
                                <node concept="1pGfFk" id="7AjmLChV_ID" role="2ShVmc">
                                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="RuntimeException" />
                                  <node concept="3cpWs3" id="7AjmLChVAmK" role="37wK5m">
                                    <node concept="37vLTw" id="7AjmLChVAzr" role="3uHU7w">
                                      <ref role="3cqZAo" node="7jRNnvCqDoP" resolve="refValueAsString" />
                                    </node>
                                    <node concept="Xl_RD" id="7AjmLChV_WQ" role="3uHU7B">
                                      <property role="Xl_RC" value="Issue processing reference " />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="7AjmLChVANf" role="37wK5m">
                                    <ref role="3cqZAo" node="7AjmLChVvzM" resolve="t" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="7AjmLChVuPq" role="1zxBo7">
                          <node concept="3clFbJ" id="7jRNnvCrvBX" role="3cqZAp">
                            <node concept="3clFbS" id="7jRNnvCrvBZ" role="3clFbx">
                              <node concept="3clFbF" id="7AjmLChXAyF" role="3cqZAp">
                                <node concept="1rXfSq" id="7AjmLChXAyA" role="3clFbG">
                                  <ref role="37wK5l" node="7AjmLChXrkk" resolve="ensureSerializerIsRegistered" />
                                </node>
                              </node>
                              <node concept="3cpWs8" id="7AjmLChWZpx" role="3cqZAp">
                                <node concept="3cpWsn" id="7AjmLChWZpy" role="3cpWs9">
                                  <property role="TrG5h" value="refValue" />
                                  <node concept="3uibUv" id="7AjmLChWZpz" role="1tU5fm">
                                    <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
                                  </node>
                                  <node concept="2OqwBi" id="7AjmLCi9Dqk" role="33vP2m">
                                    <node concept="2ShNRf" id="7AjmLCi9BXh" role="2Oq$k0">
                                      <node concept="HV5vD" id="7AjmLCi9D3K" role="2ShVmc">
                                        <ref role="HV5vE" to="xxte:7AjmLCi9qca" resolve="ForeignNodeReference.ForeignNodeReferenceSerializer" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="7AjmLCi9DOi" role="2OqNvi">
                                      <ref role="37wK5l" to="xxte:7AjmLCi9qSS" resolve="deserialize" />
                                      <node concept="37vLTw" id="7AjmLCi9F4N" role="37wK5m">
                                        <ref role="3cqZAo" node="7jRNnvCqDoP" resolve="refValueAsString" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="7AjmLChWPw_" role="3cqZAp">
                                <node concept="2OqwBi" id="7AjmLChWPwA" role="3clFbG">
                                  <node concept="37vLTw" id="7AjmLChWPwB" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7jRNnvC9M6d" resolve="wt" />
                                  </node>
                                  <node concept="liA8E" id="7AjmLChWPwC" role="2OqNvi">
                                    <ref role="37wK5l" to="jks5:~IWriteTransaction.setReferenceTarget(long,java.lang.String,org.modelix.model.api.INodeReference)" resolve="setReferenceTarget" />
                                    <node concept="37vLTw" id="7AjmLChWPwD" role="37wK5m">
                                      <ref role="3cqZAo" node="7jRNnvC9OOM" resolve="cloudNode" />
                                    </node>
                                    <node concept="2GrUjf" id="7AjmLChWPwE" role="37wK5m">
                                      <ref role="2Gs0qQ" node="7jRNnvCq_Z2" resolve="refName" />
                                    </node>
                                    <node concept="37vLTw" id="7AjmLChX7P_" role="37wK5m">
                                      <ref role="3cqZAo" node="7AjmLChWZpy" resolve="refValue" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="7jRNnvCrw42" role="3clFbw">
                              <node concept="37vLTw" id="7jRNnvCrvTO" role="2Oq$k0">
                                <ref role="3cqZAo" node="7jRNnvCqDoP" resolve="refValueAsString" />
                              </node>
                              <node concept="liA8E" id="7jRNnvCrwTj" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                                <node concept="Xl_RD" id="7jRNnvCrwYT" role="37wK5m">
                                  <property role="Xl_RC" value="-&gt;" />
                                </node>
                              </node>
                            </node>
                            <node concept="9aQIb" id="7jRNnvCry0H" role="9aQIa">
                              <node concept="3clFbS" id="7jRNnvCry0I" role="9aQI4">
                                <node concept="3cpWs8" id="7jRNnvCqI5E" role="3cqZAp">
                                  <node concept="3cpWsn" id="7jRNnvCqI5F" role="3cpWs9">
                                    <property role="TrG5h" value="refValue" />
                                    <node concept="3uibUv" id="7jRNnvCqI5G" role="1tU5fm">
                                      <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
                                    </node>
                                    <node concept="2ShNRf" id="7jRNnvCqOR$" role="33vP2m">
                                      <node concept="1pGfFk" id="7jRNnvCqPHi" role="2ShVmc">
                                        <ref role="37wK5l" to="jks5:~PNodeReference.&lt;init&gt;(long)" resolve="PNodeReference" />
                                        <node concept="2YIFZM" id="7jRNnvCqPZx" role="37wK5m">
                                          <ref role="37wK5l" to="wyt6:~Long.parseLong(java.lang.String)" resolve="parseLong" />
                                          <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
                                          <node concept="37vLTw" id="7jRNnvCqQgK" role="37wK5m">
                                            <ref role="3cqZAo" node="7jRNnvCqDoP" resolve="refValueAsString" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="7jRNnvCqEWF" role="3cqZAp">
                                  <node concept="2OqwBi" id="7jRNnvCqFj8" role="3clFbG">
                                    <node concept="37vLTw" id="7jRNnvCqEWD" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7jRNnvC9M6d" resolve="wt" />
                                    </node>
                                    <node concept="liA8E" id="7jRNnvCqFBA" role="2OqNvi">
                                      <ref role="37wK5l" to="jks5:~IWriteTransaction.setReferenceTarget(long,java.lang.String,org.modelix.model.api.INodeReference)" resolve="setReferenceTarget" />
                                      <node concept="37vLTw" id="7jRNnvCqFKS" role="37wK5m">
                                        <ref role="3cqZAo" node="7jRNnvC9OOM" resolve="cloudNode" />
                                      </node>
                                      <node concept="2GrUjf" id="7jRNnvCqG6f" role="37wK5m">
                                        <ref role="2Gs0qQ" node="7jRNnvCq_Z2" resolve="refName" />
                                      </node>
                                      <node concept="37vLTw" id="7jRNnvCqIrR" role="37wK5m">
                                        <ref role="3cqZAo" node="7jRNnvCqI5F" resolve="refValue" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3eNFk2" id="Aop38HZw1m" role="3eNLev">
                              <node concept="3clFbS" id="Aop38HZw1o" role="3eOfB_">
                                <node concept="3clFbF" id="Aop38I0vOI" role="3cqZAp">
                                  <node concept="2OqwBi" id="Aop38I0w8Z" role="3clFbG">
                                    <node concept="37vLTw" id="Aop38I0vOH" role="2Oq$k0">
                                      <ref role="3cqZAo" node="Aop38HZGw6" resolve="referencesProcessor" />
                                    </node>
                                    <node concept="liA8E" id="Aop38I0woF" role="2OqNvi">
                                      <ref role="37wK5l" node="Aop38I05p8" resolve="recordReferencee" />
                                      <node concept="37vLTw" id="Aop38I0w$o" role="37wK5m">
                                        <ref role="3cqZAo" node="7jRNnvC9OOM" resolve="cloudNode" />
                                      </node>
                                      <node concept="2GrUjf" id="Aop38I0wWt" role="37wK5m">
                                        <ref role="2Gs0qQ" node="7jRNnvCq_Z2" resolve="refName" />
                                      </node>
                                      <node concept="2YIFZM" id="Aop38I3sde" role="37wK5m">
                                        <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
                                        <ref role="37wK5l" to="wyt6:~Long.parseLong(java.lang.String)" resolve="parseLong" />
                                        <node concept="2OqwBi" id="Aop38I0yAL" role="37wK5m">
                                          <node concept="37vLTw" id="Aop38I0y3t" role="2Oq$k0">
                                            <ref role="3cqZAo" node="7jRNnvCqDoP" resolve="refValueAsString" />
                                          </node>
                                          <node concept="liA8E" id="Aop38I0zMM" role="2OqNvi">
                                            <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                                            <node concept="2OqwBi" id="Aop38I0_I8" role="37wK5m">
                                              <node concept="Xl_RD" id="Aop38I0$6_" role="2Oq$k0">
                                                <property role="Xl_RC" value="MPS-&gt;" />
                                              </node>
                                              <node concept="liA8E" id="Aop38I0ALN" role="2OqNvi">
                                                <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="Aop38HZwgg" role="3eO9$A">
                                <node concept="37vLTw" id="Aop38HZwgh" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7jRNnvCqDoP" resolve="refValueAsString" />
                                </node>
                                <node concept="liA8E" id="Aop38HZwgi" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                                  <node concept="Xl_RD" id="Aop38HZwgj" role="37wK5m">
                                    <property role="Xl_RC" value="MPS-&gt;" />
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
              <node concept="9aQIb" id="7jRNnvCb2sI" role="9aQIa">
                <node concept="3clFbS" id="7jRNnvCb2sJ" role="9aQI4">
                  <node concept="3cpWs8" id="Aop38I1wF0" role="3cqZAp">
                    <node concept="3cpWsn" id="Aop38I1wF3" role="3cpWs9">
                      <property role="TrG5h" value="propValue" />
                      <node concept="17QB3L" id="Aop38I1wEY" role="1tU5fm" />
                      <node concept="2OqwBi" id="Aop38I2NdB" role="33vP2m">
                        <node concept="2OqwBi" id="Aop38I0tRA" role="2Oq$k0">
                          <node concept="37vLTw" id="Aop38I2Kk7" role="2Oq$k0">
                            <ref role="3cqZAo" node="7jRNnvC9Rf1" resolve="dump" />
                          </node>
                          <node concept="liA8E" id="Aop38I0ueO" role="2OqNvi">
                            <ref role="37wK5l" to="wy2b:~JsonObject.get(java.lang.String)" resolve="get" />
                            <node concept="2GrUjf" id="Aop38I0uME" role="37wK5m">
                              <ref role="2Gs0qQ" node="7jRNnvCa0e$" resolve="key" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="Aop38I2O_T" role="2OqNvi">
                          <ref role="37wK5l" to="wy2b:~JsonElement.getAsString()" resolve="getAsString" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="Aop38HZ$Pi" role="3cqZAp">
                    <node concept="3clFbS" id="Aop38HZ$Pk" role="3clFbx">
                      <node concept="3clFbJ" id="Aop38I21_k" role="3cqZAp">
                        <node concept="3clFbS" id="Aop38I21_m" role="3clFbx">
                          <node concept="3J1_TO" id="Aop38I1seY" role="3cqZAp">
                            <node concept="3uVAMA" id="Aop38I1uh8" role="1zxBo5">
                              <node concept="XOnhg" id="Aop38I1uh9" role="1zc67B">
                                <property role="TrG5h" value="e" />
                                <node concept="nSUau" id="Aop38I1uha" role="1tU5fm">
                                  <node concept="3uibUv" id="Aop38I1uQT" role="nSUat">
                                    <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="Aop38I1uhb" role="1zc67A">
                                <node concept="YS8fn" id="Aop38I1v9b" role="3cqZAp">
                                  <node concept="2ShNRf" id="Aop38I1vdm" role="YScLw">
                                    <node concept="1pGfFk" id="Aop38I1w5w" role="2ShVmc">
                                      <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                                      <node concept="3cpWs3" id="Aop38I1Z29" role="37wK5m">
                                        <node concept="37vLTw" id="Aop38I1ZCE" role="3uHU7w">
                                          <ref role="3cqZAo" node="7jRNnvC9OOM" resolve="cloudNode" />
                                        </node>
                                        <node concept="3cpWs3" id="Aop38I1Tyg" role="3uHU7B">
                                          <node concept="3cpWs3" id="Aop38I1Bc7" role="3uHU7B">
                                            <node concept="3cpWs3" id="Aop38I1$MX" role="3uHU7B">
                                              <node concept="3cpWs3" id="Aop38I1$bw" role="3uHU7B">
                                                <node concept="Xl_RD" id="Aop38I1wmj" role="3uHU7B">
                                                  <property role="Xl_RC" value="Issue loading key " />
                                                </node>
                                                <node concept="2GrUjf" id="Aop38I1$ji" role="3uHU7w">
                                                  <ref role="2Gs0qQ" node="7jRNnvCa0e$" resolve="key" />
                                                </node>
                                              </node>
                                              <node concept="Xl_RD" id="Aop38I1$R7" role="3uHU7w">
                                                <property role="Xl_RC" value=", value is " />
                                              </node>
                                            </node>
                                            <node concept="37vLTw" id="Aop38I1XW5" role="3uHU7w">
                                              <ref role="3cqZAo" node="Aop38I1wF3" resolve="propValue" />
                                            </node>
                                          </node>
                                          <node concept="Xl_RD" id="Aop38I1TAq" role="3uHU7w">
                                            <property role="Xl_RC" value=" node is " />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="Aop38I1sf0" role="1zxBo7">
                              <node concept="3cpWs8" id="Aop38I321x" role="3cqZAp">
                                <node concept="3cpWsn" id="Aop38I321$" role="3cpWs9">
                                  <property role="TrG5h" value="propValueAsLong" />
                                  <node concept="3cpWsb" id="Aop38I3iV0" role="1tU5fm" />
                                  <node concept="2YIFZM" id="Aop38I3m8j" role="33vP2m">
                                    <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
                                    <ref role="37wK5l" to="wyt6:~Long.parseLong(java.lang.String)" resolve="parseLong" />
                                    <node concept="37vLTw" id="Aop38I3mVi" role="37wK5m">
                                      <ref role="3cqZAo" node="Aop38I1wF3" resolve="propValue" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="Aop38I00ZA" role="3cqZAp">
                                <node concept="2OqwBi" id="Aop38I0sjP" role="3clFbG">
                                  <node concept="37vLTw" id="Aop38I00Z$" role="2Oq$k0">
                                    <ref role="3cqZAo" node="Aop38HZGw6" resolve="referencesProcessor" />
                                  </node>
                                  <node concept="liA8E" id="Aop38I0sCb" role="2OqNvi">
                                    <ref role="37wK5l" node="Aop38I01Gs" resolve="recordMapping" />
                                    <node concept="37vLTw" id="Aop38I34Ie" role="37wK5m">
                                      <ref role="3cqZAo" node="Aop38I321$" resolve="propValueAsLong" />
                                    </node>
                                    <node concept="37vLTw" id="Aop38I0sTt" role="37wK5m">
                                      <ref role="3cqZAo" node="7jRNnvC9OOM" resolve="cloudNode" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="Aop38I234f" role="3clFbw">
                          <node concept="10Nm6u" id="Aop38I23uG" role="3uHU7w" />
                          <node concept="37vLTw" id="Aop38I22sA" role="3uHU7B">
                            <ref role="3cqZAo" node="Aop38I1wF3" resolve="propValue" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="17R0WA" id="Aop38HZ_Wo" role="3clFbw">
                      <node concept="2GrUjf" id="Aop38HZ_zz" role="3uHU7B">
                        <ref role="2Gs0qQ" node="7jRNnvCa0e$" resolve="key" />
                      </node>
                      <node concept="10M0yZ" id="1tdVq1GKwTx" role="3uHU7w">
                        <ref role="1PxDUh" to="xxte:29etMtb9$UP" resolve="ModelSynchronizerBase" />
                        <ref role="3cqZAo" to="xxte:1tdVq1GKnrI" resolve="MPS_NODE_ID_PROPERTY_NAME" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7jRNnvCb5vD" role="3cqZAp">
                    <node concept="2OqwBi" id="7jRNnvCb5HQ" role="3clFbG">
                      <node concept="37vLTw" id="7jRNnvCb5v$" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvC9M6d" resolve="wt" />
                      </node>
                      <node concept="liA8E" id="7jRNnvCb5SH" role="2OqNvi">
                        <ref role="37wK5l" to="jks5:~IWriteTransaction.setProperty(long,java.lang.String,java.lang.String)" resolve="setProperty" />
                        <node concept="37vLTw" id="7jRNnvCb62i" role="37wK5m">
                          <ref role="3cqZAo" node="7jRNnvC9OOM" resolve="cloudNode" />
                        </node>
                        <node concept="2GrUjf" id="7jRNnvCb6hS" role="37wK5m">
                          <ref role="2Gs0qQ" node="7jRNnvCa0e$" resolve="key" />
                        </node>
                        <node concept="37vLTw" id="Aop38I2SwA" role="37wK5m">
                          <ref role="3cqZAo" node="Aop38I1wF3" resolve="propValue" />
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
      <node concept="3Tm6S6" id="7jRNnvC9GU9" role="1B3o_S" />
      <node concept="3cqZAl" id="7jRNnvC9Hi9" role="3clF45" />
      <node concept="37vLTG" id="7jRNnvC9M6d" role="3clF46">
        <property role="TrG5h" value="wt" />
        <node concept="3uibUv" id="7jRNnvC9M6c" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~IWriteTransaction" resolve="IWriteTransaction" />
        </node>
      </node>
      <node concept="37vLTG" id="7jRNnvC9OOM" role="3clF46">
        <property role="TrG5h" value="cloudNode" />
        <node concept="3cpWsb" id="7jRNnvC9R5B" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7jRNnvC9Rf1" role="3clF46">
        <property role="TrG5h" value="dump" />
        <node concept="3uibUv" id="7jRNnvC9TOd" role="1tU5fm">
          <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
        </node>
      </node>
      <node concept="37vLTG" id="7jRNnvCaEJP" role="3clF46">
        <property role="TrG5h" value="repo" />
        <node concept="3uibUv" id="7jRNnvCaGk9" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="Aop38HZGw6" role="3clF46">
        <property role="TrG5h" value="referencesProcessor" />
        <node concept="3uibUv" id="Aop38HZU79" role="1tU5fm">
          <ref role="3uigEE" node="Aop38HZObG" resolve="IntegrationTest.ReferencesProcessor" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1QKKVBBAUnc" role="jymVt" />
    <node concept="3clFb_" id="1QKKVBBB3gt" role="jymVt">
      <property role="TrG5h" value="cleaning" />
      <node concept="3clFbS" id="1QKKVBBB3gw" role="3clF47">
        <node concept="3SKdUt" id="1QKKVBBCLPl" role="3cqZAp">
          <node concept="1PaTwC" id="1QKKVBBCLPm" role="1aUNEU">
            <node concept="3oM_SD" id="1QKKVBBCLPn" role="1PaTwD">
              <property role="3oM_SC" value="Clean" />
            </node>
            <node concept="3oM_SD" id="1QKKVBBCLPo" role="1PaTwD">
              <property role="3oM_SC" value="up" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1QKKVBBCLPp" role="3cqZAp">
          <node concept="3clFbS" id="1QKKVBBCLPq" role="3clFbx">
            <node concept="3clFbF" id="1QKKVBBCLPr" role="3cqZAp">
              <node concept="2OqwBi" id="1QKKVBBCLPs" role="3clFbG">
                <node concept="37vLTw" id="1QKKVBBCLPt" role="2Oq$k0">
                  <ref role="3cqZAo" node="1QKKVBBC5ZF" resolve="ms" />
                </node>
                <node concept="liA8E" id="1QKKVBBCLPu" role="2OqNvi">
                  <ref role="37wK5l" node="5yNJPA6tDQo" resolve="kill" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1QKKVBBCLPv" role="3clFbw">
            <node concept="10Nm6u" id="1QKKVBBCLPw" role="3uHU7w" />
            <node concept="37vLTw" id="1QKKVBBCLPx" role="3uHU7B">
              <ref role="3cqZAo" node="1QKKVBBC5ZF" resolve="ms" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1QKKVBBCLPy" role="3cqZAp">
          <node concept="3clFbS" id="1QKKVBBCLPz" role="3clFbx">
            <node concept="3clFbF" id="1QKKVBBCLP$" role="3cqZAp">
              <node concept="2OqwBi" id="1QKKVBBCLP_" role="3clFbG">
                <node concept="2YIFZM" id="1QKKVBBCLPA" role="2Oq$k0">
                  <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                  <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                </node>
                <node concept="liA8E" id="1QKKVBBCLPB" role="2OqNvi">
                  <ref role="37wK5l" to="csg2:4yJY4bssA5" resolve="removeRepository" />
                  <node concept="37vLTw" id="1QKKVBBCLPC" role="37wK5m">
                    <ref role="3cqZAo" node="1QKKVBBCvUT" resolve="cr" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1QKKVBBCLPD" role="3cqZAp">
              <node concept="2OqwBi" id="1QKKVBBCLPE" role="3clFbG">
                <node concept="37vLTw" id="1QKKVBBCLPF" role="2Oq$k0">
                  <ref role="3cqZAo" node="1QKKVBBCvUT" resolve="cr" />
                </node>
                <node concept="liA8E" id="1QKKVBBCLPG" role="2OqNvi">
                  <ref role="37wK5l" to="csg2:6aRQr1WPeeC" resolve="dispose" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1QKKVBBCLPH" role="3clFbw">
            <node concept="10Nm6u" id="1QKKVBBCLPI" role="3uHU7w" />
            <node concept="37vLTw" id="1QKKVBBCLPJ" role="3uHU7B">
              <ref role="3cqZAo" node="1QKKVBBCvUT" resolve="cr" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="1QKKVBBCLPT" role="3cqZAp">
          <node concept="1PaTwC" id="1QKKVBBCLPU" role="1aUNEU">
            <node concept="3oM_SD" id="1QKKVBBCLPV" role="1PaTwD">
              <property role="3oM_SC" value="FIXME" />
            </node>
            <node concept="3oM_SD" id="1QKKVBBCLPW" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="1QKKVBBCLPX" role="1PaTwD">
              <property role="3oM_SC" value="cannot" />
            </node>
            <node concept="3oM_SD" id="1QKKVBBCLPY" role="1PaTwD">
              <property role="3oM_SC" value="close" />
            </node>
            <node concept="3oM_SD" id="1QKKVBBCLPZ" role="1PaTwD">
              <property role="3oM_SC" value="it," />
            </node>
            <node concept="3oM_SD" id="1QKKVBBCLQ0" role="1PaTwD">
              <property role="3oM_SC" value="because" />
            </node>
            <node concept="3oM_SD" id="1QKKVBBCLQ1" role="1PaTwD">
              <property role="3oM_SC" value="other" />
            </node>
            <node concept="3oM_SD" id="1QKKVBBCLQ2" role="1PaTwD">
              <property role="3oM_SC" value="tests" />
            </node>
            <node concept="3oM_SD" id="1QKKVBBCLQ3" role="1PaTwD">
              <property role="3oM_SC" value="want" />
            </node>
            <node concept="3oM_SD" id="1QKKVBBCLQ4" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="1QKKVBBCLQ5" role="1PaTwD">
              <property role="3oM_SC" value="use" />
            </node>
            <node concept="3oM_SD" id="1QKKVBBCLQ6" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="1QKKVBBCLQ7" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="1QKKVBBCLQ8" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="1QKKVBBCLQ9" role="1PaTwD">
              <property role="3oM_SC" value="cannot" />
            </node>
            <node concept="3oM_SD" id="1QKKVBBCLQa" role="1PaTwD">
              <property role="3oM_SC" value="be" />
            </node>
            <node concept="3oM_SD" id="1QKKVBBCLQb" role="1PaTwD">
              <property role="3oM_SC" value="reopened" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1QKKVBBCLQc" role="3cqZAp">
          <node concept="3clFbS" id="1QKKVBBCLQd" role="3clFbx">
            <node concept="3clFbF" id="1QKKVBBCLQe" role="3cqZAp">
              <node concept="1rXfSq" id="1QKKVBBCLQf" role="3clFbG">
                <ref role="37wK5l" node="6V2G5GpTIBg" resolve="closeProject" />
                <node concept="37vLTw" id="1QKKVBBDdSu" role="37wK5m">
                  <ref role="3cqZAo" node="1QKKVBBCQX7" resolve="project" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1QKKVBBCLQh" role="3clFbw">
            <node concept="10Nm6u" id="1QKKVBBCLQi" role="3uHU7w" />
            <node concept="37vLTw" id="1QKKVBBDdGI" role="3uHU7B">
              <ref role="3cqZAo" node="1QKKVBBCQX7" resolve="project" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="1QKKVBBAYlb" role="1B3o_S" />
      <node concept="3cqZAl" id="1QKKVBBB2nO" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="nkanBupdzh" role="jymVt" />
    <node concept="3clFb_" id="53_gmpoTqNb" role="jymVt">
      <property role="TrG5h" value="computeOnReplicatedTree" />
      <node concept="3clFbS" id="53_gmpoTqNc" role="3clF47">
        <node concept="3cpWs6" id="53_gmpoTqNd" role="3cqZAp">
          <node concept="2OqwBi" id="53_gmpoTz9o" role="3cqZAk">
            <node concept="37vLTw" id="53_gmpoTxqs" role="2Oq$k0">
              <ref role="3cqZAo" node="1QKKVBBC5ZF" resolve="ms" />
            </node>
            <node concept="liA8E" id="53_gmpoT_wF" role="2OqNvi">
              <ref role="37wK5l" node="53_gmpoSW$f" resolve="computeOnReplicatedTree" />
              <node concept="37vLTw" id="53_gmpoTC30" role="37wK5m">
                <ref role="3cqZAo" node="53_gmpoTqNI" resolve="treeId" />
              </node>
              <node concept="37vLTw" id="53_gmpoTI8A" role="37wK5m">
                <ref role="3cqZAo" node="53_gmpoTqNK" resolve="branchName" />
              </node>
              <node concept="37vLTw" id="53_gmpoTJSg" role="37wK5m">
                <ref role="3cqZAo" node="53_gmpoTqNM" resolve="consumer" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="53_gmpoTqNG" role="1B3o_S" />
      <node concept="16syzq" id="53_gmpoTqNH" role="3clF45">
        <ref role="16sUi3" node="53_gmpoTqNQ" resolve="T" />
      </node>
      <node concept="37vLTG" id="53_gmpoTqNI" role="3clF46">
        <property role="TrG5h" value="treeId" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="53_gmpoTqNJ" role="1tU5fm">
          <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
        </node>
      </node>
      <node concept="37vLTG" id="53_gmpoTqNK" role="3clF46">
        <property role="TrG5h" value="branchName" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="53_gmpoTqNL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="53_gmpoTqNM" role="3clF46">
        <property role="TrG5h" value="consumer" />
        <node concept="3uibUv" id="53_gmpoTqNN" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
          <node concept="3uibUv" id="53_gmpoTqNO" role="11_B2D">
            <ref role="3uigEE" to="5440:~ReplicatedTree" resolve="ReplicatedTree" />
          </node>
          <node concept="16syzq" id="53_gmpoTqNP" role="11_B2D">
            <ref role="16sUi3" node="53_gmpoTqNQ" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="53_gmpoTqNQ" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="nkanBupaW2" role="jymVt" />
    <node concept="3clFb_" id="53_gmpoUVTz" role="jymVt">
      <property role="TrG5h" value="runOnReplicatedTree" />
      <node concept="3clFbS" id="53_gmpoUVT$" role="3clF47">
        <node concept="3clFbF" id="53_gmpoWHc_" role="3cqZAp">
          <node concept="2OqwBi" id="53_gmpoUVTA" role="3clFbG">
            <node concept="37vLTw" id="53_gmpoUVTB" role="2Oq$k0">
              <ref role="3cqZAo" node="1QKKVBBC5ZF" resolve="ms" />
            </node>
            <node concept="liA8E" id="53_gmpoUVTC" role="2OqNvi">
              <ref role="37wK5l" node="53_gmpoV3TW" resolve="runOnReplicatedTree" />
              <node concept="37vLTw" id="53_gmpoUVTD" role="37wK5m">
                <ref role="3cqZAo" node="53_gmpoUVTI" resolve="treeId" />
              </node>
              <node concept="37vLTw" id="53_gmpoUVTE" role="37wK5m">
                <ref role="3cqZAo" node="53_gmpoUVTK" resolve="branchName" />
              </node>
              <node concept="37vLTw" id="53_gmpoUVTF" role="37wK5m">
                <ref role="3cqZAo" node="53_gmpoUVTM" resolve="consumer" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="53_gmpoUVTG" role="1B3o_S" />
      <node concept="3cqZAl" id="53_gmpoWBPT" role="3clF45" />
      <node concept="37vLTG" id="53_gmpoUVTI" role="3clF46">
        <property role="TrG5h" value="treeId" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="53_gmpoUVTJ" role="1tU5fm">
          <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
        </node>
      </node>
      <node concept="37vLTG" id="53_gmpoUVTK" role="3clF46">
        <property role="TrG5h" value="branchName" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="53_gmpoUVTL" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="53_gmpoUVTM" role="3clF46">
        <property role="TrG5h" value="consumer" />
        <node concept="3uibUv" id="53_gmpoUVTN" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
          <node concept="3uibUv" id="53_gmpoUVTO" role="11_B2D">
            <ref role="3uigEE" to="5440:~ReplicatedTree" resolve="ReplicatedTree" />
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="7jRNnvC8HCr" role="lGtFl">
        <node concept="TZ5HI" id="7jRNnvC8HCs" role="3nqlJM">
          <node concept="TZ5HA" id="7jRNnvC8HCt" role="3HnX3l" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7jRNnvC8HCu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
      </node>
    </node>
    <node concept="2tJIrI" id="7jRNnvC7Zvs" role="jymVt" />
    <node concept="3clFb_" id="7jRNnvC87zo" role="jymVt">
      <property role="TrG5h" value="runOnCloudRepository" />
      <node concept="37vLTG" id="7jRNnvC8eCR" role="3clF46">
        <property role="TrG5h" value="treeId" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7jRNnvC8eCS" role="1tU5fm">
          <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
        </node>
      </node>
      <node concept="37vLTG" id="7jRNnvC8hpS" role="3clF46">
        <property role="TrG5h" value="branchName" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="7jRNnvC8k96" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7jRNnvC8$jT" role="3clF46">
        <property role="TrG5h" value="consumer" />
        <node concept="3uibUv" id="7jRNnvC8AwY" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
          <node concept="3uibUv" id="7jRNnvC8BQz" role="11_B2D">
            <ref role="3uigEE" to="jks5:~IWriteTransaction" resolve="IWriteTransaction" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7jRNnvC87zr" role="3clF47">
        <node concept="3clFbJ" id="7jRNnvC8FtB" role="3cqZAp">
          <node concept="3clFbS" id="7jRNnvC8FtD" role="3clFbx">
            <node concept="YS8fn" id="7jRNnvC8GBE" role="3cqZAp">
              <node concept="2ShNRf" id="7jRNnvC8GFI" role="YScLw">
                <node concept="1pGfFk" id="7jRNnvC8H_x" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;()" resolve="IllegalStateException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7jRNnvC8GgS" role="3clFbw">
            <node concept="10Nm6u" id="7jRNnvC8Gos" role="3uHU7w" />
            <node concept="2OqwBi" id="7jRNnvC8FLP" role="3uHU7B">
              <node concept="Xjq3P" id="7jRNnvC8Fyq" role="2Oq$k0" />
              <node concept="2OwXpG" id="7jRNnvC8FVj" role="2OqNvi">
                <ref role="2Oxat5" node="1QKKVBBCvUT" resolve="cr" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvC8eeo" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvC8eep" role="3cpWs9">
            <property role="TrG5h" value="cr" />
            <node concept="3uibUv" id="7jRNnvC8eeq" role="1tU5fm">
              <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
            </node>
            <node concept="2OqwBi" id="7jRNnvC8E$N" role="33vP2m">
              <node concept="Xjq3P" id="7jRNnvC8En_" role="2Oq$k0" />
              <node concept="2OwXpG" id="7jRNnvC8EMy" role="2OqNvi">
                <ref role="2Oxat5" node="1QKKVBBCvUT" resolve="cr" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvC8dXP" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvC8dXQ" role="3cpWs9">
            <property role="TrG5h" value="activeBranch" />
            <node concept="3uibUv" id="7jRNnvC8dXR" role="1tU5fm">
              <ref role="3uigEE" to="5440:~ActiveBranch" resolve="ActiveBranch" />
            </node>
            <node concept="2OqwBi" id="7jRNnvC8euz" role="33vP2m">
              <node concept="37vLTw" id="7jRNnvC8ekC" role="2Oq$k0">
                <ref role="3cqZAo" node="7jRNnvC8eep" resolve="cr" />
              </node>
              <node concept="liA8E" id="7jRNnvC8eBL" role="2OqNvi">
                <ref role="37wK5l" to="csg2:6aRQr1X24wJ" resolve="getActiveBranch" />
                <node concept="37vLTw" id="7jRNnvC8hj2" role="37wK5m">
                  <ref role="3cqZAo" node="7jRNnvC8eCR" resolve="treeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7jRNnvC8kGo" role="3cqZAp">
          <node concept="3clFbS" id="7jRNnvC8kGq" role="3clFbx">
            <node concept="YS8fn" id="7jRNnvC8lX5" role="3cqZAp">
              <node concept="2ShNRf" id="7jRNnvC8m19" role="YScLw">
                <node concept="1pGfFk" id="7jRNnvC8skR" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="17QLQc" id="7jRNnvC8l$H" role="3clFbw">
            <node concept="37vLTw" id="7jRNnvC8lIo" role="3uHU7w">
              <ref role="3cqZAo" node="7jRNnvC8hpS" resolve="branchName" />
            </node>
            <node concept="2OqwBi" id="7jRNnvC8l5p" role="3uHU7B">
              <node concept="37vLTw" id="7jRNnvC8kQ7" role="2Oq$k0">
                <ref role="3cqZAo" node="7jRNnvC8dXQ" resolve="activeBranch" />
              </node>
              <node concept="liA8E" id="7jRNnvC8lgS" role="2OqNvi">
                <ref role="37wK5l" to="5440:~ActiveBranch.getBranchName()" resolve="getBranchName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1VtHttxWahG" role="3cqZAp">
          <node concept="3cpWsn" id="1VtHttxWahH" role="3cpWs9">
            <property role="TrG5h" value="branch" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="1VtHttxWah$" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
            </node>
            <node concept="2OqwBi" id="1VtHttxWahI" role="33vP2m">
              <node concept="37vLTw" id="1VtHttxWahJ" role="2Oq$k0">
                <ref role="3cqZAo" node="7jRNnvC8dXQ" resolve="activeBranch" />
              </node>
              <node concept="liA8E" id="1VtHttxWahK" role="2OqNvi">
                <ref role="37wK5l" to="5440:~ActiveBranch.getBranch()" resolve="getBranch" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4TPMxtdD_DI" role="3cqZAp">
          <node concept="2OqwBi" id="4TPMxtdD_DJ" role="3clFbG">
            <node concept="liA8E" id="4TPMxtdD_DL" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~IBranch.runWrite(kotlin.jvm.functions.Function0)" resolve="runWrite" />
              <node concept="1bVj0M" id="4TPMxtdD_DM" role="37wK5m">
                <node concept="3clFbS" id="4TPMxtdD_DN" role="1bW5cS">
                  <node concept="3clFbF" id="7jRNnvC8COb" role="3cqZAp">
                    <node concept="2OqwBi" id="7jRNnvC8D3L" role="3clFbG">
                      <node concept="37vLTw" id="7jRNnvC8CO9" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvC8$jT" resolve="consumer" />
                      </node>
                      <node concept="liA8E" id="7jRNnvC8DJ6" role="2OqNvi">
                        <ref role="37wK5l" to="82uw:~Consumer.accept(java.lang.Object)" resolve="accept" />
                        <node concept="2OqwBi" id="7jRNnvC8E9q" role="37wK5m">
                          <node concept="liA8E" id="7jRNnvC8E9r" role="2OqNvi">
                            <ref role="37wK5l" to="jks5:~IBranch.getWriteTransaction()" resolve="getWriteTransaction" />
                          </node>
                          <node concept="37vLTw" id="7jRNnvC8E9s" role="2Oq$k0">
                            <ref role="3cqZAo" node="1VtHttxWahH" resolve="branch" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="1yReInOkYX" role="3cqZAp">
                    <node concept="10M0yZ" id="1yReInOnqB" role="3cqZAk">
                      <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                      <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1VtHttxWahL" role="2Oq$k0">
              <ref role="3cqZAo" node="1VtHttxWahH" resolve="branch" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7jRNnvC82Bh" role="1B3o_S" />
      <node concept="3cqZAl" id="7jRNnvC84_b" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7jRNnvCdTkC" role="jymVt" />
    <node concept="3clFb_" id="7jRNnvCdVdw" role="jymVt">
      <property role="TrG5h" value="computeOnCloudRepository" />
      <node concept="37vLTG" id="7jRNnvCdVdx" role="3clF46">
        <property role="TrG5h" value="treeId" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7jRNnvCdVdy" role="1tU5fm">
          <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
        </node>
      </node>
      <node concept="37vLTG" id="7jRNnvCdVdz" role="3clF46">
        <property role="TrG5h" value="branchName" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="7jRNnvCdVd$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7jRNnvCdVd_" role="3clF46">
        <property role="TrG5h" value="calculator" />
        <node concept="3uibUv" id="7jRNnvCeakh" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
          <node concept="3uibUv" id="7jRNnvCeb1N" role="11_B2D">
            <ref role="3uigEE" to="jks5:~IReadTransaction" resolve="IReadTransaction" />
          </node>
          <node concept="16syzq" id="7jRNnvCebzi" role="11_B2D">
            <ref role="16sUi3" node="7jRNnvCdYue" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7jRNnvCdVdC" role="3clF47">
        <node concept="3clFbJ" id="7jRNnvCdVdD" role="3cqZAp">
          <node concept="3clFbS" id="7jRNnvCdVdE" role="3clFbx">
            <node concept="YS8fn" id="7jRNnvCdVdF" role="3cqZAp">
              <node concept="2ShNRf" id="7jRNnvCdVdG" role="YScLw">
                <node concept="1pGfFk" id="7jRNnvCdVdH" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;()" resolve="IllegalStateException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7jRNnvCdVdI" role="3clFbw">
            <node concept="10Nm6u" id="7jRNnvCdVdJ" role="3uHU7w" />
            <node concept="2OqwBi" id="7jRNnvCdVdK" role="3uHU7B">
              <node concept="Xjq3P" id="7jRNnvCdVdL" role="2Oq$k0" />
              <node concept="2OwXpG" id="7jRNnvCdVdM" role="2OqNvi">
                <ref role="2Oxat5" node="1QKKVBBCvUT" resolve="cr" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvCdVdN" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvCdVdO" role="3cpWs9">
            <property role="TrG5h" value="cr" />
            <node concept="3uibUv" id="7jRNnvCdVdP" role="1tU5fm">
              <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
            </node>
            <node concept="2OqwBi" id="7jRNnvCdVdQ" role="33vP2m">
              <node concept="Xjq3P" id="7jRNnvCdVdR" role="2Oq$k0" />
              <node concept="2OwXpG" id="7jRNnvCdVdS" role="2OqNvi">
                <ref role="2Oxat5" node="1QKKVBBCvUT" resolve="cr" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvCdVdT" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvCdVdU" role="3cpWs9">
            <property role="TrG5h" value="activeBranch" />
            <node concept="3uibUv" id="7jRNnvCdVdV" role="1tU5fm">
              <ref role="3uigEE" to="5440:~ActiveBranch" resolve="ActiveBranch" />
            </node>
            <node concept="2OqwBi" id="7jRNnvCdVdW" role="33vP2m">
              <node concept="37vLTw" id="7jRNnvCdVdX" role="2Oq$k0">
                <ref role="3cqZAo" node="7jRNnvCdVdO" resolve="cr" />
              </node>
              <node concept="liA8E" id="7jRNnvCdVdY" role="2OqNvi">
                <ref role="37wK5l" to="csg2:6aRQr1X24wJ" resolve="getActiveBranch" />
                <node concept="37vLTw" id="7jRNnvCdVdZ" role="37wK5m">
                  <ref role="3cqZAo" node="7jRNnvCdVdx" resolve="treeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7jRNnvCdVe0" role="3cqZAp">
          <node concept="3clFbS" id="7jRNnvCdVe1" role="3clFbx">
            <node concept="YS8fn" id="7jRNnvCdVe2" role="3cqZAp">
              <node concept="2ShNRf" id="7jRNnvCdVe3" role="YScLw">
                <node concept="1pGfFk" id="7jRNnvCdVe4" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="17QLQc" id="7jRNnvCdVe5" role="3clFbw">
            <node concept="37vLTw" id="7jRNnvCdVe6" role="3uHU7w">
              <ref role="3cqZAo" node="7jRNnvCdVdz" resolve="branchName" />
            </node>
            <node concept="2OqwBi" id="7jRNnvCdVe7" role="3uHU7B">
              <node concept="37vLTw" id="7jRNnvCdVe8" role="2Oq$k0">
                <ref role="3cqZAo" node="7jRNnvCdVdU" resolve="activeBranch" />
              </node>
              <node concept="liA8E" id="7jRNnvCdVe9" role="2OqNvi">
                <ref role="37wK5l" to="5440:~ActiveBranch.getBranchName()" resolve="getBranchName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvCdVea" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvCdVeb" role="3cpWs9">
            <property role="TrG5h" value="branch" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="7jRNnvCdVec" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
            </node>
            <node concept="2OqwBi" id="7jRNnvCdVed" role="33vP2m">
              <node concept="37vLTw" id="7jRNnvCdVee" role="2Oq$k0">
                <ref role="3cqZAo" node="7jRNnvCdVdU" resolve="activeBranch" />
              </node>
              <node concept="liA8E" id="7jRNnvCdVef" role="2OqNvi">
                <ref role="37wK5l" to="5440:~ActiveBranch.getBranch()" resolve="getBranch" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvCdVeg" role="3cqZAp">
          <node concept="2OqwBi" id="7jRNnvCdVeh" role="3clFbG">
            <node concept="liA8E" id="7jRNnvCdVei" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~IBranch.computeRead(kotlin.jvm.functions.Function0)" resolve="computeRead" />
              <node concept="1bVj0M" id="7jRNnvCdVej" role="37wK5m">
                <node concept="3clFbS" id="7jRNnvCdVek" role="1bW5cS">
                  <node concept="3clFbF" id="7jRNnvCdVel" role="3cqZAp">
                    <node concept="2OqwBi" id="7jRNnvCdVem" role="3clFbG">
                      <node concept="37vLTw" id="7jRNnvCdVen" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvCdVd_" resolve="calculator" />
                      </node>
                      <node concept="liA8E" id="7jRNnvCdVeo" role="2OqNvi">
                        <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                        <node concept="2OqwBi" id="7jRNnvCdVep" role="37wK5m">
                          <node concept="liA8E" id="7jRNnvCecvg" role="2OqNvi">
                            <ref role="37wK5l" to="jks5:~IBranch.getReadTransaction()" resolve="getReadTransaction" />
                          </node>
                          <node concept="37vLTw" id="7jRNnvCdVer" role="2Oq$k0">
                            <ref role="3cqZAo" node="7jRNnvCdVeb" resolve="branch" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7jRNnvCdVeu" role="2Oq$k0">
              <ref role="3cqZAo" node="7jRNnvCdVeb" resolve="branch" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7jRNnvCdVev" role="1B3o_S" />
      <node concept="16syzq" id="7jRNnvCe1EV" role="3clF45">
        <ref role="16sUi3" node="7jRNnvCdYue" resolve="T" />
      </node>
      <node concept="16euLQ" id="7jRNnvCdYue" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="7jRNnvCdTEe" role="jymVt" />
    <node concept="2tJIrI" id="5yNJPA6tjXN" role="jymVt" />
    <node concept="3Tm1VV" id="5yNJPA6tjxe" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5yNJPA6tDKp">
    <property role="TrG5h" value="ModelixServerController" />
    <property role="3GE5qa" value="support" />
    <node concept="312cEg" id="5yNJPA6tDT1" role="jymVt">
      <property role="TrG5h" value="port" />
      <node concept="3Tm6S6" id="5yNJPA6tDS4" role="1B3o_S" />
      <node concept="10Oyi0" id="5yNJPA6tDTz" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="5yNJPA6tHDR" role="jymVt">
      <property role="TrG5h" value="pathToJar" />
      <node concept="3Tm6S6" id="5yNJPA6tHCy" role="1B3o_S" />
      <node concept="3uibUv" id="5yNJPA6tHDI" role="1tU5fm">
        <ref role="3uigEE" to="guwi:~File" resolve="File" />
      </node>
    </node>
    <node concept="312cEg" id="7JjSHvQ3T16" role="jymVt">
      <property role="TrG5h" value="killer" />
      <node concept="3Tm6S6" id="7JjSHvQ3SyD" role="1B3o_S" />
      <node concept="3uibUv" id="7JjSHvQ3SXh" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
      </node>
    </node>
    <node concept="2tJIrI" id="5yNJPA6tDTL" role="jymVt" />
    <node concept="3clFbW" id="5yNJPA6tDU$" role="jymVt">
      <node concept="3cqZAl" id="5yNJPA6tDUA" role="3clF45" />
      <node concept="3Tm1VV" id="5yNJPA6tDUB" role="1B3o_S" />
      <node concept="3clFbS" id="5yNJPA6tDUC" role="3clF47">
        <node concept="3clFbF" id="5yNJPA6tHFQ" role="3cqZAp">
          <node concept="37vLTI" id="5yNJPA6tI4f" role="3clFbG">
            <node concept="37vLTw" id="5yNJPA6tI6h" role="37vLTx">
              <ref role="3cqZAo" node="5yNJPA6tHyo" resolve="pathToJar" />
            </node>
            <node concept="2OqwBi" id="5yNJPA6tHO5" role="37vLTJ">
              <node concept="Xjq3P" id="5yNJPA6tHFO" role="2Oq$k0" />
              <node concept="2OwXpG" id="5yNJPA6tHRj" role="2OqNvi">
                <ref role="2Oxat5" node="5yNJPA6tHDR" resolve="pathToJar" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5yNJPA6tDVL" role="3cqZAp">
          <node concept="37vLTI" id="5yNJPA6tEEz" role="3clFbG">
            <node concept="37vLTw" id="5yNJPA6tEFw" role="37vLTx">
              <ref role="3cqZAo" node="5yNJPA6tDVi" resolve="port" />
            </node>
            <node concept="2OqwBi" id="5yNJPA6tE01" role="37vLTJ">
              <node concept="Xjq3P" id="5yNJPA6tDVK" role="2Oq$k0" />
              <node concept="2OwXpG" id="5yNJPA6tE2F" role="2OqNvi">
                <ref role="2Oxat5" node="5yNJPA6tDT1" resolve="port" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5yNJPA6tHyo" role="3clF46">
        <property role="TrG5h" value="pathToJar" />
        <node concept="3uibUv" id="5yNJPA6tHz2" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="37vLTG" id="5yNJPA6tDVi" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="10Oyi0" id="5yNJPA6tDVh" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7JjSHvQ3gGN" role="jymVt" />
    <node concept="312cEu" id="7JjSHvQ3htH" role="jymVt">
      <property role="TrG5h" value="DumpThread" />
      <node concept="3clFbW" id="7JjSHvQ3ig_" role="jymVt">
        <node concept="3cqZAl" id="7JjSHvQ3igB" role="3clF45" />
        <node concept="3Tm6S6" id="7JjSHvQ3igC" role="1B3o_S" />
        <node concept="3clFbS" id="7JjSHvQ3igD" role="3clF47">
          <node concept="XkiVB" id="7JjSHvQ3iqf" role="3cqZAp">
            <ref role="37wK5l" to="wyt6:~Thread.&lt;init&gt;(java.lang.Runnable)" resolve="Thread" />
            <node concept="2ShNRf" id="7JjSHvQ73K9" role="37wK5m">
              <node concept="YeOm9" id="7JjSHvQ745u" role="2ShVmc">
                <node concept="1Y3b0j" id="7JjSHvQ745x" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="7JjSHvQ745y" role="1B3o_S" />
                  <node concept="3clFb_" id="7JjSHvQ745B" role="jymVt">
                    <property role="TrG5h" value="run" />
                    <node concept="3Tm1VV" id="7JjSHvQ745C" role="1B3o_S" />
                    <node concept="3cqZAl" id="7JjSHvQ745E" role="3clF45" />
                    <node concept="3clFbS" id="7JjSHvQ745F" role="3clF47">
                      <node concept="2$JKZl" id="7JjSHvQ3iyN" role="3cqZAp">
                        <node concept="3clFbS" id="7JjSHvQ3iyO" role="2LFqv$">
                          <node concept="3J1_TO" id="7JjSHvQ3iyP" role="3cqZAp">
                            <node concept="3uVAMA" id="7JjSHvQ3iyQ" role="1zxBo5">
                              <node concept="XOnhg" id="7JjSHvQ3iyR" role="1zc67B">
                                <property role="TrG5h" value="e" />
                                <node concept="nSUau" id="7JjSHvQ3iyS" role="1tU5fm">
                                  <node concept="3uibUv" id="7JjSHvQ3iyT" role="nSUat">
                                    <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="7JjSHvQ3iyU" role="1zc67A" />
                            </node>
                            <node concept="3uVAMA" id="7JjSHvQ3iyV" role="1zxBo5">
                              <node concept="XOnhg" id="7JjSHvQ3iyW" role="1zc67B">
                                <property role="TrG5h" value="e" />
                                <node concept="nSUau" id="7JjSHvQ3iyX" role="1tU5fm">
                                  <node concept="3uibUv" id="7JjSHvQ3iyY" role="nSUat">
                                    <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbS" id="7JjSHvQ3iyZ" role="1zc67A" />
                            </node>
                            <node concept="3clFbS" id="7JjSHvQ3iz0" role="1zxBo7">
                              <node concept="2$JKZl" id="7JjSHvQ3iz1" role="3cqZAp">
                                <node concept="3clFbS" id="7JjSHvQ3iz2" role="2LFqv$">
                                  <node concept="3cpWs8" id="7JjSHvQ3iz3" role="3cqZAp">
                                    <node concept="3cpWsn" id="7JjSHvQ3iz4" role="3cpWs9">
                                      <property role="TrG5h" value="line" />
                                      <node concept="17QB3L" id="7JjSHvQ3iz5" role="1tU5fm" />
                                      <node concept="2OqwBi" id="7JjSHvQ3iz6" role="33vP2m">
                                        <node concept="37vLTw" id="7JjSHvQ3jOd" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7JjSHvQ3jhQ" resolve="source" />
                                        </node>
                                        <node concept="liA8E" id="7JjSHvQ3iz8" role="2OqNvi">
                                          <ref role="37wK5l" to="guwi:~BufferedReader.readLine()" resolve="readLine" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbJ" id="7JjSHvQ3iz9" role="3cqZAp">
                                    <node concept="3clFbS" id="7JjSHvQ3iza" role="3clFbx">
                                      <node concept="3clFbF" id="7JjSHvQ3izb" role="3cqZAp">
                                        <node concept="2YIFZM" id="7JjSHvQ3izc" role="3clFbG">
                                          <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                                          <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
                                          <node concept="3cmrfG" id="7JjSHvQ3izd" role="37wK5m">
                                            <property role="3cmrfH" value="100" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbC" id="7JjSHvQ3ize" role="3clFbw">
                                      <node concept="10Nm6u" id="7JjSHvQ3izf" role="3uHU7w" />
                                      <node concept="37vLTw" id="7JjSHvQ3izg" role="3uHU7B">
                                        <ref role="3cqZAo" node="7JjSHvQ3iz4" resolve="line" />
                                      </node>
                                    </node>
                                    <node concept="9aQIb" id="7JjSHvQ3izh" role="9aQIa">
                                      <node concept="3clFbS" id="7JjSHvQ3izi" role="9aQI4">
                                        <node concept="abc8K" id="7JjSHvQ3izj" role="3cqZAp">
                                          <node concept="37vLTw" id="7JjSHvQ3k7J" role="abp_N">
                                            <ref role="3cqZAo" node="7JjSHvQ3j2q" resolve="prefix" />
                                          </node>
                                          <node concept="37vLTw" id="7JjSHvQ3izl" role="abp_N">
                                            <ref role="3cqZAo" node="7JjSHvQ3iz4" resolve="line" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbT" id="7JjSHvQ3izm" role="2$JKZa">
                                  <property role="3clFbU" value="true" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbT" id="7JjSHvQ3izr" role="2$JKZa">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="7JjSHvQ745H" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7JjSHvQ3j2q" role="3clF46">
          <property role="3TUv4t" value="true" />
          <property role="TrG5h" value="prefix" />
          <node concept="17QB3L" id="7JjSHvQ3jat" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7JjSHvQ3jhQ" role="3clF46">
          <property role="3TUv4t" value="true" />
          <property role="TrG5h" value="source" />
          <node concept="3uibUv" id="7JjSHvQ3jKd" role="1tU5fm">
            <ref role="3uigEE" to="guwi:~BufferedReader" resolve="BufferedReader" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7JjSHvQ3hOr" role="1B3o_S" />
      <node concept="3uibUv" id="7JjSHvQ3hZE" role="1zkMxy">
        <ref role="3uigEE" to="wyt6:~Thread" resolve="Thread" />
      </node>
    </node>
    <node concept="2tJIrI" id="5yNJPA6tDMu" role="jymVt" />
    <node concept="3clFb_" id="5yNJPA6tDNi" role="jymVt">
      <property role="TrG5h" value="start" />
      <node concept="3clFbS" id="5yNJPA6tDNl" role="3clF47">
        <node concept="3J1_TO" id="5yNJPA6tUQ1" role="3cqZAp">
          <node concept="3uVAMA" id="5yNJPA6tUYn" role="1zxBo5">
            <node concept="XOnhg" id="5yNJPA6tUYo" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="5yNJPA6tUYp" role="1tU5fm">
                <node concept="3uibUv" id="5yNJPA6tV0D" role="nSUat">
                  <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5yNJPA6tUYq" role="1zc67A">
              <node concept="YS8fn" id="5yNJPA6tV3_" role="3cqZAp">
                <node concept="2ShNRf" id="5yNJPA6tV3L" role="YScLw">
                  <node concept="1pGfFk" id="5yNJPA6tVgV" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="5yNJPA6tVjZ" role="37wK5m">
                      <ref role="3cqZAo" node="5yNJPA6tUYo" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5yNJPA6tUQ3" role="1zxBo7">
            <node concept="3cpWs8" id="7JjSHvQ3UzV" role="3cqZAp">
              <node concept="3cpWsn" id="7JjSHvQ3UzW" role="3cpWs9">
                <property role="TrG5h" value="process" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="7JjSHvQ3UzX" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Process" resolve="Process" />
                </node>
                <node concept="2OqwBi" id="5yNJPA6tRjx" role="33vP2m">
                  <node concept="2YIFZM" id="5yNJPA6tRfb" role="2Oq$k0">
                    <ref role="37wK5l" to="wyt6:~Runtime.getRuntime()" resolve="getRuntime" />
                    <ref role="1Pybhc" to="wyt6:~Runtime" resolve="Runtime" />
                  </node>
                  <node concept="liA8E" id="5yNJPA6tRm6" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Runtime.exec(java.lang.String[])" resolve="exec" />
                    <node concept="2ShNRf" id="5yNJPA6tTPt" role="37wK5m">
                      <node concept="3g6Rrh" id="5yNJPA6tUlG" role="2ShVmc">
                        <node concept="Xl_RD" id="11vVX88teyg" role="3g7hyw">
                          <property role="Xl_RC" value="java" />
                        </node>
                        <node concept="Xl_RD" id="5yNJPA6tRGm" role="3g7hyw">
                          <property role="Xl_RC" value="-jar" />
                        </node>
                        <node concept="2OqwBi" id="5yNJPA6tSb_" role="3g7hyw">
                          <node concept="37vLTw" id="5yNJPA6tRXQ" role="2Oq$k0">
                            <ref role="3cqZAo" node="5yNJPA6tHDR" resolve="pathToJar" />
                          </node>
                          <node concept="liA8E" id="5yNJPA6tSk0" role="2OqNvi">
                            <ref role="37wK5l" to="guwi:~File.getAbsolutePath()" resolve="getAbsolutePath" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="5yNJPA6tSxi" role="3g7hyw">
                          <property role="Xl_RC" value="-inmemory" />
                        </node>
                        <node concept="Xl_RD" id="5yNJPA6tSIb" role="3g7hyw">
                          <property role="Xl_RC" value="-port" />
                        </node>
                        <node concept="2YIFZM" id="5yNJPA6tSOK" role="3g7hyw">
                          <ref role="37wK5l" to="wyt6:~Integer.toString(int)" resolve="toString" />
                          <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                          <node concept="37vLTw" id="5yNJPA6tSQK" role="37wK5m">
                            <ref role="3cqZAo" node="5yNJPA6tDT1" resolve="port" />
                          </node>
                        </node>
                        <node concept="3uibUv" id="5yNJPA6tUdR" role="3g7fb8">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5yNJPA6uatg" role="3cqZAp" />
            <node concept="3cpWs8" id="7JjSHvQ3$RA" role="3cqZAp">
              <node concept="3cpWsn" id="7JjSHvQ3$RB" role="3cpWs9">
                <property role="TrG5h" value="dumpOut" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="7JjSHvQ3$RC" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Thread" resolve="Thread" />
                </node>
                <node concept="2ShNRf" id="7JjSHvQ3AsM" role="33vP2m">
                  <node concept="1pGfFk" id="7JjSHvQ3ApB" role="2ShVmc">
                    <ref role="37wK5l" node="7JjSHvQ3ig_" resolve="ModelixServerController.DumpThread" />
                    <node concept="Xl_RD" id="7JjSHvQ3ANE" role="37wK5m">
                      <property role="Xl_RC" value="MS: " />
                    </node>
                    <node concept="2ShNRf" id="7JjSHvQ3BJ3" role="37wK5m">
                      <node concept="1pGfFk" id="7JjSHvQ3BJ4" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~BufferedReader.&lt;init&gt;(java.io.Reader)" resolve="BufferedReader" />
                        <node concept="2ShNRf" id="7JjSHvQ3BJ5" role="37wK5m">
                          <node concept="1pGfFk" id="7JjSHvQ3BJ6" role="2ShVmc">
                            <ref role="37wK5l" to="guwi:~InputStreamReader.&lt;init&gt;(java.io.InputStream)" resolve="InputStreamReader" />
                            <node concept="2OqwBi" id="7JjSHvQ3BJ7" role="37wK5m">
                              <node concept="37vLTw" id="7JjSHvQ3BJ8" role="2Oq$k0">
                                <ref role="3cqZAo" node="7JjSHvQ3UzW" resolve="process" />
                              </node>
                              <node concept="liA8E" id="7JjSHvQ3BJ9" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Process.getInputStream()" resolve="getInputStream" />
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
            <node concept="3cpWs8" id="7JjSHvQ3C4H" role="3cqZAp">
              <node concept="3cpWsn" id="7JjSHvQ3C4I" role="3cpWs9">
                <property role="TrG5h" value="dumpErr" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="7JjSHvQ3C4J" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Thread" resolve="Thread" />
                </node>
                <node concept="2ShNRf" id="7JjSHvQ3C4K" role="33vP2m">
                  <node concept="1pGfFk" id="7JjSHvQ3C4L" role="2ShVmc">
                    <ref role="37wK5l" node="7JjSHvQ3ig_" resolve="ModelixServerController.DumpThread" />
                    <node concept="Xl_RD" id="7JjSHvQ3C4M" role="37wK5m">
                      <property role="Xl_RC" value="MS ERR: " />
                    </node>
                    <node concept="2ShNRf" id="7JjSHvQ3C4N" role="37wK5m">
                      <node concept="1pGfFk" id="7JjSHvQ3C4O" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~BufferedReader.&lt;init&gt;(java.io.Reader)" resolve="BufferedReader" />
                        <node concept="2ShNRf" id="7JjSHvQ3C4P" role="37wK5m">
                          <node concept="1pGfFk" id="7JjSHvQ3C4Q" role="2ShVmc">
                            <ref role="37wK5l" to="guwi:~InputStreamReader.&lt;init&gt;(java.io.InputStream)" resolve="InputStreamReader" />
                            <node concept="2OqwBi" id="7JjSHvQ3C4R" role="37wK5m">
                              <node concept="37vLTw" id="7JjSHvQ3C4S" role="2Oq$k0">
                                <ref role="3cqZAo" node="7JjSHvQ3UzW" resolve="process" />
                              </node>
                              <node concept="liA8E" id="7JjSHvQ3DCi" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Process.getErrorStream()" resolve="getErrorStream" />
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
            <node concept="3clFbF" id="7JjSHvQ3Hn6" role="3cqZAp">
              <node concept="2OqwBi" id="7JjSHvQ3HBN" role="3clFbG">
                <node concept="37vLTw" id="7JjSHvQ3Hn4" role="2Oq$k0">
                  <ref role="3cqZAo" node="7JjSHvQ3$RB" resolve="dumpOut" />
                </node>
                <node concept="liA8E" id="7JjSHvQ3HJc" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Thread.start()" resolve="start" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7JjSHvQ3I4b" role="3cqZAp">
              <node concept="2OqwBi" id="7JjSHvQ3Iii" role="3clFbG">
                <node concept="37vLTw" id="7JjSHvQ3I49" role="2Oq$k0">
                  <ref role="3cqZAo" node="7JjSHvQ3C4I" resolve="dumpErr" />
                </node>
                <node concept="liA8E" id="7JjSHvQ3In1" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Thread.start()" resolve="start" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7JjSHvQ3Xs0" role="3cqZAp">
              <node concept="37vLTI" id="7JjSHvQ3Xs2" role="3clFbG">
                <node concept="2ShNRf" id="7JjSHvQ3Jcg" role="37vLTx">
                  <node concept="YeOm9" id="7JjSHvQ3J_v" role="2ShVmc">
                    <node concept="1Y3b0j" id="7JjSHvQ3J_y" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3Tm1VV" id="7JjSHvQ3J_z" role="1B3o_S" />
                      <node concept="3clFb_" id="7JjSHvQ3J_C" role="jymVt">
                        <property role="TrG5h" value="run" />
                        <node concept="3Tm1VV" id="7JjSHvQ3J_D" role="1B3o_S" />
                        <node concept="3cqZAl" id="7JjSHvQ3J_F" role="3clF45" />
                        <node concept="3clFbS" id="7JjSHvQ3J_G" role="3clF47">
                          <node concept="abc8K" id="7JjSHvQ70H3" role="3cqZAp">
                            <node concept="Xl_RD" id="7JjSHvQ70M9" role="abp_N">
                              <property role="Xl_RC" value="(killing ModelServer on " />
                            </node>
                            <node concept="37vLTw" id="7JjSHvQ70Zr" role="abp_N">
                              <ref role="3cqZAo" node="5yNJPA6tDT1" resolve="port" />
                            </node>
                            <node concept="Xl_RD" id="7JjSHvQ716T" role="abp_N">
                              <property role="Xl_RC" value=")" />
                            </node>
                          </node>
                          <node concept="3clFbJ" id="7JjSHvQ3Wp5" role="3cqZAp">
                            <node concept="3clFbS" id="7JjSHvQ3Wp7" role="3clFbx">
                              <node concept="3clFbF" id="7JjSHvQ3JV7" role="3cqZAp">
                                <node concept="2OqwBi" id="7JjSHvQ3K4d" role="3clFbG">
                                  <node concept="37vLTw" id="7JjSHvQ3JV6" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7JjSHvQ3$RB" resolve="dumpOut" />
                                  </node>
                                  <node concept="liA8E" id="7JjSHvQ3Kci" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Thread.stop()" resolve="stop" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3y3z36" id="7JjSHvQ3WCy" role="3clFbw">
                              <node concept="10Nm6u" id="7JjSHvQ3WFS" role="3uHU7w" />
                              <node concept="37vLTw" id="7JjSHvQ3WsV" role="3uHU7B">
                                <ref role="3cqZAo" node="7JjSHvQ3$RB" resolve="dumpOut" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="7JjSHvQ3WXf" role="3cqZAp">
                            <node concept="3clFbS" id="7JjSHvQ3WXh" role="3clFbx">
                              <node concept="3clFbF" id="7JjSHvQ3Kqq" role="3cqZAp">
                                <node concept="2OqwBi" id="7JjSHvQ3KtG" role="3clFbG">
                                  <node concept="37vLTw" id="7JjSHvQ3Kqo" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7JjSHvQ3C4I" resolve="dumpErr" />
                                  </node>
                                  <node concept="liA8E" id="7JjSHvQ3Kxg" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Thread.stop()" resolve="stop" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3y3z36" id="7JjSHvQ3XcJ" role="3clFbw">
                              <node concept="10Nm6u" id="7JjSHvQ3Xg3" role="3uHU7w" />
                              <node concept="37vLTw" id="7JjSHvQ3X1a" role="3uHU7B">
                                <ref role="3cqZAo" node="7JjSHvQ3C4I" resolve="dumpErr" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="7JjSHvQ3RCB" role="3cqZAp">
                            <node concept="3clFbS" id="7JjSHvQ3RCD" role="3clFbx">
                              <node concept="3J1_TO" id="5i$4SBK6dnZ" role="3cqZAp">
                                <node concept="3uVAMA" id="5i$4SBK6dGd" role="1zxBo5">
                                  <node concept="XOnhg" id="5i$4SBK6dGe" role="1zc67B">
                                    <property role="TrG5h" value="e" />
                                    <node concept="nSUau" id="5i$4SBK6dGf" role="1tU5fm">
                                      <node concept="3uibUv" id="5i$4SBK6dY7" role="nSUat">
                                        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbS" id="5i$4SBK6dGg" role="1zc67A">
                                    <node concept="3clFbF" id="5i$4SBK6ekG" role="3cqZAp">
                                      <node concept="2OqwBi" id="5i$4SBK6eyt" role="3clFbG">
                                        <node concept="37vLTw" id="5i$4SBK6ekF" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5i$4SBK6dGe" resolve="e" />
                                        </node>
                                        <node concept="liA8E" id="5i$4SBK6eQl" role="2OqNvi">
                                          <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbS" id="5i$4SBK6do1" role="1zxBo7">
                                  <node concept="3clFbF" id="5i$4SBK68Ia" role="3cqZAp">
                                    <node concept="2OqwBi" id="5i$4SBK68Ib" role="3clFbG">
                                      <node concept="2YIFZM" id="5i$4SBK68MJ" role="2Oq$k0">
                                        <ref role="1Pybhc" to="wyt6:~Runtime" resolve="Runtime" />
                                        <ref role="37wK5l" to="wyt6:~Runtime.getRuntime()" resolve="getRuntime" />
                                      </node>
                                      <node concept="liA8E" id="5i$4SBK68Id" role="2OqNvi">
                                        <ref role="37wK5l" to="wyt6:~Runtime.exec(java.lang.String)" resolve="exec" />
                                        <node concept="3cpWs3" id="5i$4SBK68Ie" role="37wK5m">
                                          <node concept="Xl_RD" id="5i$4SBK68If" role="3uHU7B">
                                            <property role="Xl_RC" value="kill " />
                                          </node>
                                          <node concept="2OqwBi" id="5i$4SBK6aFM" role="3uHU7w">
                                            <node concept="37vLTw" id="5i$4SBK69Xv" role="2Oq$k0">
                                              <ref role="3cqZAo" node="7JjSHvQ3UzW" resolve="process" />
                                            </node>
                                            <node concept="liA8E" id="5i$4SBK6b_$" role="2OqNvi">
                                              <ref role="37wK5l" to="wyt6:~Process.pid()" resolve="pid" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="5i$4SBK68qy" role="3cqZAp" />
                              <node concept="1X3_iC" id="5i$4SBK6chz" role="lGtFl">
                                <property role="3V$3am" value="statement" />
                                <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                                <node concept="3clFbF" id="7JjSHvQ3ReE" role="8Wnug">
                                  <node concept="2OqwBi" id="7JjSHvQ3RnD" role="3clFbG">
                                    <node concept="37vLTw" id="7JjSHvQ3ReC" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7JjSHvQ3UzW" resolve="process" />
                                    </node>
                                    <node concept="liA8E" id="7JjSHvQ3Rve" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~Process.destroyForcibly()" resolve="destroyForcibly" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3y3z36" id="7JjSHvQ3RN8" role="3clFbw">
                              <node concept="10Nm6u" id="7JjSHvQ3RRJ" role="3uHU7w" />
                              <node concept="37vLTw" id="7JjSHvQ3RGz" role="3uHU7B">
                                <ref role="3cqZAo" node="7JjSHvQ3UzW" resolve="process" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="7JjSHvQ3J_I" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7JjSHvQ3Y0L" role="37vLTJ">
                  <ref role="3cqZAo" node="7JjSHvQ3T16" resolve="killer" />
                </node>
              </node>
            </node>
            <node concept="abc8K" id="5yNJPA6tWJq" role="3cqZAp">
              <node concept="Xl_RD" id="5yNJPA6tWMH" role="abp_N">
                <property role="Xl_RC" value="MODELIX SERVER PID " />
              </node>
              <node concept="2OqwBi" id="5yNJPA6tWQi" role="abp_N">
                <node concept="37vLTw" id="5yNJPA6tWPT" role="2Oq$k0">
                  <ref role="3cqZAo" node="7JjSHvQ3UzW" resolve="process" />
                </node>
                <node concept="liA8E" id="5yNJPA6tWUs" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Process.pid()" resolve="pid" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5yNJPA6tDMR" role="1B3o_S" />
      <node concept="3cqZAl" id="5yNJPA6tDN7" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5yNJPA6tDNH" role="jymVt" />
    <node concept="3clFb_" id="7JjSHvQ40kN" role="jymVt">
      <property role="TrG5h" value="jsonDump" />
      <node concept="3clFbS" id="7JjSHvQ40kP" role="3clF47">
        <node concept="3cpWs8" id="7JjSHvQ40kQ" role="3cqZAp">
          <node concept="3cpWsn" id="7JjSHvQ40kR" role="3cpWs9">
            <property role="TrG5h" value="modelServerDumper" />
            <node concept="3uibUv" id="7JjSHvQ40kS" role="1tU5fm">
              <ref role="3uigEE" node="11vVX88wjHV" resolve="ModelServerDumper" />
            </node>
            <node concept="2ShNRf" id="7JjSHvQ40kT" role="33vP2m">
              <node concept="HV5vD" id="7JjSHvQ40kU" role="2ShVmc">
                <ref role="HV5vE" node="11vVX88wjHV" resolve="ModelServerDumper" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nkanButAmx" role="3cqZAp">
          <node concept="1rXfSq" id="nkanButAmv" role="3clFbG">
            <ref role="37wK5l" node="53_gmpoSW$f" resolve="computeOnReplicatedTree" />
            <node concept="37vLTw" id="nkanButAzy" role="37wK5m">
              <ref role="3cqZAo" node="7JjSHvQ42ba" resolve="treeId" />
            </node>
            <node concept="37vLTw" id="nkanButAIV" role="37wK5m">
              <ref role="3cqZAo" node="7JjSHvQ42ws" resolve="branchName" />
            </node>
            <node concept="1bVj0M" id="nkanButAVa" role="37wK5m">
              <node concept="37vLTG" id="nkanButBN6" role="1bW2Oz">
                <property role="TrG5h" value="rt" />
                <node concept="3uibUv" id="nkanButBZZ" role="1tU5fm">
                  <ref role="3uigEE" to="5440:~ReplicatedTree" resolve="ReplicatedTree" />
                </node>
              </node>
              <node concept="3clFbS" id="nkanButAVc" role="1bW5cS">
                <node concept="3clFbF" id="nkanButC8F" role="3cqZAp">
                  <node concept="2OqwBi" id="nkanButC8H" role="3clFbG">
                    <node concept="37vLTw" id="nkanButC8I" role="2Oq$k0">
                      <ref role="3cqZAo" node="7JjSHvQ40kR" resolve="modelServerDumper" />
                    </node>
                    <node concept="liA8E" id="nkanButC8J" role="2OqNvi">
                      <ref role="37wK5l" node="nkanButDc$" resolve="dumpAsJson" />
                      <node concept="37vLTw" id="nkanButCmG" role="37wK5m">
                        <ref role="3cqZAo" node="nkanButBN6" resolve="rt" />
                      </node>
                      <node concept="37vLTw" id="Aop38HYr7h" role="37wK5m">
                        <ref role="3cqZAo" node="Aop38HYon8" resolve="withId" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7JjSHvQ40li" role="3clF45">
        <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
      </node>
      <node concept="3Tm1VV" id="7JjSHvQ40lh" role="1B3o_S" />
      <node concept="37vLTG" id="7JjSHvQ42ba" role="3clF46">
        <property role="TrG5h" value="treeId" />
        <node concept="3uibUv" id="7JjSHvQ42b9" role="1tU5fm">
          <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
        </node>
      </node>
      <node concept="37vLTG" id="7JjSHvQ42ws" role="3clF46">
        <property role="TrG5h" value="branchName" />
        <node concept="17QB3L" id="7JjSHvQ42R2" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="Aop38HYon8" role="3clF46">
        <property role="TrG5h" value="withId" />
        <node concept="10P_77" id="Aop38HYoRF" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="53_gmpoS_YH" role="jymVt" />
    <node concept="3clFb_" id="53_gmpoSBIv" role="jymVt">
      <property role="TrG5h" value="runOnRestWebModelClient" />
      <node concept="3clFbS" id="53_gmpoSBIy" role="3clF47">
        <node concept="3cpWs8" id="53_gmpoSDxJ" role="3cqZAp">
          <node concept="3cpWsn" id="53_gmpoSDxK" role="3cpWs9">
            <property role="TrG5h" value="restWebModelClient" />
            <node concept="3uibUv" id="53_gmpoSDxL" role="1tU5fm">
              <ref role="3uigEE" to="5440:~RestWebModelClient" resolve="RestWebModelClient" />
            </node>
            <node concept="2ShNRf" id="53_gmpoSDxM" role="33vP2m">
              <node concept="1pGfFk" id="53_gmpoSDxN" role="2ShVmc">
                <ref role="37wK5l" to="5440:~RestWebModelClient.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="RestWebModelClient" />
                <node concept="3cpWs3" id="53_gmpoSDxO" role="37wK5m">
                  <node concept="37vLTw" id="53_gmpoSDxP" role="3uHU7w">
                    <ref role="3cqZAo" node="5yNJPA6tDT1" resolve="port" />
                  </node>
                  <node concept="Xl_RD" id="53_gmpoSDxQ" role="3uHU7B">
                    <property role="Xl_RC" value="http://127.0.0.1:" />
                  </node>
                </node>
                <node concept="10Nm6u" id="53_gmpoSDxR" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="53_gmpoSFBJ" role="3cqZAp">
          <node concept="2OqwBi" id="53_gmpoSGdq" role="3clFbG">
            <node concept="37vLTw" id="53_gmpoSFBH" role="2Oq$k0">
              <ref role="3cqZAo" node="53_gmpoSCAZ" resolve="consumer" />
            </node>
            <node concept="liA8E" id="53_gmpoSGGV" role="2OqNvi">
              <ref role="37wK5l" to="82uw:~Consumer.accept(java.lang.Object)" resolve="accept" />
              <node concept="37vLTw" id="53_gmpoSGPC" role="37wK5m">
                <ref role="3cqZAo" node="53_gmpoSDxK" resolve="restWebModelClient" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="53_gmpoSDy1" role="3cqZAp">
          <node concept="2OqwBi" id="53_gmpoSDy2" role="3clFbG">
            <node concept="37vLTw" id="53_gmpoSDy3" role="2Oq$k0">
              <ref role="3cqZAo" node="53_gmpoSDxK" resolve="restWebModelClient" />
            </node>
            <node concept="liA8E" id="53_gmpoSDy4" role="2OqNvi">
              <ref role="37wK5l" to="5440:~RestWebModelClient.dispose()" resolve="dispose" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="53_gmpoSBgb" role="1B3o_S" />
      <node concept="3cqZAl" id="53_gmpoSBHt" role="3clF45" />
      <node concept="37vLTG" id="53_gmpoSCAZ" role="3clF46">
        <property role="TrG5h" value="consumer" />
        <node concept="3uibUv" id="53_gmpoSCAY" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
          <node concept="3uibUv" id="53_gmpoSDsh" role="11_B2D">
            <ref role="3uigEE" to="5440:~RestWebModelClient" resolve="RestWebModelClient" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="53_gmpoSTIc" role="jymVt" />
    <node concept="3clFb_" id="53_gmpoSKID" role="jymVt">
      <property role="TrG5h" value="computeOnRestWebModelClient" />
      <node concept="3clFbS" id="53_gmpoSKIE" role="3clF47">
        <node concept="3cpWs8" id="53_gmpoSKIF" role="3cqZAp">
          <node concept="3cpWsn" id="53_gmpoSKIG" role="3cpWs9">
            <property role="TrG5h" value="restWebModelClient" />
            <node concept="3uibUv" id="53_gmpoSKIH" role="1tU5fm">
              <ref role="3uigEE" to="5440:~RestWebModelClient" resolve="RestWebModelClient" />
            </node>
            <node concept="2ShNRf" id="53_gmpoSKII" role="33vP2m">
              <node concept="1pGfFk" id="53_gmpoSKIJ" role="2ShVmc">
                <ref role="37wK5l" to="5440:~RestWebModelClient.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="RestWebModelClient" />
                <node concept="3cpWs3" id="53_gmpoSKIK" role="37wK5m">
                  <node concept="37vLTw" id="53_gmpoSKIL" role="3uHU7w">
                    <ref role="3cqZAo" node="5yNJPA6tDT1" resolve="port" />
                  </node>
                  <node concept="Xl_RD" id="53_gmpoSKIM" role="3uHU7B">
                    <property role="Xl_RC" value="http://127.0.0.1:" />
                  </node>
                </node>
                <node concept="10Nm6u" id="53_gmpoSKIN" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="53_gmpoSQsd" role="3cqZAp">
          <node concept="3cpWsn" id="53_gmpoSQsg" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="16syzq" id="53_gmpoSQsb" role="1tU5fm">
              <ref role="16sUi3" node="53_gmpoSNbY" resolve="T" />
            </node>
            <node concept="2OqwBi" id="53_gmpoSQQN" role="33vP2m">
              <node concept="37vLTw" id="53_gmpoSQAa" role="2Oq$k0">
                <ref role="3cqZAo" node="53_gmpoSKIZ" resolve="consumer" />
              </node>
              <node concept="liA8E" id="53_gmpoSR5H" role="2OqNvi">
                <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                <node concept="37vLTw" id="53_gmpoSRfr" role="37wK5m">
                  <ref role="3cqZAo" node="53_gmpoSKIG" resolve="restWebModelClient" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="53_gmpoSKIT" role="3cqZAp">
          <node concept="2OqwBi" id="53_gmpoSKIU" role="3clFbG">
            <node concept="37vLTw" id="53_gmpoSKIV" role="2Oq$k0">
              <ref role="3cqZAo" node="53_gmpoSKIG" resolve="restWebModelClient" />
            </node>
            <node concept="liA8E" id="53_gmpoSKIW" role="2OqNvi">
              <ref role="37wK5l" to="5440:~RestWebModelClient.dispose()" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="53_gmpoSRAo" role="3cqZAp">
          <node concept="37vLTw" id="53_gmpoSRLH" role="3cqZAk">
            <ref role="3cqZAo" node="53_gmpoSQsg" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="53_gmpoSKIX" role="1B3o_S" />
      <node concept="16syzq" id="53_gmpoSSqc" role="3clF45">
        <ref role="16sUi3" node="53_gmpoSNbY" resolve="T" />
      </node>
      <node concept="37vLTG" id="53_gmpoSKIZ" role="3clF46">
        <property role="TrG5h" value="consumer" />
        <node concept="3uibUv" id="53_gmpoSKJ0" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
          <node concept="3uibUv" id="53_gmpoSKJ1" role="11_B2D">
            <ref role="3uigEE" to="5440:~RestWebModelClient" resolve="RestWebModelClient" />
          </node>
          <node concept="16syzq" id="53_gmpoSQ7C" role="11_B2D">
            <ref role="16sUi3" node="53_gmpoSNbY" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="53_gmpoSNbY" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="53_gmpoSVt4" role="jymVt" />
    <node concept="3clFb_" id="53_gmpoSW$f" role="jymVt">
      <property role="TrG5h" value="computeOnReplicatedTree" />
      <node concept="3clFbS" id="53_gmpoSW$g" role="3clF47">
        <node concept="3cpWs6" id="53_gmpoT0yH" role="3cqZAp">
          <node concept="1rXfSq" id="53_gmpoT1ke" role="3cqZAk">
            <ref role="37wK5l" node="53_gmpoSKID" resolve="computeOnRestWebModelClient" />
            <node concept="1bVj0M" id="53_gmpoT25N" role="37wK5m">
              <node concept="37vLTG" id="53_gmpoT2xl" role="1bW2Oz">
                <property role="TrG5h" value="restWebModelClient" />
                <node concept="3uibUv" id="53_gmpoT3aV" role="1tU5fm">
                  <ref role="3uigEE" to="5440:~RestWebModelClient" resolve="RestWebModelClient" />
                </node>
              </node>
              <node concept="3clFbS" id="53_gmpoT25O" role="1bW5cS">
                <node concept="3cpWs8" id="53_gmpoSXLf" role="3cqZAp">
                  <node concept="3cpWsn" id="53_gmpoSXLg" role="3cpWs9">
                    <property role="TrG5h" value="rt" />
                    <node concept="3uibUv" id="53_gmpoSXLh" role="1tU5fm">
                      <ref role="3uigEE" to="5440:~ReplicatedTree" resolve="ReplicatedTree" />
                    </node>
                    <node concept="2ShNRf" id="53_gmpoSXLi" role="33vP2m">
                      <node concept="1pGfFk" id="53_gmpoSXLj" role="2ShVmc">
                        <ref role="37wK5l" to="5440:~ReplicatedTree.&lt;init&gt;(org.modelix.model.client.IModelClient,org.modelix.model.lazy.TreeId,java.lang.String,kotlin.jvm.functions.Function0)" resolve="ReplicatedTree" />
                        <node concept="37vLTw" id="53_gmpoSXLk" role="37wK5m">
                          <ref role="3cqZAo" node="53_gmpoT2xl" resolve="restWebModelClient" />
                        </node>
                        <node concept="37vLTw" id="53_gmpoT6Cb" role="37wK5m">
                          <ref role="3cqZAo" node="53_gmpoT5Ap" resolve="treeId" />
                        </node>
                        <node concept="37vLTw" id="53_gmpoT7ud" role="37wK5m">
                          <ref role="3cqZAo" node="53_gmpoT5Ar" resolve="branchName" />
                        </node>
                        <node concept="1bVj0M" id="53_gmpoSXLn" role="37wK5m">
                          <node concept="3clFbS" id="53_gmpoSXLo" role="1bW5cS">
                            <node concept="3clFbF" id="53_gmpoSXLp" role="3cqZAp">
                              <node concept="Xl_RD" id="53_gmpoSXLq" role="3clFbG">
                                <property role="Xl_RC" value="dummy_author_computeOnReplicatedTree" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="53_gmpoTdD2" role="3cqZAp">
                  <node concept="3cpWsn" id="53_gmpoTdD5" role="3cpWs9">
                    <property role="TrG5h" value="res" />
                    <node concept="16syzq" id="53_gmpoTdD0" role="1tU5fm">
                      <ref role="16sUi3" node="53_gmpoSW$H" resolve="T" />
                    </node>
                    <node concept="2OqwBi" id="53_gmpoTamG" role="33vP2m">
                      <node concept="37vLTw" id="53_gmpoT9_A" role="2Oq$k0">
                        <ref role="3cqZAo" node="53_gmpoSW$D" resolve="consumer" />
                      </node>
                      <node concept="liA8E" id="53_gmpoTbm9" role="2OqNvi">
                        <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                        <node concept="37vLTw" id="53_gmpoTbU0" role="37wK5m">
                          <ref role="3cqZAo" node="53_gmpoSXLg" resolve="rt" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="53_gmpoSXLK" role="3cqZAp">
                  <node concept="2OqwBi" id="53_gmpoSXLL" role="3clFbG">
                    <node concept="37vLTw" id="53_gmpoSXLM" role="2Oq$k0">
                      <ref role="3cqZAo" node="53_gmpoSXLg" resolve="rt" />
                    </node>
                    <node concept="liA8E" id="53_gmpoSXLN" role="2OqNvi">
                      <ref role="37wK5l" to="5440:~ReplicatedTree.dispose()" resolve="dispose" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="53_gmpoSXLO" role="3cqZAp">
                  <node concept="37vLTw" id="53_gmpoTgW6" role="3cqZAk">
                    <ref role="3cqZAo" node="53_gmpoTdD5" resolve="res" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="53_gmpoSW$B" role="1B3o_S" />
      <node concept="16syzq" id="53_gmpoSW$C" role="3clF45">
        <ref role="16sUi3" node="53_gmpoSW$H" resolve="T" />
      </node>
      <node concept="37vLTG" id="53_gmpoT5Ap" role="3clF46">
        <property role="TrG5h" value="treeId" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="53_gmpoT5Aq" role="1tU5fm">
          <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
        </node>
      </node>
      <node concept="37vLTG" id="53_gmpoT5Ar" role="3clF46">
        <property role="TrG5h" value="branchName" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="53_gmpoT5As" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="53_gmpoSW$D" role="3clF46">
        <property role="TrG5h" value="consumer" />
        <node concept="3uibUv" id="53_gmpoSW$E" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
          <node concept="3uibUv" id="53_gmpoSZsx" role="11_B2D">
            <ref role="3uigEE" to="5440:~ReplicatedTree" resolve="ReplicatedTree" />
          </node>
          <node concept="16syzq" id="53_gmpoSW$G" role="11_B2D">
            <ref role="16sUi3" node="53_gmpoSW$H" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="53_gmpoSW$H" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="3clFb_" id="53_gmpoV3TW" role="jymVt">
      <property role="TrG5h" value="runOnReplicatedTree" />
      <node concept="3clFbS" id="53_gmpoV3TX" role="3clF47">
        <node concept="3clFbF" id="53_gmpoV6Tj" role="3cqZAp">
          <node concept="1rXfSq" id="53_gmpoV3TZ" role="3clFbG">
            <ref role="37wK5l" node="53_gmpoSKID" resolve="computeOnRestWebModelClient" />
            <node concept="1bVj0M" id="53_gmpoV3U0" role="37wK5m">
              <node concept="37vLTG" id="53_gmpoV3U1" role="1bW2Oz">
                <property role="TrG5h" value="restWebModelClient" />
                <node concept="3uibUv" id="53_gmpoV3U2" role="1tU5fm">
                  <ref role="3uigEE" to="5440:~RestWebModelClient" resolve="RestWebModelClient" />
                </node>
              </node>
              <node concept="3clFbS" id="53_gmpoV3U3" role="1bW5cS">
                <node concept="3cpWs8" id="53_gmpoV3U4" role="3cqZAp">
                  <node concept="3cpWsn" id="53_gmpoV3U5" role="3cpWs9">
                    <property role="TrG5h" value="rt" />
                    <node concept="3uibUv" id="53_gmpoV3U6" role="1tU5fm">
                      <ref role="3uigEE" to="5440:~ReplicatedTree" resolve="ReplicatedTree" />
                    </node>
                    <node concept="2ShNRf" id="53_gmpoV3U7" role="33vP2m">
                      <node concept="1pGfFk" id="53_gmpoV3U8" role="2ShVmc">
                        <ref role="37wK5l" to="5440:~ReplicatedTree.&lt;init&gt;(org.modelix.model.client.IModelClient,org.modelix.model.lazy.TreeId,java.lang.String,kotlin.jvm.functions.Function0)" resolve="ReplicatedTree" />
                        <node concept="37vLTw" id="53_gmpoV3U9" role="37wK5m">
                          <ref role="3cqZAo" node="53_gmpoV3U1" resolve="restWebModelClient" />
                        </node>
                        <node concept="37vLTw" id="53_gmpoV3Ua" role="37wK5m">
                          <ref role="3cqZAo" node="53_gmpoV3Uv" resolve="treeId" />
                        </node>
                        <node concept="37vLTw" id="53_gmpoV3Ub" role="37wK5m">
                          <ref role="3cqZAo" node="53_gmpoV3Ux" resolve="branchName" />
                        </node>
                        <node concept="1bVj0M" id="53_gmpoV3Uc" role="37wK5m">
                          <node concept="3clFbS" id="53_gmpoV3Ud" role="1bW5cS">
                            <node concept="3clFbF" id="53_gmpoV3Ue" role="3cqZAp">
                              <node concept="Xl_RD" id="53_gmpoV3Uf" role="3clFbG">
                                <property role="Xl_RC" value="dummy_author_runOnReplicatedTree" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="53_gmpoVaXC" role="3cqZAp">
                  <node concept="2OqwBi" id="53_gmpoV3Uj" role="3clFbG">
                    <node concept="37vLTw" id="53_gmpoV3Uk" role="2Oq$k0">
                      <ref role="3cqZAo" node="53_gmpoV3Uz" resolve="consumer" />
                    </node>
                    <node concept="liA8E" id="53_gmpoV3Ul" role="2OqNvi">
                      <ref role="37wK5l" to="82uw:~Consumer.accept(java.lang.Object)" resolve="accept" />
                      <node concept="37vLTw" id="53_gmpoV3Um" role="37wK5m">
                        <ref role="3cqZAo" node="53_gmpoV3U5" resolve="rt" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="53_gmpoV3Un" role="3cqZAp">
                  <node concept="2OqwBi" id="53_gmpoV3Uo" role="3clFbG">
                    <node concept="37vLTw" id="53_gmpoV3Up" role="2Oq$k0">
                      <ref role="3cqZAo" node="53_gmpoV3U5" resolve="rt" />
                    </node>
                    <node concept="liA8E" id="53_gmpoV3Uq" role="2OqNvi">
                      <ref role="37wK5l" to="5440:~ReplicatedTree.dispose()" resolve="dispose" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="53_gmpoV3Ur" role="3cqZAp">
                  <node concept="10Nm6u" id="53_gmpoVbyB" role="3cqZAk" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="53_gmpoV3Ut" role="1B3o_S" />
      <node concept="3cqZAl" id="53_gmpoV5A2" role="3clF45" />
      <node concept="37vLTG" id="53_gmpoV3Uv" role="3clF46">
        <property role="TrG5h" value="treeId" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="53_gmpoV3Uw" role="1tU5fm">
          <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
        </node>
      </node>
      <node concept="37vLTG" id="53_gmpoV3Ux" role="3clF46">
        <property role="TrG5h" value="branchName" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="53_gmpoV3Uy" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="53_gmpoV3Uz" role="3clF46">
        <property role="TrG5h" value="consumer" />
        <node concept="3uibUv" id="53_gmpoV3U$" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
          <node concept="3uibUv" id="53_gmpoV3U_" role="11_B2D">
            <ref role="3uigEE" to="5440:~ReplicatedTree" resolve="ReplicatedTree" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="53_gmpoSVVS" role="jymVt" />
    <node concept="2tJIrI" id="7JjSHvQ44lm" role="jymVt" />
    <node concept="3clFb_" id="7JjSHvQ43L7" role="jymVt">
      <property role="TrG5h" value="jsonDump" />
      <node concept="3clFbS" id="7JjSHvQ43L8" role="3clF47">
        <node concept="3cpWs6" id="7JjSHvQ43Ly" role="3cqZAp">
          <node concept="1rXfSq" id="Aop38HYmdK" role="3cqZAk">
            <ref role="37wK5l" node="Aop38HYjRg" resolve="jsonDump" />
            <node concept="3clFbT" id="Aop38HYmhG" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7JjSHvQ43L$" role="3clF45">
        <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
      </node>
      <node concept="3Tm1VV" id="7JjSHvQ43L_" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="Aop38HYiX8" role="jymVt" />
    <node concept="3clFb_" id="Aop38HYjRg" role="jymVt">
      <property role="TrG5h" value="jsonDump" />
      <node concept="3clFbS" id="Aop38HYjRh" role="3clF47">
        <node concept="3cpWs6" id="Aop38HYjRi" role="3cqZAp">
          <node concept="1rXfSq" id="Aop38HYjRj" role="3cqZAk">
            <ref role="37wK5l" node="7JjSHvQ40kN" resolve="jsonDump" />
            <node concept="2ShNRf" id="Aop38HYjRk" role="37wK5m">
              <node concept="1pGfFk" id="Aop38HYjRl" role="2ShVmc">
                <ref role="37wK5l" to="xkhl:~TreeId.&lt;init&gt;(java.lang.String)" resolve="TreeId" />
                <node concept="Xl_RD" id="Aop38HYjRm" role="37wK5m">
                  <property role="Xl_RC" value="default" />
                </node>
              </node>
            </node>
            <node concept="Xl_RD" id="Aop38HYjRn" role="37wK5m">
              <property role="Xl_RC" value="master" />
            </node>
            <node concept="37vLTw" id="Aop38HYnEi" role="37wK5m">
              <ref role="3cqZAo" node="Aop38HYkJ5" resolve="withID" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="Aop38HYjRo" role="3clF45">
        <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
      </node>
      <node concept="3Tm1VV" id="Aop38HYjRp" role="1B3o_S" />
      <node concept="37vLTG" id="Aop38HYkJ5" role="3clF46">
        <property role="TrG5h" value="withID" />
        <node concept="10P_77" id="Aop38HYkJ4" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="Aop38HYj3Q" role="jymVt" />
    <node concept="2tJIrI" id="5yNJPA6tDPg" role="jymVt" />
    <node concept="3clFb_" id="5yNJPA6tDQo" role="jymVt">
      <property role="TrG5h" value="kill" />
      <node concept="3clFbS" id="5yNJPA6tDQr" role="3clF47">
        <node concept="3clFbJ" id="7JjSHvQ3YqU" role="3cqZAp">
          <node concept="3y3z36" id="7JjSHvQ3Y$i" role="3clFbw">
            <node concept="10Nm6u" id="7JjSHvQ3YAV" role="3uHU7w" />
            <node concept="37vLTw" id="7JjSHvQ3Yru" role="3uHU7B">
              <ref role="3cqZAo" node="7JjSHvQ3T16" resolve="killer" />
            </node>
          </node>
          <node concept="3clFbS" id="7JjSHvQ3YqW" role="3clFbx">
            <node concept="3clFbF" id="7JjSHvQ3YIU" role="3cqZAp">
              <node concept="2OqwBi" id="7JjSHvQ3YLv" role="3clFbG">
                <node concept="37vLTw" id="7JjSHvQ3YIT" role="2Oq$k0">
                  <ref role="3cqZAo" node="7JjSHvQ3T16" resolve="killer" />
                </node>
                <node concept="liA8E" id="7JjSHvQ3YTn" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7JjSHvQ3Z0B" role="3cqZAp">
              <node concept="37vLTI" id="7JjSHvQ3Z8r" role="3clFbG">
                <node concept="10Nm6u" id="7JjSHvQ3Zba" role="37vLTx" />
                <node concept="37vLTw" id="7JjSHvQ3Z0_" role="37vLTJ">
                  <ref role="3cqZAo" node="7JjSHvQ3T16" resolve="killer" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5yNJPA6tDPN" role="1B3o_S" />
      <node concept="3cqZAl" id="5yNJPA6tDQd" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="5yNJPA6tDKq" role="1B3o_S" />
    <node concept="3UR2Jj" id="5yNJPA6tDMb" role="lGtFl">
      <node concept="TZ5HA" id="5yNJPA6tDMc" role="TZ5H$">
        <node concept="1dT_AC" id="5yNJPA6tDMd" role="1dT_Ay">
          <property role="1dT_AB" value="Permit to start and control a Modelix Server" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="11vVX88rChi">
    <property role="TrG5h" value="ModuleCanBeCopiedOnCloudTest" />
    <property role="3GE5qa" value="tests" />
    <node concept="3Tm1VV" id="11vVX88rChj" role="1B3o_S" />
    <node concept="3clFbW" id="11vVX88rChk" role="jymVt">
      <node concept="37vLTG" id="11vVX88rChl" role="3clF46">
        <property role="TrG5h" value="referenceDir" />
        <node concept="3uibUv" id="11vVX88rChm" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="37vLTG" id="11vVX88rChn" role="3clF46">
        <property role="TrG5h" value="environment" />
        <node concept="3uibUv" id="11vVX88rCho" role="1tU5fm">
          <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
        </node>
      </node>
      <node concept="3cqZAl" id="11vVX88rChp" role="3clF45" />
      <node concept="3Tm1VV" id="11vVX88rChq" role="1B3o_S" />
      <node concept="3clFbS" id="11vVX88rChr" role="3clF47">
        <node concept="XkiVB" id="11vVX88rChs" role="3cqZAp">
          <ref role="37wK5l" node="5yNJPA6tklF" resolve="IntegrationTest" />
          <node concept="37vLTw" id="11vVX88rCht" role="37wK5m">
            <ref role="3cqZAo" node="11vVX88rChl" resolve="referenceDir" />
          </node>
          <node concept="37vLTw" id="11vVX88rChu" role="37wK5m">
            <ref role="3cqZAo" node="11vVX88rChn" resolve="environment" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1QKKVBBBQPk" role="jymVt" />
    <node concept="3clFb_" id="1QKKVBBBRkO" role="jymVt">
      <property role="TrG5h" value="logic" />
      <node concept="3Tm1VV" id="1QKKVBBBRkQ" role="1B3o_S" />
      <node concept="3uibUv" id="1QKKVBBBRkR" role="3clF45">
        <ref role="3uigEE" node="5yNJPA6btY7" resolve="TestResult" />
      </node>
      <node concept="3uibUv" id="1QKKVBBBRkS" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="3clFbS" id="1QKKVBBBRkT" role="3clF47">
        <node concept="3cpWs8" id="11vVX88rChP" role="3cqZAp">
          <node concept="3cpWsn" id="11vVX88rChQ" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="11vVX88rChR" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="1rXfSq" id="1QKKVBBDlGr" role="33vP2m">
              <ref role="37wK5l" node="5yNJPA6tpld" resolve="openProject" />
              <node concept="Xl_RD" id="1QKKVBBDlGs" role="37wK5m">
                <property role="Xl_RC" value="SimpleProjectA" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6JwgQ7UR0j4" role="3cqZAp">
          <node concept="3cpWsn" id="6JwgQ7UR0j5" role="3cpWs9">
            <property role="TrG5h" value="pbc" />
            <node concept="3uibUv" id="6JwgQ7UR0j6" role="1tU5fm">
              <ref role="3uigEE" to="nhvc:7f6Tb6nxCKP" resolve="PersistedBindingConfiguration" />
            </node>
            <node concept="2YIFZM" id="6JwgQ7US4TR" role="33vP2m">
              <ref role="37wK5l" to="nhvc:6JwgQ7URldI" resolve="getInstance" />
              <ref role="1Pybhc" to="nhvc:7f6Tb6nxCKP" resolve="PersistedBindingConfiguration" />
              <node concept="37vLTw" id="6JwgQ7US4TS" role="37wK5m">
                <ref role="3cqZAo" node="11vVX88rChQ" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="6JwgQ7UWyH4" role="3cqZAp">
          <node concept="2OqwBi" id="6JwgQ7UWyH5" role="1gVkn0">
            <node concept="37vLTw" id="6JwgQ7UWyH6" role="2Oq$k0">
              <ref role="3cqZAo" node="6JwgQ7UR0j5" resolve="pbc" />
            </node>
            <node concept="liA8E" id="6JwgQ7UWyH7" role="2OqNvi">
              <ref role="37wK5l" to="nhvc:6JwgQ7URCLz" resolve="isEmpty" />
            </node>
          </node>
          <node concept="3cpWs3" id="6JwgQ7UWyH8" role="1gVpfI">
            <node concept="2OqwBi" id="6JwgQ7UWyH9" role="3uHU7w">
              <node concept="37vLTw" id="6JwgQ7UWyHa" role="2Oq$k0">
                <ref role="3cqZAo" node="6JwgQ7UR0j5" resolve="pbc" />
              </node>
              <node concept="liA8E" id="6JwgQ7UWyHb" role="2OqNvi">
                <ref role="37wK5l" to="nhvc:6JwgQ7UW22M" resolve="describeState" />
              </node>
            </node>
            <node concept="Xl_RD" id="6JwgQ7UWyHc" role="3uHU7B">
              <property role="Xl_RC" value="The PersistedBindingConfiguration is expected to be empty, it was " />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6JwgQ7US3bp" role="3cqZAp" />
        <node concept="abc8K" id="11vVX88rChU" role="3cqZAp">
          <node concept="Xl_RD" id="11vVX88rChV" role="abp_N">
            <property role="Xl_RC" value="project " />
          </node>
          <node concept="2OqwBi" id="7JjSHvQ4s21" role="abp_N">
            <node concept="37vLTw" id="7JjSHvQ4rRb" role="2Oq$k0">
              <ref role="3cqZAo" node="11vVX88rChQ" resolve="mpsProject" />
            </node>
            <node concept="liA8E" id="7JjSHvQ4sh7" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getName()" resolve="getName" />
            </node>
          </node>
          <node concept="Xl_RD" id="7JjSHvQ4soZ" role="abp_N">
            <property role="Xl_RC" value=" opened" />
          </node>
        </node>
        <node concept="1gVbGN" id="11vVX88rChW" role="3cqZAp">
          <node concept="17R0WA" id="11vVX88rChX" role="1gVkn0">
            <node concept="2OqwBi" id="11vVX88rChY" role="3uHU7B">
              <node concept="37vLTw" id="11vVX88rChZ" role="2Oq$k0">
                <ref role="3cqZAo" node="11vVX88rChQ" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="11vVX88rCi0" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getName()" resolve="getName" />
              </node>
            </node>
            <node concept="Xl_RD" id="11vVX88rCi1" role="3uHU7w">
              <property role="Xl_RC" value="SimpleProjectA" />
            </node>
          </node>
          <node concept="3cpWs3" id="53_gmpoLHlS" role="1gVpfI">
            <node concept="2OqwBi" id="53_gmpoLIjk" role="3uHU7w">
              <node concept="37vLTw" id="53_gmpoLHZV" role="2Oq$k0">
                <ref role="3cqZAo" node="11vVX88rChQ" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="53_gmpoLIBp" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getName()" resolve="getName" />
              </node>
            </node>
            <node concept="Xl_RD" id="53_gmpoLGH3" role="3uHU7B">
              <property role="Xl_RC" value="Project expected to be named SimpleProjectA, but it was named " />
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="11vVX88rCi4" role="3cqZAp">
          <node concept="17R0WA" id="11vVX88rCi5" role="1gVkn0">
            <node concept="3cmrfG" id="11vVX88rCi6" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="11vVX88rCi7" role="3uHU7B">
              <node concept="2OqwBi" id="11vVX88rCi8" role="2Oq$k0">
                <node concept="37vLTw" id="11vVX88rCi9" role="2Oq$k0">
                  <ref role="3cqZAo" node="11vVX88rChQ" resolve="mpsProject" />
                </node>
                <node concept="liA8E" id="11vVX88rCia" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~IProject.getProjectModules()" resolve="getProjectModules" />
                </node>
              </node>
              <node concept="liA8E" id="11vVX88rCib" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
          <node concept="3cpWs3" id="53_gmpoLDsh" role="1gVpfI">
            <node concept="Xl_RD" id="53_gmpoLCQ7" role="3uHU7B">
              <property role="Xl_RC" value="One project modules expected but found " />
            </node>
            <node concept="2OqwBi" id="53_gmpoLDKt" role="3uHU7w">
              <node concept="2OqwBi" id="53_gmpoLDKu" role="2Oq$k0">
                <node concept="37vLTw" id="53_gmpoLDKv" role="2Oq$k0">
                  <ref role="3cqZAo" node="11vVX88rChQ" resolve="mpsProject" />
                </node>
                <node concept="liA8E" id="53_gmpoLDKw" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~IProject.getProjectModules()" resolve="getProjectModules" />
                </node>
              </node>
              <node concept="liA8E" id="53_gmpoLDKx" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="11vVX88rLeQ" role="3cqZAp">
          <node concept="3cpWsn" id="11vVX88rLeR" role="3cpWs9">
            <property role="TrG5h" value="simpleSolution1" />
            <node concept="3uibUv" id="11vVX88rLeS" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="11vVX88rLEN" role="33vP2m">
              <node concept="2OqwBi" id="11vVX88rLEO" role="2Oq$k0">
                <node concept="37vLTw" id="11vVX88rLEP" role="2Oq$k0">
                  <ref role="3cqZAo" node="11vVX88rChQ" resolve="mpsProject" />
                </node>
                <node concept="liA8E" id="11vVX88rLEQ" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~IProject.getProjectModules()" resolve="getProjectModules" />
                </node>
              </node>
              <node concept="liA8E" id="11vVX88rLER" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                <node concept="3cmrfG" id="11vVX88rLES" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="11vVX88rCic" role="3cqZAp">
          <node concept="17R0WA" id="11vVX88rCid" role="1gVkn0">
            <node concept="Xl_RD" id="11vVX88rCie" role="3uHU7w">
              <property role="Xl_RC" value="simple.solution1" />
            </node>
            <node concept="2OqwBi" id="11vVX88rCif" role="3uHU7B">
              <node concept="37vLTw" id="11vVX88rLZT" role="2Oq$k0">
                <ref role="3cqZAo" node="11vVX88rLeR" resolve="simpleSolution1" />
              </node>
              <node concept="liA8E" id="11vVX88rCim" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
              </node>
            </node>
          </node>
          <node concept="3cpWs3" id="53_gmpoLFcM" role="1gVpfI">
            <node concept="2OqwBi" id="53_gmpoLFRB" role="3uHU7w">
              <node concept="37vLTw" id="53_gmpoLFFo" role="2Oq$k0">
                <ref role="3cqZAo" node="11vVX88rLeR" resolve="simpleSolution1" />
              </node>
              <node concept="liA8E" id="53_gmpoLG2j" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
              </node>
            </node>
            <node concept="Xl_RD" id="53_gmpoLE_8" role="3uHU7B">
              <property role="Xl_RC" value="Module expected to be named simple.solution1 but it was named " />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6h4an0SZO5i" role="3cqZAp" />
        <node concept="3SKdUt" id="11vVX88rCiz" role="3cqZAp">
          <node concept="1PaTwC" id="11vVX88rCi$" role="1aUNEU">
            <node concept="3oM_SD" id="11vVX88rCi_" role="1PaTwD">
              <property role="3oM_SC" value="start" />
            </node>
            <node concept="3oM_SD" id="11vVX88rCiA" role="1PaTwD">
              <property role="3oM_SC" value="Modelix" />
            </node>
            <node concept="3oM_SD" id="11vVX88rCiB" role="1PaTwD">
              <property role="3oM_SC" value="Server" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1QKKVBBDih_" role="3cqZAp">
          <node concept="3cpWsn" id="1QKKVBBDihA" role="3cpWs9">
            <property role="TrG5h" value="ms" />
            <node concept="3uibUv" id="1QKKVBBDihB" role="1tU5fm">
              <ref role="3uigEE" node="5yNJPA6tDKp" resolve="ModelixServerController" />
            </node>
            <node concept="1rXfSq" id="1QKKVBBDi_2" role="33vP2m">
              <ref role="37wK5l" node="1QKKVBBCeoe" resolve="startModelixServer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="11vVX88tk6x" role="3cqZAp">
          <node concept="2YIFZM" id="11vVX88tklU" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <node concept="3cmrfG" id="11vVX88tkq6" role="37wK5m">
              <property role="3cmrfH" value="5000" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="11vVX88rCiP" role="3cqZAp" />
        <node concept="3SKdUt" id="11vVX88rCiQ" role="3cqZAp">
          <node concept="1PaTwC" id="11vVX88rCiR" role="1aUNEU">
            <node concept="3oM_SD" id="11vVX88rCiS" role="1PaTwD">
              <property role="3oM_SC" value="add" />
            </node>
            <node concept="3oM_SD" id="11vVX88rCiT" role="1PaTwD">
              <property role="3oM_SC" value="CloudRepository" />
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="1QKKVBBDxXU" role="3cqZAp">
          <node concept="2OqwBi" id="1QKKVBBDxXV" role="1gVkn0">
            <node concept="2OqwBi" id="1QKKVBBDxXW" role="2Oq$k0">
              <node concept="2YIFZM" id="1QKKVBBDxXX" role="2Oq$k0">
                <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
              </node>
              <node concept="liA8E" id="1QKKVBBDxXY" role="2OqNvi">
                <ref role="37wK5l" to="csg2:1LVcV5KxBgM" resolve="getRepositories" />
              </node>
            </node>
            <node concept="1v1jN8" id="1QKKVBBDxXZ" role="2OqNvi" />
          </node>
          <node concept="3cpWs3" id="1QKKVBBDxY0" role="1gVpfI">
            <node concept="Xl_RD" id="1QKKVBBDxY1" role="3uHU7B">
              <property role="Xl_RC" value="Expected not to find CloudRepositories: " />
            </node>
            <node concept="2OqwBi" id="1QKKVBBDxY2" role="3uHU7w">
              <node concept="2OqwBi" id="1QKKVBBDxY3" role="2Oq$k0">
                <node concept="2YIFZM" id="1QKKVBBDxY4" role="2Oq$k0">
                  <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                  <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                </node>
                <node concept="liA8E" id="1QKKVBBDxY5" role="2OqNvi">
                  <ref role="37wK5l" to="csg2:1LVcV5KxBgM" resolve="getRepositories" />
                </node>
              </node>
              <node concept="ANE8D" id="1QKKVBBDxY6" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1QKKVBBDkgM" role="3cqZAp">
          <node concept="3cpWsn" id="1QKKVBBDkgN" role="3cpWs9">
            <property role="TrG5h" value="cr" />
            <node concept="3uibUv" id="1QKKVBBDkgO" role="1tU5fm">
              <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
            </node>
            <node concept="1rXfSq" id="1QKKVBBDk$S" role="33vP2m">
              <ref role="37wK5l" node="1QKKVBBCC1x" resolve="addCloudRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="11vVX88tkFT" role="3cqZAp">
          <node concept="2YIFZM" id="11vVX88tkFU" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <node concept="3cmrfG" id="11vVX88tkFV" role="37wK5m">
              <property role="3cmrfH" value="5000" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6h4an0SZPg9" role="3cqZAp" />
        <node concept="3SKdUt" id="11vVX88rCj3" role="3cqZAp">
          <node concept="1PaTwC" id="11vVX88rCj4" role="1aUNEU">
            <node concept="3oM_SD" id="11vVX88rCj5" role="1PaTwD">
              <property role="3oM_SC" value="store" />
            </node>
            <node concept="3oM_SD" id="11vVX88rCj6" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="11vVX88rCj7" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="11vVX88rCj8" role="1PaTwD">
              <property role="3oM_SC" value="CloudRepository" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="11vVX88rKcp" role="3cqZAp">
          <node concept="3cpWsn" id="11vVX88rKcq" role="3cpWs9">
            <property role="TrG5h" value="treeInRepository" />
            <node concept="3uibUv" id="11vVX88rKcr" role="1tU5fm">
              <ref role="3uigEE" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
            </node>
            <node concept="2ShNRf" id="11vVX88rKtg" role="33vP2m">
              <node concept="1pGfFk" id="11vVX88rKt4" role="2ShVmc">
                <ref role="37wK5l" to="csg2:3i6diw3mtOf" resolve="TreeInRepository" />
                <node concept="37vLTw" id="11vVX88rKvZ" role="37wK5m">
                  <ref role="3cqZAo" node="1QKKVBBDkgN" resolve="cr" />
                </node>
                <node concept="2ShNRf" id="11vVX88rYWy" role="37wK5m">
                  <node concept="1pGfFk" id="11vVX88rYWm" role="2ShVmc">
                    <ref role="37wK5l" to="xkhl:~TreeId.&lt;init&gt;(java.lang.String)" resolve="TreeId" />
                    <node concept="Xl_RD" id="11vVX88rZ1p" role="37wK5m">
                      <property role="Xl_RC" value="default" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="11vVX88tlXB" role="3cqZAp">
          <node concept="1QHqEC" id="11vVX88tlXD" role="1QHqEI">
            <node concept="3clFbS" id="11vVX88tlXF" role="1bW5cS">
              <node concept="3clFbF" id="e_REOZbrUY" role="3cqZAp">
                <node concept="2OqwBi" id="e_REOZbrUZ" role="3clFbG">
                  <node concept="2ShNRf" id="e_REOZbrV0" role="2Oq$k0">
                    <node concept="HV5vD" id="e_REOZbrV1" role="2ShVmc">
                      <ref role="HV5vE" to="csg2:i0AVAFXWm5" resolve="ModelCloudImporter" />
                    </node>
                  </node>
                  <node concept="liA8E" id="e_REOZbrV2" role="2OqNvi">
                    <ref role="37wK5l" to="csg2:i0AVAFY82L" resolve="copyInModelixAsIndependentModule" />
                    <node concept="37vLTw" id="11vVX88rKDx" role="37wK5m">
                      <ref role="3cqZAo" node="11vVX88rKcq" resolve="treeInRepository" />
                    </node>
                    <node concept="37vLTw" id="11vVX88rM8S" role="37wK5m">
                      <ref role="3cqZAo" node="11vVX88rLeR" resolve="simpleSolution1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="11vVX88tmu0" role="ukAjM">
            <node concept="37vLTw" id="11vVX88tmfN" role="2Oq$k0">
              <ref role="3cqZAo" node="11vVX88rChQ" resolve="mpsProject" />
            </node>
            <node concept="liA8E" id="11vVX88tmFu" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6JwgQ7USL6s" role="3cqZAp" />
        <node concept="1gVbGN" id="6JwgQ7UWLdt" role="3cqZAp">
          <node concept="2OqwBi" id="6JwgQ7UWLdu" role="1gVkn0">
            <node concept="37vLTw" id="6JwgQ7UWLdv" role="2Oq$k0">
              <ref role="3cqZAo" node="6JwgQ7UR0j5" resolve="pbc" />
            </node>
            <node concept="liA8E" id="6JwgQ7UWLdw" role="2OqNvi">
              <ref role="37wK5l" to="nhvc:6JwgQ7URCLz" resolve="isEmpty" />
            </node>
          </node>
          <node concept="3cpWs3" id="6JwgQ7UWLdx" role="1gVpfI">
            <node concept="2OqwBi" id="6JwgQ7UWLdy" role="3uHU7w">
              <node concept="37vLTw" id="6JwgQ7UWLdz" role="2Oq$k0">
                <ref role="3cqZAo" node="6JwgQ7UR0j5" resolve="pbc" />
              </node>
              <node concept="liA8E" id="6JwgQ7UWLd$" role="2OqNvi">
                <ref role="37wK5l" to="nhvc:6JwgQ7UW22M" resolve="describeState" />
              </node>
            </node>
            <node concept="Xl_RD" id="6JwgQ7UWLd_" role="3uHU7B">
              <property role="Xl_RC" value="The PersistedBindingConfiguration is expected to be empty, it was " />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="11vVX88rIPK" role="3cqZAp" />
        <node concept="3SKdUt" id="11vVX88rCja" role="3cqZAp">
          <node concept="1PaTwC" id="11vVX88rCjb" role="1aUNEU">
            <node concept="3oM_SD" id="11vVX88rCjc" role="1PaTwD">
              <property role="3oM_SC" value="dump" />
            </node>
            <node concept="3oM_SD" id="11vVX88rCjd" role="1PaTwD">
              <property role="3oM_SC" value="ModelixServer" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7JjSHvQ4tsk" role="3cqZAp">
          <node concept="3cpWsn" id="7JjSHvQ4tsl" role="3cpWs9">
            <property role="TrG5h" value="actualJsonDump" />
            <node concept="3uibUv" id="7JjSHvQ4tsm" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
            <node concept="2OqwBi" id="7JjSHvQ4u39" role="33vP2m">
              <node concept="37vLTw" id="1QKKVBBDjlx" role="2Oq$k0">
                <ref role="3cqZAo" node="1QKKVBBDihA" resolve="ms" />
              </node>
              <node concept="liA8E" id="7JjSHvQ4udC" role="2OqNvi">
                <ref role="37wK5l" node="7JjSHvQ43L7" resolve="jsonDump" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7JjSHvQ6OQs" role="3cqZAp">
          <node concept="3cpWsn" id="7JjSHvQ6OQt" role="3cpWs9">
            <property role="TrG5h" value="expectedJsonDump" />
            <node concept="3uibUv" id="7JjSHvQ6OQu" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
            <node concept="1rXfSq" id="7JjSHvQ6PuC" role="33vP2m">
              <ref role="37wK5l" node="7JjSHvQ4HQK" resolve="loadJsonDump" />
              <node concept="Xl_RD" id="7JjSHvQ6Pyq" role="37wK5m">
                <property role="Xl_RC" value="dump1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7JjSHvQ6UAO" role="3cqZAp">
          <node concept="1rXfSq" id="7JjSHvQ6UAM" role="3clFbG">
            <ref role="37wK5l" node="7JjSHvQ4V3I" resolve="assertJsonsAreEquals" />
            <node concept="37vLTw" id="7JjSHvQ6V3P" role="37wK5m">
              <ref role="3cqZAo" node="7JjSHvQ6OQt" resolve="expectedJsonDump" />
            </node>
            <node concept="37vLTw" id="7JjSHvQ6VeL" role="37wK5m">
              <ref role="3cqZAo" node="7JjSHvQ4tsl" resolve="actualJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="11vVX88rCjq" role="3cqZAp" />
        <node concept="3cpWs6" id="11vVX88rCjr" role="3cqZAp">
          <node concept="2YIFZM" id="11vVX88rCjs" role="3cqZAk">
            <ref role="37wK5l" node="5yNJPA6trVb" resolve="ok" />
            <ref role="1Pybhc" node="5yNJPA6btY7" resolve="TestResult" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1QKKVBBBRkU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QKKVBBBSUN" role="jymVt" />
    <node concept="3uibUv" id="11vVX88rCju" role="1zkMxy">
      <ref role="3uigEE" node="5yNJPA6tjxd" resolve="IntegrationTest" />
    </node>
  </node>
  <node concept="312cEu" id="11vVX88wjHV">
    <property role="TrG5h" value="ModelServerDumper" />
    <property role="3GE5qa" value="support" />
    <node concept="2tJIrI" id="11vVX88wjIT" role="jymVt" />
    <node concept="3clFb_" id="11vVX88w$Cb" role="jymVt">
      <property role="TrG5h" value="toJson" />
      <node concept="37vLTG" id="11vVX88wBjA" role="3clF46">
        <property role="TrG5h" value="branch" />
        <node concept="3uibUv" id="11vVX88wBye" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
        </node>
      </node>
      <node concept="37vLTG" id="11vVX88w_l0" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3cpWsb" id="11vVX88w_pI" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="Aop38HYuAx" role="3clF46">
        <property role="TrG5h" value="withId" />
        <node concept="10P_77" id="Aop38HYvqe" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="11vVX88w$Ce" role="3clF47">
        <node concept="3cpWs6" id="Aop38HXTvQ" role="3cqZAp">
          <node concept="1rXfSq" id="Aop38HXV5v" role="3cqZAk">
            <ref role="37wK5l" node="Aop38HXL_X" resolve="toJsonHelper" />
            <node concept="37vLTw" id="Aop38HXVCR" role="37wK5m">
              <ref role="3cqZAo" node="11vVX88wBjA" resolve="branch" />
            </node>
            <node concept="37vLTw" id="Aop38HXWzf" role="37wK5m">
              <ref role="3cqZAo" node="11vVX88w_l0" resolve="nodeId" />
            </node>
            <node concept="Xl_RD" id="Aop38HXX6X" role="37wK5m">
              <property role="Xl_RC" value="&lt;ROOT&gt;" />
            </node>
            <node concept="37vLTw" id="Aop38HYyBs" role="37wK5m">
              <ref role="3cqZAo" node="Aop38HYuAx" resolve="withId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="11vVX88w$rA" role="1B3o_S" />
      <node concept="3uibUv" id="11vVX88wA$2" role="3clF45">
        <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
      </node>
    </node>
    <node concept="2tJIrI" id="7JjSHvQ7C5V" role="jymVt" />
    <node concept="3clFb_" id="Aop38HXL_X" role="jymVt">
      <property role="TrG5h" value="toJsonHelper" />
      <node concept="37vLTG" id="Aop38HXL_Y" role="3clF46">
        <property role="TrG5h" value="branch" />
        <node concept="3uibUv" id="Aop38HXL_Z" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
        </node>
      </node>
      <node concept="37vLTG" id="Aop38HXLA0" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3cpWsb" id="Aop38HXLA1" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="Aop38HXQay" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="17QB3L" id="Aop38HXR3S" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="Aop38HYz8s" role="3clF46">
        <property role="TrG5h" value="withId" />
        <node concept="10P_77" id="Aop38HYz8t" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="Aop38HXLA2" role="3clF47">
        <node concept="3cpWs8" id="Aop38HXLA3" role="3cqZAp">
          <node concept="3cpWsn" id="Aop38HXLA4" role="3cpWs9">
            <property role="TrG5h" value="jo" />
            <node concept="3uibUv" id="Aop38HXLA5" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
            <node concept="2ShNRf" id="Aop38HXLA6" role="33vP2m">
              <node concept="1pGfFk" id="Aop38HXLA7" role="2ShVmc">
                <ref role="37wK5l" to="wy2b:~JsonObject.&lt;init&gt;()" resolve="JsonObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Aop38HXLA8" role="3cqZAp">
          <node concept="3cpWsn" id="Aop38HXLA9" role="3cpWs9">
            <property role="TrG5h" value="rt" />
            <node concept="3uibUv" id="Aop38HXLAa" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~IReadTransaction" resolve="IReadTransaction" />
            </node>
            <node concept="2OqwBi" id="Aop38HXLAb" role="33vP2m">
              <node concept="37vLTw" id="Aop38HXLAc" role="2Oq$k0">
                <ref role="3cqZAo" node="Aop38HXL_Y" resolve="branch" />
              </node>
              <node concept="liA8E" id="Aop38HXLAd" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~IBranch.getReadTransaction()" resolve="getReadTransaction" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Aop38HY$Op" role="3cqZAp">
          <node concept="3clFbS" id="Aop38HY$Oq" role="3clFbx">
            <node concept="3clFbF" id="Aop38HY$Or" role="3cqZAp">
              <node concept="2OqwBi" id="Aop38HY$Os" role="3clFbG">
                <node concept="37vLTw" id="Aop38HY$Ot" role="2Oq$k0">
                  <ref role="3cqZAo" node="Aop38HXLA4" resolve="jo" />
                </node>
                <node concept="liA8E" id="Aop38HY$Ou" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonObject.addProperty(java.lang.String,java.lang.Number)" resolve="addProperty" />
                  <node concept="Xl_RD" id="Aop38HY$Ov" role="37wK5m">
                    <property role="Xl_RC" value="$id" />
                  </node>
                  <node concept="37vLTw" id="Aop38HYARg" role="37wK5m">
                    <ref role="3cqZAo" node="Aop38HXLA0" resolve="nodeId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="Aop38HYAlW" role="3clFbw">
            <ref role="3cqZAo" node="Aop38HYz8s" resolve="withId" />
          </node>
        </node>
        <node concept="3cpWs8" id="Aop38HXLAe" role="3cqZAp">
          <node concept="3cpWsn" id="Aop38HXLAf" role="3cpWs9">
            <property role="TrG5h" value="role" />
            <node concept="17QB3L" id="Aop38HXLAg" role="1tU5fm" />
            <node concept="2OqwBi" id="Aop38HXLAh" role="33vP2m">
              <node concept="37vLTw" id="Aop38HXLAi" role="2Oq$k0">
                <ref role="3cqZAo" node="Aop38HXLA9" resolve="rt" />
              </node>
              <node concept="liA8E" id="Aop38HXLAj" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~ITransaction.getRole(long)" resolve="getRole" />
                <node concept="37vLTw" id="Aop38HXLAk" role="37wK5m">
                  <ref role="3cqZAo" node="Aop38HXLA0" resolve="nodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Aop38HXLAl" role="3cqZAp">
          <node concept="3clFbS" id="Aop38HXLAm" role="3clFbx">
            <node concept="3clFbF" id="Aop38HXLAn" role="3cqZAp">
              <node concept="2OqwBi" id="Aop38HXLAo" role="3clFbG">
                <node concept="37vLTw" id="Aop38HXLAp" role="2Oq$k0">
                  <ref role="3cqZAo" node="Aop38HXLA4" resolve="jo" />
                </node>
                <node concept="liA8E" id="Aop38HXLAq" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonObject.addProperty(java.lang.String,java.lang.String)" resolve="addProperty" />
                  <node concept="Xl_RD" id="Aop38HXLAr" role="37wK5m">
                    <property role="Xl_RC" value="$role" />
                  </node>
                  <node concept="37vLTw" id="Aop38HXLAs" role="37wK5m">
                    <ref role="3cqZAo" node="Aop38HXLAf" resolve="role" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="Aop38HXLAt" role="3clFbw">
            <node concept="10Nm6u" id="Aop38HXLAu" role="3uHU7w" />
            <node concept="37vLTw" id="Aop38HXLAv" role="3uHU7B">
              <ref role="3cqZAo" node="Aop38HXLAf" resolve="role" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Aop38HXLAw" role="3cqZAp">
          <node concept="3cpWsn" id="Aop38HXLAx" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3uibUv" id="Aop38HXLAy" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
            </node>
            <node concept="2OqwBi" id="Aop38HXLAz" role="33vP2m">
              <node concept="37vLTw" id="Aop38HXLA$" role="2Oq$k0">
                <ref role="3cqZAo" node="Aop38HXLA9" resolve="rt" />
              </node>
              <node concept="liA8E" id="Aop38HXLA_" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~ITransaction.getConcept(long)" resolve="getConcept" />
                <node concept="37vLTw" id="Aop38HXLAA" role="37wK5m">
                  <ref role="3cqZAo" node="Aop38HXLA0" resolve="nodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5pQ1kvRHh2U" role="3cqZAp">
          <node concept="3clFbS" id="5pQ1kvRHh2W" role="3clFbx">
            <node concept="abc8K" id="5pQ1kvRHm2Q" role="3cqZAp">
              <node concept="Xl_RD" id="5pQ1kvRHm6S" role="abp_N">
                <property role="Xl_RC" value="PROJECT!!!" />
              </node>
            </node>
            <node concept="abc8K" id="5pQ1kvRI_LZ" role="3cqZAp">
              <node concept="Xl_RD" id="5pQ1kvRI_QG" role="abp_N">
                <property role="Xl_RC" value="ALL CHILDREN: " />
              </node>
              <node concept="2OqwBi" id="5pQ1kvRI$yF" role="abp_N">
                <node concept="37vLTw" id="5pQ1kvRI$mr" role="2Oq$k0">
                  <ref role="3cqZAo" node="Aop38HXLA9" resolve="rt" />
                </node>
                <node concept="liA8E" id="5pQ1kvRI$US" role="2OqNvi">
                  <ref role="37wK5l" to="jks5:~ITransaction.getAllChildren(long)" resolve="getAllChildren" />
                  <node concept="37vLTw" id="5pQ1kvRI_3P" role="37wK5m">
                    <ref role="3cqZAo" node="Aop38HXLA0" resolve="nodeId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="5pQ1kvRI2DP" role="3clFbw">
            <node concept="3y3z36" id="5pQ1kvRI42d" role="3uHU7B">
              <node concept="10Nm6u" id="5pQ1kvRI4az" role="3uHU7w" />
              <node concept="37vLTw" id="5pQ1kvRI3PU" role="3uHU7B">
                <ref role="3cqZAo" node="Aop38HXLAx" resolve="concept" />
              </node>
            </node>
            <node concept="17R0WA" id="5pQ1kvRHkLv" role="3uHU7w">
              <node concept="Xl_RD" id="5pQ1kvRHlXf" role="3uHU7w">
                <property role="Xl_RC" value="org.modelix.model.runtimelang.Project" />
              </node>
              <node concept="2OqwBi" id="5pQ1kvRHjcf" role="3uHU7B">
                <node concept="37vLTw" id="5pQ1kvRHivG" role="2Oq$k0">
                  <ref role="3cqZAo" node="Aop38HXLAx" resolve="concept" />
                </node>
                <node concept="liA8E" id="5pQ1kvRHkq4" role="2OqNvi">
                  <ref role="37wK5l" to="jks5:~IConcept.getLongName()" resolve="getLongName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Aop38HXLAB" role="3cqZAp">
          <node concept="3clFbS" id="Aop38HXLAC" role="3clFbx">
            <node concept="3clFbF" id="Aop38HXLAD" role="3cqZAp">
              <node concept="2OqwBi" id="Aop38HXLAE" role="3clFbG">
                <node concept="37vLTw" id="Aop38HXLAF" role="2Oq$k0">
                  <ref role="3cqZAo" node="Aop38HXLA4" resolve="jo" />
                </node>
                <node concept="liA8E" id="Aop38HXLAG" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonObject.addProperty(java.lang.String,java.lang.String)" resolve="addProperty" />
                  <node concept="Xl_RD" id="Aop38HXLAH" role="37wK5m">
                    <property role="Xl_RC" value="$concept" />
                  </node>
                  <node concept="2OqwBi" id="Aop38HXLAI" role="37wK5m">
                    <node concept="37vLTw" id="Aop38HXLAJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="Aop38HXLAx" resolve="concept" />
                    </node>
                    <node concept="liA8E" id="Aop38HXLAK" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~IConcept.getLongName()" resolve="getLongName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="Aop38HXLAL" role="3clFbw">
            <node concept="10Nm6u" id="Aop38HXLAM" role="3uHU7w" />
            <node concept="37vLTw" id="Aop38HXLAN" role="3uHU7B">
              <ref role="3cqZAo" node="Aop38HXLAx" resolve="concept" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="Aop38HXLAO" role="3cqZAp">
          <node concept="2GrKxI" id="Aop38HXLAP" role="2Gsz3X">
            <property role="TrG5h" value="prop" />
          </node>
          <node concept="3clFbS" id="Aop38HXLAQ" role="2LFqv$">
            <node concept="3clFbF" id="Aop38HXLAR" role="3cqZAp">
              <node concept="2OqwBi" id="Aop38HXLAS" role="3clFbG">
                <node concept="37vLTw" id="Aop38HXLAT" role="2Oq$k0">
                  <ref role="3cqZAo" node="Aop38HXLA4" resolve="jo" />
                </node>
                <node concept="liA8E" id="Aop38HXLAU" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonObject.addProperty(java.lang.String,java.lang.String)" resolve="addProperty" />
                  <node concept="2GrUjf" id="Aop38HXLAV" role="37wK5m">
                    <ref role="2Gs0qQ" node="Aop38HXLAP" resolve="prop" />
                  </node>
                  <node concept="2OqwBi" id="Aop38HXLAW" role="37wK5m">
                    <node concept="37vLTw" id="Aop38HXLAX" role="2Oq$k0">
                      <ref role="3cqZAo" node="Aop38HXLA9" resolve="rt" />
                    </node>
                    <node concept="liA8E" id="Aop38HXLAY" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~ITransaction.getProperty(long,java.lang.String)" resolve="getProperty" />
                      <node concept="37vLTw" id="Aop38HXLAZ" role="37wK5m">
                        <ref role="3cqZAo" node="Aop38HXLA0" resolve="nodeId" />
                      </node>
                      <node concept="2GrUjf" id="Aop38HXLB0" role="37wK5m">
                        <ref role="2Gs0qQ" node="Aop38HXLAP" resolve="prop" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="Aop38HXLB1" role="2GsD0m">
            <node concept="37vLTw" id="Aop38HXLB2" role="2Oq$k0">
              <ref role="3cqZAo" node="Aop38HXLA9" resolve="rt" />
            </node>
            <node concept="liA8E" id="Aop38HXLB3" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~ITransaction.getPropertyRoles(long)" resolve="getPropertyRoles" />
              <node concept="37vLTw" id="Aop38HXLB4" role="37wK5m">
                <ref role="3cqZAo" node="Aop38HXLA0" resolve="nodeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Aop38HXLB5" role="3cqZAp">
          <node concept="3cpWsn" id="Aop38HXLB6" role="3cpWs9">
            <property role="TrG5h" value="children" />
            <node concept="3uibUv" id="Aop38HXLB7" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonArray" resolve="JsonArray" />
            </node>
            <node concept="2ShNRf" id="Aop38HXLB8" role="33vP2m">
              <node concept="1pGfFk" id="Aop38HXLB9" role="2ShVmc">
                <ref role="37wK5l" to="wy2b:~JsonArray.&lt;init&gt;()" resolve="JsonArray" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Aop38HY3xw" role="3cqZAp">
          <node concept="3cpWsn" id="Aop38HY3xz" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="Aop38HY3xu" role="1tU5fm" />
            <node concept="3cmrfG" id="Aop38HY3Xi" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="Aop38HXLBa" role="3cqZAp">
          <node concept="2GrKxI" id="Aop38HXLBb" role="2Gsz3X">
            <property role="TrG5h" value="child" />
          </node>
          <node concept="2OqwBi" id="Aop38HXLBc" role="2GsD0m">
            <node concept="37vLTw" id="Aop38HXLBd" role="2Oq$k0">
              <ref role="3cqZAo" node="Aop38HXLA9" resolve="rt" />
            </node>
            <node concept="liA8E" id="Aop38HXLBe" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~ITransaction.getAllChildren(long)" resolve="getAllChildren" />
              <node concept="37vLTw" id="Aop38HXLBf" role="37wK5m">
                <ref role="3cqZAo" node="Aop38HXLA0" resolve="nodeId" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="Aop38HXLBg" role="2LFqv$">
            <node concept="3clFbF" id="Aop38HXLBh" role="3cqZAp">
              <node concept="2OqwBi" id="Aop38HXLBi" role="3clFbG">
                <node concept="37vLTw" id="Aop38HXLBj" role="2Oq$k0">
                  <ref role="3cqZAo" node="Aop38HXLB6" resolve="children" />
                </node>
                <node concept="liA8E" id="Aop38HXLBk" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonArray.add(com.google.gson.JsonElement)" resolve="add" />
                  <node concept="1rXfSq" id="Aop38HXLBl" role="37wK5m">
                    <ref role="37wK5l" node="Aop38HXL_X" resolve="toJsonHelper" />
                    <node concept="37vLTw" id="Aop38HXLBm" role="37wK5m">
                      <ref role="3cqZAo" node="Aop38HXL_Y" resolve="branch" />
                    </node>
                    <node concept="2GrUjf" id="Aop38HXLBn" role="37wK5m">
                      <ref role="2Gs0qQ" node="Aop38HXLBb" resolve="child" />
                    </node>
                    <node concept="3cpWs3" id="Aop38HYaNx" role="37wK5m">
                      <node concept="Xl_RD" id="Aop38HYaRm" role="3uHU7w">
                        <property role="Xl_RC" value=")" />
                      </node>
                      <node concept="3cpWs3" id="Aop38HY9eA" role="3uHU7B">
                        <node concept="3cpWs3" id="Aop38HY1CG" role="3uHU7B">
                          <node concept="37vLTw" id="Aop38HY0KK" role="3uHU7B">
                            <ref role="3cqZAo" node="Aop38HXQay" resolve="path" />
                          </node>
                          <node concept="Xl_RD" id="Aop38HY1Gx" role="3uHU7w">
                            <property role="Xl_RC" value=".child(" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="Aop38HY9ir" role="3uHU7w">
                          <ref role="3cqZAo" node="Aop38HY3xz" resolve="i" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="Aop38HY$qp" role="37wK5m">
                      <ref role="3cqZAo" node="Aop38HYz8s" resolve="withId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="Aop38HY7pD" role="3cqZAp">
              <node concept="3uNrnE" id="Aop38HY8vy" role="3clFbG">
                <node concept="37vLTw" id="Aop38HY8v$" role="2$L3a6">
                  <ref role="3cqZAo" node="Aop38HY3xz" resolve="i" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Aop38HXLBo" role="3cqZAp">
          <node concept="3clFbS" id="Aop38HXLBp" role="3clFbx">
            <node concept="3clFbF" id="Aop38HXLBq" role="3cqZAp">
              <node concept="2OqwBi" id="Aop38HXLBr" role="3clFbG">
                <node concept="37vLTw" id="Aop38HXLBs" role="2Oq$k0">
                  <ref role="3cqZAo" node="Aop38HXLA4" resolve="jo" />
                </node>
                <node concept="liA8E" id="Aop38HXLBt" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonObject.add(java.lang.String,com.google.gson.JsonElement)" resolve="add" />
                  <node concept="Xl_RD" id="Aop38HXLBu" role="37wK5m">
                    <property role="Xl_RC" value="$children" />
                  </node>
                  <node concept="37vLTw" id="Aop38HXLBv" role="37wK5m">
                    <ref role="3cqZAo" node="Aop38HXLB6" resolve="children" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="Aop38HXLBw" role="3clFbw">
            <node concept="3cmrfG" id="Aop38HXLBx" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="Aop38HXLBy" role="3uHU7B">
              <node concept="37vLTw" id="Aop38HXLBz" role="2Oq$k0">
                <ref role="3cqZAo" node="Aop38HXLB6" resolve="children" />
              </node>
              <node concept="liA8E" id="Aop38HXLB$" role="2OqNvi">
                <ref role="37wK5l" to="wy2b:~JsonArray.size()" resolve="size" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Aop38HXLB_" role="3cqZAp">
          <node concept="3cpWsn" id="Aop38HXLBA" role="3cpWs9">
            <property role="TrG5h" value="references" />
            <node concept="3uibUv" id="Aop38HXLBB" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
            <node concept="2ShNRf" id="Aop38HXLBC" role="33vP2m">
              <node concept="1pGfFk" id="Aop38HXLBD" role="2ShVmc">
                <ref role="37wK5l" to="wy2b:~JsonObject.&lt;init&gt;()" resolve="JsonObject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="Aop38HXLBE" role="3cqZAp">
          <node concept="2GrKxI" id="Aop38HXLBF" role="2Gsz3X">
            <property role="TrG5h" value="ref" />
          </node>
          <node concept="2OqwBi" id="Aop38HXLBG" role="2GsD0m">
            <node concept="37vLTw" id="Aop38HXLBH" role="2Oq$k0">
              <ref role="3cqZAo" node="Aop38HXLA9" resolve="rt" />
            </node>
            <node concept="liA8E" id="Aop38HXLBI" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~ITransaction.getReferenceRoles(long)" resolve="getReferenceRoles" />
              <node concept="37vLTw" id="Aop38HXLBJ" role="37wK5m">
                <ref role="3cqZAo" node="Aop38HXLA0" resolve="nodeId" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="Aop38HXLBK" role="2LFqv$">
            <node concept="3clFbF" id="Aop38HXLBL" role="3cqZAp">
              <node concept="2OqwBi" id="Aop38HXLBM" role="3clFbG">
                <node concept="37vLTw" id="Aop38HXLBN" role="2Oq$k0">
                  <ref role="3cqZAo" node="Aop38HXLBA" resolve="references" />
                </node>
                <node concept="liA8E" id="Aop38HXLBO" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonObject.addProperty(java.lang.String,java.lang.String)" resolve="addProperty" />
                  <node concept="2GrUjf" id="Aop38HXLBP" role="37wK5m">
                    <ref role="2Gs0qQ" node="Aop38HXLBF" resolve="ref" />
                  </node>
                  <node concept="1rXfSq" id="Aop38HXLBQ" role="37wK5m">
                    <ref role="37wK5l" node="7JjSHvQ7DfE" resolve="printReference" />
                    <node concept="2OqwBi" id="Aop38HXLBR" role="37wK5m">
                      <node concept="37vLTw" id="Aop38HXLBS" role="2Oq$k0">
                        <ref role="3cqZAo" node="Aop38HXLA9" resolve="rt" />
                      </node>
                      <node concept="liA8E" id="Aop38HXLBT" role="2OqNvi">
                        <ref role="37wK5l" to="jks5:~ITransaction.getReferenceTarget(long,java.lang.String)" resolve="getReferenceTarget" />
                        <node concept="37vLTw" id="Aop38HXLBU" role="37wK5m">
                          <ref role="3cqZAo" node="Aop38HXLA0" resolve="nodeId" />
                        </node>
                        <node concept="2GrUjf" id="Aop38HXLBV" role="37wK5m">
                          <ref role="2Gs0qQ" node="Aop38HXLBF" resolve="ref" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="Aop38HXLBW" role="37wK5m">
                      <ref role="3cqZAo" node="Aop38HXL_Y" resolve="branch" />
                    </node>
                    <node concept="37vLTw" id="Aop38HYc$l" role="37wK5m">
                      <ref role="3cqZAo" node="Aop38HXQay" resolve="path" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Aop38HXLBX" role="3cqZAp">
          <node concept="3clFbS" id="Aop38HXLBY" role="3clFbx">
            <node concept="3clFbF" id="Aop38HXLBZ" role="3cqZAp">
              <node concept="2OqwBi" id="Aop38HXLC0" role="3clFbG">
                <node concept="37vLTw" id="Aop38HXLC1" role="2Oq$k0">
                  <ref role="3cqZAo" node="Aop38HXLA4" resolve="jo" />
                </node>
                <node concept="liA8E" id="Aop38HXLC2" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonObject.add(java.lang.String,com.google.gson.JsonElement)" resolve="add" />
                  <node concept="Xl_RD" id="Aop38HXLC3" role="37wK5m">
                    <property role="Xl_RC" value="$references" />
                  </node>
                  <node concept="37vLTw" id="Aop38HXLC4" role="37wK5m">
                    <ref role="3cqZAo" node="Aop38HXLBA" resolve="references" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="Aop38HXLC5" role="3clFbw">
            <node concept="2OqwBi" id="Aop38HXLC6" role="3fr31v">
              <node concept="2OqwBi" id="Aop38HXLC7" role="2Oq$k0">
                <node concept="37vLTw" id="Aop38HXLC8" role="2Oq$k0">
                  <ref role="3cqZAo" node="Aop38HXLBA" resolve="references" />
                </node>
                <node concept="liA8E" id="Aop38HXLC9" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonObject.entrySet()" resolve="entrySet" />
                </node>
              </node>
              <node concept="liA8E" id="Aop38HXLCa" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Set.isEmpty()" resolve="isEmpty" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Aop38HXLCb" role="3cqZAp" />
        <node concept="3cpWs6" id="Aop38HXLCc" role="3cqZAp">
          <node concept="37vLTw" id="Aop38HXLCd" role="3cqZAk">
            <ref role="3cqZAo" node="Aop38HXLA4" resolve="jo" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="Aop38HXOfz" role="1B3o_S" />
      <node concept="3uibUv" id="Aop38HXLCf" role="3clF45">
        <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
      </node>
    </node>
    <node concept="2tJIrI" id="Aop38HXL3j" role="jymVt" />
    <node concept="2tJIrI" id="Aop38HXLw8" role="jymVt" />
    <node concept="3clFb_" id="7JjSHvQ7DfE" role="jymVt">
      <property role="TrG5h" value="printReference" />
      <node concept="3clFbS" id="7JjSHvQ7DfH" role="3clF47">
        <node concept="3clFbJ" id="Aop38HW$jr" role="3cqZAp">
          <node concept="3clFbS" id="Aop38HW$jt" role="3clFbx">
            <node concept="3cpWs8" id="Aop38HWBd2" role="3cqZAp">
              <node concept="3cpWsn" id="Aop38HWBd3" role="3cpWs9">
                <property role="TrG5h" value="pNodeReference" />
                <node concept="3uibUv" id="Aop38HWBd4" role="1tU5fm">
                  <ref role="3uigEE" to="jks5:~PNodeReference" resolve="PNodeReference" />
                </node>
                <node concept="1eOMI4" id="Aop38HWBll" role="33vP2m">
                  <node concept="10QFUN" id="Aop38HWBli" role="1eOMHV">
                    <node concept="3uibUv" id="Aop38HWBln" role="10QFUM">
                      <ref role="3uigEE" to="jks5:~PNodeReference" resolve="PNodeReference" />
                    </node>
                    <node concept="37vLTw" id="Aop38HWBlo" role="10QFUP">
                      <ref role="3cqZAo" node="7JjSHvQ7EGq" resolve="ref" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="Aop38HWLq_" role="3cqZAp">
              <node concept="3cpWsn" id="Aop38HWLqA" role="3cpWs9">
                <property role="TrG5h" value="res" />
                <node concept="3uibUv" id="Aop38HWLqB" role="1tU5fm">
                  <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                </node>
                <node concept="2OqwBi" id="Aop38HWBWu" role="33vP2m">
                  <node concept="37vLTw" id="Aop38HWBJc" role="2Oq$k0">
                    <ref role="3cqZAo" node="Aop38HWBd3" resolve="pNodeReference" />
                  </node>
                  <node concept="liA8E" id="Aop38HWC5g" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~PNodeReference.resolveNode(org.modelix.model.api.INodeResolveContext)" resolve="resolveNode" />
                    <node concept="2ShNRf" id="Aop38HWC9D" role="37wK5m">
                      <node concept="1pGfFk" id="Aop38HWHq7" role="2ShVmc">
                        <ref role="37wK5l" to="jks5:~PNodeResolveContext.&lt;init&gt;(org.modelix.model.api.IBranch)" resolve="PNodeResolveContext" />
                        <node concept="37vLTw" id="Aop38HWJDc" role="37wK5m">
                          <ref role="3cqZAo" node="Aop38HWIdJ" resolve="branch" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="Aop38HWLXB" role="3cqZAp">
              <node concept="3clFbS" id="Aop38HWLXD" role="3clFbx">
                <node concept="3cpWs6" id="Aop38HWMrv" role="3cqZAp">
                  <node concept="10Nm6u" id="Aop38HWMvC" role="3cqZAk" />
                </node>
              </node>
              <node concept="3clFbC" id="Aop38HWMgg" role="3clFbw">
                <node concept="10Nm6u" id="Aop38HWMni" role="3uHU7w" />
                <node concept="37vLTw" id="Aop38HWM3X" role="3uHU7B">
                  <ref role="3cqZAo" node="Aop38HWLqA" resolve="res" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="Aop38HWOaB" role="3cqZAp">
              <node concept="3cpWsn" id="Aop38HWOaC" role="3cpWs9">
                <property role="TrG5h" value="rt" />
                <node concept="3uibUv" id="Aop38HWOaD" role="1tU5fm">
                  <ref role="3uigEE" to="jks5:~IReadTransaction" resolve="IReadTransaction" />
                </node>
                <node concept="2OqwBi" id="Aop38HWOaE" role="33vP2m">
                  <node concept="37vLTw" id="Aop38HWOaF" role="2Oq$k0">
                    <ref role="3cqZAo" node="Aop38HWIdJ" resolve="branch" />
                  </node>
                  <node concept="liA8E" id="Aop38HWOaG" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~IBranch.getReadTransaction()" resolve="getReadTransaction" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3J1_TO" id="Aop38HXCGV" role="3cqZAp">
              <node concept="3uVAMA" id="Aop38HXEMJ" role="1zxBo5">
                <node concept="XOnhg" id="Aop38HXEMK" role="1zc67B">
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="Aop38HXEML" role="1tU5fm">
                    <node concept="3uibUv" id="Aop38HXFEH" role="nSUat">
                      <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="Aop38HXEMM" role="1zc67A">
                  <node concept="YS8fn" id="Aop38HXFLS" role="3cqZAp">
                    <node concept="2ShNRf" id="Aop38HXFPF" role="YScLw">
                      <node concept="1pGfFk" id="Aop38HXGG6" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="RuntimeException" />
                        <node concept="3cpWs3" id="Aop38HYflS" role="37wK5m">
                          <node concept="37vLTw" id="Aop38HYfq6" role="3uHU7w">
                            <ref role="3cqZAo" node="Aop38HYd4C" resolve="path" />
                          </node>
                          <node concept="3cpWs3" id="Aop38HYeNf" role="3uHU7B">
                            <node concept="3cpWs3" id="Aop38HXJcU" role="3uHU7B">
                              <node concept="3cpWs3" id="Aop38HXIuv" role="3uHU7B">
                                <node concept="3cpWs3" id="Aop38HXHwm" role="3uHU7B">
                                  <node concept="Xl_RD" id="Aop38HXGMv" role="3uHU7B">
                                    <property role="Xl_RC" value="Failed to print reference " />
                                  </node>
                                  <node concept="37vLTw" id="Aop38HXH$d" role="3uHU7w">
                                    <ref role="3cqZAo" node="7JjSHvQ7EGq" resolve="ref" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="Aop38HXIQe" role="3uHU7w">
                                  <property role="Xl_RC" value=", branch " />
                                </node>
                              </node>
                              <node concept="37vLTw" id="Aop38HXJgU" role="3uHU7w">
                                <ref role="3cqZAo" node="Aop38HWIdJ" resolve="branch" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="Aop38HYeR7" role="3uHU7w">
                              <property role="Xl_RC" value=", path " />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="Aop38HXH2L" role="37wK5m">
                          <ref role="3cqZAo" node="Aop38HXEMK" resolve="e" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="Aop38HXCGX" role="1zxBo7">
                <node concept="3cpWs8" id="Aop38HX5G7" role="3cqZAp">
                  <node concept="3cpWsn" id="Aop38HX5Ga" role="3cpWs9">
                    <property role="TrG5h" value="mpsNodeId" />
                    <node concept="17QB3L" id="Aop38HX5G5" role="1tU5fm" />
                    <node concept="2OqwBi" id="Aop38HWQGd" role="33vP2m">
                      <node concept="37vLTw" id="Aop38HWQtf" role="2Oq$k0">
                        <ref role="3cqZAo" node="Aop38HWOaC" resolve="rt" />
                      </node>
                      <node concept="liA8E" id="Aop38HWQPt" role="2OqNvi">
                        <ref role="37wK5l" to="jks5:~ITransaction.getProperty(long,java.lang.String)" resolve="getProperty" />
                        <node concept="2OqwBi" id="Aop38HX76X" role="37wK5m">
                          <node concept="37vLTw" id="Aop38HX6Tr" role="2Oq$k0">
                            <ref role="3cqZAo" node="Aop38HWLqA" resolve="res" />
                          </node>
                          <node concept="AQDAd" id="Aop38HXawt" role="2OqNvi">
                            <ref role="37wK5l" to="csg2:68axlwQ7KZL" resolve="nodeIdAsLong" />
                          </node>
                        </node>
                        <node concept="10M0yZ" id="Aop38HX4SV" role="37wK5m">
                          <ref role="3cqZAo" to="xxte:1tdVq1GKnrI" resolve="MPS_NODE_ID_PROPERTY_NAME" />
                          <ref role="1PxDUh" to="xxte:29etMtb9$UP" resolve="ModelSynchronizerBase" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="Aop38HXdqH" role="3cqZAp">
                  <node concept="3clFbS" id="Aop38HXdqJ" role="3clFbx">
                    <node concept="3cpWs6" id="Aop38HXgzP" role="3cqZAp">
                      <node concept="3cpWs3" id="Aop38HXkhg" role="3cqZAk">
                        <node concept="2YIFZM" id="Aop38HXmkq" role="3uHU7w">
                          <ref role="37wK5l" to="wyt6:~Long.toString(long)" resolve="toString" />
                          <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
                          <node concept="2OqwBi" id="Aop38HXmRv" role="37wK5m">
                            <node concept="37vLTw" id="Aop38HXmRw" role="2Oq$k0">
                              <ref role="3cqZAo" node="Aop38HWLqA" resolve="res" />
                            </node>
                            <node concept="AQDAd" id="Aop38HXmRx" role="2OqNvi">
                              <ref role="37wK5l" to="csg2:68axlwQ7KZL" resolve="nodeIdAsLong" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="Aop38HXhG4" role="3uHU7B">
                          <property role="Xl_RC" value="cloud-" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="Aop38HXf2s" role="3clFbw">
                    <node concept="10Nm6u" id="Aop38HXfkg" role="3uHU7w" />
                    <node concept="37vLTw" id="Aop38HXey8" role="3uHU7B">
                      <ref role="3cqZAo" node="Aop38HX5Ga" resolve="mpsNodeId" />
                    </node>
                  </node>
                  <node concept="9aQIb" id="Aop38HXfpi" role="9aQIa">
                    <node concept="3clFbS" id="Aop38HXfpj" role="9aQI4">
                      <node concept="3cpWs6" id="Aop38HXfuj" role="3cqZAp">
                        <node concept="37vLTw" id="Aop38HXfAY" role="3cqZAk">
                          <ref role="3cqZAo" node="Aop38HX5Ga" resolve="mpsNodeId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="Aop38HWAjz" role="3clFbw">
            <node concept="3uibUv" id="Aop38HWB53" role="2ZW6by">
              <ref role="3uigEE" to="jks5:~PNodeReference" resolve="PNodeReference" />
            </node>
            <node concept="37vLTw" id="Aop38HW_9p" role="2ZW6bz">
              <ref role="3cqZAo" node="7JjSHvQ7EGq" resolve="ref" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="Aop38I3Pto" role="3cqZAp">
          <node concept="3clFbS" id="Aop38I3Ptq" role="3clFbx">
            <node concept="3cpWs8" id="Aop38I3SDD" role="3cqZAp">
              <node concept="3cpWsn" id="Aop38I3SDE" role="3cpWs9">
                <property role="TrG5h" value="foreignNodeReference" />
                <node concept="3uibUv" id="Aop38I3SDF" role="1tU5fm">
                  <ref role="3uigEE" to="xxte:7AjmLChWTvU" resolve="ForeignNodeReference" />
                </node>
                <node concept="1eOMI4" id="Aop38I3SMy" role="33vP2m">
                  <node concept="10QFUN" id="Aop38I3SMv" role="1eOMHV">
                    <node concept="3uibUv" id="Aop38I3SM$" role="10QFUM">
                      <ref role="3uigEE" to="xxte:7AjmLChWTvU" resolve="ForeignNodeReference" />
                    </node>
                    <node concept="37vLTw" id="Aop38I3SM_" role="10QFUP">
                      <ref role="3cqZAo" node="7JjSHvQ7EGq" resolve="ref" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="Aop38I3VQ3" role="3cqZAp">
              <node concept="3cpWs3" id="Aop38I3VQ4" role="3cqZAk">
                <node concept="2OqwBi" id="Aop38I3VQ5" role="3uHU7w">
                  <node concept="37vLTw" id="Aop38I41FK" role="2Oq$k0">
                    <ref role="3cqZAo" node="Aop38I3SDE" resolve="foreignNodeReference" />
                  </node>
                  <node concept="liA8E" id="Aop38I42sp" role="2OqNvi">
                    <ref role="37wK5l" to="xxte:7AjmLChXHFD" resolve="getForeignId" />
                  </node>
                </node>
                <node concept="3cpWs3" id="Aop38I3VQ8" role="3uHU7B">
                  <node concept="3cpWs3" id="Aop38I3VQ9" role="3uHU7B">
                    <node concept="Xl_RD" id="Aop38I3VQa" role="3uHU7B">
                      <property role="Xl_RC" value="-&gt;" />
                    </node>
                    <node concept="2OqwBi" id="Aop38I3VQc" role="3uHU7w">
                      <node concept="liA8E" id="Aop38I3Zer" role="2OqNvi">
                        <ref role="37wK5l" to="xxte:7AjmLChXH1q" resolve="getModelName" />
                      </node>
                      <node concept="37vLTw" id="Aop38I3Ysg" role="2Oq$k0">
                        <ref role="3cqZAo" node="Aop38I3SDE" resolve="foreignNodeReference" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="Aop38I3VQg" role="3uHU7w">
                    <property role="Xl_RC" value=":" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="Aop38I3RoK" role="3clFbw">
            <node concept="3uibUv" id="Aop38I3Sw2" role="2ZW6by">
              <ref role="3uigEE" to="xxte:7AjmLChWTvU" resolve="ForeignNodeReference" />
            </node>
            <node concept="37vLTw" id="Aop38I3PWA" role="2ZW6bz">
              <ref role="3cqZAo" node="7JjSHvQ7EGq" resolve="ref" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7JjSHvQ7GOm" role="3cqZAp">
          <node concept="2ZW3vV" id="7JjSHvQ7HhZ" role="3clFbw">
            <node concept="3uibUv" id="7JjSHvQ7I5L" role="2ZW6by">
              <ref role="3uigEE" to="xxte:5gTrVpGyZdS" resolve="SNodeReferenceAdapter" />
            </node>
            <node concept="37vLTw" id="7JjSHvQ7GSm" role="2ZW6bz">
              <ref role="3cqZAo" node="7JjSHvQ7EGq" resolve="ref" />
            </node>
          </node>
          <node concept="3clFbS" id="7JjSHvQ7GOo" role="3clFbx">
            <node concept="3cpWs8" id="7JjSHvQ7K1T" role="3cqZAp">
              <node concept="3cpWsn" id="7JjSHvQ7K1U" role="3cpWs9">
                <property role="TrG5h" value="sNodeReferenceAdapter" />
                <node concept="3uibUv" id="7JjSHvQ7K1V" role="1tU5fm">
                  <ref role="3uigEE" to="xxte:5gTrVpGyZdS" resolve="SNodeReferenceAdapter" />
                </node>
                <node concept="1eOMI4" id="7JjSHvQ7Kl8" role="33vP2m">
                  <node concept="10QFUN" id="7JjSHvQ7Kl5" role="1eOMHV">
                    <node concept="3uibUv" id="7JjSHvQ7Kla" role="10QFUM">
                      <ref role="3uigEE" to="xxte:5gTrVpGyZdS" resolve="SNodeReferenceAdapter" />
                    </node>
                    <node concept="37vLTw" id="7JjSHvQ7Klb" role="10QFUP">
                      <ref role="3cqZAo" node="7JjSHvQ7EGq" resolve="ref" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7jRNnvCr_VQ" role="3cqZAp">
              <node concept="3cpWsn" id="7jRNnvCr_VR" role="3cpWs9">
                <property role="TrG5h" value="sNodeReference" />
                <node concept="3uibUv" id="7jRNnvCr_VS" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
                <node concept="2OqwBi" id="7jRNnvCrAqS" role="33vP2m">
                  <node concept="37vLTw" id="7jRNnvCrAqT" role="2Oq$k0">
                    <ref role="3cqZAo" node="7JjSHvQ7K1U" resolve="sNodeReferenceAdapter" />
                  </node>
                  <node concept="liA8E" id="7jRNnvCrAqU" role="2OqNvi">
                    <ref role="37wK5l" to="xxte:QurUgiyYyg" resolve="getReference" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7AjmLChUTzp" role="3cqZAp">
              <node concept="3clFbS" id="7AjmLChUTzr" role="3clFbx">
                <node concept="3cpWs8" id="7AjmLChViRq" role="3cqZAp">
                  <node concept="3cpWsn" id="7AjmLChViRr" role="3cpWs9">
                    <property role="TrG5h" value="nodeIdForeign" />
                    <node concept="3uibUv" id="7AjmLChViRs" role="1tU5fm">
                      <ref role="3uigEE" to="w1kc:~SNodeId$Foreign" resolve="SNodeId.Foreign" />
                    </node>
                    <node concept="1eOMI4" id="7AjmLChVk0$" role="33vP2m">
                      <node concept="10QFUN" id="7AjmLChVk0x" role="1eOMHV">
                        <node concept="3uibUv" id="7AjmLChVk0A" role="10QFUM">
                          <ref role="3uigEE" to="w1kc:~SNodeId$Foreign" resolve="SNodeId.Foreign" />
                        </node>
                        <node concept="2OqwBi" id="7AjmLChVk0B" role="10QFUP">
                          <node concept="37vLTw" id="7AjmLChVk0C" role="2Oq$k0">
                            <ref role="3cqZAo" node="7jRNnvCr_VR" resolve="sNodeReference" />
                          </node>
                          <node concept="liA8E" id="7AjmLChVk0D" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNodeReference.getNodeId()" resolve="getNodeId" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="7AjmLChUW0l" role="3cqZAp">
                  <node concept="3cpWs3" id="7AjmLChVfOm" role="3cqZAk">
                    <node concept="2OqwBi" id="7AjmLChVlsa" role="3uHU7w">
                      <node concept="37vLTw" id="7AjmLChVk93" role="2Oq$k0">
                        <ref role="3cqZAo" node="7AjmLChViRr" resolve="nodeIdForeign" />
                      </node>
                      <node concept="liA8E" id="7AjmLChVmHF" role="2OqNvi">
                        <ref role="37wK5l" to="w1kc:~SNodeId$Foreign.getId()" resolve="getId" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="7AjmLChVctg" role="3uHU7B">
                      <node concept="3cpWs3" id="7AjmLChV0xL" role="3uHU7B">
                        <node concept="Xl_RD" id="7AjmLChUWpu" role="3uHU7B">
                          <property role="Xl_RC" value="-&gt;" />
                        </node>
                        <node concept="2OqwBi" id="7AjmLChV5Mv" role="3uHU7w">
                          <node concept="2OqwBi" id="7AjmLChV4jH" role="2Oq$k0">
                            <node concept="37vLTw" id="7AjmLChV3go" role="2Oq$k0">
                              <ref role="3cqZAo" node="7jRNnvCr_VR" resolve="sNodeReference" />
                            </node>
                            <node concept="liA8E" id="7AjmLChV54c" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNodeReference.getModelReference()" resolve="getModelReference" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7AjmLChV6PT" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModelReference.getModelName()" resolve="getModelName" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7AjmLChVdud" role="3uHU7w">
                        <property role="Xl_RC" value=":" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="7AjmLChUUDA" role="3clFbw">
                <node concept="3uibUv" id="7AjmLChUUWv" role="2ZW6by">
                  <ref role="3uigEE" to="w1kc:~SNodeId$Foreign" resolve="SNodeId.Foreign" />
                </node>
                <node concept="2OqwBi" id="7AjmLChUUow" role="2ZW6bz">
                  <node concept="37vLTw" id="7AjmLChUUox" role="2Oq$k0">
                    <ref role="3cqZAo" node="7jRNnvCr_VR" resolve="sNodeReference" />
                  </node>
                  <node concept="liA8E" id="7AjmLChUUoy" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNodeReference.getNodeId()" resolve="getNodeId" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7JjSHvQ7K_g" role="3cqZAp">
              <node concept="2OqwBi" id="7JjSHvQ7NfL" role="3cqZAk">
                <node concept="2OqwBi" id="7JjSHvQ7M7c" role="2Oq$k0">
                  <node concept="37vLTw" id="7jRNnvCrBoH" role="2Oq$k0">
                    <ref role="3cqZAo" node="7jRNnvCr_VR" resolve="sNodeReference" />
                  </node>
                  <node concept="liA8E" id="7JjSHvQ7MEY" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNodeReference.getNodeId()" resolve="getNodeId" />
                  </node>
                </node>
                <node concept="liA8E" id="7JjSHvQ7NQe" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="7JjSHvQ7IgX" role="9aQIa">
            <node concept="3clFbS" id="7JjSHvQ7IgY" role="9aQI4">
              <node concept="3cpWs6" id="7JjSHvQ7Iol" role="3cqZAp">
                <node concept="2OqwBi" id="7JjSHvQ7IRU" role="3cqZAk">
                  <node concept="37vLTw" id="7JjSHvQ7IsF" role="2Oq$k0">
                    <ref role="3cqZAo" node="7JjSHvQ7EGq" resolve="ref" />
                  </node>
                  <node concept="liA8E" id="7JjSHvQ7Jle" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7JjSHvQ7CAJ" role="1B3o_S" />
      <node concept="17QB3L" id="7JjSHvQ7Dbr" role="3clF45" />
      <node concept="37vLTG" id="7JjSHvQ7EGq" role="3clF46">
        <property role="TrG5h" value="ref" />
        <node concept="3uibUv" id="7JjSHvQ7EGp" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
        </node>
      </node>
      <node concept="37vLTG" id="Aop38HWIdJ" role="3clF46">
        <property role="TrG5h" value="branch" />
        <node concept="3uibUv" id="Aop38HWIdK" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
        </node>
      </node>
      <node concept="37vLTG" id="Aop38HYd4C" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="17QB3L" id="Aop38HYdxt" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="11vVX88w$mk" role="jymVt" />
    <node concept="3clFb_" id="11vVX88wlul" role="jymVt">
      <property role="TrG5h" value="dumpAsJson" />
      <node concept="3clFbS" id="11vVX88wluo" role="3clF47">
        <node concept="3cpWs8" id="11vVX88wt07" role="3cqZAp">
          <node concept="3cpWsn" id="11vVX88wt08" role="3cpWs9">
            <property role="TrG5h" value="rt" />
            <node concept="3uibUv" id="11vVX88wt09" role="1tU5fm">
              <ref role="3uigEE" to="5440:~ReplicatedTree" resolve="ReplicatedTree" />
            </node>
            <node concept="2ShNRf" id="11vVX88wt1a" role="33vP2m">
              <node concept="1pGfFk" id="11vVX88wtaV" role="2ShVmc">
                <ref role="37wK5l" to="5440:~ReplicatedTree.&lt;init&gt;(org.modelix.model.client.IModelClient,org.modelix.model.lazy.TreeId,java.lang.String,kotlin.jvm.functions.Function0)" resolve="ReplicatedTree" />
                <node concept="37vLTw" id="11vVX88wtb_" role="37wK5m">
                  <ref role="3cqZAo" node="11vVX88wnPO" resolve="restWebModelClient" />
                </node>
                <node concept="37vLTw" id="11vVX88wtKZ" role="37wK5m">
                  <ref role="3cqZAo" node="11vVX88wtFh" resolve="treeId" />
                </node>
                <node concept="37vLTw" id="11vVX88wu60" role="37wK5m">
                  <ref role="3cqZAo" node="11vVX88wtMl" resolve="branchName" />
                </node>
                <node concept="1bVj0M" id="11vVX88wu8I" role="37wK5m">
                  <node concept="3clFbS" id="11vVX88wu8K" role="1bW5cS">
                    <node concept="3clFbF" id="11vVX88wupT" role="3cqZAp">
                      <node concept="Xl_RD" id="11vVX88wupS" role="3clFbG">
                        <property role="Xl_RC" value="dummy_author_for_dumpAsJson" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="11vVX88wBWC" role="3cqZAp">
          <node concept="3cpWsn" id="11vVX88wBWD" role="3cpWs9">
            <property role="TrG5h" value="branch" />
            <node concept="3uibUv" id="11vVX88wBWE" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
            </node>
            <node concept="2OqwBi" id="11vVX88wC8k" role="33vP2m">
              <node concept="37vLTw" id="11vVX88wC8l" role="2Oq$k0">
                <ref role="3cqZAo" node="11vVX88wt08" resolve="rt" />
              </node>
              <node concept="liA8E" id="11vVX88wC8m" role="2OqNvi">
                <ref role="37wK5l" to="5440:~ReplicatedTree.getBranch()" resolve="getBranch" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="53_gmpoMVCT" role="3cqZAp">
          <node concept="3cpWsn" id="53_gmpoMVCU" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="53_gmpoMVCV" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
            <node concept="2OqwBi" id="11vVX88wv$4" role="33vP2m">
              <node concept="37vLTw" id="11vVX88wCk4" role="2Oq$k0">
                <ref role="3cqZAo" node="11vVX88wBWD" resolve="branch" />
              </node>
              <node concept="liA8E" id="11vVX88wvDg" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~IBranch.computeRead(kotlin.jvm.functions.Function0)" resolve="computeRead" />
                <node concept="1bVj0M" id="11vVX88wvEU" role="37wK5m">
                  <node concept="3clFbS" id="11vVX88wvEV" role="1bW5cS">
                    <node concept="3clFbF" id="11vVX88wCAV" role="3cqZAp">
                      <node concept="1rXfSq" id="11vVX88wB2H" role="3clFbG">
                        <ref role="37wK5l" node="11vVX88w$Cb" resolve="toJson" />
                        <node concept="37vLTw" id="11vVX88wCqS" role="37wK5m">
                          <ref role="3cqZAo" node="11vVX88wBWD" resolve="branch" />
                        </node>
                        <node concept="10M0yZ" id="11vVX88wBee" role="37wK5m">
                          <ref role="1PxDUh" to="jks5:~ITree" resolve="ITree" />
                          <ref role="3cqZAo" to="jks5:~ITree.ROOT_ID" resolve="ROOT_ID" />
                        </node>
                        <node concept="3clFbT" id="Aop38HYF1l" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="53_gmpoMYGo" role="3cqZAp">
          <node concept="2OqwBi" id="53_gmpoMZiy" role="3clFbG">
            <node concept="37vLTw" id="53_gmpoMYGm" role="2Oq$k0">
              <ref role="3cqZAo" node="11vVX88wt08" resolve="rt" />
            </node>
            <node concept="liA8E" id="53_gmpoMZqu" role="2OqNvi">
              <ref role="37wK5l" to="5440:~ReplicatedTree.dispose()" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="53_gmpoMX2u" role="3cqZAp">
          <node concept="37vLTw" id="53_gmpoMX9j" role="3cqZAk">
            <ref role="3cqZAo" node="53_gmpoMVCU" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="11vVX88wjMU" role="1B3o_S" />
      <node concept="3uibUv" id="11vVX88wApv" role="3clF45">
        <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
      </node>
      <node concept="37vLTG" id="11vVX88wnPO" role="3clF46">
        <property role="TrG5h" value="restWebModelClient" />
        <node concept="3uibUv" id="11vVX88wnPN" role="1tU5fm">
          <ref role="3uigEE" to="5440:~RestWebModelClient" resolve="RestWebModelClient" />
        </node>
      </node>
      <node concept="37vLTG" id="11vVX88wtFh" role="3clF46">
        <property role="TrG5h" value="treeId" />
        <node concept="3uibUv" id="11vVX88wtJm" role="1tU5fm">
          <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
        </node>
      </node>
      <node concept="37vLTG" id="11vVX88wtMl" role="3clF46">
        <property role="TrG5h" value="branchName" />
        <node concept="17QB3L" id="11vVX88wtQh" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="nkanButC_l" role="jymVt" />
    <node concept="3clFb_" id="nkanButDc$" role="jymVt">
      <property role="TrG5h" value="dumpAsJson" />
      <node concept="3clFbS" id="nkanButDc_" role="3clF47">
        <node concept="3cpWs8" id="nkanButDcM" role="3cqZAp">
          <node concept="3cpWsn" id="nkanButDcN" role="3cpWs9">
            <property role="TrG5h" value="branch" />
            <node concept="3uibUv" id="nkanButDcO" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
            </node>
            <node concept="2OqwBi" id="nkanButDcP" role="33vP2m">
              <node concept="37vLTw" id="nkanButDcQ" role="2Oq$k0">
                <ref role="3cqZAo" node="nkanButDMC" resolve="rt" />
              </node>
              <node concept="liA8E" id="nkanButDcR" role="2OqNvi">
                <ref role="37wK5l" to="5440:~ReplicatedTree.getBranch()" resolve="getBranch" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="nkanButDcS" role="3cqZAp">
          <node concept="3cpWsn" id="nkanButDcT" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="nkanButDcU" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
            <node concept="2OqwBi" id="nkanButDcV" role="33vP2m">
              <node concept="37vLTw" id="nkanButDcW" role="2Oq$k0">
                <ref role="3cqZAo" node="nkanButDcN" resolve="branch" />
              </node>
              <node concept="liA8E" id="nkanButDcX" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~IBranch.computeRead(kotlin.jvm.functions.Function0)" resolve="computeRead" />
                <node concept="1bVj0M" id="nkanButDcY" role="37wK5m">
                  <node concept="3clFbS" id="nkanButDcZ" role="1bW5cS">
                    <node concept="3clFbF" id="nkanButDd0" role="3cqZAp">
                      <node concept="1rXfSq" id="nkanButDd1" role="3clFbG">
                        <ref role="37wK5l" node="11vVX88w$Cb" resolve="toJson" />
                        <node concept="37vLTw" id="nkanButDd2" role="37wK5m">
                          <ref role="3cqZAo" node="nkanButDcN" resolve="branch" />
                        </node>
                        <node concept="10M0yZ" id="nkanButDd3" role="37wK5m">
                          <ref role="1PxDUh" to="jks5:~ITree" resolve="ITree" />
                          <ref role="3cqZAo" to="jks5:~ITree.ROOT_ID" resolve="ROOT_ID" />
                        </node>
                        <node concept="37vLTw" id="Aop38HYtxe" role="37wK5m">
                          <ref role="3cqZAo" node="Aop38HYrOD" resolve="withId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="nkanButDd8" role="3cqZAp">
          <node concept="37vLTw" id="nkanButDd9" role="3cqZAk">
            <ref role="3cqZAo" node="nkanButDcT" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="nkanButDda" role="1B3o_S" />
      <node concept="3uibUv" id="nkanButDdb" role="3clF45">
        <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
      </node>
      <node concept="37vLTG" id="nkanButDMC" role="3clF46">
        <property role="TrG5h" value="rt" />
        <node concept="3uibUv" id="nkanButDME" role="1tU5fm">
          <ref role="3uigEE" to="5440:~ReplicatedTree" resolve="ReplicatedTree" />
        </node>
      </node>
      <node concept="37vLTG" id="Aop38HYrOD" role="3clF46">
        <property role="TrG5h" value="withId" />
        <node concept="10P_77" id="Aop38HYsDy" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="nkanButCCU" role="jymVt" />
    <node concept="3Tm1VV" id="11vVX88wjHW" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5i$4SBK0dxR">
    <property role="TrG5h" value="ModuleCanBeCopiedOnAndSyncedCloudTest" />
    <property role="3GE5qa" value="tests" />
    <node concept="3Tm1VV" id="5i$4SBK0dxS" role="1B3o_S" />
    <node concept="3clFbW" id="5i$4SBK0dxT" role="jymVt">
      <node concept="37vLTG" id="5i$4SBK0dxU" role="3clF46">
        <property role="TrG5h" value="referenceDir" />
        <node concept="3uibUv" id="5i$4SBK0dxV" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="37vLTG" id="5i$4SBK0dxW" role="3clF46">
        <property role="TrG5h" value="environment" />
        <node concept="3uibUv" id="5i$4SBK0dxX" role="1tU5fm">
          <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
        </node>
      </node>
      <node concept="3cqZAl" id="5i$4SBK0dxY" role="3clF45" />
      <node concept="3Tm1VV" id="5i$4SBK0dxZ" role="1B3o_S" />
      <node concept="3clFbS" id="5i$4SBK0dy0" role="3clF47">
        <node concept="XkiVB" id="5i$4SBK0dy1" role="3cqZAp">
          <ref role="37wK5l" node="5yNJPA6tklF" resolve="IntegrationTest" />
          <node concept="37vLTw" id="5i$4SBK0dy2" role="37wK5m">
            <ref role="3cqZAo" node="5i$4SBK0dxU" resolve="referenceDir" />
          </node>
          <node concept="37vLTw" id="5i$4SBK0dy3" role="37wK5m">
            <ref role="3cqZAo" node="5i$4SBK0dxW" resolve="environment" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1QKKVBBBVPT" role="jymVt">
      <property role="TrG5h" value="logic" />
      <node concept="3Tm1VV" id="1QKKVBBBVPV" role="1B3o_S" />
      <node concept="3uibUv" id="1QKKVBBBVPW" role="3clF45">
        <ref role="3uigEE" node="5yNJPA6btY7" resolve="TestResult" />
      </node>
      <node concept="3uibUv" id="1QKKVBBBVPX" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="3clFbS" id="1QKKVBBBVPY" role="3clF47">
        <node concept="3cpWs8" id="1QKKVBBDsMM" role="3cqZAp">
          <node concept="3cpWsn" id="1QKKVBBDsMN" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="1QKKVBBDsMO" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="1rXfSq" id="1QKKVBBDsMP" role="33vP2m">
              <ref role="37wK5l" node="5yNJPA6tpld" resolve="openProject" />
              <node concept="Xl_RD" id="1QKKVBBDsMQ" role="37wK5m">
                <property role="Xl_RC" value="SimpleProjectB" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1QKKVBBDsMR" role="3cqZAp">
          <node concept="3cpWsn" id="1QKKVBBDsMS" role="3cpWs9">
            <property role="TrG5h" value="pbc" />
            <node concept="3uibUv" id="1QKKVBBDsMT" role="1tU5fm">
              <ref role="3uigEE" to="nhvc:7f6Tb6nxCKP" resolve="PersistedBindingConfiguration" />
            </node>
            <node concept="2YIFZM" id="1QKKVBBDsMU" role="33vP2m">
              <ref role="1Pybhc" to="nhvc:7f6Tb6nxCKP" resolve="PersistedBindingConfiguration" />
              <ref role="37wK5l" to="nhvc:6JwgQ7URldI" resolve="getInstance" />
              <node concept="37vLTw" id="1QKKVBBDsMV" role="37wK5m">
                <ref role="3cqZAo" node="1QKKVBBDsMN" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="1QKKVBBDsMW" role="3cqZAp">
          <node concept="2OqwBi" id="1QKKVBBDsMX" role="1gVkn0">
            <node concept="37vLTw" id="1QKKVBBDsMY" role="2Oq$k0">
              <ref role="3cqZAo" node="1QKKVBBDsMS" resolve="pbc" />
            </node>
            <node concept="liA8E" id="1QKKVBBDsMZ" role="2OqNvi">
              <ref role="37wK5l" to="nhvc:6JwgQ7URCLz" resolve="isEmpty" />
            </node>
          </node>
          <node concept="3cpWs3" id="1QKKVBBDsN0" role="1gVpfI">
            <node concept="2OqwBi" id="1QKKVBBDsN1" role="3uHU7w">
              <node concept="37vLTw" id="1QKKVBBDsN2" role="2Oq$k0">
                <ref role="3cqZAo" node="1QKKVBBDsMS" resolve="pbc" />
              </node>
              <node concept="liA8E" id="1QKKVBBDsN3" role="2OqNvi">
                <ref role="37wK5l" to="nhvc:6JwgQ7UW22M" resolve="describeState" />
              </node>
            </node>
            <node concept="Xl_RD" id="1QKKVBBDsN4" role="3uHU7B">
              <property role="Xl_RC" value="The PersistedBindingConfiguration is expected to be empty, it was " />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="53_gmpoTOIW" role="3cqZAp" />
        <node concept="3cpWs8" id="53_gmpoTQfJ" role="3cqZAp">
          <node concept="3cpWsn" id="53_gmpoTQfK" role="3cpWs9">
            <property role="TrG5h" value="defaultTreeId" />
            <node concept="3uibUv" id="53_gmpoTQfL" role="1tU5fm">
              <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
            </node>
            <node concept="2ShNRf" id="53_gmpoTQMi" role="33vP2m">
              <node concept="1pGfFk" id="53_gmpoTQMj" role="2ShVmc">
                <ref role="37wK5l" to="xkhl:~TreeId.&lt;init&gt;(java.lang.String)" resolve="TreeId" />
                <node concept="Xl_RD" id="53_gmpoTQMk" role="37wK5m">
                  <property role="Xl_RC" value="default" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="53_gmpoTR$9" role="3cqZAp">
          <node concept="3cpWsn" id="53_gmpoTR$c" role="3cpWs9">
            <property role="TrG5h" value="defaultBranchName" />
            <node concept="17QB3L" id="53_gmpoTR$7" role="1tU5fm" />
            <node concept="Xl_RD" id="53_gmpoTSef" role="33vP2m">
              <property role="Xl_RC" value="master" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1QKKVBBDrYp" role="3cqZAp" />
        <node concept="abc8K" id="1QKKVBBDwcF" role="3cqZAp">
          <node concept="Xl_RD" id="1QKKVBBDwcG" role="abp_N">
            <property role="Xl_RC" value="project " />
          </node>
          <node concept="2OqwBi" id="1QKKVBBDwcH" role="abp_N">
            <node concept="37vLTw" id="1QKKVBBDwcI" role="2Oq$k0">
              <ref role="3cqZAo" node="1QKKVBBDsMN" resolve="mpsProject" />
            </node>
            <node concept="liA8E" id="1QKKVBBDwcJ" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getName()" resolve="getName" />
            </node>
          </node>
          <node concept="Xl_RD" id="1QKKVBBDwcK" role="abp_N">
            <property role="Xl_RC" value=" opened" />
          </node>
        </node>
        <node concept="1gVbGN" id="1QKKVBBDwcL" role="3cqZAp">
          <node concept="17R0WA" id="1QKKVBBDwcM" role="1gVkn0">
            <node concept="2OqwBi" id="1QKKVBBDwcN" role="3uHU7B">
              <node concept="37vLTw" id="1QKKVBBDwcO" role="2Oq$k0">
                <ref role="3cqZAo" node="1QKKVBBDsMN" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="1QKKVBBDwcP" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getName()" resolve="getName" />
              </node>
            </node>
            <node concept="Xl_RD" id="1QKKVBBDwcQ" role="3uHU7w">
              <property role="Xl_RC" value="SimpleProjectB" />
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="1QKKVBBDwcR" role="3cqZAp">
          <node concept="17R0WA" id="1QKKVBBDwcS" role="1gVkn0">
            <node concept="3cmrfG" id="1QKKVBBDwcT" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="1QKKVBBDwcU" role="3uHU7B">
              <node concept="2OqwBi" id="1QKKVBBDwcV" role="2Oq$k0">
                <node concept="37vLTw" id="1QKKVBBDwcW" role="2Oq$k0">
                  <ref role="3cqZAo" node="1QKKVBBDsMN" resolve="mpsProject" />
                </node>
                <node concept="liA8E" id="1QKKVBBDwcX" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~IProject.getProjectModules()" resolve="getProjectModules" />
                </node>
              </node>
              <node concept="liA8E" id="1QKKVBBDwcY" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1QKKVBBDwcZ" role="3cqZAp">
          <node concept="3cpWsn" id="1QKKVBBDwd0" role="3cpWs9">
            <property role="TrG5h" value="simpleSolution1" />
            <node concept="3uibUv" id="1QKKVBBDwd1" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="1QKKVBBDwd2" role="33vP2m">
              <node concept="2OqwBi" id="1QKKVBBDwd3" role="2Oq$k0">
                <node concept="37vLTw" id="1QKKVBBDwd4" role="2Oq$k0">
                  <ref role="3cqZAo" node="1QKKVBBDsMN" resolve="mpsProject" />
                </node>
                <node concept="liA8E" id="1QKKVBBDwd5" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~IProject.getProjectModules()" resolve="getProjectModules" />
                </node>
              </node>
              <node concept="liA8E" id="1QKKVBBDwd6" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                <node concept="3cmrfG" id="1QKKVBBDwd7" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="1QKKVBBDwd8" role="3cqZAp">
          <node concept="17R0WA" id="1QKKVBBDwd9" role="1gVkn0">
            <node concept="Xl_RD" id="1QKKVBBDwda" role="3uHU7w">
              <property role="Xl_RC" value="simple.solution1" />
            </node>
            <node concept="2OqwBi" id="1QKKVBBDwdb" role="3uHU7B">
              <node concept="37vLTw" id="1QKKVBBDwdc" role="2Oq$k0">
                <ref role="3cqZAo" node="1QKKVBBDwd0" resolve="simpleSolution1" />
              </node>
              <node concept="liA8E" id="1QKKVBBDwdd" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1QKKVBBDs4P" role="3cqZAp" />
        <node concept="3SKdUt" id="1QKKVBBDyQ$" role="3cqZAp">
          <node concept="1PaTwC" id="1QKKVBBDyQ_" role="1aUNEU">
            <node concept="3oM_SD" id="1QKKVBBDyQA" role="1PaTwD">
              <property role="3oM_SC" value="start" />
            </node>
            <node concept="3oM_SD" id="1QKKVBBDyQB" role="1PaTwD">
              <property role="3oM_SC" value="Modelix" />
            </node>
            <node concept="3oM_SD" id="1QKKVBBDyQC" role="1PaTwD">
              <property role="3oM_SC" value="Server" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1QKKVBBDyQD" role="3cqZAp">
          <node concept="3cpWsn" id="1QKKVBBDyQE" role="3cpWs9">
            <property role="TrG5h" value="ms" />
            <node concept="3uibUv" id="1QKKVBBDyQF" role="1tU5fm">
              <ref role="3uigEE" node="5yNJPA6tDKp" resolve="ModelixServerController" />
            </node>
            <node concept="1rXfSq" id="1QKKVBBDyQG" role="33vP2m">
              <ref role="37wK5l" node="1QKKVBBCeoe" resolve="startModelixServer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1QKKVBBDyQH" role="3cqZAp">
          <node concept="2YIFZM" id="1QKKVBBDyQI" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <node concept="3cmrfG" id="1QKKVBBDyQJ" role="37wK5m">
              <property role="3cmrfH" value="5000" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1QKKVBBDyQK" role="3cqZAp" />
        <node concept="3SKdUt" id="1QKKVBBDyQL" role="3cqZAp">
          <node concept="1PaTwC" id="1QKKVBBDyQM" role="1aUNEU">
            <node concept="3oM_SD" id="1QKKVBBDyQN" role="1PaTwD">
              <property role="3oM_SC" value="add" />
            </node>
            <node concept="3oM_SD" id="1QKKVBBDyQO" role="1PaTwD">
              <property role="3oM_SC" value="CloudRepository" />
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="1QKKVBBDyQP" role="3cqZAp">
          <node concept="2OqwBi" id="1QKKVBBDyQQ" role="1gVkn0">
            <node concept="2OqwBi" id="1QKKVBBDyQR" role="2Oq$k0">
              <node concept="2YIFZM" id="1QKKVBBDyQS" role="2Oq$k0">
                <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="1QKKVBBDyQT" role="2OqNvi">
                <ref role="37wK5l" to="csg2:1LVcV5KxBgM" resolve="getRepositories" />
              </node>
            </node>
            <node concept="1v1jN8" id="1QKKVBBDyQU" role="2OqNvi" />
          </node>
          <node concept="3cpWs3" id="1QKKVBBDyQV" role="1gVpfI">
            <node concept="Xl_RD" id="1QKKVBBDyQW" role="3uHU7B">
              <property role="Xl_RC" value="Expected not to find CloudRepositories: " />
            </node>
            <node concept="2OqwBi" id="1QKKVBBDyQX" role="3uHU7w">
              <node concept="2OqwBi" id="1QKKVBBDyQY" role="2Oq$k0">
                <node concept="2YIFZM" id="1QKKVBBDyQZ" role="2Oq$k0">
                  <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                  <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                </node>
                <node concept="liA8E" id="1QKKVBBDyR0" role="2OqNvi">
                  <ref role="37wK5l" to="csg2:1LVcV5KxBgM" resolve="getRepositories" />
                </node>
              </node>
              <node concept="ANE8D" id="1QKKVBBDyR1" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1QKKVBBDyR2" role="3cqZAp">
          <node concept="3cpWsn" id="1QKKVBBDyR3" role="3cpWs9">
            <property role="TrG5h" value="cr" />
            <node concept="3uibUv" id="1QKKVBBDyR4" role="1tU5fm">
              <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
            </node>
            <node concept="1rXfSq" id="1QKKVBBDyR5" role="33vP2m">
              <ref role="37wK5l" node="1QKKVBBCC1x" resolve="addCloudRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1QKKVBBDyR6" role="3cqZAp">
          <node concept="2YIFZM" id="1QKKVBBDyR7" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <node concept="3cmrfG" id="1QKKVBBDyR8" role="37wK5m">
              <property role="3cmrfH" value="5000" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1QKKVBBDyKo" role="3cqZAp" />
        <node concept="3SKdUt" id="5i$4SBK0dzU" role="3cqZAp">
          <node concept="1PaTwC" id="5i$4SBK0dzV" role="1aUNEU">
            <node concept="3oM_SD" id="5i$4SBK0dzW" role="1PaTwD">
              <property role="3oM_SC" value="copy" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK25QC" role="1PaTwD">
              <property role="3oM_SC" value="&amp;" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK25Xg" role="1PaTwD">
              <property role="3oM_SC" value="sync" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK0dzX" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK0dzY" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK0dzZ" role="1PaTwD">
              <property role="3oM_SC" value="CloudRepository" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5i$4SBK0d$0" role="3cqZAp">
          <node concept="3cpWsn" id="5i$4SBK0d$1" role="3cpWs9">
            <property role="TrG5h" value="treeInRepository" />
            <node concept="3uibUv" id="5i$4SBK0d$2" role="1tU5fm">
              <ref role="3uigEE" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
            </node>
            <node concept="2ShNRf" id="5i$4SBK0d$3" role="33vP2m">
              <node concept="1pGfFk" id="5i$4SBK0d$4" role="2ShVmc">
                <ref role="37wK5l" to="csg2:3i6diw3mtOf" resolve="TreeInRepository" />
                <node concept="37vLTw" id="5i$4SBK0d$5" role="37wK5m">
                  <ref role="3cqZAo" node="1QKKVBBDyR3" resolve="cr" />
                </node>
                <node concept="37vLTw" id="53_gmpoTQXY" role="37wK5m">
                  <ref role="3cqZAo" node="53_gmpoTQfK" resolve="defaultTreeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="5i$4SBK0d$9" role="3cqZAp">
          <node concept="1QHqEC" id="5i$4SBK0d$a" role="1QHqEI">
            <node concept="3clFbS" id="5i$4SBK0d$b" role="1bW5cS">
              <node concept="3cpWs8" id="1QKKVBBDQ03" role="3cqZAp">
                <node concept="3cpWsn" id="1QKKVBBDQ04" role="3cpWs9">
                  <property role="TrG5h" value="ideaProject" />
                  <node concept="3uibUv" id="1QKKVBBDQ05" role="1tU5fm">
                    <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
                  </node>
                  <node concept="2YIFZM" id="1QKKVBBDQhW" role="33vP2m">
                    <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
                    <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                    <node concept="37vLTw" id="1QKKVBBDQqQ" role="37wK5m">
                      <ref role="3cqZAo" node="1QKKVBBDsMN" resolve="mpsProject" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5i$4SBK0d$c" role="3cqZAp">
                <node concept="2OqwBi" id="5i$4SBK0d$d" role="3clFbG">
                  <node concept="2ShNRf" id="5i$4SBK0d$e" role="2Oq$k0">
                    <node concept="HV5vD" id="5i$4SBK0d$f" role="2ShVmc">
                      <ref role="HV5vE" to="csg2:i0AVAFXWm5" resolve="ModelCloudImporter" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5i$4SBK0d$g" role="2OqNvi">
                    <ref role="37wK5l" to="csg2:5i$4SBK0N45" resolve="copyAndSyncInModelixAsIndependentModule" />
                    <node concept="37vLTw" id="5i$4SBK0d$h" role="37wK5m">
                      <ref role="3cqZAo" node="5i$4SBK0d$1" resolve="treeInRepository" />
                    </node>
                    <node concept="37vLTw" id="5i$4SBK0d$i" role="37wK5m">
                      <ref role="3cqZAo" node="1QKKVBBDwd0" resolve="simpleSolution1" />
                    </node>
                    <node concept="37vLTw" id="1QKKVBBDQxR" role="37wK5m">
                      <ref role="3cqZAo" node="1QKKVBBDQ04" resolve="ideaProject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5i$4SBK0d$j" role="ukAjM">
            <node concept="37vLTw" id="5i$4SBK0d$k" role="2Oq$k0">
              <ref role="3cqZAo" node="1QKKVBBDsMN" resolve="mpsProject" />
            </node>
            <node concept="liA8E" id="5i$4SBK0d$l" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5i$4SBK3WGg" role="3cqZAp">
          <node concept="2YIFZM" id="5i$4SBK3WGh" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <node concept="3cmrfG" id="5i$4SBK3WGi" role="37wK5m">
              <property role="3cmrfH" value="2000" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5i$4SBK0d$m" role="3cqZAp" />
        <node concept="3SKdUt" id="5i$4SBK0d$n" role="3cqZAp">
          <node concept="1PaTwC" id="5i$4SBK0d$o" role="1aUNEU">
            <node concept="3oM_SD" id="5i$4SBK0d$p" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK266P" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK266T" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK266Y" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK26a0" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK26d3" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK26jH" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK0d$q" role="1PaTwD">
              <property role="3oM_SC" value="ModelixServer" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5i$4SBK0d$r" role="3cqZAp">
          <node concept="3cpWsn" id="5i$4SBK0d$s" role="3cpWs9">
            <property role="TrG5h" value="actualJsonDump" />
            <node concept="3uibUv" id="5i$4SBK0d$t" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
            <node concept="2OqwBi" id="5i$4SBK0d$u" role="33vP2m">
              <node concept="37vLTw" id="5i$4SBK0d$v" role="2Oq$k0">
                <ref role="3cqZAo" node="1QKKVBBDyQE" resolve="ms" />
              </node>
              <node concept="liA8E" id="5i$4SBK0d$w" role="2OqNvi">
                <ref role="37wK5l" node="7JjSHvQ43L7" resolve="jsonDump" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5i$4SBK0d$x" role="3cqZAp">
          <node concept="3cpWsn" id="5i$4SBK0d$y" role="3cpWs9">
            <property role="TrG5h" value="expectedJsonDump" />
            <node concept="3uibUv" id="5i$4SBK0d$z" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
            <node concept="1rXfSq" id="5i$4SBK0d$$" role="33vP2m">
              <ref role="37wK5l" node="7JjSHvQ4HQK" resolve="loadJsonDump" />
              <node concept="Xl_RD" id="5i$4SBK0d$_" role="37wK5m">
                <property role="Xl_RC" value="dump1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5i$4SBK0d$A" role="3cqZAp">
          <node concept="1rXfSq" id="5i$4SBK0d$B" role="3clFbG">
            <ref role="37wK5l" node="7JjSHvQ4V3I" resolve="assertJsonsAreEquals" />
            <node concept="37vLTw" id="5i$4SBK0d$C" role="37wK5m">
              <ref role="3cqZAo" node="5i$4SBK0d$y" resolve="expectedJsonDump" />
            </node>
            <node concept="37vLTw" id="5i$4SBK0d$D" role="37wK5m">
              <ref role="3cqZAo" node="5i$4SBK0d$s" resolve="actualJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5i$4SBK26pI" role="3cqZAp" />
        <node concept="3SKdUt" id="5i$4SBK26O_" role="3cqZAp">
          <node concept="1PaTwC" id="5i$4SBK26OA" role="1aUNEU">
            <node concept="3oM_SD" id="5i$4SBK28Ks" role="1PaTwD">
              <property role="3oM_SC" value="When" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK276y" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK276_" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK276D" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK276I" role="1PaTwD">
              <property role="3oM_SC" value="change" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK276O" role="1PaTwD">
              <property role="3oM_SC" value="locally," />
            </node>
            <node concept="3oM_SD" id="5i$4SBK27ax" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK27aD" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK27aM" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK27aW" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK27b7" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK27bj" role="1PaTwD">
              <property role="3oM_SC" value="change" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK27bw" role="1PaTwD">
              <property role="3oM_SC" value="also" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK27ig" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK27on" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK27rz" role="1PaTwD">
              <property role="3oM_SC" value="ModelixServer" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5i$4SBK3URR" role="3cqZAp">
          <node concept="3cpWsn" id="5i$4SBK3URP" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="effectiveMpsProject" />
            <node concept="3uibUv" id="5i$4SBK3V$m" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="37vLTw" id="5i$4SBK3W4Z" role="33vP2m">
              <ref role="3cqZAo" node="1QKKVBBDsMN" resolve="mpsProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5i$4SBK3Pyp" role="3cqZAp">
          <node concept="2YIFZM" id="5i$4SBK3Qj6" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeAndWait(java.lang.Runnable)" resolve="invokeAndWait" />
            <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
            <node concept="2ShNRf" id="5i$4SBK3QsP" role="37wK5m">
              <node concept="YeOm9" id="5i$4SBK3T6M" role="2ShVmc">
                <node concept="1Y3b0j" id="5i$4SBK3T6P" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="5i$4SBK3T6Q" role="1B3o_S" />
                  <node concept="3clFb_" id="5i$4SBK3T6V" role="jymVt">
                    <property role="TrG5h" value="run" />
                    <node concept="3Tm1VV" id="5i$4SBK3T6W" role="1B3o_S" />
                    <node concept="3cqZAl" id="5i$4SBK3T6Y" role="3clF45" />
                    <node concept="3clFbS" id="5i$4SBK3T6Z" role="3clF47">
                      <node concept="1QHqEO" id="5i$4SBK3Mfz" role="3cqZAp">
                        <node concept="1QHqEC" id="5i$4SBK3Mf_" role="1QHqEI">
                          <node concept="3clFbS" id="5i$4SBK3MfB" role="1bW5cS">
                            <node concept="3cpWs8" id="5i$4SBK2lnY" role="3cqZAp">
                              <node concept="3cpWsn" id="5i$4SBK2lnZ" role="3cpWs9">
                                <property role="TrG5h" value="model" />
                                <node concept="3uibUv" id="5i$4SBK2lo0" role="1tU5fm">
                                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                </node>
                                <node concept="2OqwBi" id="5i$4SBK2lX1" role="33vP2m">
                                  <node concept="2OqwBi" id="5i$4SBK2lMM" role="2Oq$k0">
                                    <node concept="37vLTw" id="5i$4SBK2lMN" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1QKKVBBDsMN" resolve="mpsProject" />
                                    </node>
                                    <node concept="liA8E" id="5i$4SBK2lMO" role="2OqNvi">
                                      <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                                    </node>
                                  </node>
                                  <node concept="AQDAd" id="5i$4SBK2m7j" role="2OqNvi">
                                    <ref role="37wK5l" node="5i$4SBK2anl" resolve="getModel" />
                                    <node concept="Xl_RD" id="5i$4SBK2mb$" role="37wK5m">
                                      <property role="Xl_RC" value="simple.solution1" />
                                    </node>
                                    <node concept="Xl_RD" id="5i$4SBK2mpK" role="37wK5m">
                                      <property role="Xl_RC" value="simple.solution1.model1" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="5i$4SBK2nWp" role="3cqZAp">
                              <node concept="3cpWsn" id="5i$4SBK2nWs" role="3cpWs9">
                                <property role="TrG5h" value="myClass" />
                                <node concept="3Tqbb2" id="5i$4SBK2nWn" role="1tU5fm">
                                  <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
                                </node>
                                <node concept="1PxgMI" id="5i$4SBK2tLW" role="33vP2m">
                                  <node concept="chp4Y" id="5i$4SBK2tRa" role="3oSUPX">
                                    <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                                  </node>
                                  <node concept="2OqwBi" id="5i$4SBK2tkQ" role="1m5AlR">
                                    <node concept="37vLTw" id="5i$4SBK2t9c" role="2Oq$k0">
                                      <ref role="3cqZAo" node="5i$4SBK2lnZ" resolve="model" />
                                    </node>
                                    <node concept="AQDAd" id="5i$4SBK2twh" role="2OqNvi">
                                      <ref role="37wK5l" node="5i$4SBK2oGW" resolve="getRoot" />
                                      <node concept="Xl_RD" id="5i$4SBK2tA0" role="37wK5m">
                                        <property role="Xl_RC" value="MyClass" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="5i$4SBK2vBc" role="3cqZAp">
                              <node concept="37vLTI" id="5i$4SBK2xS3" role="3clFbG">
                                <node concept="Xl_RD" id="5i$4SBK2y2o" role="37vLTx">
                                  <property role="Xl_RC" value="MyClassBrilliantlyRenamed" />
                                </node>
                                <node concept="2OqwBi" id="5i$4SBK2w11" role="37vLTJ">
                                  <node concept="37vLTw" id="5i$4SBK2vBb" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5i$4SBK2nWs" resolve="myClass" />
                                  </node>
                                  <node concept="3TrcHB" id="5i$4SBK2xsY" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="5i$4SBK2yO3" role="3cqZAp">
                              <node concept="2OqwBi" id="5i$4SBK2C4Q" role="3clFbG">
                                <node concept="2OqwBi" id="5i$4SBK2ze4" role="2Oq$k0">
                                  <node concept="37vLTw" id="5i$4SBK2yO1" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5i$4SBK2nWs" resolve="myClass" />
                                  </node>
                                  <node concept="3Tsc0h" id="5i$4SBK2A7H" role="2OqNvi">
                                    <ref role="3TtcxE" to="tpee:4EqhHTp4Mw3" resolve="member" />
                                  </node>
                                </node>
                                <node concept="TSZUe" id="5i$4SBK2GDj" role="2OqNvi">
                                  <node concept="2c44tf" id="5i$4SBK2HgT" role="25WWJ7">
                                    <node concept="312cEg" id="5i$4SBK2yyy" role="2c44tc">
                                      <property role="TrG5h" value="addedField" />
                                      <node concept="3Tm6S6" id="5i$4SBK2yvV" role="1B3o_S" />
                                      <node concept="17QB3L" id="5i$4SBK2yyp" role="1tU5fm" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5i$4SBK3MSg" role="ukAjM">
                          <node concept="37vLTw" id="5i$4SBK3Wwi" role="2Oq$k0">
                            <ref role="3cqZAo" node="5i$4SBK3URP" resolve="effectiveMpsProject" />
                          </node>
                          <node concept="liA8E" id="5i$4SBK3MSi" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="5i$4SBK3T71" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5i$4SBK2IzG" role="3cqZAp">
          <node concept="37vLTI" id="5i$4SBK2IzI" role="3clFbG">
            <node concept="2OqwBi" id="5i$4SBK2HUQ" role="37vLTx">
              <node concept="37vLTw" id="5i$4SBK2HUR" role="2Oq$k0">
                <ref role="3cqZAo" node="1QKKVBBDyQE" resolve="ms" />
              </node>
              <node concept="liA8E" id="5i$4SBK2HUS" role="2OqNvi">
                <ref role="37wK5l" node="7JjSHvQ43L7" resolve="jsonDump" />
              </node>
            </node>
            <node concept="37vLTw" id="5i$4SBK2K$n" role="37vLTJ">
              <ref role="3cqZAo" node="5i$4SBK0d$s" resolve="actualJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5i$4SBK2Jjv" role="3cqZAp">
          <node concept="37vLTI" id="5i$4SBK2Jjx" role="3clFbG">
            <node concept="1rXfSq" id="5i$4SBK2HUW" role="37vLTx">
              <ref role="37wK5l" node="7JjSHvQ4HQK" resolve="loadJsonDump" />
              <node concept="Xl_RD" id="5i$4SBK2HUX" role="37wK5m">
                <property role="Xl_RC" value="dump2" />
              </node>
            </node>
            <node concept="37vLTw" id="5i$4SBK2LeR" role="37vLTJ">
              <ref role="3cqZAo" node="5i$4SBK0d$y" resolve="expectedJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5i$4SBK2HUY" role="3cqZAp">
          <node concept="1rXfSq" id="5i$4SBK2HUZ" role="3clFbG">
            <ref role="37wK5l" node="7JjSHvQ4V3I" resolve="assertJsonsAreEquals" />
            <node concept="37vLTw" id="5i$4SBK2LpO" role="37wK5m">
              <ref role="3cqZAo" node="5i$4SBK0d$y" resolve="expectedJsonDump" />
            </node>
            <node concept="37vLTw" id="5i$4SBK2Lv0" role="37wK5m">
              <ref role="3cqZAo" node="5i$4SBK0d$s" resolve="actualJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5i$4SBK2HRc" role="3cqZAp" />
        <node concept="1gVbGN" id="6JwgQ7UVxCH" role="3cqZAp">
          <node concept="2OqwBi" id="6JwgQ7UVyiu" role="1gVkn0">
            <node concept="37vLTw" id="6JwgQ7UVyiv" role="2Oq$k0">
              <ref role="3cqZAo" node="1QKKVBBDsMS" resolve="pbc" />
            </node>
            <node concept="liA8E" id="6JwgQ7UVyiw" role="2OqNvi">
              <ref role="37wK5l" to="nhvc:6JwgQ7USq0G" resolve="hasMappedModule" />
              <node concept="Xl_RD" id="6JwgQ7UVyix" role="37wK5m">
                <property role="Xl_RC" value="simple.solution1" />
              </node>
            </node>
          </node>
          <node concept="3cpWs3" id="6JwgQ7UWNVo" role="1gVpfI">
            <node concept="2OqwBi" id="6JwgQ7UWOhc" role="3uHU7w">
              <node concept="37vLTw" id="6JwgQ7UWO3l" role="2Oq$k0">
                <ref role="3cqZAo" node="1QKKVBBDsMS" resolve="pbc" />
              </node>
              <node concept="liA8E" id="6JwgQ7UWO_s" role="2OqNvi">
                <ref role="37wK5l" to="nhvc:6JwgQ7UW22M" resolve="describeState" />
              </node>
            </node>
            <node concept="Xl_RD" id="6JwgQ7UWNsC" role="3uHU7B">
              <property role="Xl_RC" value="Expected simple.solution1 to be bound, but found " />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6JwgQ7UVxnc" role="3cqZAp" />
        <node concept="3SKdUt" id="5i$4SBK27Yr" role="3cqZAp">
          <node concept="1PaTwC" id="5i$4SBK27Ys" role="1aUNEU">
            <node concept="3oM_SD" id="5i$4SBK28He" role="1PaTwD">
              <property role="3oM_SC" value="When" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK28gK" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK28gN" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK28gR" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK28gW" role="1PaTwD">
              <property role="3oM_SC" value="change" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK28h2" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK28kJ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK28kR" role="1PaTwD">
              <property role="3oM_SC" value="ModelixServer," />
            </node>
            <node concept="3oM_SD" id="5i$4SBK28oA" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK28oK" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK28xJ" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK28xV" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK28y8" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK28ym" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK28Ab" role="1PaTwD">
              <property role="3oM_SC" value="change" />
            </node>
            <node concept="3oM_SD" id="5i$4SBK28Ar" role="1PaTwD">
              <property role="3oM_SC" value="locally" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvC8LEZ" role="3cqZAp">
          <node concept="1rXfSq" id="7jRNnvC8LEX" role="3clFbG">
            <ref role="37wK5l" node="7jRNnvC87zo" resolve="runOnCloudRepository" />
            <node concept="37vLTw" id="7jRNnvC8MsC" role="37wK5m">
              <ref role="3cqZAo" node="53_gmpoTQfK" resolve="defaultTreeId" />
            </node>
            <node concept="37vLTw" id="7jRNnvC8MsD" role="37wK5m">
              <ref role="3cqZAo" node="53_gmpoTR$c" resolve="defaultBranchName" />
            </node>
            <node concept="1bVj0M" id="7jRNnvC8MsE" role="37wK5m">
              <node concept="3clFbS" id="7jRNnvC8MsF" role="1bW5cS">
                <node concept="3cpWs8" id="7jRNnvC8Mt1" role="3cqZAp">
                  <node concept="3cpWsn" id="7jRNnvC8Mt2" role="3cpWs9">
                    <property role="TrG5h" value="solution1" />
                    <node concept="3cpWsb" id="7jRNnvC8XuS" role="1tU5fm" />
                    <node concept="2OqwBi" id="7jRNnvC8Mt4" role="33vP2m">
                      <node concept="37vLTw" id="7jRNnvC8XCL" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvC8MtD" resolve="wt" />
                      </node>
                      <node concept="AQDAd" id="7jRNnvC8Mt6" role="2OqNvi">
                        <ref role="37wK5l" node="7jRNnvC8RCE" resolve="requireRootChildByName" />
                        <node concept="Xl_RD" id="7jRNnvC8Mt7" role="37wK5m">
                          <property role="Xl_RC" value="simple.solution1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7jRNnvC8Mt8" role="3cqZAp">
                  <node concept="3cpWsn" id="7jRNnvC8Mt9" role="3cpWs9">
                    <property role="TrG5h" value="model1" />
                    <node concept="3cpWsb" id="7jRNnvC8XQZ" role="1tU5fm" />
                    <node concept="2OqwBi" id="7jRNnvC8Mtb" role="33vP2m">
                      <node concept="37vLTw" id="7jRNnvC8Y0K" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvC8MtD" resolve="wt" />
                      </node>
                      <node concept="AQDAd" id="7jRNnvC8Mtd" role="2OqNvi">
                        <ref role="37wK5l" node="7jRNnvC8S8n" resolve="requireChildByName" />
                        <node concept="37vLTw" id="7jRNnvC8YmH" role="37wK5m">
                          <ref role="3cqZAo" node="7jRNnvC8Mt2" resolve="solution1" />
                        </node>
                        <node concept="Xl_RD" id="7jRNnvC8Mte" role="37wK5m">
                          <property role="Xl_RC" value="simple.solution1.model1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7jRNnvC8Mtf" role="3cqZAp">
                  <node concept="3cpWsn" id="7jRNnvC8Mtg" role="3cpWs9">
                    <property role="TrG5h" value="clazz" />
                    <node concept="3cpWsb" id="7jRNnvC8Ywd" role="1tU5fm" />
                    <node concept="2OqwBi" id="7jRNnvC8Mti" role="33vP2m">
                      <node concept="37vLTw" id="7jRNnvC8YEd" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvC8MtD" resolve="wt" />
                      </node>
                      <node concept="AQDAd" id="7jRNnvC8Mtk" role="2OqNvi">
                        <ref role="37wK5l" node="7jRNnvC8S8n" resolve="requireChildByName" />
                        <node concept="37vLTw" id="7jRNnvC8Z0Z" role="37wK5m">
                          <ref role="3cqZAo" node="7jRNnvC8Mt9" resolve="model1" />
                        </node>
                        <node concept="Xl_RD" id="7jRNnvC8Mtl" role="37wK5m">
                          <property role="Xl_RC" value="MyClassBrilliantlyRenamed" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7jRNnvC8ZiY" role="3cqZAp">
                  <node concept="2OqwBi" id="7jRNnvC8Z$F" role="3clFbG">
                    <node concept="37vLTw" id="7jRNnvC8ZiW" role="2Oq$k0">
                      <ref role="3cqZAo" node="7jRNnvC8MtD" resolve="wt" />
                    </node>
                    <node concept="liA8E" id="7jRNnvC8ZLD" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~IWriteTransaction.setProperty(long,java.lang.String,java.lang.String)" resolve="setProperty" />
                      <node concept="37vLTw" id="7jRNnvC8ZUM" role="37wK5m">
                        <ref role="3cqZAo" node="7jRNnvC8Mtg" resolve="clazz" />
                      </node>
                      <node concept="Xl_RD" id="7jRNnvC905H" role="37wK5m">
                        <property role="Xl_RC" value="name" />
                      </node>
                      <node concept="Xl_RD" id="7jRNnvC905I" role="37wK5m">
                        <property role="Xl_RC" value="MyEvenMoreSuperAmazinglyBrilliantlyRenamedClass" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1gVbGN" id="7jRNnvC8Mts" role="3cqZAp">
                  <node concept="17R0WA" id="7jRNnvC8Mtt" role="1gVkn0">
                    <node concept="2OqwBi" id="7jRNnvC8Mtu" role="3uHU7B">
                      <node concept="37vLTw" id="7jRNnvC90kG" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvC8MtD" resolve="wt" />
                      </node>
                      <node concept="liA8E" id="7jRNnvC8Mtw" role="2OqNvi">
                        <ref role="37wK5l" to="jks5:~ITransaction.getProperty(long,java.lang.String)" resolve="getProperty" />
                        <node concept="37vLTw" id="7jRNnvC90Gf" role="37wK5m">
                          <ref role="3cqZAo" node="7jRNnvC8Mtg" resolve="clazz" />
                        </node>
                        <node concept="Xl_RD" id="7jRNnvC8Mtx" role="37wK5m">
                          <property role="Xl_RC" value="name" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="7jRNnvC8Mty" role="3uHU7w">
                      <property role="Xl_RC" value="MyEvenMoreSuperAmazinglyBrilliantlyRenamedClass" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="7jRNnvC8MtD" role="1bW2Oz">
                <property role="TrG5h" value="wt" />
                <node concept="3uibUv" id="7jRNnvC8NBp" role="1tU5fm">
                  <ref role="3uigEE" to="jks5:~IWriteTransaction" resolve="IWriteTransaction" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nkanButusL" role="3cqZAp">
          <node concept="2YIFZM" id="nkanButusM" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <node concept="3cmrfG" id="nkanButusN" role="37wK5m">
              <property role="3cmrfH" value="2000" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="nkanButwcW" role="3cqZAp" />
        <node concept="3SKdUt" id="nkanButz6s" role="3cqZAp">
          <node concept="1PaTwC" id="nkanButz6t" role="1aUNEU">
            <node concept="3oM_SD" id="nkanButz6u" role="1PaTwD">
              <property role="3oM_SC" value="We" />
            </node>
            <node concept="3oM_SD" id="nkanButzLY" role="1PaTwD">
              <property role="3oM_SC" value="check" />
            </node>
            <node concept="3oM_SD" id="nkanButzM9" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="nkanButzMd" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="nkanButzMi" role="1PaTwD">
              <property role="3oM_SC" value="change" />
            </node>
            <node concept="3oM_SD" id="nkanButzMw" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="nkanButzMB" role="1PaTwD">
              <property role="3oM_SC" value="effectively" />
            </node>
            <node concept="3oM_SD" id="nkanButzMZ" role="1PaTwD">
              <property role="3oM_SC" value="present" />
            </node>
            <node concept="3oM_SD" id="nkanButzNw" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="nkanButzNE" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="nkanButzNP" role="1PaTwD">
              <property role="3oM_SC" value="server" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nkanButwKh" role="3cqZAp">
          <node concept="37vLTI" id="nkanButwKi" role="3clFbG">
            <node concept="2OqwBi" id="nkanButwKj" role="37vLTx">
              <node concept="37vLTw" id="nkanButwKk" role="2Oq$k0">
                <ref role="3cqZAo" node="1QKKVBBDyQE" resolve="ms" />
              </node>
              <node concept="liA8E" id="nkanButwKl" role="2OqNvi">
                <ref role="37wK5l" node="7JjSHvQ43L7" resolve="jsonDump" />
              </node>
            </node>
            <node concept="37vLTw" id="nkanButwKm" role="37vLTJ">
              <ref role="3cqZAo" node="5i$4SBK0d$s" resolve="actualJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nkanButwKn" role="3cqZAp">
          <node concept="37vLTI" id="nkanButwKo" role="3clFbG">
            <node concept="1rXfSq" id="nkanButwKp" role="37vLTx">
              <ref role="37wK5l" node="7JjSHvQ4HQK" resolve="loadJsonDump" />
              <node concept="Xl_RD" id="nkanButwKq" role="37wK5m">
                <property role="Xl_RC" value="dump3" />
              </node>
            </node>
            <node concept="37vLTw" id="nkanButwKr" role="37vLTJ">
              <ref role="3cqZAo" node="5i$4SBK0d$y" resolve="expectedJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="nkanButwKs" role="3cqZAp">
          <node concept="1rXfSq" id="nkanButwKt" role="3clFbG">
            <ref role="37wK5l" node="7JjSHvQ4V3I" resolve="assertJsonsAreEquals" />
            <node concept="37vLTw" id="nkanButwKu" role="37wK5m">
              <ref role="3cqZAo" node="5i$4SBK0d$y" resolve="expectedJsonDump" />
            </node>
            <node concept="37vLTw" id="nkanButwKv" role="37wK5m">
              <ref role="3cqZAo" node="5i$4SBK0d$s" resolve="actualJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="nkanButwE1" role="3cqZAp" />
        <node concept="3clFbF" id="53_gmpoVjrg" role="3cqZAp">
          <node concept="2YIFZM" id="53_gmpoVjrh" role="3clFbG">
            <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
            <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeAndWait(java.lang.Runnable)" resolve="invokeAndWait" />
            <node concept="2ShNRf" id="53_gmpoVjri" role="37wK5m">
              <node concept="YeOm9" id="53_gmpoVjrj" role="2ShVmc">
                <node concept="1Y3b0j" id="53_gmpoVjrk" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="53_gmpoVjrl" role="1B3o_S" />
                  <node concept="3clFb_" id="53_gmpoVjrm" role="jymVt">
                    <property role="TrG5h" value="run" />
                    <node concept="3Tm1VV" id="53_gmpoVjrn" role="1B3o_S" />
                    <node concept="3cqZAl" id="53_gmpoVjro" role="3clF45" />
                    <node concept="3clFbS" id="53_gmpoVjrp" role="3clF47">
                      <node concept="1QHqEK" id="nkanButvC_" role="3cqZAp">
                        <node concept="1QHqEC" id="nkanButvCB" role="1QHqEI">
                          <node concept="3clFbS" id="nkanButvCD" role="1bW5cS">
                            <node concept="3cpWs8" id="53_gmpoVjrt" role="3cqZAp">
                              <node concept="3cpWsn" id="53_gmpoVjru" role="3cpWs9">
                                <property role="TrG5h" value="model" />
                                <node concept="3uibUv" id="53_gmpoVjrv" role="1tU5fm">
                                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                </node>
                                <node concept="2OqwBi" id="53_gmpoVjrw" role="33vP2m">
                                  <node concept="2OqwBi" id="53_gmpoVjrx" role="2Oq$k0">
                                    <node concept="37vLTw" id="53_gmpoVjry" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1QKKVBBDsMN" resolve="mpsProject" />
                                    </node>
                                    <node concept="liA8E" id="53_gmpoVjrz" role="2OqNvi">
                                      <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                                    </node>
                                  </node>
                                  <node concept="AQDAd" id="53_gmpoVjr$" role="2OqNvi">
                                    <ref role="37wK5l" node="5i$4SBK2anl" resolve="getModel" />
                                    <node concept="Xl_RD" id="53_gmpoVjr_" role="37wK5m">
                                      <property role="Xl_RC" value="simple.solution1" />
                                    </node>
                                    <node concept="Xl_RD" id="53_gmpoVjrA" role="37wK5m">
                                      <property role="Xl_RC" value="simple.solution1.model1" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="53_gmpoVjrB" role="3cqZAp">
                              <node concept="3cpWsn" id="53_gmpoVjrC" role="3cpWs9">
                                <property role="TrG5h" value="myClass" />
                                <node concept="3Tqbb2" id="53_gmpoVjrD" role="1tU5fm">
                                  <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
                                </node>
                                <node concept="1PxgMI" id="53_gmpoVjrE" role="33vP2m">
                                  <node concept="chp4Y" id="53_gmpoVjrF" role="3oSUPX">
                                    <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                                  </node>
                                  <node concept="2OqwBi" id="53_gmpoVjrG" role="1m5AlR">
                                    <node concept="37vLTw" id="53_gmpoVjrH" role="2Oq$k0">
                                      <ref role="3cqZAo" node="53_gmpoVjru" resolve="model" />
                                    </node>
                                    <node concept="AQDAd" id="53_gmpoVjrI" role="2OqNvi">
                                      <ref role="37wK5l" node="nkanButqCU" resolve="getRoot" />
                                      <node concept="35c_gC" id="nkanButsDs" role="37wK5m">
                                        <ref role="35c_gD" to="tpee:fz12cDA" resolve="ClassConcept" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1gVbGN" id="53_gmpoVl1r" role="3cqZAp">
                              <node concept="17R0WA" id="53_gmpoVmOM" role="1gVkn0">
                                <node concept="2OqwBi" id="53_gmpoVl5o" role="3uHU7B">
                                  <node concept="37vLTw" id="53_gmpoVl5p" role="2Oq$k0">
                                    <ref role="3cqZAo" node="53_gmpoVjrC" resolve="myClass" />
                                  </node>
                                  <node concept="3TrcHB" id="53_gmpoVl5q" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="53_gmpoVmXt" role="3uHU7w">
                                  <property role="Xl_RC" value="MyEvenMoreSuperAmazinglyBrilliantlyRenamedClass" />
                                </node>
                              </node>
                              <node concept="3cpWs3" id="nkanButlgZ" role="1gVpfI">
                                <node concept="2OqwBi" id="nkanButoQ9" role="3uHU7w">
                                  <node concept="37vLTw" id="nkanButoeI" role="2Oq$k0">
                                    <ref role="3cqZAo" node="53_gmpoVjrC" resolve="myClass" />
                                  </node>
                                  <node concept="3TrcHB" id="nkanButqks" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="nkanButkLb" role="3uHU7B">
                                  <property role="Xl_RC" value="Actual value was " />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="nkanButvEJ" role="ukAjM">
                          <node concept="37vLTw" id="nkanButvEK" role="2Oq$k0">
                            <ref role="3cqZAo" node="5i$4SBK3URP" resolve="effectiveMpsProject" />
                          </node>
                          <node concept="liA8E" id="nkanButvEL" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="53_gmpoVjs3" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="53_gmpoTNl7" role="3cqZAp" />
        <node concept="3cpWs6" id="5i$4SBK0d_i" role="3cqZAp">
          <node concept="2YIFZM" id="5i$4SBK0d_j" role="3cqZAk">
            <ref role="37wK5l" node="5yNJPA6trVb" resolve="ok" />
            <ref role="1Pybhc" node="5yNJPA6btY7" resolve="TestResult" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1QKKVBBBVPZ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3uibUv" id="5i$4SBK0d_l" role="1zkMxy">
      <ref role="3uigEE" node="5yNJPA6tjxd" resolve="IntegrationTest" />
    </node>
  </node>
  <node concept="KRBjq" id="5i$4SBK2ajB">
    <property role="3GE5qa" value="support" />
    <property role="TrG5h" value="SRepositoryNavigation" />
    <node concept="ATzpf" id="5i$4SBK2anl" role="a7sos">
      <property role="TrG5h" value="getModel" />
      <node concept="37vLTG" id="5i$4SBK2ayS" role="3clF46">
        <property role="TrG5h" value="moduleName" />
        <node concept="17QB3L" id="5i$4SBK2aAI" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5i$4SBK2aB5" role="3clF46">
        <property role="TrG5h" value="modelName" />
        <node concept="17QB3L" id="5i$4SBK2aEZ" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="5i$4SBK2anm" role="1B3o_S" />
      <node concept="3clFbS" id="5i$4SBK2ano" role="3clF47">
        <node concept="3cpWs8" id="5i$4SBK2hXu" role="3cqZAp">
          <node concept="3cpWsn" id="5i$4SBK2hXv" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="5i$4SBK2hXw" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="5i$4SBK2hY5" role="33vP2m">
              <node concept="AQDAd" id="5i$4SBK2hY8" role="2OqNvi">
                <ref role="37wK5l" node="5i$4SBK2aFw" resolve="getModule" />
                <node concept="37vLTw" id="5i$4SBK2hZC" role="37wK5m">
                  <ref role="3cqZAo" node="5i$4SBK2ayS" resolve="moduleName" />
                </node>
              </node>
              <node concept="2V_BSl" id="5i$4SBK2hYa" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5i$4SBK2i87" role="3cqZAp">
          <node concept="2GrKxI" id="5i$4SBK2i89" role="2Gsz3X">
            <property role="TrG5h" value="model" />
          </node>
          <node concept="2OqwBi" id="5i$4SBK2ieL" role="2GsD0m">
            <node concept="37vLTw" id="5i$4SBK2i8Z" role="2Oq$k0">
              <ref role="3cqZAo" node="5i$4SBK2hXv" resolve="module" />
            </node>
            <node concept="liA8E" id="5i$4SBK2iiR" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
            </node>
          </node>
          <node concept="3clFbS" id="5i$4SBK2i8d" role="2LFqv$">
            <node concept="3clFbJ" id="5i$4SBK2isZ" role="3cqZAp">
              <node concept="17R0WA" id="5i$4SBK2j7V" role="3clFbw">
                <node concept="37vLTw" id="5i$4SBK2jeG" role="3uHU7w">
                  <ref role="3cqZAo" node="5i$4SBK2aB5" resolve="modelName" />
                </node>
                <node concept="2OqwBi" id="5i$4SBK2iz3" role="3uHU7B">
                  <node concept="2GrUjf" id="5i$4SBK2itl" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="5i$4SBK2i89" resolve="model" />
                  </node>
                  <node concept="liA8E" id="5i$4SBK2iJU" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getModelName()" resolve="getModelName" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5i$4SBK2it1" role="3clFbx">
                <node concept="3cpWs6" id="5i$4SBK2jiT" role="3cqZAp">
                  <node concept="2GrUjf" id="5i$4SBK2jjf" role="3cqZAk">
                    <ref role="2Gs0qQ" node="5i$4SBK2i89" resolve="model" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="5i$4SBK2jnk" role="3cqZAp">
          <node concept="2ShNRf" id="5i$4SBK2jnl" role="YScLw">
            <node concept="1pGfFk" id="5i$4SBK2jnm" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
              <node concept="3cpWs3" id="5i$4SBK2jY4" role="37wK5m">
                <node concept="37vLTw" id="5i$4SBK2jZC" role="3uHU7w">
                  <ref role="3cqZAo" node="5i$4SBK2ayS" resolve="moduleName" />
                </node>
                <node concept="3cpWs3" id="5i$4SBK2jN6" role="3uHU7B">
                  <node concept="3cpWs3" id="5i$4SBK2jnn" role="3uHU7B">
                    <node concept="Xl_RD" id="5i$4SBK2jnp" role="3uHU7B">
                      <property role="Xl_RC" value="Model not found: " />
                    </node>
                    <node concept="37vLTw" id="5i$4SBK2j$K" role="3uHU7w">
                      <ref role="3cqZAo" node="5i$4SBK2aB5" resolve="modelName" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="5i$4SBK2jQU" role="3uHU7w">
                    <property role="Xl_RC" value=" in module " />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5i$4SBK2ku4" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
    </node>
    <node concept="ATzpf" id="5i$4SBK2aFw" role="a7sos">
      <property role="TrG5h" value="getModule" />
      <node concept="37vLTG" id="5i$4SBK2aN$" role="3clF46">
        <property role="TrG5h" value="moduleName" />
        <node concept="17QB3L" id="5i$4SBK2aN_" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="5i$4SBK2aFx" role="1B3o_S" />
      <node concept="3uibUv" id="5i$4SBK2aN8" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
      <node concept="3clFbS" id="5i$4SBK2aFz" role="3clF47">
        <node concept="2Gpval" id="5i$4SBK2dDx" role="3cqZAp">
          <node concept="2GrKxI" id="5i$4SBK2dD_" role="2Gsz3X">
            <property role="TrG5h" value="module" />
          </node>
          <node concept="2OqwBi" id="5i$4SBK2dK8" role="2GsD0m">
            <node concept="2V_BSl" id="5i$4SBK2dEj" role="2Oq$k0" />
            <node concept="liA8E" id="5i$4SBK2dOc" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~SRepository.getModules()" resolve="getModules" />
            </node>
          </node>
          <node concept="3clFbS" id="5i$4SBK2dDH" role="2LFqv$">
            <node concept="3clFbJ" id="5i$4SBK2dVd" role="3cqZAp">
              <node concept="17R0WA" id="5i$4SBK2eAf" role="3clFbw">
                <node concept="37vLTw" id="5i$4SBK2eGX" role="3uHU7w">
                  <ref role="3cqZAo" node="5i$4SBK2aN$" resolve="moduleName" />
                </node>
                <node concept="2OqwBi" id="5i$4SBK2e19" role="3uHU7B">
                  <node concept="2GrUjf" id="5i$4SBK2dVz" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="5i$4SBK2dD_" resolve="module" />
                  </node>
                  <node concept="liA8E" id="5i$4SBK2edY" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5i$4SBK2dVf" role="3clFbx">
                <node concept="3cpWs6" id="5i$4SBK2eLa" role="3cqZAp">
                  <node concept="2GrUjf" id="5i$4SBK2eLv" role="3cqZAk">
                    <ref role="2Gs0qQ" node="5i$4SBK2dD_" resolve="module" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="5i$4SBK2eWR" role="3cqZAp">
          <node concept="2ShNRf" id="5i$4SBK2f13" role="YScLw">
            <node concept="1pGfFk" id="5i$4SBK2hma" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
              <node concept="3cpWs3" id="5i$4SBK2hKY" role="37wK5m">
                <node concept="37vLTw" id="5i$4SBK2hOu" role="3uHU7w">
                  <ref role="3cqZAo" node="5i$4SBK2aN$" resolve="moduleName" />
                </node>
                <node concept="Xl_RD" id="5i$4SBK2hpc" role="3uHU7B">
                  <property role="Xl_RC" value="Module not found: " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="ATzpf" id="7jRNnvCaLJB" role="a7sos">
      <property role="TrG5h" value="findConceptByName" />
      <node concept="3Tm1VV" id="7jRNnvCaLJC" role="1B3o_S" />
      <node concept="3uibUv" id="7jRNnvCbezq" role="3clF45">
        <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
      </node>
      <node concept="3clFbS" id="7jRNnvCaLJE" role="3clF47">
        <node concept="3cpWs8" id="5CDZnbm9i5$" role="3cqZAp">
          <node concept="3cpWsn" id="5CDZnbm9i5B" role="3cpWs9">
            <property role="TrG5h" value="nameToSearch" />
            <node concept="17QB3L" id="5CDZnbm9i5y" role="1tU5fm" />
            <node concept="2OqwBi" id="7jRNnvCmv2m" role="33vP2m">
              <node concept="2V_BSl" id="7jRNnvCmuWA" role="2Oq$k0" />
              <node concept="AQDAd" id="7jRNnvCmv9G" role="2OqNvi">
                <ref role="37wK5l" node="7jRNnvCmr4e" resolve="injectStructureInConceptName" />
                <node concept="37vLTw" id="7jRNnvCmvaE" role="37wK5m">
                  <ref role="3cqZAo" node="7jRNnvCaM3Y" resolve="conceptName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7jRNnvCaNgg" role="3cqZAp">
          <node concept="2GrKxI" id="7jRNnvCaNgh" role="2Gsz3X">
            <property role="TrG5h" value="language" />
          </node>
          <node concept="3clFbS" id="7jRNnvCaNgj" role="2LFqv$">
            <node concept="2Gpval" id="7jRNnvCaOfh" role="3cqZAp">
              <node concept="2GrKxI" id="7jRNnvCaOfi" role="2Gsz3X">
                <property role="TrG5h" value="concept" />
              </node>
              <node concept="2OqwBi" id="7jRNnvCaOng" role="2GsD0m">
                <node concept="2GrUjf" id="7jRNnvCaOg7" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="7jRNnvCaNgh" resolve="language" />
                </node>
                <node concept="liA8E" id="7jRNnvCaOEl" role="2OqNvi">
                  <ref role="37wK5l" to="c17a:~SLanguage.getConcepts()" resolve="getConcepts" />
                </node>
              </node>
              <node concept="3clFbS" id="7jRNnvCaOfk" role="2LFqv$">
                <node concept="3clFbJ" id="7jRNnvCaONJ" role="3cqZAp">
                  <node concept="17R0WA" id="7jRNnvCaQ2r" role="3clFbw">
                    <node concept="37vLTw" id="7jRNnvCmvbw" role="3uHU7w">
                      <ref role="3cqZAo" node="5CDZnbm9i5B" resolve="nameToSearch" />
                    </node>
                    <node concept="2OqwBi" id="7jRNnvCaP65" role="3uHU7B">
                      <node concept="2GrUjf" id="7jRNnvCaOO5" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="7jRNnvCaOfi" resolve="concept" />
                      </node>
                      <node concept="liA8E" id="7jRNnvCaP$I" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getQualifiedName()" resolve="getQualifiedName" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="7jRNnvCaONL" role="3clFbx">
                    <node concept="3cpWs6" id="7jRNnvCaQi$" role="3cqZAp">
                      <node concept="2GrUjf" id="7jRNnvCaQiT" role="3cqZAk">
                        <ref role="2Gs0qQ" node="7jRNnvCaOfi" resolve="concept" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7jRNnvCaCvN" role="2GsD0m">
            <node concept="2YIFZM" id="7jRNnvCaNDU" role="2Oq$k0">
              <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
              <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
              <node concept="2V_BSl" id="7jRNnvCaNJl" role="37wK5m" />
            </node>
            <node concept="liA8E" id="7jRNnvCaCIW" role="2OqNvi">
              <ref role="37wK5l" to="vndm:~LanguageRegistry.getAllLanguages()" resolve="getAllLanguages" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7jRNnvCaQtb" role="3cqZAp">
          <node concept="10Nm6u" id="7jRNnvCaQ$8" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="7jRNnvCaM3Y" role="3clF46">
        <property role="TrG5h" value="conceptName" />
        <node concept="17QB3L" id="7jRNnvCaM3X" role="1tU5fm" />
      </node>
    </node>
    <node concept="ATzpf" id="7jRNnvCmr4e" role="a7sos">
      <property role="TrG5h" value="injectStructureInConceptName" />
      <node concept="3Tm6S6" id="7jRNnvCmref" role="1B3o_S" />
      <node concept="17QB3L" id="7jRNnvCmri2" role="3clF45" />
      <node concept="3clFbS" id="7jRNnvCmr4h" role="3clF47">
        <node concept="3cpWs8" id="5CDZnbm9lKZ" role="3cqZAp">
          <node concept="3cpWsn" id="5CDZnbm9lL0" role="3cpWs9">
            <property role="TrG5h" value="parts" />
            <node concept="10Q1$e" id="5CDZnbm9lL1" role="1tU5fm">
              <node concept="17QB3L" id="5CDZnbm9lL2" role="10Q1$1" />
            </node>
            <node concept="2OqwBi" id="5CDZnbm9lL3" role="33vP2m">
              <node concept="37vLTw" id="5CDZnbm9lL4" role="2Oq$k0">
                <ref role="3cqZAo" node="7jRNnvCmrmi" resolve="conceptName" />
              </node>
              <node concept="liA8E" id="5CDZnbm9lL5" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.split(java.lang.String)" resolve="split" />
                <node concept="Xl_RD" id="5CDZnbm9lL6" role="37wK5m">
                  <property role="Xl_RC" value="\\." />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5CDZnbm9lL7" role="3cqZAp">
          <node concept="3cpWsn" id="5CDZnbm9lL8" role="3cpWs9">
            <property role="TrG5h" value="nameToSearch" />
            <node concept="17QB3L" id="5CDZnbm9lL9" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbJ" id="5CDZnbm9lLa" role="3cqZAp">
          <node concept="3clFbS" id="5CDZnbm9lLb" role="3clFbx">
            <node concept="3cpWs8" id="5CDZnbm9lLc" role="3cqZAp">
              <node concept="3cpWsn" id="5CDZnbm9lLd" role="3cpWs9">
                <property role="TrG5h" value="prefix" />
                <node concept="10Q1$e" id="5CDZnbm9lLe" role="1tU5fm">
                  <node concept="17QB3L" id="5CDZnbm9lLf" role="10Q1$1" />
                </node>
                <node concept="2YIFZM" id="5CDZnbm9lLg" role="33vP2m">
                  <ref role="37wK5l" to="33ny:~Arrays.copyOfRange(java.lang.Object[],int,int)" resolve="copyOfRange" />
                  <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                  <node concept="37vLTw" id="5CDZnbm9lLh" role="37wK5m">
                    <ref role="3cqZAo" node="5CDZnbm9lL0" resolve="parts" />
                  </node>
                  <node concept="3cmrfG" id="5CDZnbm9lLi" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3cpWsd" id="5CDZnbm9lLj" role="37wK5m">
                    <node concept="2OqwBi" id="5CDZnbm9lLk" role="3uHU7B">
                      <node concept="37vLTw" id="5CDZnbm9lLl" role="2Oq$k0">
                        <ref role="3cqZAo" node="5CDZnbm9lL0" resolve="parts" />
                      </node>
                      <node concept="1Rwk04" id="5CDZnbm9lLm" role="2OqNvi" />
                    </node>
                    <node concept="3cmrfG" id="5CDZnbm9lLn" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5CDZnbm9lLo" role="3cqZAp">
              <node concept="37vLTI" id="5CDZnbm9lLp" role="3clFbG">
                <node concept="Xl_RD" id="5CDZnbm9lLq" role="37vLTx">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="37vLTw" id="5CDZnbm9lLr" role="37vLTJ">
                  <ref role="3cqZAo" node="5CDZnbm9lL8" resolve="nameToSearch" />
                </node>
              </node>
            </node>
            <node concept="1Dw8fO" id="5CDZnbm9lLs" role="3cqZAp">
              <node concept="3clFbS" id="5CDZnbm9lLt" role="2LFqv$">
                <node concept="3clFbF" id="5CDZnbm9lLu" role="3cqZAp">
                  <node concept="d57v9" id="5CDZnbm9lLv" role="3clFbG">
                    <node concept="AH0OO" id="5CDZnbm9lLw" role="37vLTx">
                      <node concept="37vLTw" id="5CDZnbm9lLx" role="AHEQo">
                        <ref role="3cqZAo" node="5CDZnbm9lLC" resolve="i" />
                      </node>
                      <node concept="37vLTw" id="5CDZnbm9lLy" role="AHHXb">
                        <ref role="3cqZAo" node="5CDZnbm9lLd" resolve="prefix" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="5CDZnbm9lLz" role="37vLTJ">
                      <ref role="3cqZAo" node="5CDZnbm9lL8" resolve="nameToSearch" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5CDZnbm9lL$" role="3cqZAp">
                  <node concept="d57v9" id="5CDZnbm9lL_" role="3clFbG">
                    <node concept="Xl_RD" id="5CDZnbm9lLA" role="37vLTx">
                      <property role="Xl_RC" value="." />
                    </node>
                    <node concept="37vLTw" id="5CDZnbm9lLB" role="37vLTJ">
                      <ref role="3cqZAo" node="5CDZnbm9lL8" resolve="nameToSearch" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="5CDZnbm9lLC" role="1Duv9x">
                <property role="TrG5h" value="i" />
                <node concept="10Oyi0" id="5CDZnbm9lLD" role="1tU5fm" />
                <node concept="3cmrfG" id="5CDZnbm9lLE" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3eOVzh" id="5CDZnbm9lLF" role="1Dwp0S">
                <node concept="2OqwBi" id="5CDZnbm9lLG" role="3uHU7w">
                  <node concept="37vLTw" id="5CDZnbm9lLH" role="2Oq$k0">
                    <ref role="3cqZAo" node="5CDZnbm9lLd" resolve="prefix" />
                  </node>
                  <node concept="1Rwk04" id="5CDZnbm9lLI" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="5CDZnbm9lLJ" role="3uHU7B">
                  <ref role="3cqZAo" node="5CDZnbm9lLC" resolve="i" />
                </node>
              </node>
              <node concept="3uNrnE" id="5CDZnbm9lLK" role="1Dwrff">
                <node concept="37vLTw" id="5CDZnbm9lLL" role="2$L3a6">
                  <ref role="3cqZAo" node="5CDZnbm9lLC" resolve="i" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5CDZnbm9lLM" role="3cqZAp">
              <node concept="d57v9" id="5CDZnbm9lLN" role="3clFbG">
                <node concept="Xl_RD" id="5CDZnbm9lLO" role="37vLTx">
                  <property role="Xl_RC" value="structure." />
                </node>
                <node concept="37vLTw" id="5CDZnbm9lLP" role="37vLTJ">
                  <ref role="3cqZAo" node="5CDZnbm9lL8" resolve="nameToSearch" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5CDZnbm9lLQ" role="3cqZAp">
              <node concept="d57v9" id="5CDZnbm9lLR" role="3clFbG">
                <node concept="AH0OO" id="5CDZnbm9lLS" role="37vLTx">
                  <node concept="3cpWsd" id="5CDZnbm9lLT" role="AHEQo">
                    <node concept="3cmrfG" id="5CDZnbm9lLU" role="3uHU7w">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="5CDZnbm9lLV" role="3uHU7B">
                      <node concept="37vLTw" id="5CDZnbm9lLW" role="2Oq$k0">
                        <ref role="3cqZAo" node="5CDZnbm9lL0" resolve="parts" />
                      </node>
                      <node concept="1Rwk04" id="5CDZnbm9lLX" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5CDZnbm9lLY" role="AHHXb">
                    <ref role="3cqZAo" node="5CDZnbm9lL0" resolve="parts" />
                  </node>
                </node>
                <node concept="37vLTw" id="5CDZnbm9lLZ" role="37vLTJ">
                  <ref role="3cqZAo" node="5CDZnbm9lL8" resolve="nameToSearch" />
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="5CDZnbm9lM0" role="3clFbw">
            <node concept="3eOVzh" id="5CDZnbm9lM1" role="3uHU7B">
              <node concept="2OqwBi" id="5CDZnbm9lM2" role="3uHU7B">
                <node concept="37vLTw" id="5CDZnbm9lM3" role="2Oq$k0">
                  <ref role="3cqZAo" node="5CDZnbm9lL0" resolve="parts" />
                </node>
                <node concept="1Rwk04" id="5CDZnbm9lM4" role="2OqNvi" />
              </node>
              <node concept="3cmrfG" id="5CDZnbm9lM5" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
            <node concept="17QLQc" id="5CDZnbm9lM6" role="3uHU7w">
              <node concept="AH0OO" id="5CDZnbm9lM7" role="3uHU7B">
                <node concept="3cpWsd" id="5CDZnbm9lM8" role="AHEQo">
                  <node concept="3cmrfG" id="5CDZnbm9lM9" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="2OqwBi" id="5CDZnbm9lMa" role="3uHU7B">
                    <node concept="37vLTw" id="5CDZnbm9lMb" role="2Oq$k0">
                      <ref role="3cqZAo" node="5CDZnbm9lL0" resolve="parts" />
                    </node>
                    <node concept="1Rwk04" id="5CDZnbm9lMc" role="2OqNvi" />
                  </node>
                </node>
                <node concept="37vLTw" id="5CDZnbm9lMd" role="AHHXb">
                  <ref role="3cqZAo" node="5CDZnbm9lL0" resolve="parts" />
                </node>
              </node>
              <node concept="Xl_RD" id="5CDZnbm9lMe" role="3uHU7w">
                <property role="Xl_RC" value="structure" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5CDZnbm9lMf" role="9aQIa">
            <node concept="3clFbS" id="5CDZnbm9lMg" role="9aQI4">
              <node concept="3clFbF" id="5CDZnbm9lMh" role="3cqZAp">
                <node concept="37vLTI" id="5CDZnbm9lMi" role="3clFbG">
                  <node concept="37vLTw" id="5CDZnbm9lMj" role="37vLTx">
                    <ref role="3cqZAo" node="7jRNnvCmrmi" resolve="conceptName" />
                  </node>
                  <node concept="37vLTw" id="5CDZnbm9lMk" role="37vLTJ">
                    <ref role="3cqZAo" node="5CDZnbm9lL8" resolve="nameToSearch" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5CDZnbm9lMl" role="3cqZAp">
          <node concept="37vLTw" id="5CDZnbm9lMm" role="3cqZAk">
            <ref role="3cqZAo" node="5CDZnbm9lL8" resolve="nameToSearch" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7jRNnvCmrmi" role="3clF46">
        <property role="TrG5h" value="conceptName" />
        <node concept="17QB3L" id="7jRNnvCmrmh" role="1tU5fm" />
      </node>
    </node>
    <node concept="3uibUv" id="5i$4SBK2anh" role="KRMoO">
      <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
    </node>
    <node concept="3Tm1VV" id="5i$4SBK2kyb" role="1B3o_S" />
  </node>
  <node concept="KRBjq" id="5i$4SBK2oGV">
    <property role="3GE5qa" value="support" />
    <property role="TrG5h" value="SModelNavigation" />
    <node concept="ATzpf" id="5i$4SBK2oGW" role="a7sos">
      <property role="TrG5h" value="getRoot" />
      <node concept="37vLTG" id="5i$4SBK2oGX" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="5i$4SBK2oGY" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="5i$4SBK2oH1" role="1B3o_S" />
      <node concept="3clFbS" id="5i$4SBK2oH2" role="3clF47">
        <node concept="3cpWs8" id="5cWpYFRJa02" role="3cqZAp">
          <node concept="3cpWsn" id="5cWpYFRJa03" role="3cpWs9">
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="5cWpYFRJa04" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuffer" resolve="StringBuffer" />
            </node>
            <node concept="2ShNRf" id="5cWpYFRJaiP" role="33vP2m">
              <node concept="1pGfFk" id="5cWpYFRJaiM" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuffer.&lt;init&gt;()" resolve="StringBuffer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5i$4SBK2qcn" role="3cqZAp">
          <node concept="2GrKxI" id="5i$4SBK2qcp" role="2Gsz3X">
            <property role="TrG5h" value="root" />
          </node>
          <node concept="2OqwBi" id="5i$4SBK2qkp" role="2GsD0m">
            <node concept="2V_BSl" id="5i$4SBK2qcY" role="2Oq$k0" />
            <node concept="liA8E" id="5i$4SBK2qrH" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
            </node>
          </node>
          <node concept="3clFbS" id="5i$4SBK2qct" role="2LFqv$">
            <node concept="3clFbF" id="5cWpYFRJapz" role="3cqZAp">
              <node concept="2OqwBi" id="5cWpYFRJb2L" role="3clFbG">
                <node concept="37vLTw" id="5cWpYFRJapx" role="2Oq$k0">
                  <ref role="3cqZAo" node="5cWpYFRJa03" resolve="sb" />
                </node>
                <node concept="liA8E" id="5cWpYFRJbvZ" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuffer.append(java.lang.String)" resolve="append" />
                  <node concept="3cpWs3" id="5cWpYFRJhSH" role="37wK5m">
                    <node concept="Xl_RD" id="5cWpYFRJhSM" role="3uHU7w">
                      <property role="Xl_RC" value="), " />
                    </node>
                    <node concept="3cpWs3" id="5cWpYFRJexO" role="3uHU7B">
                      <node concept="3cpWs3" id="5cWpYFRJdu$" role="3uHU7B">
                        <node concept="2OqwBi" id="5cWpYFRJceL" role="3uHU7B">
                          <node concept="2GrUjf" id="5cWpYFRJbZU" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="5i$4SBK2qcp" resolve="root" />
                          </node>
                          <node concept="liA8E" id="5cWpYFRJcPE" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="5cWpYFRJduD" role="3uHU7w">
                          <property role="Xl_RC" value=" (" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5cWpYFRJge4" role="3uHU7w">
                        <node concept="2OqwBi" id="5cWpYFRJf4r" role="2Oq$k0">
                          <node concept="2GrUjf" id="5cWpYFRJey6" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="5i$4SBK2qcp" resolve="root" />
                          </node>
                          <node concept="liA8E" id="5cWpYFRJfPZ" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                          </node>
                        </node>
                        <node concept="liA8E" id="5cWpYFRJgS7" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getQualifiedName()" resolve="getQualifiedName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5i$4SBK2q_T" role="3cqZAp">
              <node concept="17R0WA" id="5i$4SBK2ryt" role="3clFbw">
                <node concept="37vLTw" id="5i$4SBK2rDb" role="3uHU7w">
                  <ref role="3cqZAo" node="5i$4SBK2oGX" resolve="name" />
                </node>
                <node concept="2OqwBi" id="5i$4SBK2qPc" role="3uHU7B">
                  <node concept="2GrUjf" id="5i$4SBK2qAf" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="5i$4SBK2qcp" resolve="root" />
                  </node>
                  <node concept="liA8E" id="5i$4SBK2r6h" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5i$4SBK2q_V" role="3clFbx">
                <node concept="3cpWs6" id="5i$4SBK2rM5" role="3cqZAp">
                  <node concept="2GrUjf" id="5i$4SBK2rMe" role="3cqZAk">
                    <ref role="2Gs0qQ" node="5i$4SBK2qcp" resolve="root" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="5i$4SBK2oHp" role="3cqZAp">
          <node concept="2ShNRf" id="5i$4SBK2oHq" role="YScLw">
            <node concept="1pGfFk" id="5i$4SBK2oHr" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
              <node concept="3cpWs3" id="5cWpYFRJiBQ" role="37wK5m">
                <node concept="2OqwBi" id="5cWpYFRJjaT" role="3uHU7w">
                  <node concept="37vLTw" id="5cWpYFRJiCk" role="2Oq$k0">
                    <ref role="3cqZAo" node="5cWpYFRJa03" resolve="sb" />
                  </node>
                  <node concept="liA8E" id="5cWpYFRJjGM" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~StringBuffer.toString()" resolve="toString" />
                  </node>
                </node>
                <node concept="3cpWs3" id="5cWpYFRJ9qp" role="3uHU7B">
                  <node concept="3cpWs3" id="5i$4SBK2oHs" role="3uHU7B">
                    <node concept="3cpWs3" id="5i$4SBK2oHu" role="3uHU7B">
                      <node concept="3cpWs3" id="5i$4SBK2oHv" role="3uHU7B">
                        <node concept="Xl_RD" id="5i$4SBK2oHw" role="3uHU7B">
                          <property role="Xl_RC" value="Root not found: " />
                        </node>
                        <node concept="37vLTw" id="5i$4SBK2s3K" role="3uHU7w">
                          <ref role="3cqZAo" node="5i$4SBK2oGX" resolve="name" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="5i$4SBK2oHy" role="3uHU7w">
                        <property role="Xl_RC" value=" in model " />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5i$4SBK2srk" role="3uHU7w">
                      <node concept="2V_BSl" id="5i$4SBK2se5" role="2Oq$k0" />
                      <node concept="liA8E" id="5i$4SBK2szF" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="5cWpYFRJ9qu" role="3uHU7w">
                    <property role="Xl_RC" value=". Roots present: " />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5i$4SBK2pFl" role="3clF45" />
    </node>
    <node concept="ATzpf" id="nkanButqCU" role="a7sos">
      <property role="TrG5h" value="getRoot" />
      <node concept="37vLTG" id="nkanButqCV" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="nkanButqU$" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="nkanButqCX" role="1B3o_S" />
      <node concept="3clFbS" id="nkanButqCY" role="3clF47">
        <node concept="2Gpval" id="nkanButqCZ" role="3cqZAp">
          <node concept="2GrKxI" id="nkanButqD0" role="2Gsz3X">
            <property role="TrG5h" value="root" />
          </node>
          <node concept="2OqwBi" id="nkanButqD1" role="2GsD0m">
            <node concept="2V_BSl" id="nkanButqD2" role="2Oq$k0" />
            <node concept="liA8E" id="nkanButqD3" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
            </node>
          </node>
          <node concept="3clFbS" id="nkanButqD4" role="2LFqv$">
            <node concept="3clFbJ" id="nkanButqD5" role="3cqZAp">
              <node concept="2OqwBi" id="nkanButrwh" role="3clFbw">
                <node concept="2GrUjf" id="nkanButr7U" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="nkanButqD0" resolve="root" />
                </node>
                <node concept="liA8E" id="nkanButrP$" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.isInstanceOfConcept(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="isInstanceOfConcept" />
                  <node concept="37vLTw" id="nkanButrRz" role="37wK5m">
                    <ref role="3cqZAo" node="nkanButqCV" resolve="concept" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="nkanButqDb" role="3clFbx">
                <node concept="3cpWs6" id="nkanButqDc" role="3cqZAp">
                  <node concept="2GrUjf" id="nkanButqDd" role="3cqZAk">
                    <ref role="2Gs0qQ" node="nkanButqD0" resolve="root" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="nkanButqDe" role="3cqZAp">
          <node concept="2ShNRf" id="nkanButqDf" role="YScLw">
            <node concept="1pGfFk" id="nkanButqDg" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
              <node concept="3cpWs3" id="nkanButqDh" role="37wK5m">
                <node concept="2OqwBi" id="nkanButqDi" role="3uHU7w">
                  <node concept="2V_BSl" id="nkanButqDj" role="2Oq$k0" />
                  <node concept="liA8E" id="nkanButqDk" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="3cpWs3" id="nkanButqDl" role="3uHU7B">
                  <node concept="3cpWs3" id="nkanButqDm" role="3uHU7B">
                    <node concept="Xl_RD" id="nkanButqDn" role="3uHU7B">
                      <property role="Xl_RC" value="Root not found: " />
                    </node>
                    <node concept="37vLTw" id="nkanButqDo" role="3uHU7w">
                      <ref role="3cqZAo" node="nkanButqCV" resolve="concept" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="nkanButqDp" role="3uHU7w">
                    <property role="Xl_RC" value=" in model " />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="nkanButqDq" role="3clF45" />
    </node>
    <node concept="ATzpf" id="5cWpYFRKjMZ" role="a7sos">
      <property role="TrG5h" value="getExactRoot" />
      <node concept="37vLTG" id="5cWpYFRKjN0" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="5cWpYFRKjN1" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="5cWpYFRKjN2" role="1B3o_S" />
      <node concept="3clFbS" id="5cWpYFRKjN3" role="3clF47">
        <node concept="2Gpval" id="5cWpYFRKjN4" role="3cqZAp">
          <node concept="2GrKxI" id="5cWpYFRKjN5" role="2Gsz3X">
            <property role="TrG5h" value="root" />
          </node>
          <node concept="2OqwBi" id="5cWpYFRKjN6" role="2GsD0m">
            <node concept="2V_BSl" id="5cWpYFRKjN7" role="2Oq$k0" />
            <node concept="liA8E" id="5cWpYFRKjN8" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
            </node>
          </node>
          <node concept="3clFbS" id="5cWpYFRKjN9" role="2LFqv$">
            <node concept="3clFbJ" id="5cWpYFRKjNa" role="3cqZAp">
              <node concept="17R0WA" id="5cWpYFRKnc8" role="3clFbw">
                <node concept="2OqwBi" id="5cWpYFRKodK" role="3uHU7w">
                  <node concept="37vLTw" id="5cWpYFRKnUF" role="2Oq$k0">
                    <ref role="3cqZAo" node="5cWpYFRKjN0" resolve="concept" />
                  </node>
                  <node concept="liA8E" id="5cWpYFRKoUd" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getQualifiedName()" resolve="getQualifiedName" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5cWpYFRKlEa" role="3uHU7B">
                  <node concept="2OqwBi" id="5cWpYFRKjNb" role="2Oq$k0">
                    <node concept="2GrUjf" id="5cWpYFRKjNc" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="5cWpYFRKjN5" resolve="root" />
                    </node>
                    <node concept="liA8E" id="5cWpYFRKl90" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5cWpYFRKmFu" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getQualifiedName()" resolve="getQualifiedName" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5cWpYFRKjNf" role="3clFbx">
                <node concept="3cpWs6" id="5cWpYFRKjNg" role="3cqZAp">
                  <node concept="2GrUjf" id="5cWpYFRKjNh" role="3cqZAk">
                    <ref role="2Gs0qQ" node="5cWpYFRKjN5" resolve="root" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="5cWpYFRKjNi" role="3cqZAp">
          <node concept="2ShNRf" id="5cWpYFRKjNj" role="YScLw">
            <node concept="1pGfFk" id="5cWpYFRKjNk" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
              <node concept="3cpWs3" id="5cWpYFRKjNl" role="37wK5m">
                <node concept="2OqwBi" id="5cWpYFRKjNm" role="3uHU7w">
                  <node concept="2V_BSl" id="5cWpYFRKjNn" role="2Oq$k0" />
                  <node concept="liA8E" id="5cWpYFRKjNo" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="3cpWs3" id="5cWpYFRKjNp" role="3uHU7B">
                  <node concept="3cpWs3" id="5cWpYFRKjNq" role="3uHU7B">
                    <node concept="Xl_RD" id="5cWpYFRKjNr" role="3uHU7B">
                      <property role="Xl_RC" value="Root not found: " />
                    </node>
                    <node concept="37vLTw" id="5cWpYFRKjNs" role="3uHU7w">
                      <ref role="3cqZAo" node="5cWpYFRKjN0" resolve="concept" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="5cWpYFRKjNt" role="3uHU7w">
                    <property role="Xl_RC" value=" in model " />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5cWpYFRKjNu" role="3clF45" />
    </node>
    <node concept="3uibUv" id="5i$4SBK2p7Z" role="KRMoO">
      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
    </node>
    <node concept="3Tm1VV" id="5i$4SBK2oI0" role="1B3o_S" />
  </node>
  <node concept="KRBjq" id="6V2G5GpUcbM">
    <property role="3GE5qa" value="support" />
    <property role="TrG5h" value="FileUtils" />
    <node concept="ATzpf" id="6V2G5GpUcfv" role="a7sos">
      <property role="TrG5h" value="deleteDir" />
      <node concept="3Tm1VV" id="6V2G5GpUcfw" role="1B3o_S" />
      <node concept="3cqZAl" id="6V2G5GpUcjn" role="3clF45" />
      <node concept="3clFbS" id="6V2G5GpUcfy" role="3clF47">
        <node concept="3cpWs8" id="6V2G5GpUh7H" role="3cqZAp">
          <node concept="3cpWsn" id="6V2G5GpUh7I" role="3cpWs9">
            <property role="TrG5h" value="contents" />
            <node concept="10Q1$e" id="6V2G5GpUh7J" role="1tU5fm">
              <node concept="3uibUv" id="6V2G5GpUh7K" role="10Q1$1">
                <ref role="3uigEE" to="guwi:~File" resolve="File" />
              </node>
            </node>
            <node concept="2OqwBi" id="6V2G5GpUhg1" role="33vP2m">
              <node concept="2V_BSl" id="6V2G5GpUh8A" role="2Oq$k0" />
              <node concept="liA8E" id="6V2G5GpUhwb" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.listFiles()" resolve="listFiles" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6V2G5GpUh_O" role="3cqZAp">
          <node concept="3clFbS" id="6V2G5GpUh_Q" role="3clFbx">
            <node concept="2Gpval" id="6V2G5GpUA7Z" role="3cqZAp">
              <node concept="2GrKxI" id="6V2G5GpUA81" role="2Gsz3X">
                <property role="TrG5h" value="f" />
              </node>
              <node concept="37vLTw" id="6V2G5GpUA8C" role="2GsD0m">
                <ref role="3cqZAo" node="6V2G5GpUh7I" resolve="contents" />
              </node>
              <node concept="3clFbS" id="6V2G5GpUA85" role="2LFqv$">
                <node concept="3clFbJ" id="6V2G5GpUAcJ" role="3cqZAp">
                  <node concept="3fqX7Q" id="6V2G5GpUAd4" role="3clFbw">
                    <node concept="2YIFZM" id="6V2G5GpUAdO" role="3fr31v">
                      <ref role="37wK5l" to="eoo2:~Files.isSymbolicLink(java.nio.file.Path)" resolve="isSymbolicLink" />
                      <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
                      <node concept="2OqwBi" id="6V2G5GpUAlJ" role="37wK5m">
                        <node concept="2GrUjf" id="6V2G5GpUAeh" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="6V2G5GpUA81" resolve="f" />
                        </node>
                        <node concept="liA8E" id="6V2G5GpUAp3" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~File.toPath()" resolve="toPath" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="6V2G5GpUAcL" role="3clFbx">
                    <node concept="3clFbF" id="6V2G5GpUAu6" role="3cqZAp">
                      <node concept="2OqwBi" id="6V2G5GpUAuh" role="3clFbG">
                        <node concept="2GrUjf" id="6V2G5GpUAu5" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="6V2G5GpUA81" resolve="f" />
                        </node>
                        <node concept="AQDAd" id="6V2G5GpUAxG" role="2OqNvi">
                          <ref role="37wK5l" node="6V2G5GpUcfv" resolve="deleteDir" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6V2G5GpUhGg" role="3clFbw">
            <node concept="10Nm6u" id="6V2G5GpUhNV" role="3uHU7w" />
            <node concept="37vLTw" id="6V2G5GpUhB1" role="3uHU7B">
              <ref role="3cqZAo" node="6V2G5GpUh7I" resolve="contents" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6V2G5GpUACw" role="3cqZAp">
          <node concept="2OqwBi" id="6V2G5GpUAIH" role="3clFbG">
            <node concept="2V_BSl" id="6V2G5GpUACu" role="2Oq$k0" />
            <node concept="liA8E" id="6V2G5GpUAN3" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~File.delete()" resolve="delete" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="ATzpf" id="6V2G5GpUDau" role="a7sos">
      <property role="TrG5h" value="copyDirectory" />
      <node concept="3Tm1VV" id="6V2G5GpUDav" role="1B3o_S" />
      <node concept="3cqZAl" id="6V2G5GpUDMj" role="3clF45" />
      <node concept="3clFbS" id="6V2G5GpUDax" role="3clF47">
        <node concept="3clFbJ" id="6V2G5GpUEvX" role="3cqZAp">
          <node concept="3fqX7Q" id="6V2G5GpUEvY" role="3clFbw">
            <node concept="2OqwBi" id="6V2G5GpUEvZ" role="3fr31v">
              <node concept="37vLTw" id="6V2G5GpUEw0" role="2Oq$k0">
                <ref role="3cqZAo" node="6V2G5GpUDQf" resolve="destination" />
              </node>
              <node concept="liA8E" id="6V2G5GpUEw1" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6V2G5GpUEw2" role="3clFbx">
            <node concept="3clFbF" id="6V2G5GpUEw3" role="3cqZAp">
              <node concept="2OqwBi" id="6V2G5GpUEw4" role="3clFbG">
                <node concept="37vLTw" id="6V2G5GpUEw5" role="2Oq$k0">
                  <ref role="3cqZAo" node="6V2G5GpUDQf" resolve="destination" />
                </node>
                <node concept="liA8E" id="6V2G5GpUEw6" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.mkdirs()" resolve="mkdirs" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6V2G5GpUEw7" role="3cqZAp">
          <node concept="2GrKxI" id="6V2G5GpUEw8" role="2Gsz3X">
            <property role="TrG5h" value="name" />
          </node>
          <node concept="2OqwBi" id="6V2G5GpUEw9" role="2GsD0m">
            <node concept="2V_BSl" id="6V2G5GpUEzQ" role="2Oq$k0" />
            <node concept="liA8E" id="6V2G5GpUEwb" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~File.list()" resolve="list" />
            </node>
          </node>
          <node concept="3clFbS" id="6V2G5GpUEwc" role="2LFqv$">
            <node concept="3clFbF" id="6V2G5GpUFae" role="3cqZAp">
              <node concept="2OqwBi" id="6V2G5GpUFha" role="3clFbG">
                <node concept="AQDAd" id="6V2G5GpUFjv" role="2OqNvi">
                  <ref role="37wK5l" node="6V2G5GpUES9" resolve="copyDirectoryHelper" />
                  <node concept="2ShNRf" id="6V2G5GpUFmj" role="37wK5m">
                    <node concept="1pGfFk" id="6V2G5GpUFmk" role="2ShVmc">
                      <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                      <node concept="37vLTw" id="6V2G5GpUFml" role="37wK5m">
                        <ref role="3cqZAo" node="6V2G5GpUDQf" resolve="destination" />
                      </node>
                      <node concept="2GrUjf" id="6V2G5GpUFmm" role="37wK5m">
                        <ref role="2Gs0qQ" node="6V2G5GpUEw8" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="6V2G5GpUFkr" role="2Oq$k0">
                  <node concept="1pGfFk" id="6V2G5GpUFks" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                    <node concept="2V_BSl" id="6V2G5GpUFkt" role="37wK5m" />
                    <node concept="2GrUjf" id="6V2G5GpUFku" role="37wK5m">
                      <ref role="2Gs0qQ" node="6V2G5GpUEw8" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6V2G5GpUDQf" role="3clF46">
        <property role="TrG5h" value="destination" />
        <node concept="3uibUv" id="6V2G5GpUDQe" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3uibUv" id="6V2G5GpUEvK" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="ATzpf" id="6V2G5GpUES9" role="a7sos">
      <property role="TrG5h" value="copyDirectoryHelper" />
      <node concept="3Tm6S6" id="6V2G5GpUF1K" role="1B3o_S" />
      <node concept="3cqZAl" id="6V2G5GpUESb" role="3clF45" />
      <node concept="3clFbS" id="6V2G5GpUESc" role="3clF47">
        <node concept="3clFbJ" id="6V2G5GpUG70" role="3cqZAp">
          <node concept="2OqwBi" id="6V2G5GpUG71" role="3clFbw">
            <node concept="2V_BSl" id="6V2G5GpUGaO" role="2Oq$k0" />
            <node concept="liA8E" id="6V2G5GpUG73" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~File.isDirectory()" resolve="isDirectory" />
            </node>
          </node>
          <node concept="3clFbS" id="6V2G5GpUG74" role="3clFbx">
            <node concept="3clFbF" id="6V2G5GpUGgz" role="3cqZAp">
              <node concept="2OqwBi" id="6V2G5GpUGlG" role="3clFbG">
                <node concept="2V_BSl" id="6V2G5GpUGgx" role="2Oq$k0" />
                <node concept="AQDAd" id="6V2G5GpUGnE" role="2OqNvi">
                  <ref role="37wK5l" node="6V2G5GpUDau" resolve="copyDirectory" />
                  <node concept="37vLTw" id="6V2G5GpUGoC" role="37wK5m">
                    <ref role="3cqZAo" node="6V2G5GpUESB" resolve="destination" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="6V2G5GpUG79" role="9aQIa">
            <node concept="3clFbS" id="6V2G5GpUG7a" role="9aQI4">
              <node concept="3clFbF" id="6V2G5GpUG7b" role="3cqZAp">
                <node concept="2YIFZM" id="6V2G5GpUG7c" role="3clFbG">
                  <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
                  <ref role="37wK5l" to="eoo2:~Files.copy(java.nio.file.Path,java.nio.file.Path,java.nio.file.CopyOption...)" resolve="copy" />
                  <node concept="2OqwBi" id="6V2G5GpUG7d" role="37wK5m">
                    <node concept="2V_BSl" id="6V2G5GpUGs2" role="2Oq$k0" />
                    <node concept="liA8E" id="6V2G5GpUG7f" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~File.toPath()" resolve="toPath" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6V2G5GpUG7g" role="37wK5m">
                    <node concept="37vLTw" id="6V2G5GpUG7h" role="2Oq$k0">
                      <ref role="3cqZAo" node="6V2G5GpUESB" resolve="destination" />
                    </node>
                    <node concept="liA8E" id="6V2G5GpUG7i" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~File.toPath()" resolve="toPath" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6V2G5GpUESB" role="3clF46">
        <property role="TrG5h" value="destination" />
        <node concept="3uibUv" id="6V2G5GpUESC" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3uibUv" id="6V2G5GpUESD" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="3uibUv" id="6V2G5GpUcfs" role="KRMoO">
      <ref role="3uigEE" to="guwi:~File" resolve="File" />
    </node>
  </node>
  <node concept="312cEu" id="6p3SZI_27W$">
    <property role="3GE5qa" value="support" />
    <property role="TrG5h" value="ProjectBaseIntegrationTest" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="6p3SZI_2aHv" role="jymVt" />
    <node concept="312cEg" id="6p3SZI_2b6a" role="jymVt">
      <property role="TrG5h" value="projectName" />
      <node concept="3Tm6S6" id="6p3SZI_2aTK" role="1B3o_S" />
      <node concept="17QB3L" id="6p3SZI_2b2s" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="6p3SZI_2bPL" role="jymVt" />
    <node concept="3clFbW" id="6p3SZI_2c3Y" role="jymVt">
      <node concept="37vLTG" id="6p3SZI_2g1d" role="3clF46">
        <property role="TrG5h" value="referenceDir" />
        <node concept="3uibUv" id="6p3SZI_2g1e" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="37vLTG" id="6p3SZI_2g1f" role="3clF46">
        <property role="TrG5h" value="environment" />
        <node concept="3uibUv" id="6p3SZI_2g1g" role="1tU5fm">
          <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
        </node>
      </node>
      <node concept="37vLTG" id="6p3SZI_2c8$" role="3clF46">
        <property role="TrG5h" value="projectName" />
        <node concept="17QB3L" id="6p3SZI_2c8A" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="6p3SZI_2c40" role="3clF45" />
      <node concept="3Tm1VV" id="6p3SZI_2c41" role="1B3o_S" />
      <node concept="3clFbS" id="6p3SZI_2c42" role="3clF47">
        <node concept="XkiVB" id="6p3SZI_2gC1" role="3cqZAp">
          <ref role="37wK5l" node="5yNJPA6tklF" resolve="IntegrationTest" />
          <node concept="37vLTw" id="6p3SZI_2gNV" role="37wK5m">
            <ref role="3cqZAo" node="6p3SZI_2g1d" resolve="referenceDir" />
          </node>
          <node concept="37vLTw" id="6p3SZI_2h0U" role="37wK5m">
            <ref role="3cqZAo" node="6p3SZI_2g1f" resolve="environment" />
          </node>
        </node>
        <node concept="3clFbF" id="6p3SZI_2cjU" role="3cqZAp">
          <node concept="37vLTI" id="6p3SZI_2cU0" role="3clFbG">
            <node concept="37vLTw" id="6p3SZI_2d9W" role="37vLTx">
              <ref role="3cqZAo" node="6p3SZI_2c8$" resolve="projectName" />
            </node>
            <node concept="2OqwBi" id="6p3SZI_2ck6" role="37vLTJ">
              <node concept="Xjq3P" id="6p3SZI_2cjT" role="2Oq$k0" />
              <node concept="2OwXpG" id="6p3SZI_2cps" role="2OqNvi">
                <ref role="2Oxat5" node="6p3SZI_2b6a" resolve="projectName" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6p3SZI_28wU" role="jymVt" />
    <node concept="3clFb_" id="6p3SZI_2aDx" role="jymVt">
      <property role="TrG5h" value="getProjectName" />
      <node concept="3clFbS" id="6p3SZI_2aD$" role="3clF47">
        <node concept="3cpWs6" id="6p3SZI_2bhu" role="3cqZAp">
          <node concept="2OqwBi" id="6p3SZI_2bxF" role="3cqZAk">
            <node concept="Xjq3P" id="6p3SZI_2bll" role="2Oq$k0" />
            <node concept="2OwXpG" id="6p3SZI_2bKF" role="2OqNvi">
              <ref role="2Oxat5" node="6p3SZI_2b6a" resolve="projectName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6p3SZI_28PO" role="1B3o_S" />
      <node concept="17QB3L" id="6p3SZI_2a_N" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="6p3SZI_27W_" role="1B3o_S" />
    <node concept="3uibUv" id="6p3SZI_28kK" role="1zkMxy">
      <ref role="3uigEE" node="5yNJPA6tjxd" resolve="IntegrationTest" />
    </node>
  </node>
  <node concept="KRBjq" id="7jRNnvC8QSu">
    <property role="3GE5qa" value="support" />
    <property role="TrG5h" value="ITransactionUtils" />
    <node concept="ATzpf" id="7jRNnvC8RCE" role="a7sos">
      <property role="TrG5h" value="requireRootChildByName" />
      <node concept="3Tm1VV" id="7jRNnvC8RCF" role="1B3o_S" />
      <node concept="3cpWsb" id="7jRNnvC8RKP" role="3clF45" />
      <node concept="3clFbS" id="7jRNnvC8RCH" role="3clF47">
        <node concept="3cpWs6" id="7jRNnvC8Sli" role="3cqZAp">
          <node concept="2OqwBi" id="7jRNnvC8SlE" role="3cqZAk">
            <node concept="AQDAd" id="7jRNnvC8SlH" role="2OqNvi">
              <ref role="37wK5l" node="7jRNnvC8S8n" resolve="requireChildByName" />
              <node concept="10M0yZ" id="7jRNnvC8SCl" role="37wK5m">
                <ref role="3cqZAo" to="jks5:~ITree.ROOT_ID" resolve="ROOT_ID" />
                <ref role="1PxDUh" to="jks5:~ITree" resolve="ITree" />
              </node>
              <node concept="37vLTw" id="7jRNnvC8SDT" role="37wK5m">
                <ref role="3cqZAo" node="7jRNnvC8ROD" resolve="name" />
              </node>
            </node>
            <node concept="2V_BSl" id="7jRNnvC8SlJ" role="2Oq$k0" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7jRNnvC8ROD" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7jRNnvC8ROC" role="1tU5fm" />
      </node>
    </node>
    <node concept="ATzpf" id="7jRNnvC8S8n" role="a7sos">
      <property role="TrG5h" value="requireChildByName" />
      <node concept="3Tm1VV" id="7jRNnvC8S8o" role="1B3o_S" />
      <node concept="3cpWsb" id="7jRNnvC8S8p" role="3clF45" />
      <node concept="3clFbS" id="7jRNnvC8S8q" role="3clF47">
        <node concept="2Gpval" id="7jRNnvC8SIl" role="3cqZAp">
          <node concept="2GrKxI" id="7jRNnvC8SIm" role="2Gsz3X">
            <property role="TrG5h" value="child" />
          </node>
          <node concept="2OqwBi" id="7jRNnvC8V79" role="2GsD0m">
            <node concept="2V_BSl" id="7jRNnvC8UWE" role="2Oq$k0" />
            <node concept="liA8E" id="7jRNnvC8Vfv" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~ITransaction.getAllChildren(long)" resolve="getAllChildren" />
              <node concept="37vLTw" id="7jRNnvC8Vh_" role="37wK5m">
                <ref role="3cqZAo" node="7jRNnvC8S8V" resolve="parentId" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7jRNnvC8SIo" role="2LFqv$">
            <node concept="3cpWs8" id="7jRNnvC8Vr5" role="3cqZAp">
              <node concept="3cpWsn" id="7jRNnvC8Vr8" role="3cpWs9">
                <property role="TrG5h" value="childName" />
                <node concept="17QB3L" id="7jRNnvC8Vr4" role="1tU5fm" />
                <node concept="2OqwBi" id="7jRNnvC8V$a" role="33vP2m">
                  <node concept="2V_BSl" id="7jRNnvC8VrN" role="2Oq$k0" />
                  <node concept="liA8E" id="7jRNnvC8VGu" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~ITransaction.getProperty(long,java.lang.String)" resolve="getProperty" />
                    <node concept="2GrUjf" id="7jRNnvC8VHb" role="37wK5m">
                      <ref role="2Gs0qQ" node="7jRNnvC8SIm" resolve="child" />
                    </node>
                    <node concept="Xl_RD" id="7jRNnvC8Wi0" role="37wK5m">
                      <property role="Xl_RC" value="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7jRNnvC8Wt5" role="3cqZAp">
              <node concept="3clFbS" id="7jRNnvC8Wt7" role="3clFbx">
                <node concept="3cpWs6" id="7jRNnvC8WU7" role="3cqZAp">
                  <node concept="2GrUjf" id="7jRNnvC8WUD" role="3cqZAk">
                    <ref role="2Gs0qQ" node="7jRNnvC8SIm" resolve="child" />
                  </node>
                </node>
              </node>
              <node concept="17R0WA" id="7jRNnvC8WPY" role="3clFbw">
                <node concept="37vLTw" id="7jRNnvC8WQq" role="3uHU7w">
                  <ref role="3cqZAo" node="7jRNnvC8S8r" resolve="name" />
                </node>
                <node concept="37vLTw" id="7jRNnvC8WvQ" role="3uHU7B">
                  <ref role="3cqZAo" node="7jRNnvC8Vr8" resolve="childName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="7jRNnvC8SMr" role="3cqZAp">
          <node concept="2ShNRf" id="7jRNnvC8SMR" role="YScLw">
            <node concept="1pGfFk" id="7jRNnvC8Uhc" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
              <node concept="3cpWs3" id="7jRNnvC8UKn" role="37wK5m">
                <node concept="37vLTw" id="7jRNnvC8UKw" role="3uHU7w">
                  <ref role="3cqZAo" node="7jRNnvC8S8r" resolve="name" />
                </node>
                <node concept="Xl_RD" id="7jRNnvC8Uku" role="3uHU7B">
                  <property role="Xl_RC" value="Not found: " />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7jRNnvC8S8V" role="3clF46">
        <property role="TrG5h" value="parentId" />
        <node concept="3cpWsb" id="7jRNnvC8ScN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7jRNnvC8S8r" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7jRNnvC8S8s" role="1tU5fm" />
      </node>
    </node>
    <node concept="3uibUv" id="7jRNnvCehq$" role="KRMoO">
      <ref role="3uigEE" to="jks5:~ITransaction" resolve="ITransaction" />
    </node>
    <node concept="3Tm1VV" id="7jRNnvC8Rnc" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7jRNnvC91je">
    <property role="TrG5h" value="ModuleOnTheCloudCanBeCheckoutAsTransientModuleTest" />
    <property role="3GE5qa" value="tests" />
    <node concept="3Tm1VV" id="7jRNnvC91jf" role="1B3o_S" />
    <node concept="3clFbW" id="7jRNnvC91jg" role="jymVt">
      <node concept="37vLTG" id="7jRNnvC91jh" role="3clF46">
        <property role="TrG5h" value="referenceDir" />
        <node concept="3uibUv" id="7jRNnvC91ji" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="37vLTG" id="7jRNnvC91jj" role="3clF46">
        <property role="TrG5h" value="environment" />
        <node concept="3uibUv" id="7jRNnvC91jk" role="1tU5fm">
          <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
        </node>
      </node>
      <node concept="3cqZAl" id="7jRNnvC91jl" role="3clF45" />
      <node concept="3Tm1VV" id="7jRNnvC91jm" role="1B3o_S" />
      <node concept="3clFbS" id="7jRNnvC91jn" role="3clF47">
        <node concept="XkiVB" id="7jRNnvC91jo" role="3cqZAp">
          <ref role="37wK5l" node="5yNJPA6tklF" resolve="IntegrationTest" />
          <node concept="37vLTw" id="7jRNnvC91jp" role="37wK5m">
            <ref role="3cqZAo" node="7jRNnvC91jh" resolve="referenceDir" />
          </node>
          <node concept="37vLTw" id="7jRNnvC91jq" role="37wK5m">
            <ref role="3cqZAo" node="7jRNnvC91jj" resolve="environment" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7jRNnvC91jr" role="jymVt">
      <property role="TrG5h" value="logic" />
      <node concept="3Tm1VV" id="7jRNnvC91js" role="1B3o_S" />
      <node concept="3uibUv" id="7jRNnvC91jt" role="3clF45">
        <ref role="3uigEE" node="5yNJPA6btY7" resolve="TestResult" />
      </node>
      <node concept="3uibUv" id="7jRNnvC91ju" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="3clFbS" id="7jRNnvC91jv" role="3clF47">
        <node concept="3cpWs8" id="7jRNnvC91jw" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvC91jx" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="7jRNnvC91jy" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="1rXfSq" id="7jRNnvC91jz" role="33vP2m">
              <ref role="37wK5l" node="5yNJPA6tpld" resolve="openProject" />
              <node concept="Xl_RD" id="7jRNnvC91j$" role="37wK5m">
                <property role="Xl_RC" value="SimpleProjectC" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvC91j_" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvC91jA" role="3cpWs9">
            <property role="TrG5h" value="pbc" />
            <node concept="3uibUv" id="7jRNnvC91jB" role="1tU5fm">
              <ref role="3uigEE" to="nhvc:7f6Tb6nxCKP" resolve="PersistedBindingConfiguration" />
            </node>
            <node concept="2YIFZM" id="7jRNnvC91jC" role="33vP2m">
              <ref role="1Pybhc" to="nhvc:7f6Tb6nxCKP" resolve="PersistedBindingConfiguration" />
              <ref role="37wK5l" to="nhvc:6JwgQ7URldI" resolve="getInstance" />
              <node concept="37vLTw" id="7jRNnvC91jD" role="37wK5m">
                <ref role="3cqZAo" node="7jRNnvC91jx" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="7jRNnvC91jE" role="3cqZAp">
          <node concept="2OqwBi" id="7jRNnvC91jF" role="1gVkn0">
            <node concept="37vLTw" id="7jRNnvC91jG" role="2Oq$k0">
              <ref role="3cqZAo" node="7jRNnvC91jA" resolve="pbc" />
            </node>
            <node concept="liA8E" id="7jRNnvC91jH" role="2OqNvi">
              <ref role="37wK5l" to="nhvc:6JwgQ7URCLz" resolve="isEmpty" />
            </node>
          </node>
          <node concept="3cpWs3" id="7jRNnvC91jI" role="1gVpfI">
            <node concept="2OqwBi" id="7jRNnvC91jJ" role="3uHU7w">
              <node concept="37vLTw" id="7jRNnvC91jK" role="2Oq$k0">
                <ref role="3cqZAo" node="7jRNnvC91jA" resolve="pbc" />
              </node>
              <node concept="liA8E" id="7jRNnvC91jL" role="2OqNvi">
                <ref role="37wK5l" to="nhvc:6JwgQ7UW22M" resolve="describeState" />
              </node>
            </node>
            <node concept="Xl_RD" id="7jRNnvC91jM" role="3uHU7B">
              <property role="Xl_RC" value="The PersistedBindingConfiguration is expected to be empty, it was " />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvC91jN" role="3cqZAp" />
        <node concept="3cpWs8" id="7jRNnvC91jO" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvC91jP" role="3cpWs9">
            <property role="TrG5h" value="defaultTreeId" />
            <node concept="3uibUv" id="7jRNnvC91jQ" role="1tU5fm">
              <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
            </node>
            <node concept="2ShNRf" id="7jRNnvC91jR" role="33vP2m">
              <node concept="1pGfFk" id="7jRNnvC91jS" role="2ShVmc">
                <ref role="37wK5l" to="xkhl:~TreeId.&lt;init&gt;(java.lang.String)" resolve="TreeId" />
                <node concept="Xl_RD" id="7jRNnvC91jT" role="37wK5m">
                  <property role="Xl_RC" value="default" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvC91jU" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvC91jV" role="3cpWs9">
            <property role="TrG5h" value="defaultBranchName" />
            <node concept="17QB3L" id="7jRNnvC91jW" role="1tU5fm" />
            <node concept="Xl_RD" id="7jRNnvC91jX" role="33vP2m">
              <property role="Xl_RC" value="master" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvC91jY" role="3cqZAp" />
        <node concept="abc8K" id="7jRNnvC91jZ" role="3cqZAp">
          <node concept="Xl_RD" id="7jRNnvC91k0" role="abp_N">
            <property role="Xl_RC" value="project " />
          </node>
          <node concept="2OqwBi" id="7jRNnvC91k1" role="abp_N">
            <node concept="37vLTw" id="7jRNnvC91k2" role="2Oq$k0">
              <ref role="3cqZAo" node="7jRNnvC91jx" resolve="mpsProject" />
            </node>
            <node concept="liA8E" id="7jRNnvC91k3" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getName()" resolve="getName" />
            </node>
          </node>
          <node concept="Xl_RD" id="7jRNnvC91k4" role="abp_N">
            <property role="Xl_RC" value=" opened" />
          </node>
        </node>
        <node concept="1gVbGN" id="7jRNnvC91kb" role="3cqZAp">
          <node concept="17R0WA" id="7jRNnvC91kc" role="1gVkn0">
            <node concept="3cmrfG" id="7jRNnvC91kd" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="7jRNnvC91ke" role="3uHU7B">
              <node concept="2OqwBi" id="7jRNnvC91kf" role="2Oq$k0">
                <node concept="37vLTw" id="7jRNnvC91kg" role="2Oq$k0">
                  <ref role="3cqZAo" node="7jRNnvC91jx" resolve="mpsProject" />
                </node>
                <node concept="liA8E" id="7jRNnvC91kh" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~IProject.getProjectModules()" resolve="getProjectModules" />
                </node>
              </node>
              <node concept="liA8E" id="7jRNnvC91ki" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvC91ky" role="3cqZAp" />
        <node concept="3SKdUt" id="7jRNnvC91kz" role="3cqZAp">
          <node concept="1PaTwC" id="7jRNnvC91k$" role="1aUNEU">
            <node concept="3oM_SD" id="7jRNnvC91k_" role="1PaTwD">
              <property role="3oM_SC" value="start" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC91kA" role="1PaTwD">
              <property role="3oM_SC" value="Modelix" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC91kB" role="1PaTwD">
              <property role="3oM_SC" value="Server" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvC91kC" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvC91kD" role="3cpWs9">
            <property role="TrG5h" value="ms" />
            <node concept="3uibUv" id="7jRNnvC91kE" role="1tU5fm">
              <ref role="3uigEE" node="5yNJPA6tDKp" resolve="ModelixServerController" />
            </node>
            <node concept="1rXfSq" id="7jRNnvC91kF" role="33vP2m">
              <ref role="37wK5l" node="1QKKVBBCeoe" resolve="startModelixServer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvC91kG" role="3cqZAp">
          <node concept="2YIFZM" id="7jRNnvC91kH" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <node concept="3cmrfG" id="7jRNnvC91kI" role="37wK5m">
              <property role="3cmrfH" value="5000" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvC9aLU" role="3cqZAp" />
        <node concept="3SKdUt" id="7jRNnvC91kK" role="3cqZAp">
          <node concept="1PaTwC" id="7jRNnvC91kL" role="1aUNEU">
            <node concept="3oM_SD" id="7jRNnvC91kM" role="1PaTwD">
              <property role="3oM_SC" value="add" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC91kN" role="1PaTwD">
              <property role="3oM_SC" value="CloudRepository" />
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="7jRNnvC91kO" role="3cqZAp">
          <node concept="2OqwBi" id="7jRNnvC91kP" role="1gVkn0">
            <node concept="2OqwBi" id="7jRNnvC91kQ" role="2Oq$k0">
              <node concept="2YIFZM" id="7jRNnvC91kR" role="2Oq$k0">
                <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="7jRNnvC91kS" role="2OqNvi">
                <ref role="37wK5l" to="csg2:1LVcV5KxBgM" resolve="getRepositories" />
              </node>
            </node>
            <node concept="1v1jN8" id="7jRNnvC91kT" role="2OqNvi" />
          </node>
          <node concept="3cpWs3" id="7jRNnvC91kU" role="1gVpfI">
            <node concept="Xl_RD" id="7jRNnvC91kV" role="3uHU7B">
              <property role="Xl_RC" value="Expected not to find CloudRepositories: " />
            </node>
            <node concept="2OqwBi" id="7jRNnvC91kW" role="3uHU7w">
              <node concept="2OqwBi" id="7jRNnvC91kX" role="2Oq$k0">
                <node concept="2YIFZM" id="7jRNnvC91kY" role="2Oq$k0">
                  <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                  <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                </node>
                <node concept="liA8E" id="7jRNnvC91kZ" role="2OqNvi">
                  <ref role="37wK5l" to="csg2:1LVcV5KxBgM" resolve="getRepositories" />
                </node>
              </node>
              <node concept="ANE8D" id="7jRNnvC91l0" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvC91l1" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvC91l2" role="3cpWs9">
            <property role="TrG5h" value="cr" />
            <node concept="3uibUv" id="7jRNnvC91l3" role="1tU5fm">
              <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
            </node>
            <node concept="1rXfSq" id="7jRNnvC91l4" role="33vP2m">
              <ref role="37wK5l" node="1QKKVBBCC1x" resolve="addCloudRepository" />
            </node>
          </node>
        </node>
        <node concept="abc8K" id="5cWpYFRKOK1" role="3cqZAp">
          <node concept="Xl_RD" id="5cWpYFRKOK2" role="abp_N">
            <property role="Xl_RC" value="USING CR " />
          </node>
          <node concept="2OqwBi" id="5cWpYFRKOK3" role="abp_N">
            <node concept="37vLTw" id="5cWpYFRKOK4" role="2Oq$k0">
              <ref role="3cqZAo" node="7jRNnvC91l2" resolve="cr" />
            </node>
            <node concept="liA8E" id="5cWpYFRKOK5" role="2OqNvi">
              <ref role="37wK5l" to="csg2:6aRQr1WQLS7" resolve="getBaseUrl" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvC91l5" role="3cqZAp">
          <node concept="2YIFZM" id="7jRNnvC91l6" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <node concept="3cmrfG" id="7jRNnvC91l7" role="37wK5m">
              <property role="3cmrfH" value="5000" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvC91l8" role="3cqZAp" />
        <node concept="3SKdUt" id="7jRNnvC9bAQ" role="3cqZAp">
          <node concept="1PaTwC" id="7jRNnvC9bAR" role="1aUNEU">
            <node concept="3oM_SD" id="7jRNnvCbdGZ" role="1PaTwD">
              <property role="3oM_SC" value="add" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC9ciZ" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC9cji" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC9cju" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC9ckw" role="1PaTwD">
              <property role="3oM_SC" value="cloud" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC9ckB" role="1PaTwD">
              <property role="3oM_SC" value="server," />
            </node>
            <node concept="3oM_SD" id="7jRNnvC9ckZ" role="1PaTwD">
              <property role="3oM_SC" value="loading" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC9cl8" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC9cli" role="1PaTwD">
              <property role="3oM_SC" value="dump" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvC9BYX" role="3cqZAp">
          <node concept="1rXfSq" id="7jRNnvC9BYV" role="3clFbG">
            <ref role="37wK5l" node="7jRNnvC9m0y" resolve="loadJsonDumpOnCloudServer" />
            <node concept="37vLTw" id="7jRNnvC9Co3" role="37wK5m">
              <ref role="3cqZAo" node="7jRNnvC91jP" resolve="defaultTreeId" />
            </node>
            <node concept="37vLTw" id="7jRNnvC9Cyz" role="37wK5m">
              <ref role="3cqZAo" node="7jRNnvC91jV" resolve="defaultBranchName" />
            </node>
            <node concept="Xl_RD" id="7jRNnvC9CCR" role="37wK5m">
              <property role="Xl_RC" value="dump5" />
            </node>
            <node concept="2OqwBi" id="7jRNnvCbdlV" role="37wK5m">
              <node concept="37vLTw" id="7jRNnvCbd1p" role="2Oq$k0">
                <ref role="3cqZAo" node="7jRNnvC91jx" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="7jRNnvCbdFF" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvCk_op" role="3cqZAp">
          <node concept="2YIFZM" id="7jRNnvCk_oq" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <node concept="3cmrfG" id="7jRNnvCk_or" role="37wK5m">
              <property role="3cmrfH" value="1000" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Aop38HZ9PL" role="3cqZAp" />
        <node concept="3SKdUt" id="Aop38HWrlW" role="3cqZAp">
          <node concept="1PaTwC" id="Aop38HWrlX" role="1aUNEU">
            <node concept="3oM_SD" id="Aop38HWrlY" role="1PaTwD">
              <property role="3oM_SC" value="verify" />
            </node>
            <node concept="3oM_SD" id="Aop38HWs0y" role="1PaTwD">
              <property role="3oM_SC" value="elements" />
            </node>
            <node concept="3oM_SD" id="Aop38HWs0Q" role="1PaTwD">
              <property role="3oM_SC" value="where" />
            </node>
            <node concept="3oM_SD" id="Aop38HWs0V" role="1PaTwD">
              <property role="3oM_SC" value="loaded" />
            </node>
            <node concept="3oM_SD" id="Aop38HWs1w" role="1PaTwD">
              <property role="3oM_SC" value="correctly" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Aop38HWrm0" role="3cqZAp">
          <node concept="3cpWsn" id="Aop38HWrm1" role="3cpWs9">
            <property role="TrG5h" value="actualJsonDump1" />
            <node concept="3uibUv" id="Aop38HWrm2" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
            <node concept="2OqwBi" id="Aop38HWrm3" role="33vP2m">
              <node concept="37vLTw" id="Aop38HWrm4" role="2Oq$k0">
                <ref role="3cqZAo" node="7jRNnvC91kD" resolve="ms" />
              </node>
              <node concept="liA8E" id="Aop38HWrm5" role="2OqNvi">
                <ref role="37wK5l" node="7JjSHvQ43L7" resolve="jsonDump" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Aop38HWrm6" role="3cqZAp">
          <node concept="3cpWsn" id="Aop38HWrm7" role="3cpWs9">
            <property role="TrG5h" value="expectedJsonDump1" />
            <node concept="3uibUv" id="Aop38HWrm8" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
            <node concept="1rXfSq" id="Aop38HWrm9" role="33vP2m">
              <ref role="37wK5l" node="7JjSHvQ4HQK" resolve="loadJsonDump" />
              <node concept="Xl_RD" id="Aop38HWrma" role="37wK5m">
                <property role="Xl_RC" value="dump1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Aop38HWrmb" role="3cqZAp">
          <node concept="1rXfSq" id="Aop38HWrmc" role="3clFbG">
            <ref role="37wK5l" node="7JjSHvQ4V3I" resolve="assertJsonsAreEquals" />
            <node concept="37vLTw" id="Aop38HWrmd" role="37wK5m">
              <ref role="3cqZAo" node="Aop38HWrm7" resolve="expectedJsonDump1" />
            </node>
            <node concept="37vLTw" id="Aop38HWrme" role="37wK5m">
              <ref role="3cqZAo" node="Aop38HWrm1" resolve="actualJsonDump1" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Aop38HWqJq" role="3cqZAp" />
        <node concept="3SKdUt" id="7jRNnvC91l9" role="3cqZAp">
          <node concept="1PaTwC" id="7jRNnvC9cl_" role="1aUNEU">
            <node concept="3oM_SD" id="7jRNnvCejkA" role="1PaTwD">
              <property role="3oM_SC" value="bind" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC9cH8" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC9cHc" role="1PaTwD">
              <property role="3oM_SC" value="transient" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC9cHh" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvCdLra" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvCdLrb" role="3cpWs9">
            <property role="TrG5h" value="treeInRepository" />
            <node concept="3uibUv" id="7jRNnvCdLrc" role="1tU5fm">
              <ref role="3uigEE" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
            </node>
            <node concept="2ShNRf" id="7jRNnvCdLO_" role="33vP2m">
              <node concept="1pGfFk" id="7jRNnvCdLKz" role="2ShVmc">
                <ref role="37wK5l" to="csg2:3i6diw3mtOf" resolve="TreeInRepository" />
                <node concept="37vLTw" id="7jRNnvCdLTa" role="37wK5m">
                  <ref role="3cqZAo" node="7jRNnvC91l2" resolve="cr" />
                </node>
                <node concept="37vLTw" id="7jRNnvCdLYG" role="37wK5m">
                  <ref role="3cqZAo" node="7jRNnvC91jP" resolve="defaultTreeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvCdMxA" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvCdMxD" role="3cpWs9">
            <property role="TrG5h" value="moduleCloudNodeId" />
            <node concept="3cpWsb" id="7jRNnvCdMx$" role="1tU5fm" />
            <node concept="1rXfSq" id="7jRNnvCed88" role="33vP2m">
              <ref role="37wK5l" node="7jRNnvCdVdw" resolve="computeOnCloudRepository" />
              <node concept="37vLTw" id="7jRNnvCedkY" role="37wK5m">
                <ref role="3cqZAo" node="7jRNnvC91jP" resolve="defaultTreeId" />
              </node>
              <node concept="37vLTw" id="7jRNnvCedxk" role="37wK5m">
                <ref role="3cqZAo" node="7jRNnvC91jV" resolve="defaultBranchName" />
              </node>
              <node concept="1bVj0M" id="7jRNnvCedHq" role="37wK5m">
                <node concept="37vLTG" id="7jRNnvCedJQ" role="1bW2Oz">
                  <property role="TrG5h" value="rt" />
                  <node concept="3uibUv" id="7jRNnvCedYQ" role="1tU5fm">
                    <ref role="3uigEE" to="jks5:~IReadTransaction" resolve="IReadTransaction" />
                  </node>
                </node>
                <node concept="3clFbS" id="7jRNnvCedHs" role="1bW5cS">
                  <node concept="3clFbF" id="7jRNnvCfju6" role="3cqZAp">
                    <node concept="2OqwBi" id="7jRNnvCegvk" role="3clFbG">
                      <node concept="37vLTw" id="7jRNnvCeh5q" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvCedJQ" resolve="rt" />
                      </node>
                      <node concept="AQDAd" id="7jRNnvCegvm" role="2OqNvi">
                        <ref role="37wK5l" node="7jRNnvC8RCE" resolve="requireRootChildByName" />
                        <node concept="Xl_RD" id="7jRNnvCegvn" role="37wK5m">
                          <property role="Xl_RC" value="simple.solution1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvCez9h" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvCez9i" role="3cpWs9">
            <property role="TrG5h" value="transientModuleBinding" />
            <node concept="3uibUv" id="7jRNnvCez9j" role="1tU5fm">
              <ref role="3uigEE" to="csg2:49CIzaqqe6y" resolve="TransientModuleBinding" />
            </node>
            <node concept="2OqwBi" id="7jRNnvCbKbz" role="33vP2m">
              <node concept="2ShNRf" id="7jRNnvCbJ1U" role="2Oq$k0">
                <node concept="HV5vD" id="7jRNnvCbK5P" role="2ShVmc">
                  <ref role="HV5vE" to="csg2:i0AVAFXWm5" resolve="ModelCloudImporter" />
                </node>
              </node>
              <node concept="liA8E" id="7jRNnvCdKuj" role="2OqNvi">
                <ref role="37wK5l" to="csg2:7jRNnvCcY4x" resolve="addTransientModuleBinding" />
                <node concept="2YIFZM" id="7jRNnvCej6S" role="37wK5m">
                  <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
                  <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                  <node concept="37vLTw" id="7jRNnvCejg5" role="37wK5m">
                    <ref role="3cqZAo" node="7jRNnvC91jx" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="37vLTw" id="7jRNnvCdM41" role="37wK5m">
                  <ref role="3cqZAo" node="7jRNnvCdLrb" resolve="treeInRepository" />
                </node>
                <node concept="37vLTw" id="7jRNnvCdMVB" role="37wK5m">
                  <ref role="3cqZAo" node="7jRNnvCdMxD" resolve="moduleCloudNodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvCeNDu" role="3cqZAp">
          <node concept="2YIFZM" id="7jRNnvCeNDv" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <node concept="3cmrfG" id="7jRNnvCeNDw" role="37wK5m">
              <property role="3cmrfH" value="1000" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvCeNjl" role="3cqZAp" />
        <node concept="3SKdUt" id="7jRNnvC9dTg" role="3cqZAp">
          <node concept="1PaTwC" id="7jRNnvC9dTh" role="1aUNEU">
            <node concept="3oM_SD" id="7jRNnvCeSP4" role="1PaTwD">
              <property role="3oM_SC" value="make" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC9e7D" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC9e7H" role="1PaTwD">
              <property role="3oM_SC" value="change" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC9e7U" role="1PaTwD">
              <property role="3oM_SC" value="locally," />
            </node>
            <node concept="3oM_SD" id="7jRNnvC9e88" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC9e8n" role="1PaTwD">
              <property role="3oM_SC" value="see" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC9e8v" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC9e8C" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC9e8M" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC9e8X" role="1PaTwD">
              <property role="3oM_SC" value="server" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvCePK8" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvCePK9" role="3cpWs9">
            <property role="TrG5h" value="myClass" />
            <node concept="3Tqbb2" id="7jRNnvCePKa" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
            </node>
            <node concept="10Nm6u" id="7jRNnvComK6" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvCqhcL" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvCqhcM" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="effectiveMpsProject" />
            <node concept="3uibUv" id="7jRNnvCqhcN" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="37vLTw" id="7jRNnvCqhcO" role="33vP2m">
              <ref role="3cqZAo" node="7jRNnvC91jx" resolve="mpsProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvCqdc_" role="3cqZAp">
          <node concept="2YIFZM" id="7jRNnvCqdIj" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeAndWait(java.lang.Runnable)" resolve="invokeAndWait" />
            <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
            <node concept="2ShNRf" id="7jRNnvCqe84" role="37wK5m">
              <node concept="YeOm9" id="7jRNnvCqeSk" role="2ShVmc">
                <node concept="1Y3b0j" id="7jRNnvCqeSn" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="7jRNnvCqeSo" role="1B3o_S" />
                  <node concept="3clFb_" id="7jRNnvCqeSt" role="jymVt">
                    <property role="TrG5h" value="run" />
                    <node concept="3Tm1VV" id="7jRNnvCqeSu" role="1B3o_S" />
                    <node concept="3cqZAl" id="7jRNnvCqeSw" role="3clF45" />
                    <node concept="3clFbS" id="7jRNnvCqeSx" role="3clF47">
                      <node concept="1QHqEO" id="7jRNnvCq3QL" role="3cqZAp">
                        <node concept="1QHqEC" id="7jRNnvCq3QN" role="1QHqEI">
                          <node concept="3clFbS" id="7jRNnvCq3QP" role="1bW5cS">
                            <node concept="3clFbF" id="7jRNnvCe$yz" role="3cqZAp">
                              <node concept="2OqwBi" id="7jRNnvCe_Al" role="3clFbG">
                                <node concept="2OqwBi" id="7jRNnvCe_3R" role="2Oq$k0">
                                  <node concept="37vLTw" id="7jRNnvCe$yx" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7jRNnvCez9i" resolve="transientModuleBinding" />
                                  </node>
                                  <node concept="liA8E" id="7jRNnvCe_w7" role="2OqNvi">
                                    <ref role="37wK5l" to="csg2:1BXGyXtAZB6" resolve="getModule" />
                                  </node>
                                </node>
                                <node concept="AQDAd" id="7jRNnvCeGon" role="2OqNvi">
                                  <ref role="37wK5l" node="7jRNnvCeAHO" resolve="assertNModels" />
                                  <node concept="3cmrfG" id="7jRNnvCeGtm" role="37wK5m">
                                    <property role="3cmrfH" value="1" />
                                  </node>
                                  <node concept="3clFbT" id="5cWpYFRFnJv" role="37wK5m">
                                    <property role="3clFbU" value="true" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="7jRNnvCeHjc" role="3cqZAp">
                              <node concept="3cpWsn" id="7jRNnvCeHjf" role="3cpWs9">
                                <property role="TrG5h" value="model" />
                                <node concept="3uibUv" id="7jRNnvCeQKS" role="1tU5fm">
                                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                </node>
                                <node concept="2OqwBi" id="7jRNnvCeN2D" role="33vP2m">
                                  <node concept="2OqwBi" id="7jRNnvCeMUy" role="2Oq$k0">
                                    <node concept="37vLTw" id="7jRNnvCeMUz" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7jRNnvCez9i" resolve="transientModuleBinding" />
                                    </node>
                                    <node concept="liA8E" id="7jRNnvCeMU$" role="2OqNvi">
                                      <ref role="37wK5l" to="csg2:1BXGyXtAZB6" resolve="getModule" />
                                    </node>
                                  </node>
                                  <node concept="AQDAd" id="7jRNnvCeNcV" role="2OqNvi">
                                    <ref role="37wK5l" node="7jRNnvCeI3A" resolve="getModel" />
                                    <node concept="3cmrfG" id="7jRNnvCeNi8" role="37wK5m">
                                      <property role="3cmrfH" value="0" />
                                    </node>
                                    <node concept="3clFbT" id="5cWpYFRFoSH" role="37wK5m">
                                      <property role="3clFbU" value="true" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="7jRNnvCokMM" role="3cqZAp">
                              <node concept="37vLTI" id="7jRNnvCokMO" role="3clFbG">
                                <node concept="1PxgMI" id="7jRNnvCePKb" role="37vLTx">
                                  <node concept="chp4Y" id="7jRNnvCePKc" role="3oSUPX">
                                    <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                                  </node>
                                  <node concept="2OqwBi" id="7jRNnvCePKd" role="1m5AlR">
                                    <node concept="37vLTw" id="7jRNnvCePKe" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7jRNnvCeHjf" resolve="model" />
                                    </node>
                                    <node concept="AQDAd" id="7jRNnvCePKf" role="2OqNvi">
                                      <ref role="37wK5l" node="5i$4SBK2oGW" resolve="getRoot" />
                                      <node concept="Xl_RD" id="7jRNnvCePKg" role="37wK5m">
                                        <property role="Xl_RC" value="MyClass" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTw" id="7jRNnvCokMS" role="37vLTJ">
                                  <ref role="3cqZAo" node="7jRNnvCePK9" resolve="myClass" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="7jRNnvCePKh" role="3cqZAp">
                              <node concept="37vLTI" id="7jRNnvCePKi" role="3clFbG">
                                <node concept="Xl_RD" id="7jRNnvCePKj" role="37vLTx">
                                  <property role="Xl_RC" value="MyClassBrilliantlyRenamedInsideATransientModel" />
                                </node>
                                <node concept="2OqwBi" id="7jRNnvCePKk" role="37vLTJ">
                                  <node concept="37vLTw" id="7jRNnvCePKl" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7jRNnvCePK9" resolve="myClass" />
                                  </node>
                                  <node concept="3TrcHB" id="7jRNnvCePKm" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="7jRNnvCePKn" role="3cqZAp">
                              <node concept="2OqwBi" id="7jRNnvCePKo" role="3clFbG">
                                <node concept="2OqwBi" id="7jRNnvCePKp" role="2Oq$k0">
                                  <node concept="37vLTw" id="7jRNnvCePKq" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7jRNnvCePK9" resolve="myClass" />
                                  </node>
                                  <node concept="3Tsc0h" id="7jRNnvCePKr" role="2OqNvi">
                                    <ref role="3TtcxE" to="tpee:4EqhHTp4Mw3" resolve="member" />
                                  </node>
                                </node>
                                <node concept="TSZUe" id="7jRNnvCePKs" role="2OqNvi">
                                  <node concept="2c44tf" id="7jRNnvCePKt" role="25WWJ7">
                                    <node concept="312cEg" id="7jRNnvCePKu" role="2c44tc">
                                      <property role="TrG5h" value="addedFieldInTransientModel" />
                                      <node concept="3Tm6S6" id="7jRNnvCePKv" role="1B3o_S" />
                                      <node concept="10P_77" id="7jRNnvCeR_E" role="1tU5fm" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="7jRNnvCq4ry" role="ukAjM">
                          <node concept="37vLTw" id="7jRNnvCqi9p" role="2Oq$k0">
                            <ref role="3cqZAo" node="7jRNnvCqhcM" resolve="effectiveMpsProject" />
                          </node>
                          <node concept="liA8E" id="7jRNnvCq4r$" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="7jRNnvCqeSz" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvCeS3b" role="3cqZAp">
          <node concept="2YIFZM" id="7jRNnvCeS3c" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <node concept="3cmrfG" id="7jRNnvCeS3d" role="37wK5m">
              <property role="3cmrfH" value="1000" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvCeSqm" role="3cqZAp" />
        <node concept="3SKdUt" id="7jRNnvCeSX3" role="3cqZAp">
          <node concept="1PaTwC" id="7jRNnvCeSX4" role="1aUNEU">
            <node concept="3oM_SD" id="7jRNnvCeSX5" role="1PaTwD">
              <property role="3oM_SC" value="verify" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCeTlY" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCeTm1" role="1PaTwD">
              <property role="3oM_SC" value="local" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCeTmd" role="1PaTwD">
              <property role="3oM_SC" value="change" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCeTmi" role="1PaTwD">
              <property role="3oM_SC" value="appears" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCeTmw" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCeTmJ" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCeTmR" role="1PaTwD">
              <property role="3oM_SC" value="server" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvCeWT8" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvCeWT9" role="3cpWs9">
            <property role="TrG5h" value="actualJsonDump" />
            <node concept="3uibUv" id="7jRNnvCeWTa" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvCeXV5" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvCeXV6" role="3cpWs9">
            <property role="TrG5h" value="expectedJsonDump" />
            <node concept="3uibUv" id="7jRNnvCeXV7" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvCeVcs" role="3cqZAp">
          <node concept="37vLTI" id="7jRNnvCeVct" role="3clFbG">
            <node concept="2OqwBi" id="7jRNnvCeVcu" role="37vLTx">
              <node concept="37vLTw" id="7jRNnvCeVcv" role="2Oq$k0">
                <ref role="3cqZAo" node="7jRNnvC91kD" resolve="ms" />
              </node>
              <node concept="liA8E" id="7jRNnvCeVcw" role="2OqNvi">
                <ref role="37wK5l" node="7JjSHvQ43L7" resolve="jsonDump" />
              </node>
            </node>
            <node concept="37vLTw" id="7jRNnvCeVcx" role="37vLTJ">
              <ref role="3cqZAo" node="7jRNnvCeWT9" resolve="actualJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvCeVcy" role="3cqZAp">
          <node concept="37vLTI" id="7jRNnvCeVcz" role="3clFbG">
            <node concept="1rXfSq" id="7jRNnvCeVc$" role="37vLTx">
              <ref role="37wK5l" node="7JjSHvQ4HQK" resolve="loadJsonDump" />
              <node concept="Xl_RD" id="7jRNnvCeVc_" role="37wK5m">
                <property role="Xl_RC" value="dump4" />
              </node>
            </node>
            <node concept="37vLTw" id="7jRNnvCeVcA" role="37vLTJ">
              <ref role="3cqZAo" node="7jRNnvCeXV6" resolve="expectedJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvCeVcB" role="3cqZAp">
          <node concept="1rXfSq" id="7jRNnvCeVcC" role="3clFbG">
            <ref role="37wK5l" node="7JjSHvQ4V3I" resolve="assertJsonsAreEquals" />
            <node concept="37vLTw" id="7jRNnvCeVcD" role="37wK5m">
              <ref role="3cqZAo" node="7jRNnvCeXV6" resolve="expectedJsonDump" />
            </node>
            <node concept="37vLTw" id="7jRNnvCeVcE" role="37wK5m">
              <ref role="3cqZAo" node="7jRNnvCeWT9" resolve="actualJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvC9e9i" role="3cqZAp" />
        <node concept="3SKdUt" id="7jRNnvC9exr" role="3cqZAp">
          <node concept="1PaTwC" id="7jRNnvC9exs" role="1aUNEU">
            <node concept="3oM_SD" id="7jRNnvC9eKx" role="1PaTwD">
              <property role="3oM_SC" value="make" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC9eK$" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC9eKC" role="1PaTwD">
              <property role="3oM_SC" value="change" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC9eKP" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="7jRNnvC9eKV" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvCfN77" role="3cqZAp">
          <node concept="1rXfSq" id="7jRNnvCfN78" role="3clFbG">
            <ref role="37wK5l" node="7jRNnvC87zo" resolve="runOnCloudRepository" />
            <node concept="37vLTw" id="7jRNnvCfN79" role="37wK5m">
              <ref role="3cqZAo" node="7jRNnvC91jP" resolve="defaultTreeId" />
            </node>
            <node concept="37vLTw" id="7jRNnvCfN7a" role="37wK5m">
              <ref role="3cqZAo" node="7jRNnvC91jV" resolve="defaultBranchName" />
            </node>
            <node concept="1bVj0M" id="7jRNnvCfN7b" role="37wK5m">
              <node concept="3clFbS" id="7jRNnvCfN7c" role="1bW5cS">
                <node concept="3cpWs8" id="7jRNnvCfN7d" role="3cqZAp">
                  <node concept="3cpWsn" id="7jRNnvCfN7e" role="3cpWs9">
                    <property role="TrG5h" value="solution1" />
                    <node concept="3cpWsb" id="7jRNnvCfN7f" role="1tU5fm" />
                    <node concept="2OqwBi" id="7jRNnvCfN7g" role="33vP2m">
                      <node concept="37vLTw" id="7jRNnvCfN7h" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvCfN7N" resolve="wt" />
                      </node>
                      <node concept="AQDAd" id="7jRNnvCfN7i" role="2OqNvi">
                        <ref role="37wK5l" node="7jRNnvC8RCE" resolve="requireRootChildByName" />
                        <node concept="Xl_RD" id="7jRNnvCfN7j" role="37wK5m">
                          <property role="Xl_RC" value="simple.solution1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7jRNnvCfN7k" role="3cqZAp">
                  <node concept="3cpWsn" id="7jRNnvCfN7l" role="3cpWs9">
                    <property role="TrG5h" value="model1" />
                    <node concept="3cpWsb" id="7jRNnvCfN7m" role="1tU5fm" />
                    <node concept="2OqwBi" id="7jRNnvCfN7n" role="33vP2m">
                      <node concept="37vLTw" id="7jRNnvCfN7o" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvCfN7N" resolve="wt" />
                      </node>
                      <node concept="AQDAd" id="7jRNnvCfN7p" role="2OqNvi">
                        <ref role="37wK5l" node="7jRNnvC8S8n" resolve="requireChildByName" />
                        <node concept="37vLTw" id="7jRNnvCfN7q" role="37wK5m">
                          <ref role="3cqZAo" node="7jRNnvCfN7e" resolve="solution1" />
                        </node>
                        <node concept="Xl_RD" id="7jRNnvCfN7r" role="37wK5m">
                          <property role="Xl_RC" value="simple.solution1.model1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7jRNnvCfN7s" role="3cqZAp">
                  <node concept="3cpWsn" id="7jRNnvCfN7t" role="3cpWs9">
                    <property role="TrG5h" value="clazz" />
                    <node concept="3cpWsb" id="7jRNnvCfN7u" role="1tU5fm" />
                    <node concept="2OqwBi" id="7jRNnvCfN7v" role="33vP2m">
                      <node concept="37vLTw" id="7jRNnvCfN7w" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvCfN7N" resolve="wt" />
                      </node>
                      <node concept="AQDAd" id="7jRNnvCfN7x" role="2OqNvi">
                        <ref role="37wK5l" node="7jRNnvC8S8n" resolve="requireChildByName" />
                        <node concept="37vLTw" id="7jRNnvCfN7y" role="37wK5m">
                          <ref role="3cqZAo" node="7jRNnvCfN7l" resolve="model1" />
                        </node>
                        <node concept="Xl_RD" id="7jRNnvCfN7z" role="37wK5m">
                          <property role="Xl_RC" value="MyClassBrilliantlyRenamedInsideATransientModel" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7jRNnvCfN7$" role="3cqZAp">
                  <node concept="2OqwBi" id="7jRNnvCfN7_" role="3clFbG">
                    <node concept="37vLTw" id="7jRNnvCfN7A" role="2Oq$k0">
                      <ref role="3cqZAo" node="7jRNnvCfN7N" resolve="wt" />
                    </node>
                    <node concept="liA8E" id="7jRNnvCfN7B" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~IWriteTransaction.setProperty(long,java.lang.String,java.lang.String)" resolve="setProperty" />
                      <node concept="37vLTw" id="7jRNnvCfN7C" role="37wK5m">
                        <ref role="3cqZAo" node="7jRNnvCfN7t" resolve="clazz" />
                      </node>
                      <node concept="Xl_RD" id="7jRNnvCfN7D" role="37wK5m">
                        <property role="Xl_RC" value="name" />
                      </node>
                      <node concept="Xl_RD" id="7jRNnvCfN7E" role="37wK5m">
                        <property role="Xl_RC" value="MyClassBrilliantlyRenamedInsideATransientModelIsNowRenamedAgain" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7jRNnvCfQeA" role="3cqZAp">
                  <node concept="3cpWsn" id="7jRNnvCfQeD" role="3cpWs9">
                    <property role="TrG5h" value="field" />
                    <node concept="3cpWsb" id="7jRNnvCfQe$" role="1tU5fm" />
                    <node concept="2OqwBi" id="7jRNnvCfO_Y" role="33vP2m">
                      <node concept="37vLTw" id="7jRNnvCfOkJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvCfN7N" resolve="wt" />
                      </node>
                      <node concept="AQDAd" id="7jRNnvCfPnK" role="2OqNvi">
                        <ref role="37wK5l" node="7jRNnvC8S8n" resolve="requireChildByName" />
                        <node concept="37vLTw" id="7jRNnvCfPw$" role="37wK5m">
                          <ref role="3cqZAo" node="7jRNnvCfN7t" resolve="clazz" />
                        </node>
                        <node concept="Xl_RD" id="7jRNnvCfPS5" role="37wK5m">
                          <property role="Xl_RC" value="field" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7jRNnvCfRek" role="3cqZAp">
                  <node concept="2OqwBi" id="7jRNnvCfRwu" role="3clFbG">
                    <node concept="37vLTw" id="7jRNnvCfRei" role="2Oq$k0">
                      <ref role="3cqZAo" node="7jRNnvCfN7N" resolve="wt" />
                    </node>
                    <node concept="liA8E" id="7jRNnvCfRKi" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~IWriteTransaction.deleteNode(long)" resolve="deleteNode" />
                      <node concept="37vLTw" id="7jRNnvCfRTD" role="37wK5m">
                        <ref role="3cqZAo" node="7jRNnvCfQeD" resolve="field" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1gVbGN" id="7jRNnvCfN7F" role="3cqZAp">
                  <node concept="17R0WA" id="7jRNnvCfN7G" role="1gVkn0">
                    <node concept="2OqwBi" id="7jRNnvCfN7H" role="3uHU7B">
                      <node concept="37vLTw" id="7jRNnvCfN7I" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvCfN7N" resolve="wt" />
                      </node>
                      <node concept="liA8E" id="7jRNnvCfN7J" role="2OqNvi">
                        <ref role="37wK5l" to="jks5:~ITransaction.getProperty(long,java.lang.String)" resolve="getProperty" />
                        <node concept="37vLTw" id="7jRNnvCfN7K" role="37wK5m">
                          <ref role="3cqZAo" node="7jRNnvCfN7t" resolve="clazz" />
                        </node>
                        <node concept="Xl_RD" id="7jRNnvCfN7L" role="37wK5m">
                          <property role="Xl_RC" value="name" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="7jRNnvCfN7M" role="3uHU7w">
                      <property role="Xl_RC" value="MyClassBrilliantlyRenamedInsideATransientModelIsNowRenamedAgain" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="7jRNnvCfN7N" role="1bW2Oz">
                <property role="TrG5h" value="wt" />
                <node concept="3uibUv" id="7jRNnvCfN7O" role="1tU5fm">
                  <ref role="3uigEE" to="jks5:~IWriteTransaction" resolve="IWriteTransaction" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvCfN7P" role="3cqZAp">
          <node concept="2YIFZM" id="7jRNnvCfN7Q" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <node concept="3cmrfG" id="7jRNnvCfN7R" role="37wK5m">
              <property role="3cmrfH" value="1400" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvCfMGw" role="3cqZAp" />
        <node concept="3SKdUt" id="7jRNnvCfSLf" role="3cqZAp">
          <node concept="1PaTwC" id="7jRNnvCfSLg" role="1aUNEU">
            <node concept="3oM_SD" id="7jRNnvCfTjw" role="1PaTwD">
              <property role="3oM_SC" value="Verify" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCfTi4" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCfTif" role="1PaTwD">
              <property role="3oM_SC" value="see" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCfTij" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCfTiw" role="1PaTwD">
              <property role="3oM_SC" value="change" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCfTiA" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCfTiX" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCfTj5" role="1PaTwD">
              <property role="3oM_SC" value="transient" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCfTje" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Aop38I5dQO" role="3cqZAp">
          <node concept="2YIFZM" id="Aop38I5dQQ" role="3clFbG">
            <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
            <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeAndWait(java.lang.Runnable)" resolve="invokeAndWait" />
            <node concept="2ShNRf" id="Aop38I5dQR" role="37wK5m">
              <node concept="YeOm9" id="Aop38I5dQS" role="2ShVmc">
                <node concept="1Y3b0j" id="Aop38I5dQT" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="Aop38I5dQU" role="1B3o_S" />
                  <node concept="3clFb_" id="Aop38I5dQV" role="jymVt">
                    <property role="TrG5h" value="run" />
                    <node concept="3Tm1VV" id="Aop38I5dQW" role="1B3o_S" />
                    <node concept="3cqZAl" id="Aop38I5dQX" role="3clF45" />
                    <node concept="3clFbS" id="Aop38I5dQY" role="3clF47">
                      <node concept="1QHqEK" id="Aop38I5dQZ" role="3cqZAp">
                        <node concept="1QHqEC" id="Aop38I5dR0" role="1QHqEI">
                          <node concept="3clFbS" id="Aop38I5dR1" role="1bW5cS">
                            <node concept="3clFbF" id="7jRNnvCfTOQ" role="3cqZAp">
                              <node concept="2OqwBi" id="7jRNnvCfTOR" role="3clFbG">
                                <node concept="2OqwBi" id="7jRNnvCfTOS" role="2Oq$k0">
                                  <node concept="37vLTw" id="7jRNnvCfTOT" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7jRNnvCez9i" resolve="transientModuleBinding" />
                                  </node>
                                  <node concept="liA8E" id="7jRNnvCfTOU" role="2OqNvi">
                                    <ref role="37wK5l" to="csg2:1BXGyXtAZB6" resolve="getModule" />
                                  </node>
                                </node>
                                <node concept="AQDAd" id="7jRNnvCfTOV" role="2OqNvi">
                                  <ref role="37wK5l" node="7jRNnvCeAHO" resolve="assertNModels" />
                                  <node concept="3cmrfG" id="7jRNnvCfTOW" role="37wK5m">
                                    <property role="3cmrfH" value="1" />
                                  </node>
                                  <node concept="3clFbT" id="5cWpYFRFnte" role="37wK5m">
                                    <property role="3clFbU" value="true" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1gVbGN" id="7jRNnvCfZ4h" role="3cqZAp">
                              <node concept="17R0WA" id="7jRNnvCg4xM" role="1gVkn0">
                                <node concept="2OqwBi" id="7jRNnvCg0xt" role="3uHU7B">
                                  <node concept="37vLTw" id="7jRNnvCfZGA" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7jRNnvCePK9" resolve="myClass" />
                                  </node>
                                  <node concept="3TrcHB" id="7jRNnvCg2v4" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="7jRNnvCg4Vz" role="3uHU7w">
                                  <property role="Xl_RC" value="MyClassBrilliantlyRenamedInsideATransientModelIsNowRenamedAgain" />
                                </node>
                              </node>
                            </node>
                            <node concept="1gVbGN" id="7jRNnvCg5Hg" role="3cqZAp">
                              <node concept="17R0WA" id="7jRNnvCgqF9" role="1gVkn0">
                                <node concept="3cmrfG" id="7jRNnvCgrbG" role="3uHU7w">
                                  <property role="3cmrfH" value="1" />
                                </node>
                                <node concept="2OqwBi" id="7jRNnvCgoVm" role="3uHU7B">
                                  <node concept="2OqwBi" id="7jRNnvCgb_K" role="2Oq$k0">
                                    <node concept="2OqwBi" id="7jRNnvCg75K" role="2Oq$k0">
                                      <node concept="37vLTw" id="7jRNnvCg6lF" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7jRNnvCePK9" resolve="myClass" />
                                      </node>
                                      <node concept="3Tsc0h" id="7jRNnvCg99O" role="2OqNvi">
                                        <ref role="3TtcxE" to="tpee:4EqhHTp4Mw3" resolve="member" />
                                      </node>
                                    </node>
                                    <node concept="v3k3i" id="7jRNnvCgo$h" role="2OqNvi">
                                      <node concept="chp4Y" id="7jRNnvCgo_I" role="v3oSu">
                                        <ref role="cht4Q" to="tpee:fz12cDC" resolve="FieldDeclaration" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="34oBXx" id="7jRNnvCgpMz" role="2OqNvi" />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="7jRNnvCgs3i" role="3cqZAp">
                              <node concept="3cpWsn" id="7jRNnvCgs3l" role="3cpWs9">
                                <property role="TrG5h" value="fieldDeclaration" />
                                <node concept="3Tqbb2" id="7jRNnvCgs3g" role="1tU5fm">
                                  <ref role="ehGHo" to="tpee:fz12cDC" resolve="FieldDeclaration" />
                                </node>
                                <node concept="1y4W85" id="7jRNnvCg$2f" role="33vP2m">
                                  <node concept="3cmrfG" id="7jRNnvCg$ax" role="1y58nS">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                  <node concept="2OqwBi" id="7jRNnvCgt04" role="1y566C">
                                    <node concept="2OqwBi" id="7jRNnvCgsAt" role="2Oq$k0">
                                      <node concept="2OqwBi" id="7jRNnvCgsAu" role="2Oq$k0">
                                        <node concept="37vLTw" id="7jRNnvCgsAv" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7jRNnvCePK9" resolve="myClass" />
                                        </node>
                                        <node concept="3Tsc0h" id="7jRNnvCgsAw" role="2OqNvi">
                                          <ref role="3TtcxE" to="tpee:4EqhHTp4Mw3" resolve="member" />
                                        </node>
                                      </node>
                                      <node concept="v3k3i" id="7jRNnvCgsAx" role="2OqNvi">
                                        <node concept="chp4Y" id="7jRNnvCgsAy" role="v3oSu">
                                          <ref role="cht4Q" to="tpee:fz12cDC" resolve="FieldDeclaration" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="ANE8D" id="7jRNnvCgtGy" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1gVbGN" id="7jRNnvCgADh" role="3cqZAp">
                              <node concept="17R0WA" id="7jRNnvCgADi" role="1gVkn0">
                                <node concept="Xl_RD" id="7jRNnvCgEuS" role="3uHU7w">
                                  <property role="Xl_RC" value="addedFieldInTransientModel" />
                                </node>
                                <node concept="2OqwBi" id="7jRNnvCgC_f" role="3uHU7B">
                                  <node concept="37vLTw" id="7jRNnvCgBWI" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7jRNnvCgs3l" resolve="fieldDeclaration" />
                                  </node>
                                  <node concept="3TrcHB" id="7jRNnvCgE86" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="Aop38I5dRw" role="ukAjM">
                          <node concept="37vLTw" id="Aop38I5dRx" role="2Oq$k0">
                            <ref role="3cqZAo" node="7jRNnvCqhcM" resolve="effectiveMpsProject" />
                          </node>
                          <node concept="liA8E" id="Aop38I5dRy" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="Aop38I5dRz" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvCfTk0" role="3cqZAp" />
        <node concept="3cpWs6" id="7jRNnvC91q8" role="3cqZAp">
          <node concept="2YIFZM" id="7jRNnvC91q9" role="3cqZAk">
            <ref role="37wK5l" node="5yNJPA6trVb" resolve="ok" />
            <ref role="1Pybhc" node="5yNJPA6btY7" resolve="TestResult" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7jRNnvC91qa" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3uibUv" id="7jRNnvC91qb" role="1zkMxy">
      <ref role="3uigEE" node="5yNJPA6tjxd" resolve="IntegrationTest" />
    </node>
  </node>
  <node concept="KRBjq" id="7jRNnvCeAAs">
    <property role="3GE5qa" value="support" />
    <property role="TrG5h" value="SModuleUtils" />
    <node concept="ATzpf" id="7jRNnvCeAHO" role="a7sos">
      <property role="TrG5h" value="assertNModels" />
      <node concept="3Tm1VV" id="7jRNnvCeAHP" role="1B3o_S" />
      <node concept="3cqZAl" id="7jRNnvCeALG" role="3clF45" />
      <node concept="3clFbS" id="7jRNnvCeAHR" role="3clF47">
        <node concept="3cpWs8" id="7jRNnvCeB9c" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvCeB9f" role="3cpWs9">
            <property role="TrG5h" value="actual" />
            <node concept="10Oyi0" id="7jRNnvCeB9a" role="1tU5fm" />
            <node concept="3cmrfG" id="7jRNnvCeBbj" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7jRNnvCeAXy" role="3cqZAp">
          <node concept="2GrKxI" id="7jRNnvCeAXz" role="2Gsz3X">
            <property role="TrG5h" value="model" />
          </node>
          <node concept="Vb5G_" id="7jRNnvCeB04" role="2GsD0m">
            <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
          </node>
          <node concept="3clFbS" id="7jRNnvCeAX_" role="2LFqv$">
            <node concept="3clFbJ" id="5cWpYFRFil7" role="3cqZAp">
              <node concept="3clFbS" id="5cWpYFRFil9" role="3clFbx">
                <node concept="3clFbH" id="5cWpYFRFil8" role="3cqZAp" />
              </node>
              <node concept="1Wc70l" id="5cWpYFRFilx" role="3clFbw">
                <node concept="2OqwBi" id="5cWpYFRFily" role="3uHU7w">
                  <node concept="2OqwBi" id="5cWpYFRFilz" role="2Oq$k0">
                    <node concept="2GrUjf" id="5cWpYFRFil$" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7jRNnvCeAXz" resolve="model" />
                    </node>
                    <node concept="liA8E" id="5cWpYFRFil_" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getModelName()" resolve="getModelName" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5cWpYFRFilA" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                    <node concept="Xl_RD" id="5cWpYFRFilB" role="37wK5m">
                      <property role="Xl_RC" value="@descriptor" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5cWpYFRFilC" role="3uHU7B">
                  <ref role="3cqZAo" node="5cWpYFRFigC" resolve="excludingDescriptors" />
                </node>
              </node>
              <node concept="9aQIb" id="5cWpYFRFitl" role="9aQIa">
                <node concept="3clFbS" id="5cWpYFRFitm" role="9aQI4">
                  <node concept="3clFbF" id="7jRNnvCeBiT" role="3cqZAp">
                    <node concept="3uNrnE" id="7jRNnvCeBYT" role="3clFbG">
                      <node concept="37vLTw" id="7jRNnvCeBYV" role="2$L3a6">
                        <ref role="3cqZAo" node="7jRNnvCeB9f" resolve="actual" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="7jRNnvCeC8x" role="3cqZAp">
          <node concept="3clFbC" id="7jRNnvCeD13" role="1gVkn0">
            <node concept="37vLTw" id="7jRNnvCeD35" role="3uHU7w">
              <ref role="3cqZAo" node="7jRNnvCeAQ0" resolve="expectedSize" />
            </node>
            <node concept="37vLTw" id="7jRNnvCeCaD" role="3uHU7B">
              <ref role="3cqZAo" node="7jRNnvCeB9f" resolve="actual" />
            </node>
          </node>
          <node concept="3cpWs3" id="7jRNnvCeG2n" role="1gVpfI">
            <node concept="37vLTw" id="7jRNnvCeG58" role="3uHU7w">
              <ref role="3cqZAo" node="7jRNnvCeB9f" resolve="actual" />
            </node>
            <node concept="3cpWs3" id="7jRNnvCeFzD" role="3uHU7B">
              <node concept="3cpWs3" id="7jRNnvCeEmA" role="3uHU7B">
                <node concept="Xl_RD" id="7jRNnvCeDCH" role="3uHU7B">
                  <property role="Xl_RC" value="Expected to find " />
                </node>
                <node concept="37vLTw" id="7jRNnvCeEN5" role="3uHU7w">
                  <ref role="3cqZAo" node="7jRNnvCeAQ0" resolve="expectedSize" />
                </node>
              </node>
              <node concept="Xl_RD" id="7jRNnvCeFzI" role="3uHU7w">
                <property role="Xl_RC" value=" models but found " />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7jRNnvCeAQ0" role="3clF46">
        <property role="TrG5h" value="expectedSize" />
        <node concept="10Oyi0" id="7jRNnvCeAPZ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5cWpYFRFigC" role="3clF46">
        <property role="TrG5h" value="excludingDescriptors" />
        <node concept="10P_77" id="5cWpYFRFijS" role="1tU5fm" />
      </node>
    </node>
    <node concept="ATzpf" id="7jRNnvCeI3A" role="a7sos">
      <property role="TrG5h" value="getModel" />
      <node concept="3Tm1VV" id="7jRNnvCeI3B" role="1B3o_S" />
      <node concept="3clFbS" id="7jRNnvCeI3D" role="3clF47">
        <node concept="3cpWs8" id="7jRNnvCeI3E" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvCeI3F" role="3cpWs9">
            <property role="TrG5h" value="actual" />
            <node concept="10Oyi0" id="7jRNnvCeI3G" role="1tU5fm" />
            <node concept="3cmrfG" id="7jRNnvCeI3H" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7jRNnvCeI3I" role="3cqZAp">
          <node concept="2GrKxI" id="7jRNnvCeI3J" role="2Gsz3X">
            <property role="TrG5h" value="model" />
          </node>
          <node concept="Vb5G_" id="7jRNnvCeI3K" role="2GsD0m">
            <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
          </node>
          <node concept="3clFbS" id="7jRNnvCeI3L" role="2LFqv$">
            <node concept="3clFbJ" id="5cWpYFRFdV$" role="3cqZAp">
              <node concept="3clFbS" id="5cWpYFRFdVA" role="3clFbx">
                <node concept="3clFbH" id="5cWpYFRFdV_" role="3cqZAp" />
              </node>
              <node concept="1Wc70l" id="5cWpYFRFeiR" role="3clFbw">
                <node concept="2OqwBi" id="5cWpYFRFf9k" role="3uHU7w">
                  <node concept="2OqwBi" id="5cWpYFRFes6" role="2Oq$k0">
                    <node concept="2GrUjf" id="5cWpYFRFejt" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7jRNnvCeI3J" resolve="model" />
                    </node>
                    <node concept="liA8E" id="5cWpYFRFeGE" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getModelName()" resolve="getModelName" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5cWpYFRFfLU" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                    <node concept="Xl_RD" id="5cWpYFRFfLZ" role="37wK5m">
                      <property role="Xl_RC" value="@descriptor" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5cWpYFRFdZl" role="3uHU7B">
                  <ref role="3cqZAo" node="5cWpYFRFdKS" resolve="excludingDescriptors" />
                </node>
              </node>
              <node concept="9aQIb" id="5cWpYFRFg0I" role="9aQIa">
                <node concept="3clFbS" id="5cWpYFRFg0J" role="9aQI4">
                  <node concept="3clFbJ" id="7jRNnvCeIsm" role="3cqZAp">
                    <node concept="3clFbS" id="7jRNnvCeIso" role="3clFbx">
                      <node concept="3cpWs6" id="7jRNnvCeJK4" role="3cqZAp">
                        <node concept="2GrUjf" id="7jRNnvCeKaT" role="3cqZAk">
                          <ref role="2Gs0qQ" node="7jRNnvCeI3J" resolve="model" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="7jRNnvCeJhG" role="3clFbw">
                      <node concept="37vLTw" id="7jRNnvCeJGn" role="3uHU7w">
                        <ref role="3cqZAo" node="7jRNnvCeI40" resolve="index" />
                      </node>
                      <node concept="37vLTw" id="7jRNnvCeIsO" role="3uHU7B">
                        <ref role="3cqZAo" node="7jRNnvCeI3F" resolve="actual" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7jRNnvCeI3M" role="3cqZAp">
                    <node concept="3uNrnE" id="7jRNnvCeI3N" role="3clFbG">
                      <node concept="37vLTw" id="7jRNnvCeI3O" role="2$L3a6">
                        <ref role="3cqZAo" node="7jRNnvCeI3F" resolve="actual" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="7jRNnvCeKy7" role="3cqZAp">
          <node concept="2ShNRf" id="7jRNnvCeK$T" role="YScLw">
            <node concept="1pGfFk" id="7jRNnvCeLnP" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
              <node concept="3cpWs3" id="7jRNnvCeMw$" role="37wK5m">
                <node concept="Xl_RD" id="7jRNnvCeMwD" role="3uHU7w">
                  <property role="Xl_RC" value=" not found" />
                </node>
                <node concept="3cpWs3" id="7jRNnvCeLGJ" role="3uHU7B">
                  <node concept="Xl_RD" id="7jRNnvCeLqe" role="3uHU7B">
                    <property role="Xl_RC" value="Model with index " />
                  </node>
                  <node concept="37vLTw" id="7jRNnvCeLJ$" role="3uHU7w">
                    <ref role="3cqZAo" node="7jRNnvCeI40" resolve="index" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7jRNnvCeI40" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="7jRNnvCeI41" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5cWpYFRFdKS" role="3clF46">
        <property role="TrG5h" value="excludingDescriptors" />
        <node concept="10P_77" id="5cWpYFRFdPF" role="1tU5fm" />
      </node>
      <node concept="H_c77" id="7jRNnvCeKpz" role="3clF45" />
    </node>
    <node concept="3uibUv" id="7jRNnvCeAHI" role="KRMoO">
      <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
    </node>
    <node concept="3Tm1VV" id="7jRNnvCeAHM" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7jRNnvCgEA8">
    <property role="TrG5h" value="ModuleCanBeCopiedFromTheCloudToLocalProjectTest" />
    <property role="3GE5qa" value="tests" />
    <node concept="3Tm1VV" id="7jRNnvCgEA9" role="1B3o_S" />
    <node concept="3clFbW" id="7jRNnvCgEAa" role="jymVt">
      <node concept="37vLTG" id="7jRNnvCgEAb" role="3clF46">
        <property role="TrG5h" value="referenceDir" />
        <node concept="3uibUv" id="7jRNnvCgEAc" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="37vLTG" id="7jRNnvCgEAd" role="3clF46">
        <property role="TrG5h" value="environment" />
        <node concept="3uibUv" id="7jRNnvCgEAe" role="1tU5fm">
          <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
        </node>
      </node>
      <node concept="3cqZAl" id="7jRNnvCgEAf" role="3clF45" />
      <node concept="3Tm1VV" id="7jRNnvCgEAg" role="1B3o_S" />
      <node concept="3clFbS" id="7jRNnvCgEAh" role="3clF47">
        <node concept="XkiVB" id="7jRNnvCgEAi" role="3cqZAp">
          <ref role="37wK5l" node="5yNJPA6tklF" resolve="IntegrationTest" />
          <node concept="37vLTw" id="7jRNnvCgEAj" role="37wK5m">
            <ref role="3cqZAo" node="7jRNnvCgEAb" resolve="referenceDir" />
          </node>
          <node concept="37vLTw" id="7jRNnvCgEAk" role="37wK5m">
            <ref role="3cqZAo" node="7jRNnvCgEAd" resolve="environment" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7jRNnvCgEAl" role="jymVt" />
    <node concept="3clFb_" id="7jRNnvCgEAm" role="jymVt">
      <property role="TrG5h" value="logic" />
      <node concept="3Tm1VV" id="7jRNnvCgEAn" role="1B3o_S" />
      <node concept="3uibUv" id="7jRNnvCgEAo" role="3clF45">
        <ref role="3uigEE" node="5yNJPA6btY7" resolve="TestResult" />
      </node>
      <node concept="3uibUv" id="7jRNnvCgEAp" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="3clFbS" id="7jRNnvCgEAq" role="3clF47">
        <node concept="3cpWs8" id="7jRNnvCgIKl" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvCgIKm" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="7jRNnvCgIKn" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="1rXfSq" id="7jRNnvCgIKo" role="33vP2m">
              <ref role="37wK5l" node="5yNJPA6tpld" resolve="openProject" />
              <node concept="Xl_RD" id="7jRNnvCgIKp" role="37wK5m">
                <property role="Xl_RC" value="SimpleProjectD" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvCgIKq" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvCgIKr" role="3cpWs9">
            <property role="TrG5h" value="pbc" />
            <node concept="3uibUv" id="7jRNnvCgIKs" role="1tU5fm">
              <ref role="3uigEE" to="nhvc:7f6Tb6nxCKP" resolve="PersistedBindingConfiguration" />
            </node>
            <node concept="2YIFZM" id="7jRNnvCgIKt" role="33vP2m">
              <ref role="37wK5l" to="nhvc:6JwgQ7URldI" resolve="getInstance" />
              <ref role="1Pybhc" to="nhvc:7f6Tb6nxCKP" resolve="PersistedBindingConfiguration" />
              <node concept="37vLTw" id="7jRNnvCgIKu" role="37wK5m">
                <ref role="3cqZAo" node="7jRNnvCgIKm" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="7jRNnvCgIKv" role="3cqZAp">
          <node concept="2OqwBi" id="7jRNnvCgIKw" role="1gVkn0">
            <node concept="37vLTw" id="7jRNnvCgIKx" role="2Oq$k0">
              <ref role="3cqZAo" node="7jRNnvCgIKr" resolve="pbc" />
            </node>
            <node concept="liA8E" id="7jRNnvCgIKy" role="2OqNvi">
              <ref role="37wK5l" to="nhvc:6JwgQ7URCLz" resolve="isEmpty" />
            </node>
          </node>
          <node concept="3cpWs3" id="7jRNnvCgIKz" role="1gVpfI">
            <node concept="2OqwBi" id="7jRNnvCgIK$" role="3uHU7w">
              <node concept="37vLTw" id="7jRNnvCgIK_" role="2Oq$k0">
                <ref role="3cqZAo" node="7jRNnvCgIKr" resolve="pbc" />
              </node>
              <node concept="liA8E" id="7jRNnvCgIKA" role="2OqNvi">
                <ref role="37wK5l" to="nhvc:6JwgQ7UW22M" resolve="describeState" />
              </node>
            </node>
            <node concept="Xl_RD" id="7jRNnvCgIKB" role="3uHU7B">
              <property role="Xl_RC" value="The PersistedBindingConfiguration is expected to be empty, it was " />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvCgIKC" role="3cqZAp" />
        <node concept="3cpWs8" id="7jRNnvCgIKD" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvCgIKE" role="3cpWs9">
            <property role="TrG5h" value="defaultTreeId" />
            <node concept="3uibUv" id="7jRNnvCgIKF" role="1tU5fm">
              <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
            </node>
            <node concept="2ShNRf" id="7jRNnvCgIKG" role="33vP2m">
              <node concept="1pGfFk" id="7jRNnvCgIKH" role="2ShVmc">
                <ref role="37wK5l" to="xkhl:~TreeId.&lt;init&gt;(java.lang.String)" resolve="TreeId" />
                <node concept="Xl_RD" id="7jRNnvCgIKI" role="37wK5m">
                  <property role="Xl_RC" value="default" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvCgIKJ" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvCgIKK" role="3cpWs9">
            <property role="TrG5h" value="defaultBranchName" />
            <node concept="17QB3L" id="7jRNnvCgIKL" role="1tU5fm" />
            <node concept="Xl_RD" id="7jRNnvCgIKM" role="33vP2m">
              <property role="Xl_RC" value="master" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvCgIKN" role="3cqZAp" />
        <node concept="abc8K" id="7jRNnvCgIKO" role="3cqZAp">
          <node concept="Xl_RD" id="7jRNnvCgIKP" role="abp_N">
            <property role="Xl_RC" value="project " />
          </node>
          <node concept="2OqwBi" id="7jRNnvCgIKQ" role="abp_N">
            <node concept="37vLTw" id="7jRNnvCgIKR" role="2Oq$k0">
              <ref role="3cqZAo" node="7jRNnvCgIKm" resolve="mpsProject" />
            </node>
            <node concept="liA8E" id="7jRNnvCgIKS" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getName()" resolve="getName" />
            </node>
          </node>
          <node concept="Xl_RD" id="7jRNnvCgIKT" role="abp_N">
            <property role="Xl_RC" value=" opened" />
          </node>
        </node>
        <node concept="1gVbGN" id="7jRNnvCgIKU" role="3cqZAp">
          <node concept="17R0WA" id="7jRNnvCgIKV" role="1gVkn0">
            <node concept="3cmrfG" id="7jRNnvCgIKW" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="7jRNnvCgIKX" role="3uHU7B">
              <node concept="2OqwBi" id="7jRNnvCgIKY" role="2Oq$k0">
                <node concept="37vLTw" id="7jRNnvCgIKZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="7jRNnvCgIKm" resolve="mpsProject" />
                </node>
                <node concept="liA8E" id="7jRNnvCgIL0" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~IProject.getProjectModules()" resolve="getProjectModules" />
                </node>
              </node>
              <node concept="liA8E" id="7jRNnvCgIL1" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvCgIL2" role="3cqZAp" />
        <node concept="3SKdUt" id="7jRNnvCgIL3" role="3cqZAp">
          <node concept="1PaTwC" id="7jRNnvCgIL4" role="1aUNEU">
            <node concept="3oM_SD" id="7jRNnvCgIL5" role="1PaTwD">
              <property role="3oM_SC" value="start" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCgIL6" role="1PaTwD">
              <property role="3oM_SC" value="Modelix" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCgIL7" role="1PaTwD">
              <property role="3oM_SC" value="Server" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvCgIL8" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvCgIL9" role="3cpWs9">
            <property role="TrG5h" value="ms" />
            <node concept="3uibUv" id="7jRNnvCgILa" role="1tU5fm">
              <ref role="3uigEE" node="5yNJPA6tDKp" resolve="ModelixServerController" />
            </node>
            <node concept="1rXfSq" id="7jRNnvCgILb" role="33vP2m">
              <ref role="37wK5l" node="1QKKVBBCeoe" resolve="startModelixServer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvCgILc" role="3cqZAp">
          <node concept="2YIFZM" id="7jRNnvCgILd" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <node concept="3cmrfG" id="7jRNnvCgILe" role="37wK5m">
              <property role="3cmrfH" value="5000" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvCgILf" role="3cqZAp" />
        <node concept="3SKdUt" id="7jRNnvCgILg" role="3cqZAp">
          <node concept="1PaTwC" id="7jRNnvCgILh" role="1aUNEU">
            <node concept="3oM_SD" id="7jRNnvCgILi" role="1PaTwD">
              <property role="3oM_SC" value="add" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCgILj" role="1PaTwD">
              <property role="3oM_SC" value="CloudRepository" />
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="7jRNnvCgILk" role="3cqZAp">
          <node concept="2OqwBi" id="7jRNnvCgILl" role="1gVkn0">
            <node concept="2OqwBi" id="7jRNnvCgILm" role="2Oq$k0">
              <node concept="2YIFZM" id="7jRNnvCgILn" role="2Oq$k0">
                <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="7jRNnvCgILo" role="2OqNvi">
                <ref role="37wK5l" to="csg2:1LVcV5KxBgM" resolve="getRepositories" />
              </node>
            </node>
            <node concept="1v1jN8" id="7jRNnvCgILp" role="2OqNvi" />
          </node>
          <node concept="3cpWs3" id="7jRNnvCgILq" role="1gVpfI">
            <node concept="Xl_RD" id="7jRNnvCgILr" role="3uHU7B">
              <property role="Xl_RC" value="Expected not to find CloudRepositories: " />
            </node>
            <node concept="2OqwBi" id="7jRNnvCgILs" role="3uHU7w">
              <node concept="2OqwBi" id="7jRNnvCgILt" role="2Oq$k0">
                <node concept="2YIFZM" id="7jRNnvCgILu" role="2Oq$k0">
                  <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                  <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                </node>
                <node concept="liA8E" id="7jRNnvCgILv" role="2OqNvi">
                  <ref role="37wK5l" to="csg2:1LVcV5KxBgM" resolve="getRepositories" />
                </node>
              </node>
              <node concept="ANE8D" id="7jRNnvCgILw" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvCgILx" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvCgILy" role="3cpWs9">
            <property role="TrG5h" value="cr" />
            <node concept="3uibUv" id="7jRNnvCgILz" role="1tU5fm">
              <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
            </node>
            <node concept="1rXfSq" id="7jRNnvCgIL$" role="33vP2m">
              <ref role="37wK5l" node="1QKKVBBCC1x" resolve="addCloudRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvCgIL_" role="3cqZAp">
          <node concept="2YIFZM" id="7jRNnvCgILA" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <node concept="3cmrfG" id="7jRNnvCgILB" role="37wK5m">
              <property role="3cmrfH" value="5000" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvCgILC" role="3cqZAp" />
        <node concept="3SKdUt" id="7jRNnvCgILD" role="3cqZAp">
          <node concept="1PaTwC" id="7jRNnvCgILE" role="1aUNEU">
            <node concept="3oM_SD" id="7jRNnvCgILF" role="1PaTwD">
              <property role="3oM_SC" value="add" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCgILG" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCgILH" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCgILI" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCgILJ" role="1PaTwD">
              <property role="3oM_SC" value="cloud" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCgILK" role="1PaTwD">
              <property role="3oM_SC" value="server," />
            </node>
            <node concept="3oM_SD" id="7jRNnvCgILL" role="1PaTwD">
              <property role="3oM_SC" value="loading" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCgILM" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCgILN" role="1PaTwD">
              <property role="3oM_SC" value="dump" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvCgILO" role="3cqZAp">
          <node concept="1rXfSq" id="7jRNnvCgILP" role="3clFbG">
            <ref role="37wK5l" node="7jRNnvC9m0y" resolve="loadJsonDumpOnCloudServer" />
            <node concept="37vLTw" id="7jRNnvCgILQ" role="37wK5m">
              <ref role="3cqZAo" node="7jRNnvCgIKE" resolve="defaultTreeId" />
            </node>
            <node concept="37vLTw" id="7jRNnvCgILR" role="37wK5m">
              <ref role="3cqZAo" node="7jRNnvCgIKK" resolve="defaultBranchName" />
            </node>
            <node concept="Xl_RD" id="7jRNnvCgILS" role="37wK5m">
              <property role="Xl_RC" value="dump5" />
            </node>
            <node concept="2OqwBi" id="7jRNnvCgILT" role="37wK5m">
              <node concept="37vLTw" id="7jRNnvCgILU" role="2Oq$k0">
                <ref role="3cqZAo" node="7jRNnvCgIKm" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="7jRNnvCgILV" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Aop38IeyWA" role="3cqZAp">
          <node concept="2YIFZM" id="Aop38IeyWB" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <node concept="3cmrfG" id="Aop38IeyWC" role="37wK5m">
              <property role="3cmrfH" value="1000" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Aop38IeyS_" role="3cqZAp" />
        <node concept="3SKdUt" id="Aop38IexhS" role="3cqZAp">
          <node concept="1PaTwC" id="Aop38IexhT" role="1aUNEU">
            <node concept="3oM_SD" id="Aop38IexhU" role="1PaTwD">
              <property role="3oM_SC" value="verify" />
            </node>
            <node concept="3oM_SD" id="Aop38IexhV" role="1PaTwD">
              <property role="3oM_SC" value="elements" />
            </node>
            <node concept="3oM_SD" id="Aop38IexhW" role="1PaTwD">
              <property role="3oM_SC" value="where" />
            </node>
            <node concept="3oM_SD" id="Aop38IexhX" role="1PaTwD">
              <property role="3oM_SC" value="loaded" />
            </node>
            <node concept="3oM_SD" id="Aop38IexhY" role="1PaTwD">
              <property role="3oM_SC" value="correctly" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Aop38IexhZ" role="3cqZAp">
          <node concept="3cpWsn" id="Aop38Iexi0" role="3cpWs9">
            <property role="TrG5h" value="actualJsonDump1" />
            <node concept="3uibUv" id="Aop38Iexi1" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
            <node concept="2OqwBi" id="Aop38Iexi2" role="33vP2m">
              <node concept="37vLTw" id="Aop38Iexi3" role="2Oq$k0">
                <ref role="3cqZAo" node="7jRNnvCgIL9" resolve="ms" />
              </node>
              <node concept="liA8E" id="Aop38Iexi4" role="2OqNvi">
                <ref role="37wK5l" node="7JjSHvQ43L7" resolve="jsonDump" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Aop38Iexi5" role="3cqZAp">
          <node concept="3cpWsn" id="Aop38Iexi6" role="3cpWs9">
            <property role="TrG5h" value="expectedJsonDump1" />
            <node concept="3uibUv" id="Aop38Iexi7" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
            <node concept="1rXfSq" id="Aop38Iexi8" role="33vP2m">
              <ref role="37wK5l" node="7JjSHvQ4HQK" resolve="loadJsonDump" />
              <node concept="Xl_RD" id="Aop38Iexi9" role="37wK5m">
                <property role="Xl_RC" value="dump1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Aop38Iexia" role="3cqZAp">
          <node concept="1rXfSq" id="Aop38Iexib" role="3clFbG">
            <ref role="37wK5l" node="7JjSHvQ4V3I" resolve="assertJsonsAreEquals" />
            <node concept="37vLTw" id="Aop38Iexic" role="37wK5m">
              <ref role="3cqZAo" node="Aop38Iexi6" resolve="expectedJsonDump1" />
            </node>
            <node concept="37vLTw" id="Aop38Iexid" role="37wK5m">
              <ref role="3cqZAo" node="Aop38Iexi0" resolve="actualJsonDump1" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Aop38Iexee" role="3cqZAp" />
        <node concept="3SKdUt" id="7jRNnvCgILX" role="3cqZAp">
          <node concept="1PaTwC" id="7jRNnvCgKf_" role="1aUNEU">
            <node concept="3oM_SD" id="7jRNnvCgKzV" role="1PaTwD">
              <property role="3oM_SC" value="copy" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCgK$6" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCgK$a" role="1PaTwD">
              <property role="3oM_SC" value="locally" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvCgP1I" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvCgP1J" role="3cpWs9">
            <property role="TrG5h" value="treeInRepository" />
            <node concept="3uibUv" id="7jRNnvCgP1K" role="1tU5fm">
              <ref role="3uigEE" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
            </node>
            <node concept="2ShNRf" id="7jRNnvCgPs4" role="33vP2m">
              <node concept="1pGfFk" id="7jRNnvCgPnZ" role="2ShVmc">
                <ref role="37wK5l" to="csg2:3i6diw3mtOf" resolve="TreeInRepository" />
                <node concept="37vLTw" id="7jRNnvCgPwH" role="37wK5m">
                  <ref role="3cqZAo" node="7jRNnvCgILy" resolve="cr" />
                </node>
                <node concept="37vLTw" id="7jRNnvCgP_V" role="37wK5m">
                  <ref role="3cqZAo" node="7jRNnvCgIKE" resolve="defaultTreeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvCgQYu" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvCgQYv" role="3cpWs9">
            <property role="TrG5h" value="moduleCloudNodeId" />
            <node concept="3cpWsb" id="7jRNnvCgQYw" role="1tU5fm" />
            <node concept="1rXfSq" id="7jRNnvCgQYx" role="33vP2m">
              <ref role="37wK5l" node="7jRNnvCdVdw" resolve="computeOnCloudRepository" />
              <node concept="37vLTw" id="7jRNnvCgQYy" role="37wK5m">
                <ref role="3cqZAo" node="7jRNnvCgIKE" resolve="defaultTreeId" />
              </node>
              <node concept="37vLTw" id="7jRNnvCgQYz" role="37wK5m">
                <ref role="3cqZAo" node="7jRNnvCgIKK" resolve="defaultBranchName" />
              </node>
              <node concept="1bVj0M" id="7jRNnvCgQY$" role="37wK5m">
                <node concept="37vLTG" id="7jRNnvCgQY_" role="1bW2Oz">
                  <property role="TrG5h" value="rt" />
                  <node concept="3uibUv" id="7jRNnvCgQYA" role="1tU5fm">
                    <ref role="3uigEE" to="jks5:~IReadTransaction" resolve="IReadTransaction" />
                  </node>
                </node>
                <node concept="3clFbS" id="7jRNnvCgQYB" role="1bW5cS">
                  <node concept="3clFbF" id="7jRNnvCgQYC" role="3cqZAp">
                    <node concept="2OqwBi" id="7jRNnvCgQYD" role="3clFbG">
                      <node concept="37vLTw" id="7jRNnvCgQYE" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvCgQY_" resolve="rt" />
                      </node>
                      <node concept="AQDAd" id="7jRNnvCgQYF" role="2OqNvi">
                        <ref role="37wK5l" node="7jRNnvC8RCE" resolve="requireRootChildByName" />
                        <node concept="Xl_RD" id="7jRNnvCgQYG" role="37wK5m">
                          <property role="Xl_RC" value="simple.solution1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvCgObG" role="3cqZAp">
          <node concept="2OqwBi" id="1OzsJtas28e" role="3clFbG">
            <node concept="2ShNRf" id="1OzsJtas0A6" role="2Oq$k0">
              <node concept="1pGfFk" id="1OzsJtas1Dw" role="2ShVmc">
                <ref role="37wK5l" to="csg2:1OzsJtaqF48" resolve="ModuleCheckout" />
                <node concept="37vLTw" id="1OzsJtas1Zq" role="37wK5m">
                  <ref role="3cqZAo" node="7jRNnvCgIKm" resolve="mpsProject" />
                </node>
                <node concept="37vLTw" id="7jRNnvCgPKL" role="37wK5m">
                  <ref role="3cqZAo" node="7jRNnvCgP1J" resolve="treeInRepository" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1OzsJtas2qw" role="2OqNvi">
              <ref role="37wK5l" to="csg2:1OzsJtaqDPS" resolve="checkoutCloudModule" />
              <node concept="2ShNRf" id="7jRNnvCgSp5" role="37wK5m">
                <node concept="1pGfFk" id="7jRNnvCgTlf" role="2ShVmc">
                  <ref role="37wK5l" to="jks5:~PNodeAdapter.&lt;init&gt;(long,org.modelix.model.api.IBranch)" resolve="PNodeAdapter" />
                  <node concept="37vLTw" id="7jRNnvCgTud" role="37wK5m">
                    <ref role="3cqZAo" node="7jRNnvCgQYv" resolve="moduleCloudNodeId" />
                  </node>
                  <node concept="2OqwBi" id="7jRNnvCgUUu" role="37wK5m">
                    <node concept="2OqwBi" id="7jRNnvCgUxQ" role="2Oq$k0">
                      <node concept="37vLTw" id="7jRNnvCgUmS" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvCgP1J" resolve="treeInRepository" />
                      </node>
                      <node concept="liA8E" id="7jRNnvCgUKE" role="2OqNvi">
                        <ref role="37wK5l" to="csg2:2fgGmVJWuwV" resolve="getActiveBranch" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7jRNnvCgVcA" role="2OqNvi">
                      <ref role="37wK5l" to="5440:~ActiveBranch.getBranch()" resolve="getBranch" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvCgNVG" role="3cqZAp" />
        <node concept="3SKdUt" id="7jRNnvCgIMC" role="3cqZAp">
          <node concept="1PaTwC" id="7jRNnvCgL2j" role="1aUNEU">
            <node concept="3oM_SD" id="7jRNnvCgLjb" role="1PaTwD">
              <property role="3oM_SC" value="verify" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCgLje" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCgLji" role="1PaTwD">
              <property role="3oM_SC" value="local" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCgLjv" role="1PaTwD">
              <property role="3oM_SC" value="copy" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCgLj_" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCgLjG" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCgLjW" role="1PaTwD">
              <property role="3oM_SC" value="expected" />
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="Aop38Il9mf" role="3cqZAp">
          <node concept="1QHqEC" id="Aop38Il9mh" role="1QHqEI">
            <node concept="3clFbS" id="Aop38Il9mj" role="1bW5cS">
              <node concept="1gVbGN" id="7jRNnvCgVTY" role="3cqZAp">
                <node concept="17R0WA" id="7jRNnvCgVTZ" role="1gVkn0">
                  <node concept="3cmrfG" id="7jRNnvCgVU0" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="7jRNnvCgVU1" role="3uHU7B">
                    <node concept="2OqwBi" id="7jRNnvCgVU2" role="2Oq$k0">
                      <node concept="37vLTw" id="7jRNnvCgVU3" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvCgIKm" resolve="mpsProject" />
                      </node>
                      <node concept="liA8E" id="7jRNnvCgVU4" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~IProject.getProjectModules()" resolve="getProjectModules" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7jRNnvCgVU5" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7jRNnvCgXPV" role="3cqZAp">
                <node concept="3cpWsn" id="7jRNnvCgXPW" role="3cpWs9">
                  <property role="TrG5h" value="simpleSolution1" />
                  <node concept="3uibUv" id="7jRNnvCgXPX" role="1tU5fm">
                    <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                  </node>
                  <node concept="2OqwBi" id="7jRNnvCgXPY" role="33vP2m">
                    <node concept="2OqwBi" id="7jRNnvCgXPZ" role="2Oq$k0">
                      <node concept="37vLTw" id="7jRNnvCgXQ0" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvCgIKm" resolve="mpsProject" />
                      </node>
                      <node concept="liA8E" id="7jRNnvCgXQ1" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~IProject.getProjectModules()" resolve="getProjectModules" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7jRNnvCgXQ2" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="3cmrfG" id="7jRNnvCgXQ3" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1gVbGN" id="7jRNnvCgXQ4" role="3cqZAp">
                <node concept="17R0WA" id="7jRNnvCgXQ5" role="1gVkn0">
                  <node concept="Xl_RD" id="7jRNnvCgXQ6" role="3uHU7w">
                    <property role="Xl_RC" value="simple.solution1" />
                  </node>
                  <node concept="2OqwBi" id="7jRNnvCgXQ7" role="3uHU7B">
                    <node concept="37vLTw" id="7jRNnvCgXQ8" role="2Oq$k0">
                      <ref role="3cqZAo" node="7jRNnvCgXPW" resolve="simpleSolution1" />
                    </node>
                    <node concept="liA8E" id="7jRNnvCgXQ9" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs3" id="7jRNnvCgXQa" role="1gVpfI">
                  <node concept="2OqwBi" id="7jRNnvCgXQb" role="3uHU7w">
                    <node concept="37vLTw" id="7jRNnvCgXQc" role="2Oq$k0">
                      <ref role="3cqZAo" node="7jRNnvCgXPW" resolve="simpleSolution1" />
                    </node>
                    <node concept="liA8E" id="7jRNnvCgXQd" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="7jRNnvCgXQe" role="3uHU7B">
                    <property role="Xl_RC" value="Module expected to be named simple.solution1 but it was named " />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="7jRNnvCgZ_p" role="3cqZAp">
                <node concept="2OqwBi" id="7jRNnvCh0aj" role="3clFbG">
                  <node concept="37vLTw" id="7jRNnvCgZ_m" role="2Oq$k0">
                    <ref role="3cqZAo" node="7jRNnvCgXPW" resolve="simpleSolution1" />
                  </node>
                  <node concept="AQDAd" id="7jRNnvCh0Ci" role="2OqNvi">
                    <ref role="37wK5l" node="7jRNnvCeAHO" resolve="assertNModels" />
                    <node concept="3cmrfG" id="7jRNnvCh0H0" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3clFbT" id="5cWpYFRFjni" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7jRNnvCh24f" role="3cqZAp">
                <node concept="3cpWsn" id="7jRNnvCh24i" role="3cpWs9">
                  <property role="TrG5h" value="simpleModel" />
                  <node concept="H_c77" id="7jRNnvCh24d" role="1tU5fm" />
                  <node concept="2OqwBi" id="7jRNnvCh3wz" role="33vP2m">
                    <node concept="37vLTw" id="7jRNnvCh3j3" role="2Oq$k0">
                      <ref role="3cqZAo" node="7jRNnvCgXPW" resolve="simpleSolution1" />
                    </node>
                    <node concept="AQDAd" id="7jRNnvCh3ES" role="2OqNvi">
                      <ref role="37wK5l" node="7jRNnvCeI3A" resolve="getModel" />
                      <node concept="3cmrfG" id="7jRNnvCh3JO" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="3clFbT" id="5cWpYFRFhp0" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1gVbGN" id="7jRNnvCh4sR" role="3cqZAp">
                <node concept="17R0WA" id="7jRNnvCh6ad" role="1gVkn0">
                  <node concept="Xl_RD" id="7jRNnvCh6X2" role="3uHU7w">
                    <property role="Xl_RC" value="simple.solution1.model1" />
                  </node>
                  <node concept="2OqwBi" id="7jRNnvCh5vD" role="3uHU7B">
                    <node concept="37vLTw" id="7jRNnvCh51p" role="2Oq$k0">
                      <ref role="3cqZAo" node="7jRNnvCh24i" resolve="simpleModel" />
                    </node>
                    <node concept="LkI2h" id="7jRNnvCh64N" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="1gVbGN" id="7jRNnvCh7FC" role="3cqZAp">
                <node concept="17R0WA" id="7jRNnvChizD" role="1gVkn0">
                  <node concept="3cmrfG" id="7jRNnvChiBW" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="2OqwBi" id="7jRNnvChatE" role="3uHU7B">
                    <node concept="2OqwBi" id="7jRNnvCh8J0" role="2Oq$k0">
                      <node concept="37vLTw" id="7jRNnvCh8gw" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvCh24i" resolve="simpleModel" />
                      </node>
                      <node concept="2RRcyG" id="7jRNnvCh9qx" role="2OqNvi" />
                    </node>
                    <node concept="34oBXx" id="7jRNnvChdFA" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="Aop38Ilcx1" role="3cqZAp">
                <node concept="3cpWsn" id="Aop38Ilcx2" role="3cpWs9">
                  <property role="TrG5h" value="simpleModelAsSmodel" />
                  <node concept="3uibUv" id="Aop38Ile6_" role="1tU5fm">
                    <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                  </node>
                  <node concept="37vLTw" id="Aop38IldBR" role="33vP2m">
                    <ref role="3cqZAo" node="7jRNnvCh24i" resolve="simpleModel" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7jRNnvChlZL" role="3cqZAp">
                <node concept="3cpWsn" id="7jRNnvChlZO" role="3cpWs9">
                  <property role="TrG5h" value="enumClass" />
                  <node concept="3Tqbb2" id="7jRNnvChlZJ" role="1tU5fm">
                    <ref role="ehGHo" to="tpee:fKQs72_" resolve="EnumClass" />
                  </node>
                  <node concept="1PxgMI" id="7jRNnvCho92" role="33vP2m">
                    <node concept="chp4Y" id="7jRNnvChomN" role="3oSUPX">
                      <ref role="cht4Q" to="tpee:fKQs72_" resolve="EnumClass" />
                    </node>
                    <node concept="2OqwBi" id="7jRNnvChk3H" role="1m5AlR">
                      <node concept="37vLTw" id="Aop38IldTg" role="2Oq$k0">
                        <ref role="3cqZAo" node="Aop38Ilcx2" resolve="simpleModelAsSmodel" />
                      </node>
                      <node concept="AQDAd" id="7jRNnvChkK2" role="2OqNvi">
                        <ref role="37wK5l" node="nkanButqCU" resolve="getRoot" />
                        <node concept="35c_gC" id="7jRNnvChl0R" role="37wK5m">
                          <ref role="35c_gD" to="tpee:fKQs72_" resolve="EnumClass" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3vlDli" id="5cWpYFRHdO8" role="3cqZAp">
                <node concept="Xl_RD" id="5cWpYFRHivY" role="3tpDZB">
                  <property role="Xl_RC" value="HowGood" />
                </node>
                <node concept="2OqwBi" id="5cWpYFRHfX8" role="3tpDZA">
                  <node concept="37vLTw" id="5cWpYFRHfdF" role="2Oq$k0">
                    <ref role="3cqZAo" node="7jRNnvChlZO" resolve="enumClass" />
                  </node>
                  <node concept="3TrcHB" id="5cWpYFRHPOv" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="3vlDli" id="5cWpYFRHjgV" role="3cqZAp">
                <node concept="2OqwBi" id="5cWpYFRHraO" role="3tpDZA">
                  <node concept="2OqwBi" id="5cWpYFRHjgX" role="2Oq$k0">
                    <node concept="37vLTw" id="5cWpYFRHjgY" role="2Oq$k0">
                      <ref role="3cqZAo" node="7jRNnvChlZO" resolve="enumClass" />
                    </node>
                    <node concept="3Tsc0h" id="5cWpYFRHllC" role="2OqNvi">
                      <ref role="3TtcxE" to="tpee:fKQtgeG" resolve="enumConstant" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="5cWpYFRHNtZ" role="2OqNvi" />
                </node>
                <node concept="3cmrfG" id="5cWpYFRHQzO" role="3tpDZB">
                  <property role="3cmrfH" value="3" />
                </node>
              </node>
              <node concept="3vlDli" id="5cWpYFRHQLI" role="3cqZAp">
                <node concept="2OqwBi" id="5cWpYFRHZgB" role="3tpDZA">
                  <node concept="1y4W85" id="5cWpYFRHYgT" role="2Oq$k0">
                    <node concept="3cmrfG" id="5cWpYFRHYIR" role="1y58nS">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="5cWpYFRHQLK" role="1y566C">
                      <node concept="37vLTw" id="5cWpYFRHQLL" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvChlZO" resolve="enumClass" />
                      </node>
                      <node concept="3Tsc0h" id="5cWpYFRHQLM" role="2OqNvi">
                        <ref role="3TtcxE" to="tpee:fKQtgeG" resolve="enumConstant" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrcHB" id="5cWpYFRI0Oe" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="Xl_RD" id="5cWpYFRI1lK" role="3tpDZB">
                  <property role="Xl_RC" value="GOOD" />
                </node>
              </node>
              <node concept="3vlDli" id="5cWpYFRI2q1" role="3cqZAp">
                <node concept="2OqwBi" id="5cWpYFRI2q2" role="3tpDZA">
                  <node concept="1y4W85" id="5cWpYFRI2q3" role="2Oq$k0">
                    <node concept="3cmrfG" id="5cWpYFRI2q4" role="1y58nS">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="5cWpYFRI2q5" role="1y566C">
                      <node concept="37vLTw" id="5cWpYFRI2q6" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvChlZO" resolve="enumClass" />
                      </node>
                      <node concept="3Tsc0h" id="5cWpYFRI2q7" role="2OqNvi">
                        <ref role="3TtcxE" to="tpee:fKQtgeG" resolve="enumConstant" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrcHB" id="5cWpYFRI2q8" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="Xl_RD" id="5cWpYFRI2q9" role="3tpDZB">
                  <property role="Xl_RC" value="LESSGOOD" />
                </node>
              </node>
              <node concept="3vlDli" id="5cWpYFRI2Gp" role="3cqZAp">
                <node concept="2OqwBi" id="5cWpYFRI2Gq" role="3tpDZA">
                  <node concept="1y4W85" id="5cWpYFRI2Gr" role="2Oq$k0">
                    <node concept="3cmrfG" id="5cWpYFRI2Gs" role="1y58nS">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="2OqwBi" id="5cWpYFRI2Gt" role="1y566C">
                      <node concept="37vLTw" id="5cWpYFRI2Gu" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvChlZO" resolve="enumClass" />
                      </node>
                      <node concept="3Tsc0h" id="5cWpYFRI2Gv" role="2OqNvi">
                        <ref role="3TtcxE" to="tpee:fKQtgeG" resolve="enumConstant" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrcHB" id="5cWpYFRI2Gw" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="Xl_RD" id="5cWpYFRI2Gx" role="3tpDZB">
                  <property role="Xl_RC" value="SUBOPTIMAL" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="Aop38Ilay2" role="ukAjM">
            <node concept="37vLTw" id="Aop38Il9Yb" role="2Oq$k0">
              <ref role="3cqZAo" node="7jRNnvCgIKm" resolve="mpsProject" />
            </node>
            <node concept="liA8E" id="Aop38Ilb5U" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5cWpYFRI4hT" role="3cqZAp" />
        <node concept="3SKdUt" id="5cWpYFRI6qO" role="3cqZAp">
          <node concept="1PaTwC" id="5cWpYFRI6qP" role="1aUNEU">
            <node concept="3oM_SD" id="5cWpYFRI6qQ" role="1PaTwD">
              <property role="3oM_SC" value="verify" />
            </node>
            <node concept="3oM_SD" id="5cWpYFRI70g" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="5cWpYFRI70r" role="1PaTwD">
              <property role="3oM_SC" value="file" />
            </node>
            <node concept="3oM_SD" id="5cWpYFRI70B" role="1PaTwD">
              <property role="3oM_SC" value="exits" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5cWpYFRIcjc" role="3cqZAp">
          <node concept="3cpWsn" id="5cWpYFRIcjd" role="3cpWs9">
            <property role="TrG5h" value="modelixRootDir" />
            <node concept="3uibUv" id="5cWpYFRIcje" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2OqwBi" id="5cWpYFRIcjf" role="33vP2m">
              <node concept="2OqwBi" id="5cWpYFRIcjg" role="2Oq$k0">
                <node concept="37vLTw" id="5cWpYFRIcjh" role="2Oq$k0">
                  <ref role="3cqZAo" node="5yNJPA6tkqm" resolve="referenceDir" />
                </node>
                <node concept="liA8E" id="5cWpYFRIcji" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~File.getParentFile()" resolve="getParentFile" />
                </node>
              </node>
              <node concept="liA8E" id="5cWpYFRIcjj" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.getParentFile()" resolve="getParentFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5cWpYFRIcjk" role="3cqZAp">
          <node concept="3cpWsn" id="5cWpYFRIcjl" role="3cpWs9">
            <property role="TrG5h" value="buildDir" />
            <node concept="3uibUv" id="5cWpYFRIcjm" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="5cWpYFRIcjn" role="33vP2m">
              <node concept="1pGfFk" id="5cWpYFRIcjo" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                <node concept="37vLTw" id="5cWpYFRIcjp" role="37wK5m">
                  <ref role="3cqZAo" node="5cWpYFRIcjd" resolve="modelixRootDir" />
                </node>
                <node concept="Xl_RD" id="5cWpYFRIcjq" role="37wK5m">
                  <property role="Xl_RC" value="build" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5cWpYFRIcjr" role="3cqZAp">
          <node concept="3cpWsn" id="5cWpYFRIcjs" role="3cpWs9">
            <property role="TrG5h" value="integrationTests" />
            <node concept="3uibUv" id="5cWpYFRIcjt" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="5cWpYFRIcju" role="33vP2m">
              <node concept="1pGfFk" id="5cWpYFRIcjv" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                <node concept="37vLTw" id="5cWpYFRIcjw" role="37wK5m">
                  <ref role="3cqZAo" node="5cWpYFRIcjl" resolve="buildDir" />
                </node>
                <node concept="Xl_RD" id="5cWpYFRIcjx" role="37wK5m">
                  <property role="Xl_RC" value="integrationTests" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5cWpYFRI8pg" role="3cqZAp">
          <node concept="3cpWsn" id="5cWpYFRI8ph" role="3cpWs9">
            <property role="TrG5h" value="modelFile" />
            <node concept="3uibUv" id="5cWpYFRI8pi" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="5cWpYFRIkPX" role="33vP2m">
              <node concept="1pGfFk" id="5cWpYFRIkLS" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                <node concept="2ShNRf" id="5cWpYFRIktc" role="37wK5m">
                  <node concept="1pGfFk" id="5cWpYFRIkp7" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                    <node concept="2ShNRf" id="5cWpYFRIk55" role="37wK5m">
                      <node concept="1pGfFk" id="5cWpYFRIk10" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                        <node concept="2ShNRf" id="5cWpYFRI98I" role="37wK5m">
                          <node concept="1pGfFk" id="5cWpYFRIid2" role="2ShVmc">
                            <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                            <node concept="37vLTw" id="5cWpYFRIimN" role="37wK5m">
                              <ref role="3cqZAo" node="5cWpYFRIcjs" resolve="integrationTests" />
                            </node>
                            <node concept="Xl_RD" id="5cWpYFRIiur" role="37wK5m">
                              <property role="Xl_RC" value="SimpleProjectD" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="5cWpYFRIkeg" role="37wK5m">
                          <property role="Xl_RC" value="simple.solution1" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="5cWpYFRIkC1" role="37wK5m">
                      <property role="Xl_RC" value="models" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="5cWpYFRIl1M" role="37wK5m">
                  <property role="Xl_RC" value="simple.solution1.model1.mps" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="5cWpYFRIm3U" role="3cqZAp">
          <node concept="2OqwBi" id="5cWpYFRInC0" role="1gVkn0">
            <node concept="37vLTw" id="5cWpYFRIn14" role="2Oq$k0">
              <ref role="3cqZAo" node="5cWpYFRI8ph" resolve="modelFile" />
            </node>
            <node concept="liA8E" id="5cWpYFRIofC" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~File.exists()" resolve="exists" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5cWpYFRIl6o" role="3cqZAp" />
        <node concept="3cpWs6" id="7jRNnvCgIPY" role="3cqZAp">
          <node concept="2YIFZM" id="7jRNnvCgIPZ" role="3cqZAk">
            <ref role="1Pybhc" node="5yNJPA6btY7" resolve="TestResult" />
            <ref role="37wK5l" node="5yNJPA6trVb" resolve="ok" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7jRNnvCgED7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7jRNnvCgED8" role="jymVt" />
    <node concept="3uibUv" id="7jRNnvCgED9" role="1zkMxy">
      <ref role="3uigEE" node="5yNJPA6tjxd" resolve="IntegrationTest" />
    </node>
  </node>
  <node concept="312cEu" id="7jRNnvChqK5">
    <property role="TrG5h" value="ModuleCanBeCopiedFromTheCloudToLocalProjectAndSyncedTest" />
    <property role="3GE5qa" value="tests" />
    <node concept="3Tm1VV" id="7jRNnvChqK6" role="1B3o_S" />
    <node concept="3clFbW" id="7jRNnvChqK7" role="jymVt">
      <node concept="37vLTG" id="7jRNnvChqK8" role="3clF46">
        <property role="TrG5h" value="referenceDir" />
        <node concept="3uibUv" id="7jRNnvChqK9" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="37vLTG" id="7jRNnvChqKa" role="3clF46">
        <property role="TrG5h" value="environment" />
        <node concept="3uibUv" id="7jRNnvChqKb" role="1tU5fm">
          <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
        </node>
      </node>
      <node concept="3cqZAl" id="7jRNnvChqKc" role="3clF45" />
      <node concept="3Tm1VV" id="7jRNnvChqKd" role="1B3o_S" />
      <node concept="3clFbS" id="7jRNnvChqKe" role="3clF47">
        <node concept="XkiVB" id="7jRNnvChqKf" role="3cqZAp">
          <ref role="37wK5l" node="5yNJPA6tklF" resolve="IntegrationTest" />
          <node concept="37vLTw" id="7jRNnvChqKg" role="37wK5m">
            <ref role="3cqZAo" node="7jRNnvChqK8" resolve="referenceDir" />
          </node>
          <node concept="37vLTw" id="7jRNnvChqKh" role="37wK5m">
            <ref role="3cqZAo" node="7jRNnvChqKa" resolve="environment" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7jRNnvChqKi" role="jymVt" />
    <node concept="3clFb_" id="7jRNnvChqKj" role="jymVt">
      <property role="TrG5h" value="logic" />
      <node concept="3Tm1VV" id="7jRNnvChqKk" role="1B3o_S" />
      <node concept="3uibUv" id="7jRNnvChqKl" role="3clF45">
        <ref role="3uigEE" node="5yNJPA6btY7" resolve="TestResult" />
      </node>
      <node concept="3uibUv" id="7jRNnvChqKm" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="3clFbS" id="7jRNnvChqKn" role="3clF47">
        <node concept="3cpWs8" id="7jRNnvChqKo" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvChqKp" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <node concept="3uibUv" id="7jRNnvChqKq" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="1rXfSq" id="7jRNnvChqKr" role="33vP2m">
              <ref role="37wK5l" node="5yNJPA6tpld" resolve="openProject" />
              <node concept="Xl_RD" id="7jRNnvChqKs" role="37wK5m">
                <property role="Xl_RC" value="SimpleProjectE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvChqKt" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvChqKu" role="3cpWs9">
            <property role="TrG5h" value="pbc" />
            <node concept="3uibUv" id="7jRNnvChqKv" role="1tU5fm">
              <ref role="3uigEE" to="nhvc:7f6Tb6nxCKP" resolve="PersistedBindingConfiguration" />
            </node>
            <node concept="2YIFZM" id="7jRNnvChqKw" role="33vP2m">
              <ref role="1Pybhc" to="nhvc:7f6Tb6nxCKP" resolve="PersistedBindingConfiguration" />
              <ref role="37wK5l" to="nhvc:6JwgQ7URldI" resolve="getInstance" />
              <node concept="37vLTw" id="7jRNnvChqKx" role="37wK5m">
                <ref role="3cqZAo" node="7jRNnvChqKp" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="7jRNnvChqKy" role="3cqZAp">
          <node concept="2OqwBi" id="7jRNnvChqKz" role="1gVkn0">
            <node concept="37vLTw" id="7jRNnvChqK$" role="2Oq$k0">
              <ref role="3cqZAo" node="7jRNnvChqKu" resolve="pbc" />
            </node>
            <node concept="liA8E" id="7jRNnvChqK_" role="2OqNvi">
              <ref role="37wK5l" to="nhvc:6JwgQ7URCLz" resolve="isEmpty" />
            </node>
          </node>
          <node concept="3cpWs3" id="7jRNnvChqKA" role="1gVpfI">
            <node concept="2OqwBi" id="7jRNnvChqKB" role="3uHU7w">
              <node concept="37vLTw" id="7jRNnvChqKC" role="2Oq$k0">
                <ref role="3cqZAo" node="7jRNnvChqKu" resolve="pbc" />
              </node>
              <node concept="liA8E" id="7jRNnvChqKD" role="2OqNvi">
                <ref role="37wK5l" to="nhvc:6JwgQ7UW22M" resolve="describeState" />
              </node>
            </node>
            <node concept="Xl_RD" id="7jRNnvChqKE" role="3uHU7B">
              <property role="Xl_RC" value="The PersistedBindingConfiguration is expected to be empty, it was " />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvChqKF" role="3cqZAp" />
        <node concept="3cpWs8" id="7jRNnvChqKG" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvChqKH" role="3cpWs9">
            <property role="TrG5h" value="defaultTreeId" />
            <node concept="3uibUv" id="7jRNnvChqKI" role="1tU5fm">
              <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
            </node>
            <node concept="2ShNRf" id="7jRNnvChqKJ" role="33vP2m">
              <node concept="1pGfFk" id="7jRNnvChqKK" role="2ShVmc">
                <ref role="37wK5l" to="xkhl:~TreeId.&lt;init&gt;(java.lang.String)" resolve="TreeId" />
                <node concept="Xl_RD" id="7jRNnvChqKL" role="37wK5m">
                  <property role="Xl_RC" value="default" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvChqKM" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvChqKN" role="3cpWs9">
            <property role="TrG5h" value="defaultBranchName" />
            <node concept="17QB3L" id="7jRNnvChqKO" role="1tU5fm" />
            <node concept="Xl_RD" id="7jRNnvChqKP" role="33vP2m">
              <property role="Xl_RC" value="master" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvChqKQ" role="3cqZAp" />
        <node concept="abc8K" id="7jRNnvChqKR" role="3cqZAp">
          <node concept="Xl_RD" id="7jRNnvChqKS" role="abp_N">
            <property role="Xl_RC" value="project " />
          </node>
          <node concept="2OqwBi" id="7jRNnvChqKT" role="abp_N">
            <node concept="37vLTw" id="7jRNnvChqKU" role="2Oq$k0">
              <ref role="3cqZAo" node="7jRNnvChqKp" resolve="mpsProject" />
            </node>
            <node concept="liA8E" id="7jRNnvChqKV" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getName()" resolve="getName" />
            </node>
          </node>
          <node concept="Xl_RD" id="7jRNnvChqKW" role="abp_N">
            <property role="Xl_RC" value=" opened" />
          </node>
        </node>
        <node concept="1gVbGN" id="7jRNnvChqKX" role="3cqZAp">
          <node concept="17R0WA" id="7jRNnvChqKY" role="1gVkn0">
            <node concept="3cmrfG" id="7jRNnvChqKZ" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="7jRNnvChqL0" role="3uHU7B">
              <node concept="2OqwBi" id="7jRNnvChqL1" role="2Oq$k0">
                <node concept="37vLTw" id="7jRNnvChqL2" role="2Oq$k0">
                  <ref role="3cqZAo" node="7jRNnvChqKp" resolve="mpsProject" />
                </node>
                <node concept="liA8E" id="7jRNnvChqL3" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~IProject.getProjectModules()" resolve="getProjectModules" />
                </node>
              </node>
              <node concept="liA8E" id="7jRNnvChqL4" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvChqL5" role="3cqZAp" />
        <node concept="3SKdUt" id="7jRNnvChqL6" role="3cqZAp">
          <node concept="1PaTwC" id="7jRNnvChqL7" role="1aUNEU">
            <node concept="3oM_SD" id="7jRNnvChqL8" role="1PaTwD">
              <property role="3oM_SC" value="start" />
            </node>
            <node concept="3oM_SD" id="7jRNnvChqL9" role="1PaTwD">
              <property role="3oM_SC" value="Modelix" />
            </node>
            <node concept="3oM_SD" id="7jRNnvChqLa" role="1PaTwD">
              <property role="3oM_SC" value="Server" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvChqLb" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvChqLc" role="3cpWs9">
            <property role="TrG5h" value="ms" />
            <node concept="3uibUv" id="7jRNnvChqLd" role="1tU5fm">
              <ref role="3uigEE" node="5yNJPA6tDKp" resolve="ModelixServerController" />
            </node>
            <node concept="1rXfSq" id="7jRNnvChqLe" role="33vP2m">
              <ref role="37wK5l" node="1QKKVBBCeoe" resolve="startModelixServer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvChqLf" role="3cqZAp">
          <node concept="2YIFZM" id="7jRNnvChqLg" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <node concept="3cmrfG" id="7jRNnvChqLh" role="37wK5m">
              <property role="3cmrfH" value="5000" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvChqLi" role="3cqZAp" />
        <node concept="3SKdUt" id="7jRNnvChqLj" role="3cqZAp">
          <node concept="1PaTwC" id="7jRNnvChqLk" role="1aUNEU">
            <node concept="3oM_SD" id="7jRNnvChqLl" role="1PaTwD">
              <property role="3oM_SC" value="add" />
            </node>
            <node concept="3oM_SD" id="7jRNnvChqLm" role="1PaTwD">
              <property role="3oM_SC" value="CloudRepository" />
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="7jRNnvChqLn" role="3cqZAp">
          <node concept="2OqwBi" id="7jRNnvChqLo" role="1gVkn0">
            <node concept="2OqwBi" id="7jRNnvChqLp" role="2Oq$k0">
              <node concept="2YIFZM" id="7jRNnvChqLq" role="2Oq$k0">
                <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="7jRNnvChqLr" role="2OqNvi">
                <ref role="37wK5l" to="csg2:1LVcV5KxBgM" resolve="getRepositories" />
              </node>
            </node>
            <node concept="1v1jN8" id="7jRNnvChqLs" role="2OqNvi" />
          </node>
          <node concept="3cpWs3" id="7jRNnvChqLt" role="1gVpfI">
            <node concept="Xl_RD" id="7jRNnvChqLu" role="3uHU7B">
              <property role="Xl_RC" value="Expected not to find CloudRepositories: " />
            </node>
            <node concept="2OqwBi" id="7jRNnvChqLv" role="3uHU7w">
              <node concept="2OqwBi" id="7jRNnvChqLw" role="2Oq$k0">
                <node concept="2YIFZM" id="7jRNnvChqLx" role="2Oq$k0">
                  <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                  <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                </node>
                <node concept="liA8E" id="7jRNnvChqLy" role="2OqNvi">
                  <ref role="37wK5l" to="csg2:1LVcV5KxBgM" resolve="getRepositories" />
                </node>
              </node>
              <node concept="ANE8D" id="7jRNnvChqLz" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvChqL$" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvChqL_" role="3cpWs9">
            <property role="TrG5h" value="cr" />
            <node concept="3uibUv" id="7jRNnvChqLA" role="1tU5fm">
              <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
            </node>
            <node concept="1rXfSq" id="7jRNnvChqLB" role="33vP2m">
              <ref role="37wK5l" node="1QKKVBBCC1x" resolve="addCloudRepository" />
            </node>
          </node>
        </node>
        <node concept="abc8K" id="5cWpYFRKKnH" role="3cqZAp">
          <node concept="Xl_RD" id="5cWpYFRKL$n" role="abp_N">
            <property role="Xl_RC" value="USING CR " />
          </node>
          <node concept="2OqwBi" id="5cWpYFRKMPL" role="abp_N">
            <node concept="37vLTw" id="5cWpYFRKMrt" role="2Oq$k0">
              <ref role="3cqZAo" node="7jRNnvChqL_" resolve="cr" />
            </node>
            <node concept="liA8E" id="5cWpYFRKNqQ" role="2OqNvi">
              <ref role="37wK5l" to="csg2:6aRQr1WQLS7" resolve="getBaseUrl" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvChqLC" role="3cqZAp">
          <node concept="2YIFZM" id="7jRNnvChqLD" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <node concept="3cmrfG" id="7jRNnvChqLE" role="37wK5m">
              <property role="3cmrfH" value="5000" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvChqLF" role="3cqZAp" />
        <node concept="3SKdUt" id="Aop38IeA2g" role="3cqZAp">
          <node concept="1PaTwC" id="Aop38IeA2h" role="1aUNEU">
            <node concept="3oM_SD" id="Aop38IeA2i" role="1PaTwD">
              <property role="3oM_SC" value="add" />
            </node>
            <node concept="3oM_SD" id="Aop38IeA2j" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="Aop38IeA2k" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="Aop38IeA2l" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="Aop38IeA2m" role="1PaTwD">
              <property role="3oM_SC" value="cloud" />
            </node>
            <node concept="3oM_SD" id="Aop38IeA2n" role="1PaTwD">
              <property role="3oM_SC" value="server," />
            </node>
            <node concept="3oM_SD" id="Aop38IeA2o" role="1PaTwD">
              <property role="3oM_SC" value="loading" />
            </node>
            <node concept="3oM_SD" id="Aop38IeA2p" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="Aop38IeA2q" role="1PaTwD">
              <property role="3oM_SC" value="dump" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Aop38IeA2r" role="3cqZAp">
          <node concept="1rXfSq" id="Aop38IeA2s" role="3clFbG">
            <ref role="37wK5l" node="7jRNnvC9m0y" resolve="loadJsonDumpOnCloudServer" />
            <node concept="37vLTw" id="Aop38IeA2t" role="37wK5m">
              <ref role="3cqZAo" node="7jRNnvChqKH" resolve="defaultTreeId" />
            </node>
            <node concept="37vLTw" id="Aop38IeA2u" role="37wK5m">
              <ref role="3cqZAo" node="7jRNnvChqKN" resolve="defaultBranchName" />
            </node>
            <node concept="Xl_RD" id="Aop38IeA2v" role="37wK5m">
              <property role="Xl_RC" value="dump5b" />
            </node>
            <node concept="2OqwBi" id="Aop38IeA2w" role="37wK5m">
              <node concept="37vLTw" id="Aop38IeA2x" role="2Oq$k0">
                <ref role="3cqZAo" node="7jRNnvChqKp" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="Aop38IeA2y" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Aop38IeA2z" role="3cqZAp">
          <node concept="2YIFZM" id="Aop38IeA2$" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <node concept="3cmrfG" id="Aop38IeA2_" role="37wK5m">
              <property role="3cmrfH" value="1000" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Aop38IeA2A" role="3cqZAp" />
        <node concept="3SKdUt" id="Aop38IeA2B" role="3cqZAp">
          <node concept="1PaTwC" id="Aop38IeA2C" role="1aUNEU">
            <node concept="3oM_SD" id="Aop38IeA2D" role="1PaTwD">
              <property role="3oM_SC" value="verify" />
            </node>
            <node concept="3oM_SD" id="Aop38IeA2E" role="1PaTwD">
              <property role="3oM_SC" value="elements" />
            </node>
            <node concept="3oM_SD" id="Aop38IeA2F" role="1PaTwD">
              <property role="3oM_SC" value="where" />
            </node>
            <node concept="3oM_SD" id="Aop38IeA2G" role="1PaTwD">
              <property role="3oM_SC" value="loaded" />
            </node>
            <node concept="3oM_SD" id="Aop38IeA2H" role="1PaTwD">
              <property role="3oM_SC" value="correctly" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Aop38IeA2I" role="3cqZAp">
          <node concept="3cpWsn" id="Aop38IeA2J" role="3cpWs9">
            <property role="TrG5h" value="actualJsonDump1" />
            <node concept="3uibUv" id="Aop38IeA2K" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
            <node concept="2OqwBi" id="Aop38IeA2L" role="33vP2m">
              <node concept="37vLTw" id="Aop38IeA2M" role="2Oq$k0">
                <ref role="3cqZAo" node="7jRNnvChqLc" resolve="ms" />
              </node>
              <node concept="liA8E" id="Aop38IeA2N" role="2OqNvi">
                <ref role="37wK5l" node="7JjSHvQ43L7" resolve="jsonDump" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Aop38IeA2O" role="3cqZAp">
          <node concept="3cpWsn" id="Aop38IeA2P" role="3cpWs9">
            <property role="TrG5h" value="expectedJsonDump1" />
            <node concept="3uibUv" id="Aop38IeA2Q" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
            <node concept="1rXfSq" id="Aop38IeA2R" role="33vP2m">
              <ref role="37wK5l" node="7JjSHvQ4HQK" resolve="loadJsonDump" />
              <node concept="Xl_RD" id="Aop38IeA2S" role="37wK5m">
                <property role="Xl_RC" value="dump6" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Aop38IeA2T" role="3cqZAp">
          <node concept="1rXfSq" id="Aop38IeA2U" role="3clFbG">
            <ref role="37wK5l" node="7JjSHvQ4V3I" resolve="assertJsonsAreEquals" />
            <node concept="37vLTw" id="Aop38IeA2V" role="37wK5m">
              <ref role="3cqZAo" node="Aop38IeA2P" resolve="expectedJsonDump1" />
            </node>
            <node concept="37vLTw" id="Aop38IeA2W" role="37wK5m">
              <ref role="3cqZAo" node="Aop38IeA2J" resolve="actualJsonDump1" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvChqLZ" role="3cqZAp" />
        <node concept="3SKdUt" id="7jRNnvChqM0" role="3cqZAp">
          <node concept="1PaTwC" id="7jRNnvChqM1" role="1aUNEU">
            <node concept="3oM_SD" id="7jRNnvChqM2" role="1PaTwD">
              <property role="3oM_SC" value="copy" />
            </node>
            <node concept="3oM_SD" id="7jRNnvChqM3" role="1PaTwD">
              <property role="3oM_SC" value="it" />
            </node>
            <node concept="3oM_SD" id="7jRNnvChqM4" role="1PaTwD">
              <property role="3oM_SC" value="locally" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvChqM5" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvChqM6" role="3cpWs9">
            <property role="TrG5h" value="treeInRepository" />
            <node concept="3uibUv" id="7jRNnvChqM7" role="1tU5fm">
              <ref role="3uigEE" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
            </node>
            <node concept="2ShNRf" id="7jRNnvChqM8" role="33vP2m">
              <node concept="1pGfFk" id="7jRNnvChqM9" role="2ShVmc">
                <ref role="37wK5l" to="csg2:3i6diw3mtOf" resolve="TreeInRepository" />
                <node concept="37vLTw" id="7jRNnvChqMa" role="37wK5m">
                  <ref role="3cqZAo" node="7jRNnvChqL_" resolve="cr" />
                </node>
                <node concept="37vLTw" id="7jRNnvChqMb" role="37wK5m">
                  <ref role="3cqZAo" node="7jRNnvChqKH" resolve="defaultTreeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvChqMc" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvChqMd" role="3cpWs9">
            <property role="TrG5h" value="moduleCloudNodeId" />
            <node concept="3cpWsb" id="7jRNnvChqMe" role="1tU5fm" />
            <node concept="1rXfSq" id="7jRNnvChqMf" role="33vP2m">
              <ref role="37wK5l" node="7jRNnvCdVdw" resolve="computeOnCloudRepository" />
              <node concept="37vLTw" id="7jRNnvChqMg" role="37wK5m">
                <ref role="3cqZAo" node="7jRNnvChqKH" resolve="defaultTreeId" />
              </node>
              <node concept="37vLTw" id="7jRNnvChqMh" role="37wK5m">
                <ref role="3cqZAo" node="7jRNnvChqKN" resolve="defaultBranchName" />
              </node>
              <node concept="1bVj0M" id="7jRNnvChqMi" role="37wK5m">
                <node concept="37vLTG" id="7jRNnvChqMj" role="1bW2Oz">
                  <property role="TrG5h" value="rt" />
                  <node concept="3uibUv" id="7jRNnvChqMk" role="1tU5fm">
                    <ref role="3uigEE" to="jks5:~IReadTransaction" resolve="IReadTransaction" />
                  </node>
                </node>
                <node concept="3clFbS" id="7jRNnvChqMl" role="1bW5cS">
                  <node concept="3clFbF" id="7jRNnvChqMm" role="3cqZAp">
                    <node concept="2OqwBi" id="7jRNnvChqMn" role="3clFbG">
                      <node concept="37vLTw" id="7jRNnvChqMo" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvChqMj" resolve="rt" />
                      </node>
                      <node concept="AQDAd" id="7jRNnvChqMp" role="2OqNvi">
                        <ref role="37wK5l" node="7jRNnvC8RCE" resolve="requireRootChildByName" />
                        <node concept="Xl_RD" id="7jRNnvChqMq" role="37wK5m">
                          <property role="Xl_RC" value="simple.solution1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvChOTM" role="3cqZAp">
          <node concept="2OqwBi" id="7jRNnvChQtr" role="3clFbG">
            <node concept="2ShNRf" id="7jRNnvChOTI" role="2Oq$k0">
              <node concept="HV5vD" id="7jRNnvChQmh" role="2ShVmc">
                <ref role="HV5vE" to="csg2:i0AVAFXWm5" resolve="ModelCloudImporter" />
              </node>
            </node>
            <node concept="liA8E" id="7jRNnvChQRz" role="2OqNvi">
              <ref role="37wK5l" to="csg2:7jRNnvChFSv" resolve="checkoutAndSync" />
              <node concept="37vLTw" id="7jRNnvChR0n" role="37wK5m">
                <ref role="3cqZAo" node="7jRNnvChqM6" resolve="treeInRepository" />
              </node>
              <node concept="37vLTw" id="7jRNnvChTnC" role="37wK5m">
                <ref role="3cqZAo" node="7jRNnvChqKp" resolve="mpsProject" />
              </node>
              <node concept="37vLTw" id="7jRNnvChUam" role="37wK5m">
                <ref role="3cqZAo" node="7jRNnvChqMd" resolve="moduleCloudNodeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvChqME" role="3cqZAp" />
        <node concept="3SKdUt" id="7jRNnvChqMF" role="3cqZAp">
          <node concept="1PaTwC" id="7jRNnvChqMG" role="1aUNEU">
            <node concept="3oM_SD" id="7jRNnvChqMH" role="1PaTwD">
              <property role="3oM_SC" value="verify" />
            </node>
            <node concept="3oM_SD" id="7jRNnvChqMI" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7jRNnvChqMJ" role="1PaTwD">
              <property role="3oM_SC" value="local" />
            </node>
            <node concept="3oM_SD" id="7jRNnvChqMK" role="1PaTwD">
              <property role="3oM_SC" value="copy" />
            </node>
            <node concept="3oM_SD" id="7jRNnvChqML" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="7jRNnvChqMM" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="7jRNnvChqMN" role="1PaTwD">
              <property role="3oM_SC" value="expected" />
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="5cWpYFRIM7_" role="3cqZAp">
          <node concept="1QHqEC" id="5cWpYFRIM7A" role="1QHqEI">
            <node concept="3clFbS" id="5cWpYFRIM7B" role="1bW5cS">
              <node concept="1gVbGN" id="5cWpYFRIM7C" role="3cqZAp">
                <node concept="17R0WA" id="5cWpYFRIM7D" role="1gVkn0">
                  <node concept="3cmrfG" id="5cWpYFRIM7E" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="5cWpYFRIM7F" role="3uHU7B">
                    <node concept="2OqwBi" id="5cWpYFRIM7G" role="2Oq$k0">
                      <node concept="37vLTw" id="5cWpYFRIM7H" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvChqKp" resolve="mpsProject" />
                      </node>
                      <node concept="liA8E" id="5cWpYFRIM7I" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~IProject.getProjectModules()" resolve="getProjectModules" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5cWpYFRIM7J" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="5cWpYFRIM7K" role="3cqZAp">
                <node concept="3cpWsn" id="5cWpYFRIM7L" role="3cpWs9">
                  <property role="TrG5h" value="simpleSolution1" />
                  <node concept="3uibUv" id="5cWpYFRIM7M" role="1tU5fm">
                    <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                  </node>
                  <node concept="2OqwBi" id="5cWpYFRIM7N" role="33vP2m">
                    <node concept="2OqwBi" id="5cWpYFRIM7O" role="2Oq$k0">
                      <node concept="37vLTw" id="5cWpYFRIM7P" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvChqKp" resolve="mpsProject" />
                      </node>
                      <node concept="liA8E" id="5cWpYFRIM7Q" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~IProject.getProjectModules()" resolve="getProjectModules" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5cWpYFRIM7R" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                      <node concept="3cmrfG" id="5cWpYFRIM7S" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1gVbGN" id="5cWpYFRIM7T" role="3cqZAp">
                <node concept="17R0WA" id="5cWpYFRIM7U" role="1gVkn0">
                  <node concept="Xl_RD" id="5cWpYFRIM7V" role="3uHU7w">
                    <property role="Xl_RC" value="simple.solution1" />
                  </node>
                  <node concept="2OqwBi" id="5cWpYFRIM7W" role="3uHU7B">
                    <node concept="37vLTw" id="5cWpYFRIM7X" role="2Oq$k0">
                      <ref role="3cqZAo" node="5cWpYFRIM7L" resolve="simpleSolution1" />
                    </node>
                    <node concept="liA8E" id="5cWpYFRIM7Y" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs3" id="5cWpYFRIM7Z" role="1gVpfI">
                  <node concept="2OqwBi" id="5cWpYFRIM80" role="3uHU7w">
                    <node concept="37vLTw" id="5cWpYFRIM81" role="2Oq$k0">
                      <ref role="3cqZAo" node="5cWpYFRIM7L" resolve="simpleSolution1" />
                    </node>
                    <node concept="liA8E" id="5cWpYFRIM82" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="5cWpYFRIM83" role="3uHU7B">
                    <property role="Xl_RC" value="Module expected to be named simple.solution1 but it was named " />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5cWpYFRIM84" role="3cqZAp">
                <node concept="2OqwBi" id="5cWpYFRIM85" role="3clFbG">
                  <node concept="37vLTw" id="5cWpYFRIM86" role="2Oq$k0">
                    <ref role="3cqZAo" node="5cWpYFRIM7L" resolve="simpleSolution1" />
                  </node>
                  <node concept="AQDAd" id="5cWpYFRIM87" role="2OqNvi">
                    <ref role="37wK5l" node="7jRNnvCeAHO" resolve="assertNModels" />
                    <node concept="3cmrfG" id="5cWpYFRIM88" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="3clFbT" id="5cWpYFRIM89" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="5cWpYFRIM8a" role="3cqZAp">
                <node concept="3cpWsn" id="5cWpYFRIM8b" role="3cpWs9">
                  <property role="TrG5h" value="simpleModel" />
                  <node concept="H_c77" id="5cWpYFRIM8c" role="1tU5fm" />
                  <node concept="2OqwBi" id="5cWpYFRIM8d" role="33vP2m">
                    <node concept="37vLTw" id="5cWpYFRIM8e" role="2Oq$k0">
                      <ref role="3cqZAo" node="5cWpYFRIM7L" resolve="simpleSolution1" />
                    </node>
                    <node concept="AQDAd" id="5cWpYFRIM8f" role="2OqNvi">
                      <ref role="37wK5l" node="7jRNnvCeI3A" resolve="getModel" />
                      <node concept="3cmrfG" id="5cWpYFRIM8g" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="3clFbT" id="5cWpYFRIM8h" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1gVbGN" id="5cWpYFRIM8i" role="3cqZAp">
                <node concept="17R0WA" id="5cWpYFRIM8j" role="1gVkn0">
                  <node concept="Xl_RD" id="5cWpYFRIM8k" role="3uHU7w">
                    <property role="Xl_RC" value="simple.solution1.model1" />
                  </node>
                  <node concept="2OqwBi" id="5cWpYFRIM8l" role="3uHU7B">
                    <node concept="37vLTw" id="5cWpYFRIM8m" role="2Oq$k0">
                      <ref role="3cqZAo" node="5cWpYFRIM8b" resolve="simpleModel" />
                    </node>
                    <node concept="LkI2h" id="5cWpYFRIM8n" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="1gVbGN" id="5cWpYFRIM8o" role="3cqZAp">
                <node concept="17R0WA" id="5cWpYFRIM8p" role="1gVkn0">
                  <node concept="3cmrfG" id="5cWpYFRIM8q" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="2OqwBi" id="5cWpYFRIM8r" role="3uHU7B">
                    <node concept="2OqwBi" id="5cWpYFRIM8s" role="2Oq$k0">
                      <node concept="37vLTw" id="5cWpYFRIM8t" role="2Oq$k0">
                        <ref role="3cqZAo" node="5cWpYFRIM8b" resolve="simpleModel" />
                      </node>
                      <node concept="2RRcyG" id="5cWpYFRIM8u" role="2OqNvi" />
                    </node>
                    <node concept="34oBXx" id="5cWpYFRIM8v" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="5cWpYFRIM8w" role="3cqZAp">
                <node concept="3cpWsn" id="5cWpYFRIM8x" role="3cpWs9">
                  <property role="TrG5h" value="simpleModelAsSmodel" />
                  <node concept="3uibUv" id="5cWpYFRIM8y" role="1tU5fm">
                    <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                  </node>
                  <node concept="37vLTw" id="5cWpYFRIM8z" role="33vP2m">
                    <ref role="3cqZAo" node="5cWpYFRIM8b" resolve="simpleModel" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="5cWpYFRK4Gt" role="3cqZAp">
                <node concept="3cpWsn" id="5cWpYFRK4Gu" role="3cpWs9">
                  <property role="TrG5h" value="myClass" />
                  <node concept="3Tqbb2" id="5cWpYFRK4Gv" role="1tU5fm">
                    <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
                  </node>
                  <node concept="1PxgMI" id="5cWpYFRK4Gw" role="33vP2m">
                    <node concept="chp4Y" id="5cWpYFRK55T" role="3oSUPX">
                      <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                    </node>
                    <node concept="2OqwBi" id="5cWpYFRK4Gy" role="1m5AlR">
                      <node concept="37vLTw" id="5cWpYFRK4Gz" role="2Oq$k0">
                        <ref role="3cqZAo" node="5cWpYFRIM8x" resolve="simpleModelAsSmodel" />
                      </node>
                      <node concept="AQDAd" id="5cWpYFRK4G$" role="2OqNvi">
                        <ref role="37wK5l" node="5cWpYFRKjMZ" resolve="getExactRoot" />
                        <node concept="35c_gC" id="5cWpYFRK4G_" role="37wK5m">
                          <ref role="35c_gD" to="tpee:fz12cDA" resolve="ClassConcept" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3vlDli" id="5cWpYFRK625" role="3cqZAp">
                <node concept="Xl_RD" id="5cWpYFRK6j3" role="3tpDZB">
                  <property role="Xl_RC" value="MyClass" />
                </node>
                <node concept="2OqwBi" id="5cWpYFRK7zL" role="3tpDZA">
                  <node concept="37vLTw" id="5cWpYFRK6Si" role="2Oq$k0">
                    <ref role="3cqZAo" node="5cWpYFRK4Gu" resolve="myClass" />
                  </node>
                  <node concept="3TrcHB" id="5cWpYFRK8Ex" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="3vlDli" id="5cWpYFRKaAw" role="3cqZAp">
                <node concept="3cmrfG" id="5cWpYFRKfsC" role="3tpDZB">
                  <property role="3cmrfH" value="1" />
                </node>
                <node concept="2OqwBi" id="5cWpYFRKe9j" role="3tpDZA">
                  <node concept="2OqwBi" id="5cWpYFRKb_f" role="2Oq$k0">
                    <node concept="37vLTw" id="5cWpYFRKaWh" role="2Oq$k0">
                      <ref role="3cqZAo" node="5cWpYFRK4Gu" resolve="myClass" />
                    </node>
                    <node concept="2qgKlT" id="5cWpYFRKdq$" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:4_LVZ3pC27C" resolve="fields" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="5cWpYFRKeWG" role="2OqNvi" />
                </node>
              </node>
              <node concept="3clFbH" id="5cWpYFRK4e3" role="3cqZAp" />
              <node concept="3cpWs8" id="5cWpYFRIM8$" role="3cqZAp">
                <node concept="3cpWsn" id="5cWpYFRIM8_" role="3cpWs9">
                  <property role="TrG5h" value="enumClass" />
                  <node concept="3Tqbb2" id="5cWpYFRIM8A" role="1tU5fm">
                    <ref role="ehGHo" to="tpee:fKQs72_" resolve="EnumClass" />
                  </node>
                  <node concept="1PxgMI" id="5cWpYFRIM8B" role="33vP2m">
                    <node concept="chp4Y" id="5cWpYFRIM8C" role="3oSUPX">
                      <ref role="cht4Q" to="tpee:fKQs72_" resolve="EnumClass" />
                    </node>
                    <node concept="2OqwBi" id="5cWpYFRIM8D" role="1m5AlR">
                      <node concept="37vLTw" id="5cWpYFRIM8E" role="2Oq$k0">
                        <ref role="3cqZAo" node="5cWpYFRIM8x" resolve="simpleModelAsSmodel" />
                      </node>
                      <node concept="AQDAd" id="5cWpYFRIM8F" role="2OqNvi">
                        <ref role="37wK5l" node="nkanButqCU" resolve="getRoot" />
                        <node concept="35c_gC" id="5cWpYFRIM8G" role="37wK5m">
                          <ref role="35c_gD" to="tpee:fKQs72_" resolve="EnumClass" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3vlDli" id="5cWpYFRIM8H" role="3cqZAp">
                <node concept="Xl_RD" id="5cWpYFRIM8I" role="3tpDZB">
                  <property role="Xl_RC" value="HowGood" />
                </node>
                <node concept="2OqwBi" id="5cWpYFRIM8J" role="3tpDZA">
                  <node concept="37vLTw" id="5cWpYFRIM8K" role="2Oq$k0">
                    <ref role="3cqZAo" node="5cWpYFRIM8_" resolve="enumClass" />
                  </node>
                  <node concept="3TrcHB" id="5cWpYFRIM8L" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="3vlDli" id="5cWpYFRIM8M" role="3cqZAp">
                <node concept="2OqwBi" id="5cWpYFRIM8N" role="3tpDZA">
                  <node concept="2OqwBi" id="5cWpYFRIM8O" role="2Oq$k0">
                    <node concept="37vLTw" id="5cWpYFRIM8P" role="2Oq$k0">
                      <ref role="3cqZAo" node="5cWpYFRIM8_" resolve="enumClass" />
                    </node>
                    <node concept="3Tsc0h" id="5cWpYFRIM8Q" role="2OqNvi">
                      <ref role="3TtcxE" to="tpee:fKQtgeG" resolve="enumConstant" />
                    </node>
                  </node>
                  <node concept="34oBXx" id="5cWpYFRIM8R" role="2OqNvi" />
                </node>
                <node concept="3cmrfG" id="5cWpYFRIM8S" role="3tpDZB">
                  <property role="3cmrfH" value="3" />
                </node>
              </node>
              <node concept="3vlDli" id="5cWpYFRIM8T" role="3cqZAp">
                <node concept="2OqwBi" id="5cWpYFRIM8U" role="3tpDZA">
                  <node concept="1y4W85" id="5cWpYFRIM8V" role="2Oq$k0">
                    <node concept="3cmrfG" id="5cWpYFRIM8W" role="1y58nS">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="5cWpYFRIM8X" role="1y566C">
                      <node concept="37vLTw" id="5cWpYFRIM8Y" role="2Oq$k0">
                        <ref role="3cqZAo" node="5cWpYFRIM8_" resolve="enumClass" />
                      </node>
                      <node concept="3Tsc0h" id="5cWpYFRIM8Z" role="2OqNvi">
                        <ref role="3TtcxE" to="tpee:fKQtgeG" resolve="enumConstant" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrcHB" id="5cWpYFRIM90" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="Xl_RD" id="5cWpYFRIM91" role="3tpDZB">
                  <property role="Xl_RC" value="GOOD" />
                </node>
              </node>
              <node concept="3vlDli" id="5cWpYFRIM92" role="3cqZAp">
                <node concept="2OqwBi" id="5cWpYFRIM93" role="3tpDZA">
                  <node concept="1y4W85" id="5cWpYFRIM94" role="2Oq$k0">
                    <node concept="3cmrfG" id="5cWpYFRIM95" role="1y58nS">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="5cWpYFRIM96" role="1y566C">
                      <node concept="37vLTw" id="5cWpYFRIM97" role="2Oq$k0">
                        <ref role="3cqZAo" node="5cWpYFRIM8_" resolve="enumClass" />
                      </node>
                      <node concept="3Tsc0h" id="5cWpYFRIM98" role="2OqNvi">
                        <ref role="3TtcxE" to="tpee:fKQtgeG" resolve="enumConstant" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrcHB" id="5cWpYFRIM99" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="Xl_RD" id="5cWpYFRIM9a" role="3tpDZB">
                  <property role="Xl_RC" value="LESSGOOD" />
                </node>
              </node>
              <node concept="3vlDli" id="5cWpYFRIM9b" role="3cqZAp">
                <node concept="2OqwBi" id="5cWpYFRIM9c" role="3tpDZA">
                  <node concept="1y4W85" id="5cWpYFRIM9d" role="2Oq$k0">
                    <node concept="3cmrfG" id="5cWpYFRIM9e" role="1y58nS">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="2OqwBi" id="5cWpYFRIM9f" role="1y566C">
                      <node concept="37vLTw" id="5cWpYFRIM9g" role="2Oq$k0">
                        <ref role="3cqZAo" node="5cWpYFRIM8_" resolve="enumClass" />
                      </node>
                      <node concept="3Tsc0h" id="5cWpYFRIM9h" role="2OqNvi">
                        <ref role="3TtcxE" to="tpee:fKQtgeG" resolve="enumConstant" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrcHB" id="5cWpYFRIM9i" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="Xl_RD" id="5cWpYFRIM9j" role="3tpDZB">
                  <property role="Xl_RC" value="SUBOPTIMAL" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5cWpYFRIM9k" role="ukAjM">
            <node concept="37vLTw" id="5cWpYFRIM9l" role="2Oq$k0">
              <ref role="3cqZAo" node="7jRNnvChqKp" resolve="mpsProject" />
            </node>
            <node concept="liA8E" id="5cWpYFRIM9m" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvCi0pr" role="3cqZAp" />
        <node concept="3SKdUt" id="7jRNnvCjdIw" role="3cqZAp">
          <node concept="1PaTwC" id="7jRNnvCjdIx" role="1aUNEU">
            <node concept="3oM_SD" id="7jRNnvCjdIy" role="1PaTwD">
              <property role="3oM_SC" value="When" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjdIz" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjdI$" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjdI_" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjdIA" role="1PaTwD">
              <property role="3oM_SC" value="change" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjdIB" role="1PaTwD">
              <property role="3oM_SC" value="locally," />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjdIC" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjdID" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjdIE" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjdIF" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjdIG" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjdIH" role="1PaTwD">
              <property role="3oM_SC" value="change" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjdII" role="1PaTwD">
              <property role="3oM_SC" value="also" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjdIJ" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjdIK" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjdIL" role="1PaTwD">
              <property role="3oM_SC" value="ModelixServer" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvCjdIM" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvCjdIN" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="effectiveMpsProject" />
            <node concept="3uibUv" id="7jRNnvCjdIO" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="37vLTw" id="7jRNnvCjdIP" role="33vP2m">
              <ref role="3cqZAo" node="7jRNnvChqKp" resolve="mpsProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvCjdIQ" role="3cqZAp">
          <node concept="2YIFZM" id="7jRNnvCjdIR" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeAndWait(java.lang.Runnable)" resolve="invokeAndWait" />
            <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
            <node concept="2ShNRf" id="7jRNnvCjdIS" role="37wK5m">
              <node concept="YeOm9" id="7jRNnvCjdIT" role="2ShVmc">
                <node concept="1Y3b0j" id="7jRNnvCjdIU" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="7jRNnvCjdIV" role="1B3o_S" />
                  <node concept="3clFb_" id="7jRNnvCjdIW" role="jymVt">
                    <property role="TrG5h" value="run" />
                    <node concept="3Tm1VV" id="7jRNnvCjdIX" role="1B3o_S" />
                    <node concept="3cqZAl" id="7jRNnvCjdIY" role="3clF45" />
                    <node concept="3clFbS" id="7jRNnvCjdIZ" role="3clF47">
                      <node concept="1QHqEO" id="7jRNnvCjdJ0" role="3cqZAp">
                        <node concept="1QHqEC" id="7jRNnvCjdJ1" role="1QHqEI">
                          <node concept="3clFbS" id="7jRNnvCjdJ2" role="1bW5cS">
                            <node concept="3vlDli" id="5cWpYFRLnxs" role="3cqZAp">
                              <node concept="Xl_RD" id="5cWpYFRLnJx" role="3tpDZB">
                                <property role="Xl_RC" value="SimpleProjectE" />
                              </node>
                              <node concept="2OqwBi" id="5cWpYFRLoC4" role="3tpDZA">
                                <node concept="37vLTw" id="5cWpYFRLoab" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7jRNnvCjdIN" resolve="effectiveMpsProject" />
                                </node>
                                <node concept="liA8E" id="5cWpYFRLoXT" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c3:~Project.getName()" resolve="getName" />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="7jRNnvCjdJ3" role="3cqZAp">
                              <node concept="3cpWsn" id="7jRNnvCjdJ4" role="3cpWs9">
                                <property role="TrG5h" value="model" />
                                <node concept="3uibUv" id="7jRNnvCjdJ5" role="1tU5fm">
                                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                </node>
                                <node concept="2OqwBi" id="7jRNnvCjdJ7" role="33vP2m">
                                  <node concept="37vLTw" id="5cWpYFRLmXw" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7jRNnvCjdIN" resolve="effectiveMpsProject" />
                                  </node>
                                  <node concept="AQDAd" id="5cWpYFRLNjR" role="2OqNvi">
                                    <ref role="37wK5l" node="5cWpYFRLM6f" resolve="getProjectModel" />
                                    <node concept="Xl_RD" id="7jRNnvCjdJb" role="37wK5m">
                                      <property role="Xl_RC" value="simple.solution1" />
                                    </node>
                                    <node concept="Xl_RD" id="7jRNnvCjdJc" role="37wK5m">
                                      <property role="Xl_RC" value="simple.solution1.model1" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="7jRNnvCjdJd" role="3cqZAp">
                              <node concept="3cpWsn" id="7jRNnvCjdJe" role="3cpWs9">
                                <property role="TrG5h" value="myClass" />
                                <node concept="3Tqbb2" id="7jRNnvCjdJf" role="1tU5fm">
                                  <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
                                </node>
                                <node concept="1PxgMI" id="7jRNnvCjdJg" role="33vP2m">
                                  <node concept="chp4Y" id="7jRNnvCjdJh" role="3oSUPX">
                                    <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                                  </node>
                                  <node concept="2OqwBi" id="7jRNnvCjdJi" role="1m5AlR">
                                    <node concept="37vLTw" id="7jRNnvCjdJj" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7jRNnvCjdJ4" resolve="model" />
                                    </node>
                                    <node concept="AQDAd" id="7jRNnvCjdJk" role="2OqNvi">
                                      <ref role="37wK5l" node="5i$4SBK2oGW" resolve="getRoot" />
                                      <node concept="Xl_RD" id="7jRNnvCjdJl" role="37wK5m">
                                        <property role="Xl_RC" value="MyClass" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="7jRNnvCjdJm" role="3cqZAp">
                              <node concept="37vLTI" id="7jRNnvCjdJn" role="3clFbG">
                                <node concept="Xl_RD" id="7jRNnvCjdJo" role="37vLTx">
                                  <property role="Xl_RC" value="MyClassBrilliantlyRenamed" />
                                </node>
                                <node concept="2OqwBi" id="7jRNnvCjdJp" role="37vLTJ">
                                  <node concept="37vLTw" id="7jRNnvCjdJq" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7jRNnvCjdJe" resolve="myClass" />
                                  </node>
                                  <node concept="3TrcHB" id="7jRNnvCjdJr" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="7jRNnvCjdJs" role="3cqZAp">
                              <node concept="2OqwBi" id="7jRNnvCjdJt" role="3clFbG">
                                <node concept="2OqwBi" id="7jRNnvCjdJu" role="2Oq$k0">
                                  <node concept="37vLTw" id="7jRNnvCjdJv" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7jRNnvCjdJe" resolve="myClass" />
                                  </node>
                                  <node concept="3Tsc0h" id="7jRNnvCjdJw" role="2OqNvi">
                                    <ref role="3TtcxE" to="tpee:4EqhHTp4Mw3" resolve="member" />
                                  </node>
                                </node>
                                <node concept="TSZUe" id="7jRNnvCjdJx" role="2OqNvi">
                                  <node concept="2c44tf" id="7jRNnvCjdJy" role="25WWJ7">
                                    <node concept="312cEg" id="7jRNnvCjdJz" role="2c44tc">
                                      <property role="TrG5h" value="addedField" />
                                      <node concept="3Tm6S6" id="7jRNnvCjdJ$" role="1B3o_S" />
                                      <node concept="17QB3L" id="7jRNnvCjdJ_" role="1tU5fm" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="7jRNnvCjdJA" role="ukAjM">
                          <node concept="37vLTw" id="7jRNnvCjdJB" role="2Oq$k0">
                            <ref role="3cqZAo" node="7jRNnvCjdIN" resolve="effectiveMpsProject" />
                          </node>
                          <node concept="liA8E" id="7jRNnvCjdJC" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="7jRNnvCjdJD" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvCjg08" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvCjg09" role="3cpWs9">
            <property role="TrG5h" value="actualJsonDump" />
            <node concept="3uibUv" id="7jRNnvCjg0a" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7jRNnvCjgFh" role="3cqZAp">
          <node concept="3cpWsn" id="7jRNnvCjgFi" role="3cpWs9">
            <property role="TrG5h" value="expectedJsonDump" />
            <node concept="3uibUv" id="7jRNnvCjgFj" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvCjdJE" role="3cqZAp">
          <node concept="37vLTI" id="7jRNnvCjdJF" role="3clFbG">
            <node concept="2OqwBi" id="7jRNnvCjdJG" role="37vLTx">
              <node concept="37vLTw" id="7jRNnvCjdJH" role="2Oq$k0">
                <ref role="3cqZAo" node="7jRNnvChqLc" resolve="ms" />
              </node>
              <node concept="liA8E" id="7jRNnvCjdJI" role="2OqNvi">
                <ref role="37wK5l" node="7JjSHvQ43L7" resolve="jsonDump" />
              </node>
            </node>
            <node concept="37vLTw" id="7jRNnvCjdJJ" role="37vLTJ">
              <ref role="3cqZAo" node="7jRNnvCjg09" resolve="actualJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvCjdJK" role="3cqZAp">
          <node concept="37vLTI" id="7jRNnvCjdJL" role="3clFbG">
            <node concept="1rXfSq" id="7jRNnvCjdJM" role="37vLTx">
              <ref role="37wK5l" node="7JjSHvQ4HQK" resolve="loadJsonDump" />
              <node concept="Xl_RD" id="7jRNnvCjdJN" role="37wK5m">
                <property role="Xl_RC" value="dump7" />
              </node>
            </node>
            <node concept="37vLTw" id="7jRNnvCjdJO" role="37vLTJ">
              <ref role="3cqZAo" node="7jRNnvCjgFi" resolve="expectedJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvCjdJP" role="3cqZAp">
          <node concept="1rXfSq" id="7jRNnvCjdJQ" role="3clFbG">
            <ref role="37wK5l" node="7JjSHvQ4V3I" resolve="assertJsonsAreEquals" />
            <node concept="37vLTw" id="7jRNnvCjdJR" role="37wK5m">
              <ref role="3cqZAo" node="7jRNnvCjgFi" resolve="expectedJsonDump" />
            </node>
            <node concept="37vLTw" id="7jRNnvCjdJS" role="37wK5m">
              <ref role="3cqZAo" node="7jRNnvCjg09" resolve="actualJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvCjdoD" role="3cqZAp" />
        <node concept="3SKdUt" id="7jRNnvCjkJb" role="3cqZAp">
          <node concept="1PaTwC" id="7jRNnvCjkJc" role="1aUNEU">
            <node concept="3oM_SD" id="7jRNnvCjkJd" role="1PaTwD">
              <property role="3oM_SC" value="When" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkJe" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkJf" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkJg" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkJh" role="1PaTwD">
              <property role="3oM_SC" value="change" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkJi" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkJj" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkJk" role="1PaTwD">
              <property role="3oM_SC" value="ModelixServer," />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkJl" role="1PaTwD">
              <property role="3oM_SC" value="I" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkJm" role="1PaTwD">
              <property role="3oM_SC" value="should" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkJn" role="1PaTwD">
              <property role="3oM_SC" value="get" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkJo" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkJp" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkJq" role="1PaTwD">
              <property role="3oM_SC" value="same" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkJr" role="1PaTwD">
              <property role="3oM_SC" value="change" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkJs" role="1PaTwD">
              <property role="3oM_SC" value="locally" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvCjkJt" role="3cqZAp">
          <node concept="1rXfSq" id="7jRNnvCjkJu" role="3clFbG">
            <ref role="37wK5l" node="7jRNnvC87zo" resolve="runOnCloudRepository" />
            <node concept="37vLTw" id="7jRNnvCjkJv" role="37wK5m">
              <ref role="3cqZAo" node="7jRNnvChqKH" resolve="defaultTreeId" />
            </node>
            <node concept="37vLTw" id="7jRNnvCjkJw" role="37wK5m">
              <ref role="3cqZAo" node="7jRNnvChqKN" resolve="defaultBranchName" />
            </node>
            <node concept="1bVj0M" id="7jRNnvCjkJx" role="37wK5m">
              <node concept="3clFbS" id="7jRNnvCjkJy" role="1bW5cS">
                <node concept="3cpWs8" id="7jRNnvCjkJz" role="3cqZAp">
                  <node concept="3cpWsn" id="7jRNnvCjkJ$" role="3cpWs9">
                    <property role="TrG5h" value="solution1" />
                    <node concept="3cpWsb" id="7jRNnvCjkJ_" role="1tU5fm" />
                    <node concept="2OqwBi" id="7jRNnvCjkJA" role="33vP2m">
                      <node concept="37vLTw" id="7jRNnvCjkJB" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvCjkK9" resolve="wt" />
                      </node>
                      <node concept="AQDAd" id="7jRNnvCjkJC" role="2OqNvi">
                        <ref role="37wK5l" node="7jRNnvC8RCE" resolve="requireRootChildByName" />
                        <node concept="Xl_RD" id="7jRNnvCjkJD" role="37wK5m">
                          <property role="Xl_RC" value="simple.solution1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7jRNnvCjkJE" role="3cqZAp">
                  <node concept="3cpWsn" id="7jRNnvCjkJF" role="3cpWs9">
                    <property role="TrG5h" value="model1" />
                    <node concept="3cpWsb" id="7jRNnvCjkJG" role="1tU5fm" />
                    <node concept="2OqwBi" id="7jRNnvCjkJH" role="33vP2m">
                      <node concept="37vLTw" id="7jRNnvCjkJI" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvCjkK9" resolve="wt" />
                      </node>
                      <node concept="AQDAd" id="7jRNnvCjkJJ" role="2OqNvi">
                        <ref role="37wK5l" node="7jRNnvC8S8n" resolve="requireChildByName" />
                        <node concept="37vLTw" id="7jRNnvCjkJK" role="37wK5m">
                          <ref role="3cqZAo" node="7jRNnvCjkJ$" resolve="solution1" />
                        </node>
                        <node concept="Xl_RD" id="7jRNnvCjkJL" role="37wK5m">
                          <property role="Xl_RC" value="simple.solution1.model1" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="7jRNnvCjkJM" role="3cqZAp">
                  <node concept="3cpWsn" id="7jRNnvCjkJN" role="3cpWs9">
                    <property role="TrG5h" value="clazz" />
                    <node concept="3cpWsb" id="7jRNnvCjkJO" role="1tU5fm" />
                    <node concept="2OqwBi" id="7jRNnvCjkJP" role="33vP2m">
                      <node concept="37vLTw" id="7jRNnvCjkJQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvCjkK9" resolve="wt" />
                      </node>
                      <node concept="AQDAd" id="7jRNnvCjkJR" role="2OqNvi">
                        <ref role="37wK5l" node="7jRNnvC8S8n" resolve="requireChildByName" />
                        <node concept="37vLTw" id="7jRNnvCjkJS" role="37wK5m">
                          <ref role="3cqZAo" node="7jRNnvCjkJF" resolve="model1" />
                        </node>
                        <node concept="Xl_RD" id="7jRNnvCjkJT" role="37wK5m">
                          <property role="Xl_RC" value="MyClassBrilliantlyRenamed" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7jRNnvCjkJU" role="3cqZAp">
                  <node concept="2OqwBi" id="7jRNnvCjkJV" role="3clFbG">
                    <node concept="37vLTw" id="7jRNnvCjkJW" role="2Oq$k0">
                      <ref role="3cqZAo" node="7jRNnvCjkK9" resolve="wt" />
                    </node>
                    <node concept="liA8E" id="7jRNnvCjkJX" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~IWriteTransaction.setProperty(long,java.lang.String,java.lang.String)" resolve="setProperty" />
                      <node concept="37vLTw" id="7jRNnvCjkJY" role="37wK5m">
                        <ref role="3cqZAo" node="7jRNnvCjkJN" resolve="clazz" />
                      </node>
                      <node concept="Xl_RD" id="7jRNnvCjkJZ" role="37wK5m">
                        <property role="Xl_RC" value="name" />
                      </node>
                      <node concept="Xl_RD" id="7jRNnvCjkK0" role="37wK5m">
                        <property role="Xl_RC" value="MyEvenMoreSuperAmazinglyBrilliantlyRenamedClass" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1gVbGN" id="7jRNnvCjkK1" role="3cqZAp">
                  <node concept="17R0WA" id="7jRNnvCjkK2" role="1gVkn0">
                    <node concept="2OqwBi" id="7jRNnvCjkK3" role="3uHU7B">
                      <node concept="37vLTw" id="7jRNnvCjkK4" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jRNnvCjkK9" resolve="wt" />
                      </node>
                      <node concept="liA8E" id="7jRNnvCjkK5" role="2OqNvi">
                        <ref role="37wK5l" to="jks5:~ITransaction.getProperty(long,java.lang.String)" resolve="getProperty" />
                        <node concept="37vLTw" id="7jRNnvCjkK6" role="37wK5m">
                          <ref role="3cqZAo" node="7jRNnvCjkJN" resolve="clazz" />
                        </node>
                        <node concept="Xl_RD" id="7jRNnvCjkK7" role="37wK5m">
                          <property role="Xl_RC" value="name" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="7jRNnvCjkK8" role="3uHU7w">
                      <property role="Xl_RC" value="MyEvenMoreSuperAmazinglyBrilliantlyRenamedClass" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="7jRNnvCjkK9" role="1bW2Oz">
                <property role="TrG5h" value="wt" />
                <node concept="3uibUv" id="7jRNnvCjkKa" role="1tU5fm">
                  <ref role="3uigEE" to="jks5:~IWriteTransaction" resolve="IWriteTransaction" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvCjkKb" role="3cqZAp">
          <node concept="2YIFZM" id="7jRNnvCjkKc" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <node concept="3cmrfG" id="7jRNnvCjkKd" role="37wK5m">
              <property role="3cmrfH" value="2000" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvCjkKe" role="3cqZAp" />
        <node concept="3SKdUt" id="7jRNnvCjkKf" role="3cqZAp">
          <node concept="1PaTwC" id="7jRNnvCjkKg" role="1aUNEU">
            <node concept="3oM_SD" id="7jRNnvCjkKh" role="1PaTwD">
              <property role="3oM_SC" value="We" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkKi" role="1PaTwD">
              <property role="3oM_SC" value="check" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkKj" role="1PaTwD">
              <property role="3oM_SC" value="if" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkKk" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkKl" role="1PaTwD">
              <property role="3oM_SC" value="change" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkKm" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkKn" role="1PaTwD">
              <property role="3oM_SC" value="effectively" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkKo" role="1PaTwD">
              <property role="3oM_SC" value="present" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkKp" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkKq" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7jRNnvCjkKr" role="1PaTwD">
              <property role="3oM_SC" value="server" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvCjkKs" role="3cqZAp">
          <node concept="37vLTI" id="7jRNnvCjkKt" role="3clFbG">
            <node concept="2OqwBi" id="7jRNnvCjkKu" role="37vLTx">
              <node concept="37vLTw" id="7jRNnvCjkKv" role="2Oq$k0">
                <ref role="3cqZAo" node="7jRNnvChqLc" resolve="ms" />
              </node>
              <node concept="liA8E" id="7jRNnvCjkKw" role="2OqNvi">
                <ref role="37wK5l" node="7JjSHvQ43L7" resolve="jsonDump" />
              </node>
            </node>
            <node concept="37vLTw" id="7jRNnvCjkKx" role="37vLTJ">
              <ref role="3cqZAo" node="7jRNnvCjg09" resolve="actualJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvCjkKy" role="3cqZAp">
          <node concept="37vLTI" id="7jRNnvCjkKz" role="3clFbG">
            <node concept="1rXfSq" id="7jRNnvCjkK$" role="37vLTx">
              <ref role="37wK5l" node="7JjSHvQ4HQK" resolve="loadJsonDump" />
              <node concept="Xl_RD" id="7jRNnvCjkK_" role="37wK5m">
                <property role="Xl_RC" value="dump8" />
              </node>
            </node>
            <node concept="37vLTw" id="7jRNnvCjkKA" role="37vLTJ">
              <ref role="3cqZAo" node="7jRNnvCjgFi" resolve="expectedJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jRNnvCjkKB" role="3cqZAp">
          <node concept="1rXfSq" id="7jRNnvCjkKC" role="3clFbG">
            <ref role="37wK5l" node="7JjSHvQ4V3I" resolve="assertJsonsAreEquals" />
            <node concept="37vLTw" id="7jRNnvCjkKD" role="37wK5m">
              <ref role="3cqZAo" node="7jRNnvCjgFi" resolve="expectedJsonDump" />
            </node>
            <node concept="37vLTw" id="7jRNnvCjkKE" role="37wK5m">
              <ref role="3cqZAo" node="7jRNnvCjg09" resolve="actualJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvCjkKF" role="3cqZAp" />
        <node concept="3clFbF" id="7jRNnvCjkKG" role="3cqZAp">
          <node concept="2YIFZM" id="7jRNnvCjkKH" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~SwingUtilities.invokeAndWait(java.lang.Runnable)" resolve="invokeAndWait" />
            <ref role="1Pybhc" to="dxuu:~SwingUtilities" resolve="SwingUtilities" />
            <node concept="2ShNRf" id="7jRNnvCjkKI" role="37wK5m">
              <node concept="YeOm9" id="7jRNnvCjkKJ" role="2ShVmc">
                <node concept="1Y3b0j" id="7jRNnvCjkKK" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                  <node concept="3Tm1VV" id="7jRNnvCjkKL" role="1B3o_S" />
                  <node concept="3clFb_" id="7jRNnvCjkKM" role="jymVt">
                    <property role="TrG5h" value="run" />
                    <node concept="3Tm1VV" id="7jRNnvCjkKN" role="1B3o_S" />
                    <node concept="3cqZAl" id="7jRNnvCjkKO" role="3clF45" />
                    <node concept="3clFbS" id="7jRNnvCjkKP" role="3clF47">
                      <node concept="1QHqEK" id="7jRNnvCjkKQ" role="3cqZAp">
                        <node concept="1QHqEC" id="7jRNnvCjkKR" role="1QHqEI">
                          <node concept="3clFbS" id="7jRNnvCjkKS" role="1bW5cS">
                            <node concept="3cpWs8" id="7jRNnvCjkKT" role="3cqZAp">
                              <node concept="3cpWsn" id="7jRNnvCjkKU" role="3cpWs9">
                                <property role="TrG5h" value="model" />
                                <node concept="3uibUv" id="7jRNnvCjkKV" role="1tU5fm">
                                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                </node>
                                <node concept="2OqwBi" id="7jRNnvCjkKW" role="33vP2m">
                                  <node concept="37vLTw" id="7jRNnvCjkKY" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7jRNnvChqKp" resolve="mpsProject" />
                                  </node>
                                  <node concept="AQDAd" id="7jRNnvCjkL0" role="2OqNvi">
                                    <ref role="37wK5l" node="5cWpYFRLM6f" resolve="getProjectModel" />
                                    <node concept="Xl_RD" id="7jRNnvCjkL1" role="37wK5m">
                                      <property role="Xl_RC" value="simple.solution1" />
                                    </node>
                                    <node concept="Xl_RD" id="7jRNnvCjkL2" role="37wK5m">
                                      <property role="Xl_RC" value="simple.solution1.model1" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="7jRNnvCjkL3" role="3cqZAp">
                              <node concept="3cpWsn" id="7jRNnvCjkL4" role="3cpWs9">
                                <property role="TrG5h" value="myClass" />
                                <node concept="3Tqbb2" id="7jRNnvCjkL5" role="1tU5fm">
                                  <ref role="ehGHo" to="tpee:fz12cDA" resolve="ClassConcept" />
                                </node>
                                <node concept="1PxgMI" id="7jRNnvCjkL6" role="33vP2m">
                                  <node concept="chp4Y" id="7jRNnvCjkL7" role="3oSUPX">
                                    <ref role="cht4Q" to="tpee:fz12cDA" resolve="ClassConcept" />
                                  </node>
                                  <node concept="2OqwBi" id="7jRNnvCjkL8" role="1m5AlR">
                                    <node concept="37vLTw" id="7jRNnvCjkL9" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7jRNnvCjkKU" resolve="model" />
                                    </node>
                                    <node concept="AQDAd" id="7jRNnvCjkLa" role="2OqNvi">
                                      <ref role="37wK5l" node="5cWpYFRKjMZ" resolve="getExactRoot" />
                                      <node concept="35c_gC" id="7jRNnvCjkLb" role="37wK5m">
                                        <ref role="35c_gD" to="tpee:fz12cDA" resolve="ClassConcept" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1gVbGN" id="7jRNnvCjkLc" role="3cqZAp">
                              <node concept="17R0WA" id="7jRNnvCjkLd" role="1gVkn0">
                                <node concept="2OqwBi" id="7jRNnvCjkLe" role="3uHU7B">
                                  <node concept="37vLTw" id="7jRNnvCjkLf" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7jRNnvCjkL4" resolve="myClass" />
                                  </node>
                                  <node concept="3TrcHB" id="7jRNnvCjkLg" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="7jRNnvCjkLh" role="3uHU7w">
                                  <property role="Xl_RC" value="MyEvenMoreSuperAmazinglyBrilliantlyRenamedClass" />
                                </node>
                              </node>
                              <node concept="3cpWs3" id="7jRNnvCjkLi" role="1gVpfI">
                                <node concept="2OqwBi" id="7jRNnvCjkLj" role="3uHU7w">
                                  <node concept="37vLTw" id="7jRNnvCjkLk" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7jRNnvCjkL4" resolve="myClass" />
                                  </node>
                                  <node concept="3TrcHB" id="7jRNnvCjkLl" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="7jRNnvCjkLm" role="3uHU7B">
                                  <property role="Xl_RC" value="Actual value was " />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="7jRNnvCjkLn" role="ukAjM">
                          <node concept="37vLTw" id="7jRNnvCjkLo" role="2Oq$k0">
                            <ref role="3cqZAo" node="7jRNnvCjdIN" resolve="effectiveMpsProject" />
                          </node>
                          <node concept="liA8E" id="7jRNnvCjkLp" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="7jRNnvCjkLq" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jRNnvChqNW" role="3cqZAp" />
        <node concept="3cpWs6" id="7jRNnvChqNX" role="3cqZAp">
          <node concept="2YIFZM" id="7jRNnvChqNY" role="3cqZAk">
            <ref role="1Pybhc" node="5yNJPA6btY7" resolve="TestResult" />
            <ref role="37wK5l" node="5yNJPA6trVb" resolve="ok" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7jRNnvChqNZ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7jRNnvChqO0" role="jymVt" />
    <node concept="3uibUv" id="7jRNnvChqO1" role="1zkMxy">
      <ref role="3uigEE" node="5yNJPA6tjxd" resolve="IntegrationTest" />
    </node>
  </node>
  <node concept="KRBjq" id="5cWpYFRLtoq">
    <property role="3GE5qa" value="support" />
    <property role="TrG5h" value="ProjectUtils" />
    <node concept="ATzpf" id="5cWpYFRLtp5" role="a7sos">
      <property role="TrG5h" value="getProjectModule" />
      <node concept="37vLTG" id="5cWpYFRLtqB" role="3clF46">
        <property role="TrG5h" value="moduleName" />
        <node concept="17QB3L" id="5cWpYFRLtrr" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="5cWpYFRLtp6" role="1B3o_S" />
      <node concept="3uibUv" id="5cWpYFRLtpV" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
      <node concept="3clFbS" id="5cWpYFRLtp8" role="3clF47">
        <node concept="3cpWs8" id="5cWpYFRLvIL" role="3cqZAp">
          <node concept="3cpWsn" id="5cWpYFRLvIO" role="3cpWs9">
            <property role="TrG5h" value="matches" />
            <node concept="_YKpA" id="5cWpYFRLvIH" role="1tU5fm">
              <node concept="3uibUv" id="5cWpYFRLvQL" role="_ZDj9">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
            </node>
            <node concept="2ShNRf" id="5cWpYFRLvRQ" role="33vP2m">
              <node concept="2Jqq0_" id="5cWpYFRLvRN" role="2ShVmc">
                <node concept="3uibUv" id="5cWpYFRLvRO" role="HW$YZ">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5cWpYFRLu8I" role="3cqZAp">
          <node concept="2GrKxI" id="5cWpYFRLu8J" role="2Gsz3X">
            <property role="TrG5h" value="module" />
          </node>
          <node concept="2OqwBi" id="5cWpYFRLu8K" role="2GsD0m">
            <node concept="2V_BSl" id="5cWpYFRLu8L" role="2Oq$k0" />
            <node concept="liA8E" id="5cWpYFRLuY7" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~IProject.getProjectModules()" resolve="getProjectModules" />
            </node>
          </node>
          <node concept="3clFbS" id="5cWpYFRLu8N" role="2LFqv$">
            <node concept="3clFbJ" id="5cWpYFRLu8O" role="3cqZAp">
              <node concept="17R0WA" id="5cWpYFRLu8P" role="3clFbw">
                <node concept="37vLTw" id="5cWpYFRLu8Q" role="3uHU7w">
                  <ref role="3cqZAo" node="5cWpYFRLtqB" resolve="moduleName" />
                </node>
                <node concept="2OqwBi" id="5cWpYFRLu8R" role="3uHU7B">
                  <node concept="2GrUjf" id="5cWpYFRLu8S" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="5cWpYFRLu8J" resolve="module" />
                  </node>
                  <node concept="liA8E" id="5cWpYFRLu8T" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5cWpYFRLu8U" role="3clFbx">
                <node concept="3clFbF" id="5cWpYFRLw0t" role="3cqZAp">
                  <node concept="2OqwBi" id="5cWpYFRLwJl" role="3clFbG">
                    <node concept="37vLTw" id="5cWpYFRLw0q" role="2Oq$k0">
                      <ref role="3cqZAo" node="5cWpYFRLvIO" resolve="matches" />
                    </node>
                    <node concept="TSZUe" id="5cWpYFRLyOP" role="2OqNvi">
                      <node concept="2GrUjf" id="5cWpYFRLyS5" role="25WWJ7">
                        <ref role="2Gs0qQ" node="5cWpYFRLu8J" resolve="module" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5cWpYFRLz1W" role="3cqZAp">
          <node concept="3clFbS" id="5cWpYFRLz1Y" role="3clFbx">
            <node concept="YS8fn" id="5cWpYFRLu8X" role="3cqZAp">
              <node concept="2ShNRf" id="5cWpYFRLu8Y" role="YScLw">
                <node concept="1pGfFk" id="5cWpYFRLu8Z" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                  <node concept="3cpWs3" id="5cWpYFRLu90" role="37wK5m">
                    <node concept="37vLTw" id="5cWpYFRLu91" role="3uHU7w">
                      <ref role="3cqZAo" node="5cWpYFRLtqB" resolve="moduleName" />
                    </node>
                    <node concept="Xl_RD" id="5cWpYFRLu92" role="3uHU7B">
                      <property role="Xl_RC" value="Module not found: " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5cWpYFRLBoy" role="3clFbw">
            <node concept="3cmrfG" id="5cWpYFRLBTp" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="5cWpYFRL$0F" role="3uHU7B">
              <node concept="37vLTw" id="5cWpYFRLzac" role="2Oq$k0">
                <ref role="3cqZAo" node="5cWpYFRLvIO" resolve="matches" />
              </node>
              <node concept="34oBXx" id="5cWpYFRLAbo" role="2OqNvi" />
            </node>
          </node>
          <node concept="3eNFk2" id="5cWpYFRLCz4" role="3eNLev">
            <node concept="3eOSWO" id="5cWpYFRLGNv" role="3eO9$A">
              <node concept="3cmrfG" id="5cWpYFRLGNz" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="5cWpYFRLDOZ" role="3uHU7B">
                <node concept="37vLTw" id="5cWpYFRLD41" role="2Oq$k0">
                  <ref role="3cqZAo" node="5cWpYFRLvIO" resolve="matches" />
                </node>
                <node concept="34oBXx" id="5cWpYFRLFT7" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbS" id="5cWpYFRLCz6" role="3eOfB_">
              <node concept="YS8fn" id="5cWpYFRLKuQ" role="3cqZAp">
                <node concept="2ShNRf" id="5cWpYFRLKuR" role="YScLw">
                  <node concept="1pGfFk" id="5cWpYFRLKuS" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="3cpWs3" id="5cWpYFRLKuT" role="37wK5m">
                      <node concept="37vLTw" id="5cWpYFRLKuU" role="3uHU7w">
                        <ref role="3cqZAo" node="5cWpYFRLtqB" resolve="moduleName" />
                      </node>
                      <node concept="Xl_RD" id="5cWpYFRLKuV" role="3uHU7B">
                        <property role="Xl_RC" value="Ambiguous Module Name: " />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5cWpYFRLGOC" role="9aQIa">
            <node concept="3clFbS" id="5cWpYFRLGOD" role="9aQI4">
              <node concept="3cpWs6" id="5cWpYFRLHm2" role="3cqZAp">
                <node concept="2OqwBi" id="5cWpYFRLIiM" role="3cqZAk">
                  <node concept="37vLTw" id="5cWpYFRLHmo" role="2Oq$k0">
                    <ref role="3cqZAo" node="5cWpYFRLvIO" resolve="matches" />
                  </node>
                  <node concept="34jXtK" id="5cWpYFRLKed" role="2OqNvi">
                    <node concept="3cmrfG" id="5cWpYFRLKmr" role="25WWJ7">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="ATzpf" id="5cWpYFRLM6f" role="a7sos">
      <property role="TrG5h" value="getProjectModel" />
      <node concept="37vLTG" id="5cWpYFRLM6g" role="3clF46">
        <property role="TrG5h" value="moduleName" />
        <node concept="17QB3L" id="5cWpYFRLM6h" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5cWpYFRLM6i" role="3clF46">
        <property role="TrG5h" value="modelName" />
        <node concept="17QB3L" id="5cWpYFRLM6j" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="5cWpYFRLM6k" role="1B3o_S" />
      <node concept="3clFbS" id="5cWpYFRLM6l" role="3clF47">
        <node concept="3cpWs8" id="5cWpYFRLM6m" role="3cqZAp">
          <node concept="3cpWsn" id="5cWpYFRLM6n" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="5cWpYFRLM6o" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="5cWpYFRLM6p" role="33vP2m">
              <node concept="AQDAd" id="5cWpYFRLM6q" role="2OqNvi">
                <ref role="37wK5l" node="5cWpYFRLtp5" resolve="getProjectModule" />
                <node concept="37vLTw" id="5cWpYFRLM6r" role="37wK5m">
                  <ref role="3cqZAo" node="5cWpYFRLM6g" resolve="moduleName" />
                </node>
              </node>
              <node concept="2V_BSl" id="5cWpYFRLM6s" role="2Oq$k0" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5cWpYFRLM6t" role="3cqZAp">
          <node concept="2GrKxI" id="5cWpYFRLM6u" role="2Gsz3X">
            <property role="TrG5h" value="model" />
          </node>
          <node concept="2OqwBi" id="5cWpYFRLM6v" role="2GsD0m">
            <node concept="37vLTw" id="5cWpYFRLM6w" role="2Oq$k0">
              <ref role="3cqZAo" node="5cWpYFRLM6n" resolve="module" />
            </node>
            <node concept="liA8E" id="5cWpYFRLM6x" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~SModule.getModels()" resolve="getModels" />
            </node>
          </node>
          <node concept="3clFbS" id="5cWpYFRLM6y" role="2LFqv$">
            <node concept="3clFbJ" id="5cWpYFRLM6z" role="3cqZAp">
              <node concept="17R0WA" id="5cWpYFRLM6$" role="3clFbw">
                <node concept="37vLTw" id="5cWpYFRLM6_" role="3uHU7w">
                  <ref role="3cqZAo" node="5cWpYFRLM6i" resolve="modelName" />
                </node>
                <node concept="2OqwBi" id="5cWpYFRLM6A" role="3uHU7B">
                  <node concept="2GrUjf" id="5cWpYFRLM6B" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="5cWpYFRLM6u" resolve="model" />
                  </node>
                  <node concept="liA8E" id="5cWpYFRLM6C" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getModelName()" resolve="getModelName" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5cWpYFRLM6D" role="3clFbx">
                <node concept="3cpWs6" id="5cWpYFRLM6E" role="3cqZAp">
                  <node concept="2GrUjf" id="5cWpYFRLM6F" role="3cqZAk">
                    <ref role="2Gs0qQ" node="5cWpYFRLM6u" resolve="model" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="5cWpYFRLM6G" role="3cqZAp">
          <node concept="2ShNRf" id="5cWpYFRLM6H" role="YScLw">
            <node concept="1pGfFk" id="5cWpYFRLM6I" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
              <node concept="3cpWs3" id="5cWpYFRLM6J" role="37wK5m">
                <node concept="37vLTw" id="5cWpYFRLM6K" role="3uHU7w">
                  <ref role="3cqZAo" node="5cWpYFRLM6g" resolve="moduleName" />
                </node>
                <node concept="3cpWs3" id="5cWpYFRLM6L" role="3uHU7B">
                  <node concept="3cpWs3" id="5cWpYFRLM6M" role="3uHU7B">
                    <node concept="Xl_RD" id="5cWpYFRLM6N" role="3uHU7B">
                      <property role="Xl_RC" value="Model not found: " />
                    </node>
                    <node concept="37vLTw" id="5cWpYFRLM6O" role="3uHU7w">
                      <ref role="3cqZAo" node="5cWpYFRLM6i" resolve="modelName" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="5cWpYFRLM6P" role="3uHU7w">
                    <property role="Xl_RC" value=" in module " />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="5cWpYFRLM6Q" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
    </node>
    <node concept="3uibUv" id="5cWpYFRLuD6" role="KRMoO">
      <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
    </node>
  </node>
  <node concept="312cEu" id="lO9TSUBsv_">
    <property role="TrG5h" value="ProjectCanBeCopiedAndSyncOnCloudTest" />
    <property role="3GE5qa" value="tests" />
    <node concept="3Tm1VV" id="lO9TSUBsvA" role="1B3o_S" />
    <node concept="3clFbW" id="lO9TSUBsvB" role="jymVt">
      <node concept="37vLTG" id="lO9TSUBsvC" role="3clF46">
        <property role="TrG5h" value="referenceDir" />
        <node concept="3uibUv" id="lO9TSUBsvD" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="37vLTG" id="lO9TSUBsvE" role="3clF46">
        <property role="TrG5h" value="environment" />
        <node concept="3uibUv" id="lO9TSUBsvF" role="1tU5fm">
          <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
        </node>
      </node>
      <node concept="3cqZAl" id="lO9TSUBsvG" role="3clF45" />
      <node concept="3Tm1VV" id="lO9TSUBsvH" role="1B3o_S" />
      <node concept="3clFbS" id="lO9TSUBsvI" role="3clF47">
        <node concept="XkiVB" id="lO9TSUBsvJ" role="3cqZAp">
          <ref role="37wK5l" node="5yNJPA6tklF" resolve="IntegrationTest" />
          <node concept="37vLTw" id="lO9TSUBsvK" role="37wK5m">
            <ref role="3cqZAo" node="lO9TSUBsvC" resolve="referenceDir" />
          </node>
          <node concept="37vLTw" id="lO9TSUBsvL" role="37wK5m">
            <ref role="3cqZAo" node="lO9TSUBsvE" resolve="environment" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="lO9TSUBsvM" role="jymVt" />
    <node concept="3clFb_" id="lO9TSUBsvN" role="jymVt">
      <property role="TrG5h" value="logic" />
      <node concept="3Tm1VV" id="lO9TSUBsvO" role="1B3o_S" />
      <node concept="3uibUv" id="lO9TSUBsvP" role="3clF45">
        <ref role="3uigEE" node="5yNJPA6btY7" resolve="TestResult" />
      </node>
      <node concept="3uibUv" id="lO9TSUBsvQ" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="3clFbS" id="lO9TSUBsvR" role="3clF47">
        <node concept="3cpWs8" id="lO9TSUBsvS" role="3cqZAp">
          <node concept="3cpWsn" id="lO9TSUBsvT" role="3cpWs9">
            <property role="TrG5h" value="mpsProject" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="lO9TSUC5jW" role="1tU5fm">
              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="1rXfSq" id="lO9TSUBsvV" role="33vP2m">
              <ref role="37wK5l" node="5yNJPA6tpld" resolve="openProject" />
              <node concept="Xl_RD" id="lO9TSUBsvW" role="37wK5m">
                <property role="Xl_RC" value="SimpleProjectF" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="lO9TSUBsvX" role="3cqZAp">
          <node concept="3cpWsn" id="lO9TSUBsvY" role="3cpWs9">
            <property role="TrG5h" value="pbc" />
            <node concept="3uibUv" id="lO9TSUBsvZ" role="1tU5fm">
              <ref role="3uigEE" to="nhvc:7f6Tb6nxCKP" resolve="PersistedBindingConfiguration" />
            </node>
            <node concept="2YIFZM" id="lO9TSUBsw0" role="33vP2m">
              <ref role="37wK5l" to="nhvc:6JwgQ7URldI" resolve="getInstance" />
              <ref role="1Pybhc" to="nhvc:7f6Tb6nxCKP" resolve="PersistedBindingConfiguration" />
              <node concept="37vLTw" id="lO9TSUBsw1" role="37wK5m">
                <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="lO9TSUBsw2" role="3cqZAp">
          <node concept="2OqwBi" id="lO9TSUBsw3" role="1gVkn0">
            <node concept="37vLTw" id="lO9TSUBsw4" role="2Oq$k0">
              <ref role="3cqZAo" node="lO9TSUBsvY" resolve="pbc" />
            </node>
            <node concept="liA8E" id="lO9TSUBsw5" role="2OqNvi">
              <ref role="37wK5l" to="nhvc:6JwgQ7URCLz" resolve="isEmpty" />
            </node>
          </node>
          <node concept="3cpWs3" id="lO9TSUBsw6" role="1gVpfI">
            <node concept="2OqwBi" id="lO9TSUBsw7" role="3uHU7w">
              <node concept="37vLTw" id="lO9TSUBsw8" role="2Oq$k0">
                <ref role="3cqZAo" node="lO9TSUBsvY" resolve="pbc" />
              </node>
              <node concept="liA8E" id="lO9TSUBsw9" role="2OqNvi">
                <ref role="37wK5l" to="nhvc:6JwgQ7UW22M" resolve="describeState" />
              </node>
            </node>
            <node concept="Xl_RD" id="lO9TSUBswa" role="3uHU7B">
              <property role="Xl_RC" value="The PersistedBindingConfiguration is expected to be empty, it was " />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="lO9TSUBswb" role="3cqZAp" />
        <node concept="abc8K" id="lO9TSUBswc" role="3cqZAp">
          <node concept="Xl_RD" id="lO9TSUBswd" role="abp_N">
            <property role="Xl_RC" value="project " />
          </node>
          <node concept="2OqwBi" id="lO9TSUBswe" role="abp_N">
            <node concept="37vLTw" id="lO9TSUBswf" role="2Oq$k0">
              <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
            </node>
            <node concept="liA8E" id="lO9TSUBswg" role="2OqNvi">
              <ref role="37wK5l" to="z1c4:~MPSProject.getName()" resolve="getName" />
            </node>
          </node>
          <node concept="Xl_RD" id="lO9TSUBswh" role="abp_N">
            <property role="Xl_RC" value=" opened" />
          </node>
        </node>
        <node concept="1gVbGN" id="lO9TSUBswi" role="3cqZAp">
          <node concept="17R0WA" id="lO9TSUBswj" role="1gVkn0">
            <node concept="2OqwBi" id="lO9TSUBswk" role="3uHU7B">
              <node concept="37vLTw" id="lO9TSUBswl" role="2Oq$k0">
                <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="lO9TSUBswm" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getName()" resolve="getName" />
              </node>
            </node>
            <node concept="Xl_RD" id="lO9TSUBswn" role="3uHU7w">
              <property role="Xl_RC" value="SimpleProjectF" />
            </node>
          </node>
          <node concept="3cpWs3" id="lO9TSUBswo" role="1gVpfI">
            <node concept="2OqwBi" id="lO9TSUBswp" role="3uHU7w">
              <node concept="37vLTw" id="lO9TSUBswq" role="2Oq$k0">
                <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
              </node>
              <node concept="liA8E" id="lO9TSUBswr" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getName()" resolve="getName" />
              </node>
            </node>
            <node concept="Xl_RD" id="lO9TSUBsws" role="3uHU7B">
              <property role="Xl_RC" value="Project expected to be named SimpleProjectF, but it was named " />
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="lO9TSUBswt" role="3cqZAp">
          <node concept="17R0WA" id="lO9TSUBswu" role="1gVkn0">
            <node concept="3cmrfG" id="lO9TSUBswv" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="lO9TSUBsww" role="3uHU7B">
              <node concept="2OqwBi" id="lO9TSUBswx" role="2Oq$k0">
                <node concept="37vLTw" id="lO9TSUBswy" role="2Oq$k0">
                  <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                </node>
                <node concept="liA8E" id="lO9TSUBswz" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~ProjectBase.getProjectModules()" resolve="getProjectModules" />
                </node>
              </node>
              <node concept="liA8E" id="lO9TSUBsw$" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
          <node concept="3cpWs3" id="lO9TSUBsw_" role="1gVpfI">
            <node concept="Xl_RD" id="lO9TSUBswA" role="3uHU7B">
              <property role="Xl_RC" value="One project modules expected but found " />
            </node>
            <node concept="2OqwBi" id="lO9TSUBswB" role="3uHU7w">
              <node concept="2OqwBi" id="lO9TSUBswC" role="2Oq$k0">
                <node concept="37vLTw" id="lO9TSUBswD" role="2Oq$k0">
                  <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                </node>
                <node concept="liA8E" id="lO9TSUBswE" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~ProjectBase.getProjectModules()" resolve="getProjectModules" />
                </node>
              </node>
              <node concept="liA8E" id="lO9TSUBswF" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="lO9TSUBswG" role="3cqZAp">
          <node concept="3cpWsn" id="lO9TSUBswH" role="3cpWs9">
            <property role="TrG5h" value="simpleSolution1" />
            <node concept="3uibUv" id="lO9TSUBswI" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="lO9TSUBswJ" role="33vP2m">
              <node concept="2OqwBi" id="lO9TSUBswK" role="2Oq$k0">
                <node concept="37vLTw" id="lO9TSUBswL" role="2Oq$k0">
                  <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                </node>
                <node concept="liA8E" id="lO9TSUBswM" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~ProjectBase.getProjectModules()" resolve="getProjectModules" />
                </node>
              </node>
              <node concept="liA8E" id="lO9TSUBswN" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                <node concept="3cmrfG" id="lO9TSUBswO" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="lO9TSUBswP" role="3cqZAp">
          <node concept="17R0WA" id="lO9TSUBswQ" role="1gVkn0">
            <node concept="Xl_RD" id="lO9TSUBswR" role="3uHU7w">
              <property role="Xl_RC" value="simple.solution1" />
            </node>
            <node concept="2OqwBi" id="lO9TSUBswS" role="3uHU7B">
              <node concept="37vLTw" id="lO9TSUBswT" role="2Oq$k0">
                <ref role="3cqZAo" node="lO9TSUBswH" resolve="simpleSolution1" />
              </node>
              <node concept="liA8E" id="lO9TSUBswU" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
              </node>
            </node>
          </node>
          <node concept="3cpWs3" id="lO9TSUBswV" role="1gVpfI">
            <node concept="2OqwBi" id="lO9TSUBswW" role="3uHU7w">
              <node concept="37vLTw" id="lO9TSUBswX" role="2Oq$k0">
                <ref role="3cqZAo" node="lO9TSUBswH" resolve="simpleSolution1" />
              </node>
              <node concept="liA8E" id="lO9TSUBswY" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
              </node>
            </node>
            <node concept="Xl_RD" id="lO9TSUBswZ" role="3uHU7B">
              <property role="Xl_RC" value="Module expected to be named simple.solution1 but it was named " />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="lO9TSUBsx0" role="3cqZAp" />
        <node concept="3SKdUt" id="lO9TSUBsx1" role="3cqZAp">
          <node concept="1PaTwC" id="lO9TSUBsx2" role="1aUNEU">
            <node concept="3oM_SD" id="lO9TSUBsx3" role="1PaTwD">
              <property role="3oM_SC" value="start" />
            </node>
            <node concept="3oM_SD" id="lO9TSUBsx4" role="1PaTwD">
              <property role="3oM_SC" value="Modelix" />
            </node>
            <node concept="3oM_SD" id="lO9TSUBsx5" role="1PaTwD">
              <property role="3oM_SC" value="Server" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="lO9TSUBsx6" role="3cqZAp">
          <node concept="3cpWsn" id="lO9TSUBsx7" role="3cpWs9">
            <property role="TrG5h" value="ms" />
            <node concept="3uibUv" id="lO9TSUBsx8" role="1tU5fm">
              <ref role="3uigEE" node="5yNJPA6tDKp" resolve="ModelixServerController" />
            </node>
            <node concept="1rXfSq" id="lO9TSUBsx9" role="33vP2m">
              <ref role="37wK5l" node="1QKKVBBCeoe" resolve="startModelixServer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lO9TSUBsxa" role="3cqZAp">
          <node concept="2YIFZM" id="lO9TSUBsxb" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <node concept="3cmrfG" id="lO9TSUBsxc" role="37wK5m">
              <property role="3cmrfH" value="5000" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="lO9TSUBsxd" role="3cqZAp" />
        <node concept="3SKdUt" id="lO9TSUBsxe" role="3cqZAp">
          <node concept="1PaTwC" id="lO9TSUBsxf" role="1aUNEU">
            <node concept="3oM_SD" id="lO9TSUBsxg" role="1PaTwD">
              <property role="3oM_SC" value="add" />
            </node>
            <node concept="3oM_SD" id="lO9TSUBsxh" role="1PaTwD">
              <property role="3oM_SC" value="CloudRepository" />
            </node>
          </node>
        </node>
        <node concept="1gVbGN" id="lO9TSUBsxi" role="3cqZAp">
          <node concept="2OqwBi" id="lO9TSUBsxj" role="1gVkn0">
            <node concept="2OqwBi" id="lO9TSUBsxk" role="2Oq$k0">
              <node concept="2YIFZM" id="lO9TSUBsxl" role="2Oq$k0">
                <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
              </node>
              <node concept="liA8E" id="lO9TSUBsxm" role="2OqNvi">
                <ref role="37wK5l" to="csg2:1LVcV5KxBgM" resolve="getRepositories" />
              </node>
            </node>
            <node concept="1v1jN8" id="lO9TSUBsxn" role="2OqNvi" />
          </node>
          <node concept="3cpWs3" id="lO9TSUBsxo" role="1gVpfI">
            <node concept="Xl_RD" id="lO9TSUBsxp" role="3uHU7B">
              <property role="Xl_RC" value="Expected not to find CloudRepositories: " />
            </node>
            <node concept="2OqwBi" id="lO9TSUBsxq" role="3uHU7w">
              <node concept="2OqwBi" id="lO9TSUBsxr" role="2Oq$k0">
                <node concept="2YIFZM" id="lO9TSUBsxs" role="2Oq$k0">
                  <ref role="1Pybhc" to="csg2:1LVcV5Kxxi$" resolve="CloudRepositories" />
                  <ref role="37wK5l" to="csg2:1LVcV5Kxxmz" resolve="getInstance" />
                </node>
                <node concept="liA8E" id="lO9TSUBsxt" role="2OqNvi">
                  <ref role="37wK5l" to="csg2:1LVcV5KxBgM" resolve="getRepositories" />
                </node>
              </node>
              <node concept="ANE8D" id="lO9TSUBsxu" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="lO9TSUBsxv" role="3cqZAp">
          <node concept="3cpWsn" id="lO9TSUBsxw" role="3cpWs9">
            <property role="TrG5h" value="cr" />
            <node concept="3uibUv" id="lO9TSUBsxx" role="1tU5fm">
              <ref role="3uigEE" to="csg2:6aRQr1WOV$v" resolve="CloudRepository" />
            </node>
            <node concept="1rXfSq" id="lO9TSUBsxy" role="33vP2m">
              <ref role="37wK5l" node="1QKKVBBCC1x" resolve="addCloudRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lO9TSUBsxz" role="3cqZAp">
          <node concept="2YIFZM" id="lO9TSUBsx$" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <node concept="3cmrfG" id="lO9TSUBsx_" role="37wK5m">
              <property role="3cmrfH" value="5000" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="lO9TSUBsxA" role="3cqZAp" />
        <node concept="1gVbGN" id="lO9TSUBsy4" role="3cqZAp">
          <node concept="2OqwBi" id="lO9TSUBsy5" role="1gVkn0">
            <node concept="37vLTw" id="lO9TSUBsy6" role="2Oq$k0">
              <ref role="3cqZAo" node="lO9TSUBsvY" resolve="pbc" />
            </node>
            <node concept="liA8E" id="lO9TSUBsy7" role="2OqNvi">
              <ref role="37wK5l" to="nhvc:6JwgQ7URCLz" resolve="isEmpty" />
            </node>
          </node>
          <node concept="3cpWs3" id="lO9TSUBsy8" role="1gVpfI">
            <node concept="2OqwBi" id="lO9TSUBsy9" role="3uHU7w">
              <node concept="37vLTw" id="lO9TSUBsya" role="2Oq$k0">
                <ref role="3cqZAo" node="lO9TSUBsvY" resolve="pbc" />
              </node>
              <node concept="liA8E" id="lO9TSUBsyb" role="2OqNvi">
                <ref role="37wK5l" to="nhvc:6JwgQ7UW22M" resolve="describeState" />
              </node>
            </node>
            <node concept="Xl_RD" id="lO9TSUBsyc" role="3uHU7B">
              <property role="Xl_RC" value="The PersistedBindingConfiguration is expected to be empty, it was " />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5pQ1kvRH2yM" role="3cqZAp" />
        <node concept="3SKdUt" id="lO9TSUBsxB" role="3cqZAp">
          <node concept="1PaTwC" id="lO9TSUBsxC" role="1aUNEU">
            <node concept="3oM_SD" id="lO9TSUBsxD" role="1PaTwD">
              <property role="3oM_SC" value="store" />
            </node>
            <node concept="3oM_SD" id="lO9TSUBsxE" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="lO9TSUBsxF" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="lO9TSUBsxG" role="1PaTwD">
              <property role="3oM_SC" value="CloudRepository" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="lO9TSUBsxH" role="3cqZAp">
          <node concept="3cpWsn" id="lO9TSUBsxI" role="3cpWs9">
            <property role="TrG5h" value="treeInRepository" />
            <node concept="3uibUv" id="lO9TSUBsxJ" role="1tU5fm">
              <ref role="3uigEE" to="csg2:3i6diw3mm_Q" resolve="TreeInRepository" />
            </node>
            <node concept="2ShNRf" id="lO9TSUBsxK" role="33vP2m">
              <node concept="1pGfFk" id="lO9TSUBsxL" role="2ShVmc">
                <ref role="37wK5l" to="csg2:3i6diw3mtOf" resolve="TreeInRepository" />
                <node concept="37vLTw" id="lO9TSUBsxM" role="37wK5m">
                  <ref role="3cqZAo" node="lO9TSUBsxw" resolve="cr" />
                </node>
                <node concept="2ShNRf" id="lO9TSUBsxN" role="37wK5m">
                  <node concept="1pGfFk" id="lO9TSUBsxO" role="2ShVmc">
                    <ref role="37wK5l" to="xkhl:~TreeId.&lt;init&gt;(java.lang.String)" resolve="TreeId" />
                    <node concept="Xl_RD" id="lO9TSUBsxP" role="37wK5m">
                      <property role="Xl_RC" value="default" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3rV04iJIPvf" role="3cqZAp">
          <node concept="2OqwBi" id="3rV04iJIPNZ" role="3clFbG">
            <node concept="2ShNRf" id="3rV04iJIPvh" role="2Oq$k0">
              <node concept="HV5vD" id="3rV04iJIPvi" role="2ShVmc">
                <ref role="HV5vE" to="csg2:i0AVAFXWm5" resolve="ModelCloudImporter" />
              </node>
            </node>
            <node concept="liA8E" id="3rV04iJIQ4D" role="2OqNvi">
              <ref role="37wK5l" to="csg2:3rV04iJIx8Z" resolve="copyAndSyncInModelixAsEntireProject" />
              <node concept="37vLTw" id="lO9TSUC4Gq" role="37wK5m">
                <ref role="3cqZAo" node="lO9TSUBsxI" resolve="treeInRepository" />
              </node>
              <node concept="37vLTw" id="lO9TSUC51C" role="37wK5m">
                <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
              </node>
              <node concept="10Nm6u" id="lO9TSUC4PT" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5pQ1kvRID1f" role="3cqZAp">
          <node concept="2YIFZM" id="5pQ1kvRID1g" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <node concept="3cmrfG" id="5pQ1kvRID1h" role="37wK5m">
              <property role="3cmrfH" value="15000" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5pQ1kvRICLy" role="3cqZAp" />
        <node concept="3SKdUt" id="lO9TSUBsye" role="3cqZAp">
          <node concept="1PaTwC" id="lO9TSUBsyf" role="1aUNEU">
            <node concept="3oM_SD" id="lO9TSUBsyg" role="1PaTwD">
              <property role="3oM_SC" value="dump" />
            </node>
            <node concept="3oM_SD" id="lO9TSUBsyh" role="1PaTwD">
              <property role="3oM_SC" value="ModelixServer" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="lO9TSUBsyi" role="3cqZAp">
          <node concept="3cpWsn" id="lO9TSUBsyj" role="3cpWs9">
            <property role="TrG5h" value="actualJsonDump" />
            <node concept="3uibUv" id="lO9TSUBsyk" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
            <node concept="2OqwBi" id="lO9TSUBsyl" role="33vP2m">
              <node concept="37vLTw" id="lO9TSUBsym" role="2Oq$k0">
                <ref role="3cqZAo" node="lO9TSUBsx7" resolve="ms" />
              </node>
              <node concept="liA8E" id="lO9TSUBsyn" role="2OqNvi">
                <ref role="37wK5l" node="7JjSHvQ43L7" resolve="jsonDump" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="lO9TSUBsyo" role="3cqZAp">
          <node concept="3cpWsn" id="lO9TSUBsyp" role="3cpWs9">
            <property role="TrG5h" value="expectedJsonDump" />
            <node concept="3uibUv" id="lO9TSUBsyq" role="1tU5fm">
              <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
            </node>
            <node concept="1rXfSq" id="lO9TSUBsyr" role="33vP2m">
              <ref role="37wK5l" node="7JjSHvQ4HQK" resolve="loadJsonDump" />
              <node concept="Xl_RD" id="lO9TSUBsys" role="37wK5m">
                <property role="Xl_RC" value="dump_project1" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="lO9TSUBsyt" role="3cqZAp">
          <node concept="1rXfSq" id="lO9TSUBsyu" role="3clFbG">
            <ref role="37wK5l" node="7JjSHvQ4V3I" resolve="assertJsonsAreEquals" />
            <node concept="37vLTw" id="lO9TSUBsyv" role="37wK5m">
              <ref role="3cqZAo" node="lO9TSUBsyp" resolve="expectedJsonDump" />
            </node>
            <node concept="37vLTw" id="lO9TSUBsyw" role="37wK5m">
              <ref role="3cqZAo" node="lO9TSUBsyj" resolve="actualJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="lO9TSUCgBZ" role="3cqZAp" />
        <node concept="3SKdUt" id="lO9TSUChbW" role="3cqZAp">
          <node concept="1PaTwC" id="lO9TSUChbX" role="1aUNEU">
            <node concept="3oM_SD" id="lO9TSUChbY" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="lO9TSUChBy" role="1PaTwD">
              <property role="3oM_SC" value="add" />
            </node>
            <node concept="3oM_SD" id="lO9TSUChB_" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="lO9TSUChBL" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKyC6c" role="1PaTwD">
              <property role="3oM_SC" value="then" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKyC6q" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKyC6x" role="1PaTwD">
              <property role="3oM_SC" value="add" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKyC6D" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKyC6U" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKyC74" role="1PaTwD">
              <property role="3oM_SC" value="both" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKyC7f" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKyC7F" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKyC7S" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKyC86" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKyC8l" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKyC9w" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKyC9T" role="1PaTwD">
              <property role="3oM_SC" value="existing" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKyCab" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="KjelMl8WtS" role="3cqZAp">
          <node concept="2OqwBi" id="KjelMl8XMn" role="3clFbG">
            <node concept="2YIFZM" id="2a45eKor40o" role="2Oq$k0">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
            <node concept="liA8E" id="KjelMl8YxF" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.invokeAndWait(java.lang.Runnable,com.intellij.openapi.application.ModalityState)" resolve="invokeAndWait" />
              <node concept="2ShNRf" id="KjelMl87Ed" role="37wK5m">
                <node concept="YeOm9" id="KjelMl886w" role="2ShVmc">
                  <node concept="1Y3b0j" id="KjelMl886z" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="KjelMl886$" role="1B3o_S" />
                    <node concept="3clFb_" id="KjelMl886D" role="jymVt">
                      <property role="TrG5h" value="run" />
                      <node concept="3Tm1VV" id="KjelMl886E" role="1B3o_S" />
                      <node concept="3cqZAl" id="KjelMl886G" role="3clF45" />
                      <node concept="3clFbS" id="KjelMl886H" role="3clF47">
                        <node concept="1QHqEO" id="KjelMl89Gs" role="3cqZAp">
                          <node concept="1QHqEC" id="KjelMl89Gu" role="1QHqEI">
                            <node concept="3clFbS" id="KjelMl89Gw" role="1bW5cS">
                              <node concept="3cpWs8" id="KjelMl8j5a" role="3cqZAp">
                                <node concept="3cpWsn" id="KjelMl8j5b" role="3cpWs9">
                                  <property role="TrG5h" value="newModule" />
                                  <node concept="3uibUv" id="KjelMl8j5c" role="1tU5fm">
                                    <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                                  </node>
                                  <node concept="2OqwBi" id="lO9TSUCjdG" role="33vP2m">
                                    <node concept="37vLTw" id="lO9TSUCieb" role="2Oq$k0">
                                      <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                                    </node>
                                    <node concept="AQDAd" id="lO9TSUDmEX" role="2OqNvi">
                                      <ref role="37wK5l" to="csg2:lO9TSUC_oI" resolve="createModule" />
                                      <node concept="Xl_RD" id="lO9TSUDmJD" role="37wK5m">
                                        <property role="Xl_RC" value="My New Module" />
                                      </node>
                                      <node concept="2YIFZM" id="lO9TSUDmWh" role="37wK5m">
                                        <ref role="1Pybhc" to="z1c3:~ModuleId" resolve="ModuleId" />
                                        <ref role="37wK5l" to="z1c3:~ModuleId.regular(java.util.UUID)" resolve="regular" />
                                        <node concept="2YIFZM" id="lO9TSUDn3U" role="37wK5m">
                                          <ref role="1Pybhc" to="33ny:~UUID" resolve="UUID" />
                                          <ref role="37wK5l" to="33ny:~UUID.fromString(java.lang.String)" resolve="fromString" />
                                          <node concept="Xl_RD" id="lO9TSUDn8N" role="37wK5m">
                                            <property role="Xl_RC" value="0c2e757d-53c3-4694-b3b1-a6db9dd85152" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="Xjq3P" id="lO9TSUDnf1" role="37wK5m" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="KjelMl8FMh" role="3cqZAp">
                                <node concept="3cpWsn" id="KjelMl8FMi" role="3cpWs9">
                                  <property role="TrG5h" value="newModel" />
                                  <node concept="3uibUv" id="KjelMl8FMj" role="1tU5fm">
                                    <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                  </node>
                                  <node concept="2OqwBi" id="KjelMl8GEX" role="33vP2m">
                                    <node concept="37vLTw" id="KjelMl8GmX" role="2Oq$k0">
                                      <ref role="3cqZAo" node="KjelMl8j5b" resolve="newModule" />
                                    </node>
                                    <node concept="AQDAd" id="KjelMl8GOM" role="2OqNvi">
                                      <ref role="37wK5l" to="csg2:KjelMl8wUk" resolve="createModel" />
                                      <node concept="Xl_RD" id="KjelMl8H2t" role="37wK5m">
                                        <property role="Xl_RC" value="my.wonderful.brandnew.model" />
                                      </node>
                                      <node concept="2YIFZM" id="KjelMl8HJJ" role="37wK5m">
                                        <ref role="37wK5l" to="w1kc:~SModelId.regular(java.util.UUID)" resolve="regular" />
                                        <ref role="1Pybhc" to="w1kc:~SModelId" resolve="SModelId" />
                                        <node concept="2YIFZM" id="KjelMl8I1R" role="37wK5m">
                                          <ref role="37wK5l" to="33ny:~UUID.fromString(java.lang.String)" resolve="fromString" />
                                          <ref role="1Pybhc" to="33ny:~UUID" resolve="UUID" />
                                          <node concept="Xl_RD" id="KjelMl8IfT" role="37wK5m">
                                            <property role="Xl_RC" value="0c2e757d-5555-4444-3333-a6db9dd85152" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1gVbGN" id="2FX9uaKvqip" role="3cqZAp">
                                <node concept="17R0WA" id="2FX9uaKvqiq" role="1gVkn0">
                                  <node concept="3cmrfG" id="2FX9uaKvqir" role="3uHU7w">
                                    <property role="3cmrfH" value="2" />
                                  </node>
                                  <node concept="2OqwBi" id="2FX9uaKvqis" role="3uHU7B">
                                    <node concept="2OqwBi" id="2FX9uaKvqit" role="2Oq$k0">
                                      <node concept="37vLTw" id="2FX9uaKvqiu" role="2Oq$k0">
                                        <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                                      </node>
                                      <node concept="liA8E" id="2FX9uaKvqiv" role="2OqNvi">
                                        <ref role="37wK5l" to="z1c3:~ProjectBase.getProjectModules()" resolve="getProjectModules" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="2FX9uaKvqiw" role="2OqNvi">
                                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs3" id="2FX9uaKvqix" role="1gVpfI">
                                  <node concept="Xl_RD" id="2FX9uaKvqiy" role="3uHU7B">
                                    <property role="Xl_RC" value="Two project modules expected but found " />
                                  </node>
                                  <node concept="2OqwBi" id="2FX9uaKvqiz" role="3uHU7w">
                                    <node concept="2OqwBi" id="2FX9uaKvqi$" role="2Oq$k0">
                                      <node concept="37vLTw" id="2FX9uaKvqi_" role="2Oq$k0">
                                        <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                                      </node>
                                      <node concept="liA8E" id="2FX9uaKvqiA" role="2OqNvi">
                                        <ref role="37wK5l" to="z1c3:~ProjectBase.getProjectModules()" resolve="getProjectModules" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="2FX9uaKvqiB" role="2OqNvi">
                                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="2FX9uaKvqiC" role="3cqZAp">
                                <node concept="3cpWsn" id="2FX9uaKvqiD" role="3cpWs9">
                                  <property role="TrG5h" value="myNewModule" />
                                  <node concept="3uibUv" id="2FX9uaKvqiE" role="1tU5fm">
                                    <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                                  </node>
                                  <node concept="2OqwBi" id="2FX9uaKvqiG" role="33vP2m">
                                    <node concept="37vLTw" id="2FX9uaKvqiH" role="2Oq$k0">
                                      <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                                    </node>
                                    <node concept="AQDAd" id="2FX9uaKvuRl" role="2OqNvi">
                                      <ref role="37wK5l" node="5cWpYFRLtp5" resolve="getProjectModule" />
                                      <node concept="Xl_RD" id="2FX9uaKvv2x" role="37wK5m">
                                        <property role="Xl_RC" value="My New Module" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1gVbGN" id="2FX9uaKvqiL" role="3cqZAp">
                                <node concept="17R0WA" id="2FX9uaKvqiM" role="1gVkn0">
                                  <node concept="2OqwBi" id="2FX9uaKvqiO" role="3uHU7B">
                                    <node concept="37vLTw" id="2FX9uaKvqiP" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2FX9uaKvqiD" resolve="myNewModule" />
                                    </node>
                                    <node concept="liA8E" id="2FX9uaKvqiQ" role="2OqNvi">
                                      <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="2FX9uaKvv$1" role="3uHU7w">
                                    <property role="Xl_RC" value="My New Module" />
                                  </node>
                                </node>
                                <node concept="3cpWs3" id="2FX9uaKvqiR" role="1gVpfI">
                                  <node concept="2OqwBi" id="2FX9uaKvqiS" role="3uHU7w">
                                    <node concept="37vLTw" id="2FX9uaKvqiT" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2FX9uaKvqiD" resolve="myNewModule" />
                                    </node>
                                    <node concept="liA8E" id="2FX9uaKvqiU" role="2OqNvi">
                                      <ref role="37wK5l" to="lui2:~SModule.getModuleName()" resolve="getModuleName" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="2FX9uaKvqiV" role="3uHU7B">
                                    <property role="Xl_RC" value="Module expected to be named My New Module but it was named " />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="2FX9uaKvBg2" role="3cqZAp">
                                <node concept="2OqwBi" id="2FX9uaKvBGu" role="3clFbG">
                                  <node concept="37vLTw" id="2FX9uaKvBfX" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2FX9uaKvqiD" resolve="myNewModule" />
                                  </node>
                                  <node concept="AQDAd" id="2FX9uaKvCa8" role="2OqNvi">
                                    <ref role="37wK5l" node="7jRNnvCeAHO" resolve="assertNModels" />
                                    <node concept="3cmrfG" id="2FX9uaKvCwB" role="37wK5m">
                                      <property role="3cmrfH" value="1" />
                                    </node>
                                    <node concept="3clFbT" id="2FX9uaKvDNw" role="37wK5m">
                                      <property role="3clFbU" value="true" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="2FX9uaKyFri" role="3cqZAp" />
                              <node concept="3cpWs8" id="2FX9uaKyCKC" role="3cqZAp">
                                <node concept="3cpWsn" id="2FX9uaKyCKD" role="3cpWs9">
                                  <property role="TrG5h" value="oldModule" />
                                  <node concept="3uibUv" id="2FX9uaKyCKE" role="1tU5fm">
                                    <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                                  </node>
                                  <node concept="2OqwBi" id="2FX9uaKyEqP" role="33vP2m">
                                    <node concept="37vLTw" id="2FX9uaKyDwn" role="2Oq$k0">
                                      <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                                    </node>
                                    <node concept="AQDAd" id="2FX9uaKyEEw" role="2OqNvi">
                                      <ref role="37wK5l" node="5cWpYFRLtp5" resolve="getProjectModule" />
                                      <node concept="Xl_RD" id="2FX9uaKyEQX" role="37wK5m">
                                        <property role="Xl_RC" value="simple.solution1" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="2FX9uaKyGco" role="3cqZAp">
                                <node concept="2OqwBi" id="2FX9uaKyGEU" role="3clFbG">
                                  <node concept="37vLTw" id="2FX9uaKyGcm" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2FX9uaKyCKD" resolve="oldModule" />
                                  </node>
                                  <node concept="AQDAd" id="2FX9uaKyH7M" role="2OqNvi">
                                    <ref role="37wK5l" node="7jRNnvCeAHO" resolve="assertNModels" />
                                    <node concept="3cmrfG" id="2FX9uaKyHvm" role="37wK5m">
                                      <property role="3cmrfH" value="1" />
                                    </node>
                                    <node concept="3clFbT" id="2FX9uaKyI2o" role="37wK5m">
                                      <property role="3clFbU" value="true" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="2FX9uaKyIH5" role="3cqZAp">
                                <node concept="3cpWsn" id="2FX9uaKyIH6" role="3cpWs9">
                                  <property role="TrG5h" value="newModelInOldModule" />
                                  <node concept="3uibUv" id="2FX9uaKyIH7" role="1tU5fm">
                                    <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                  </node>
                                  <node concept="2OqwBi" id="2FX9uaKyIH8" role="33vP2m">
                                    <node concept="37vLTw" id="2FX9uaKDzQG" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2FX9uaKyCKD" resolve="oldModule" />
                                    </node>
                                    <node concept="AQDAd" id="2FX9uaKyIHa" role="2OqNvi">
                                      <ref role="37wK5l" to="csg2:KjelMl8wUk" resolve="createModel" />
                                      <node concept="Xl_RD" id="2FX9uaKyIHb" role="37wK5m">
                                        <property role="Xl_RC" value="my.wonderful.brandnew.modelInOldModule" />
                                      </node>
                                      <node concept="2YIFZM" id="2FX9uaKyIHc" role="37wK5m">
                                        <ref role="37wK5l" to="w1kc:~SModelId.regular(java.util.UUID)" resolve="regular" />
                                        <ref role="1Pybhc" to="w1kc:~SModelId" resolve="SModelId" />
                                        <node concept="2YIFZM" id="2FX9uaKyIHd" role="37wK5m">
                                          <ref role="37wK5l" to="33ny:~UUID.fromString(java.lang.String)" resolve="fromString" />
                                          <ref role="1Pybhc" to="33ny:~UUID" resolve="UUID" />
                                          <node concept="Xl_RD" id="2FX9uaKyIHe" role="37wK5m">
                                            <property role="Xl_RC" value="0c2e757d-5555-4444-8888-a6db9dd85152" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="2FX9uaKyIeS" role="3cqZAp">
                                <node concept="2OqwBi" id="2FX9uaKyIeT" role="3clFbG">
                                  <node concept="37vLTw" id="2FX9uaKyIeU" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2FX9uaKyCKD" resolve="oldModule" />
                                  </node>
                                  <node concept="AQDAd" id="2FX9uaKyIeV" role="2OqNvi">
                                    <ref role="37wK5l" node="7jRNnvCeAHO" resolve="assertNModels" />
                                    <node concept="3cmrfG" id="2FX9uaKyIeW" role="37wK5m">
                                      <property role="3cmrfH" value="2" />
                                    </node>
                                    <node concept="3clFbT" id="2FX9uaKyIeX" role="37wK5m">
                                      <property role="3clFbU" value="true" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="KjelMl8aSG" role="ukAjM">
                            <node concept="37vLTw" id="KjelMl8a6F" role="2Oq$k0">
                              <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                            </node>
                            <node concept="liA8E" id="KjelMl8bBr" role="2OqNvi">
                              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="KjelMl886J" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="KjelMl90aT" role="37wK5m">
                <ref role="37wK5l" to="bd8o:~ModalityState.defaultModalityState()" resolve="defaultModalityState" />
                <ref role="1Pybhc" to="bd8o:~ModalityState" resolve="ModalityState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="KjelMl8dVw" role="3cqZAp">
          <node concept="2YIFZM" id="KjelMl8dVx" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <node concept="3cmrfG" id="2FX9uaKJce2" role="37wK5m">
              <property role="3cmrfH" value="1500" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2FX9uaKy$YE" role="3cqZAp" />
        <node concept="3SKdUt" id="lO9TSUDqzo" role="3cqZAp">
          <node concept="1PaTwC" id="lO9TSUDqzp" role="1aUNEU">
            <node concept="3oM_SD" id="2FX9uaKJaqy" role="1PaTwD">
              <property role="3oM_SC" value="verify" />
            </node>
            <node concept="3oM_SD" id="lO9TSUDr03" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="lO9TSUDr07" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="lO9TSUDr0c" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="lO9TSUDr0i" role="1PaTwD">
              <property role="3oM_SC" value="added" />
            </node>
            <node concept="3oM_SD" id="lO9TSUDr0p" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="lO9TSUDr0x" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="lO9TSUDr0E" role="1PaTwD">
              <property role="3oM_SC" value="cloud" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="KjelMl8dV$" role="3cqZAp">
          <node concept="1PaTwC" id="KjelMl8dV_" role="1aUNEU">
            <node concept="3oM_SD" id="KjelMl8dVA" role="1PaTwD">
              <property role="3oM_SC" value="dump" />
            </node>
            <node concept="3oM_SD" id="KjelMl8dVB" role="1PaTwD">
              <property role="3oM_SC" value="ModelixServer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="KjelMl8fNU" role="3cqZAp">
          <node concept="37vLTI" id="KjelMl8fNW" role="3clFbG">
            <node concept="2OqwBi" id="KjelMl8dVF" role="37vLTx">
              <node concept="37vLTw" id="KjelMl8dVG" role="2Oq$k0">
                <ref role="3cqZAo" node="lO9TSUBsx7" resolve="ms" />
              </node>
              <node concept="liA8E" id="KjelMl8dVH" role="2OqNvi">
                <ref role="37wK5l" node="7JjSHvQ43L7" resolve="jsonDump" />
              </node>
            </node>
            <node concept="37vLTw" id="KjelMl8hbQ" role="37vLTJ">
              <ref role="3cqZAo" node="lO9TSUBsyj" resolve="actualJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="KjelMl8gqD" role="3cqZAp">
          <node concept="37vLTI" id="KjelMl8gqF" role="3clFbG">
            <node concept="1rXfSq" id="KjelMl8dVL" role="37vLTx">
              <ref role="37wK5l" node="7JjSHvQ4HQK" resolve="loadJsonDump" />
              <node concept="Xl_RD" id="KjelMl8dVM" role="37wK5m">
                <property role="Xl_RC" value="dump_project2" />
              </node>
            </node>
            <node concept="37vLTw" id="KjelMl8inD" role="37vLTJ">
              <ref role="3cqZAo" node="lO9TSUBsyp" resolve="expectedJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="KjelMl8dVN" role="3cqZAp">
          <node concept="1rXfSq" id="KjelMl8dVO" role="3clFbG">
            <ref role="37wK5l" node="7JjSHvQ4V3I" resolve="assertJsonsAreEquals" />
            <node concept="37vLTw" id="KjelMl8ixK" role="37wK5m">
              <ref role="3cqZAo" node="lO9TSUBsyp" resolve="expectedJsonDump" />
            </node>
            <node concept="37vLTw" id="KjelMl8iB1" role="37wK5m">
              <ref role="3cqZAo" node="lO9TSUBsyj" resolve="actualJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="KjelMl8dtH" role="3cqZAp" />
        <node concept="3SKdUt" id="lO9TSUDulk" role="3cqZAp">
          <node concept="1PaTwC" id="lO9TSUDull" role="1aUNEU">
            <node concept="3oM_SD" id="lO9TSUDulm" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="lO9TSUDuMe" role="1PaTwD">
              <property role="3oM_SC" value="remove" />
            </node>
            <node concept="3oM_SD" id="lO9TSUDuMh" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="lO9TSUDuMl" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="KjelMl8Oqj" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="KjelMl8Oqx" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="2FX9uaKJw_o" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="2FX9uaKJecH" role="8Wnug">
            <node concept="2OqwBi" id="2FX9uaKJecI" role="3clFbG">
              <node concept="2YIFZM" id="2FX9uaKJecJ" role="2Oq$k0">
                <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
              </node>
              <node concept="liA8E" id="2FX9uaKJecK" role="2OqNvi">
                <ref role="37wK5l" to="bd8o:~Application.invokeAndWait(java.lang.Runnable,com.intellij.openapi.application.ModalityState)" resolve="invokeAndWait" />
                <node concept="2ShNRf" id="2FX9uaKJecL" role="37wK5m">
                  <node concept="YeOm9" id="2FX9uaKJecM" role="2ShVmc">
                    <node concept="1Y3b0j" id="2FX9uaKJecN" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                      <node concept="3Tm1VV" id="2FX9uaKJecO" role="1B3o_S" />
                      <node concept="3clFb_" id="2FX9uaKJecP" role="jymVt">
                        <property role="TrG5h" value="run" />
                        <node concept="3Tm1VV" id="2FX9uaKJecQ" role="1B3o_S" />
                        <node concept="3cqZAl" id="2FX9uaKJecR" role="3clF45" />
                        <node concept="3clFbS" id="2FX9uaKJecS" role="3clF47">
                          <node concept="1QHqEO" id="2FX9uaKJecT" role="3cqZAp">
                            <node concept="1QHqEC" id="2FX9uaKJecU" role="1QHqEI">
                              <node concept="3clFbS" id="2FX9uaKJecV" role="1bW5cS">
                                <node concept="3cpWs8" id="2FX9uaKJlHS" role="3cqZAp">
                                  <node concept="3cpWsn" id="2FX9uaKJlHT" role="3cpWs9">
                                    <property role="TrG5h" value="oldModule" />
                                    <node concept="3uibUv" id="2FX9uaKJlHU" role="1tU5fm">
                                      <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                                    </node>
                                    <node concept="2OqwBi" id="2FX9uaKJlHV" role="33vP2m">
                                      <node concept="37vLTw" id="2FX9uaKJlHW" role="2Oq$k0">
                                        <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                                      </node>
                                      <node concept="AQDAd" id="2FX9uaKJlHX" role="2OqNvi">
                                        <ref role="37wK5l" node="5cWpYFRLtp5" resolve="getProjectModule" />
                                        <node concept="Xl_RD" id="2FX9uaKJlHY" role="37wK5m">
                                          <property role="Xl_RC" value="simple.solution1" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="2FX9uaKJlPt" role="3cqZAp">
                                  <node concept="2OqwBi" id="2FX9uaKJlPu" role="3clFbG">
                                    <node concept="37vLTw" id="2FX9uaKJmgy" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2FX9uaKJlHT" resolve="oldModule" />
                                    </node>
                                    <node concept="AQDAd" id="2FX9uaKJlPw" role="2OqNvi">
                                      <ref role="37wK5l" node="7jRNnvCeAHO" resolve="assertNModels" />
                                      <node concept="3cmrfG" id="2FX9uaKJlPx" role="37wK5m">
                                        <property role="3cmrfH" value="2" />
                                      </node>
                                      <node concept="3clFbT" id="2FX9uaKJlPy" role="37wK5m">
                                        <property role="3clFbU" value="true" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs8" id="2FX9uaKJedw" role="3cqZAp">
                                  <node concept="3cpWsn" id="2FX9uaKJedx" role="3cpWs9">
                                    <property role="TrG5h" value="myNewModule" />
                                    <node concept="3uibUv" id="2FX9uaKJedy" role="1tU5fm">
                                      <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                                    </node>
                                    <node concept="2OqwBi" id="2FX9uaKJedz" role="33vP2m">
                                      <node concept="37vLTw" id="2FX9uaKJed$" role="2Oq$k0">
                                        <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                                      </node>
                                      <node concept="AQDAd" id="2FX9uaKJed_" role="2OqNvi">
                                        <ref role="37wK5l" node="5cWpYFRLtp5" resolve="getProjectModule" />
                                        <node concept="Xl_RD" id="2FX9uaKJedA" role="37wK5m">
                                          <property role="Xl_RC" value="My New Module" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="2FX9uaKJedM" role="3cqZAp">
                                  <node concept="2OqwBi" id="2FX9uaKJedN" role="3clFbG">
                                    <node concept="37vLTw" id="2FX9uaKJedO" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2FX9uaKJedx" resolve="myNewModule" />
                                    </node>
                                    <node concept="AQDAd" id="2FX9uaKJedP" role="2OqNvi">
                                      <ref role="37wK5l" node="7jRNnvCeAHO" resolve="assertNModels" />
                                      <node concept="3cmrfG" id="2FX9uaKJedQ" role="37wK5m">
                                        <property role="3cmrfH" value="2" />
                                      </node>
                                      <node concept="3clFbT" id="2FX9uaKJedR" role="37wK5m">
                                        <property role="3clFbU" value="true" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs8" id="2FX9uaKJlkh" role="3cqZAp">
                                  <node concept="3cpWsn" id="2FX9uaKJlki" role="3cpWs9">
                                    <property role="TrG5h" value="model1" />
                                    <node concept="3uibUv" id="2FX9uaKJmGz" role="1tU5fm">
                                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                    </node>
                                    <node concept="2OqwBi" id="2FX9uaKJizW" role="33vP2m">
                                      <node concept="37vLTw" id="2FX9uaKJhMJ" role="2Oq$k0">
                                        <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                                      </node>
                                      <node concept="AQDAd" id="2FX9uaKJjiM" role="2OqNvi">
                                        <ref role="37wK5l" node="5cWpYFRLM6f" resolve="getProjectModel" />
                                        <node concept="Xl_RD" id="2FX9uaKJmjK" role="37wK5m">
                                          <property role="Xl_RC" value="simple.solution1" />
                                        </node>
                                        <node concept="Xl_RD" id="2FX9uaKJmyO" role="37wK5m">
                                          <property role="Xl_RC" value="simple.solution1.model1" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="2FX9uaKJrBz" role="3cqZAp">
                                  <node concept="2OqwBi" id="2FX9uaKJsMs" role="3clFbG">
                                    <node concept="1eOMI4" id="2FX9uaKJrBx" role="2Oq$k0">
                                      <node concept="10QFUN" id="2FX9uaKJrBu" role="1eOMHV">
                                        <node concept="3uibUv" id="2FX9uaKJrS2" role="10QFUM">
                                          <ref role="3uigEE" to="pa15:~DefaultModelRoot" resolve="DefaultModelRoot" />
                                        </node>
                                        <node concept="2OqwBi" id="2FX9uaKJpXU" role="10QFUP">
                                          <node concept="2OqwBi" id="2FX9uaKJpmh" role="2Oq$k0">
                                            <node concept="2OqwBi" id="2FX9uaKJp2d" role="2Oq$k0">
                                              <node concept="37vLTw" id="2FX9uaKJoKv" role="2Oq$k0">
                                                <ref role="3cqZAo" node="2FX9uaKJlHT" resolve="oldModule" />
                                              </node>
                                              <node concept="liA8E" id="2FX9uaKJpaD" role="2OqNvi">
                                                <ref role="37wK5l" to="lui2:~SModule.getModelRoots()" resolve="getModelRoots" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="2FX9uaKJp_L" role="2OqNvi">
                                              <ref role="37wK5l" to="wyt6:~Iterable.iterator()" resolve="iterator" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="2FX9uaKJqsl" role="2OqNvi">
                                            <ref role="37wK5l" to="33ny:~Iterator.next()" resolve="next" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="1B$H19" id="2FX9uaKJsMN" role="2OqNvi" />
                                  </node>
                                </node>
                                <node concept="3clFbF" id="2FX9uaKJgo8" role="3cqZAp">
                                  <node concept="2OqwBi" id="2FX9uaKJgo9" role="3clFbG">
                                    <node concept="37vLTw" id="2FX9uaKJgoa" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2FX9uaKJedx" resolve="myNewModule" />
                                    </node>
                                    <node concept="AQDAd" id="2FX9uaKJgob" role="2OqNvi">
                                      <ref role="37wK5l" node="7jRNnvCeAHO" resolve="assertNModels" />
                                      <node concept="3cmrfG" id="2FX9uaKJgoc" role="37wK5m">
                                        <property role="3cmrfH" value="1" />
                                      </node>
                                      <node concept="3clFbT" id="2FX9uaKJgod" role="37wK5m">
                                        <property role="3clFbU" value="true" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbH" id="2FX9uaKJedS" role="3cqZAp" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="2FX9uaKJeem" role="ukAjM">
                              <node concept="37vLTw" id="2FX9uaKJeen" role="2Oq$k0">
                                <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                              </node>
                              <node concept="liA8E" id="2FX9uaKJeeo" role="2OqNvi">
                                <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="2FX9uaKJeep" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="2FX9uaKJeeq" role="37wK5m">
                  <ref role="37wK5l" to="bd8o:~ModalityState.defaultModalityState()" resolve="defaultModalityState" />
                  <ref role="1Pybhc" to="bd8o:~ModalityState" resolve="ModalityState" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="2FX9uaKJt$0" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="2FX9uaKJeer" role="8Wnug">
            <node concept="2YIFZM" id="2FX9uaKJees" role="3clFbG">
              <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
              <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
              <node concept="3cmrfG" id="2FX9uaKJeet" role="37wK5m">
                <property role="3cmrfH" value="500" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2FX9uaKJdgx" role="3cqZAp" />
        <node concept="3clFbH" id="KjelMl8JiP" role="3cqZAp" />
        <node concept="3SKdUt" id="KjelMl8JDI" role="3cqZAp">
          <node concept="1PaTwC" id="KjelMl8JDJ" role="1aUNEU">
            <node concept="3oM_SD" id="2FX9uaKJFdv" role="1PaTwD">
              <property role="3oM_SC" value="remove" />
            </node>
            <node concept="3oM_SD" id="KjelMl8JDM" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="KjelMl8JDN" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="KjelMl8OqK" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="KjelMl8OqY" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2FX9uaKJxvq" role="3cqZAp">
          <node concept="2OqwBi" id="2FX9uaKJxvr" role="3clFbG">
            <node concept="2YIFZM" id="2FX9uaKJxvs" role="2Oq$k0">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
            <node concept="liA8E" id="2FX9uaKJxvt" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.invokeAndWait(java.lang.Runnable,com.intellij.openapi.application.ModalityState)" resolve="invokeAndWait" />
              <node concept="2ShNRf" id="2FX9uaKJxvu" role="37wK5m">
                <node concept="YeOm9" id="2FX9uaKJxvv" role="2ShVmc">
                  <node concept="1Y3b0j" id="2FX9uaKJxvw" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="2FX9uaKJxvx" role="1B3o_S" />
                    <node concept="3clFb_" id="2FX9uaKJxvy" role="jymVt">
                      <property role="TrG5h" value="run" />
                      <node concept="3Tm1VV" id="2FX9uaKJxvz" role="1B3o_S" />
                      <node concept="3cqZAl" id="2FX9uaKJxv$" role="3clF45" />
                      <node concept="3clFbS" id="2FX9uaKJxv_" role="3clF47">
                        <node concept="1QHqEO" id="2FX9uaKJxvA" role="3cqZAp">
                          <node concept="1QHqEC" id="2FX9uaKJxvB" role="1QHqEI">
                            <node concept="3clFbS" id="2FX9uaKJxvC" role="1bW5cS">
                              <node concept="3cpWs8" id="2FX9uaKJxvD" role="3cqZAp">
                                <node concept="3cpWsn" id="2FX9uaKJxvE" role="3cpWs9">
                                  <property role="TrG5h" value="oldModule" />
                                  <node concept="3uibUv" id="2FX9uaKJxvF" role="1tU5fm">
                                    <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                                  </node>
                                  <node concept="2OqwBi" id="2FX9uaKJxvG" role="33vP2m">
                                    <node concept="37vLTw" id="2FX9uaKJxvH" role="2Oq$k0">
                                      <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                                    </node>
                                    <node concept="AQDAd" id="2FX9uaKJxvI" role="2OqNvi">
                                      <ref role="37wK5l" node="5cWpYFRLtp5" resolve="getProjectModule" />
                                      <node concept="Xl_RD" id="2FX9uaKJxvJ" role="37wK5m">
                                        <property role="Xl_RC" value="simple.solution1" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="2FX9uaKJzgd" role="3cqZAp">
                                <node concept="2OqwBi" id="2FX9uaKJzYs" role="3clFbG">
                                  <node concept="37vLTw" id="2FX9uaKJzgb" role="2Oq$k0">
                                    <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                                  </node>
                                  <node concept="liA8E" id="2FX9uaKJ$Ez" role="2OqNvi">
                                    <ref role="37wK5l" to="z1c3:~ProjectBase.removeModule(org.jetbrains.mps.openapi.module.SModule)" resolve="removeModule" />
                                    <node concept="37vLTw" id="2FX9uaKJ_4e" role="37wK5m">
                                      <ref role="3cqZAo" node="2FX9uaKJxvE" resolve="oldModule" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3vlDli" id="2FX9uaKJ_wP" role="3cqZAp">
                                <node concept="3cmrfG" id="2FX9uaKJD5K" role="3tpDZB">
                                  <property role="3cmrfH" value="1" />
                                </node>
                                <node concept="2OqwBi" id="2FX9uaKJBMC" role="3tpDZA">
                                  <node concept="2OqwBi" id="2FX9uaKJAET" role="2Oq$k0">
                                    <node concept="37vLTw" id="2FX9uaKJ_SZ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                                    </node>
                                    <node concept="liA8E" id="2FX9uaKJBg7" role="2OqNvi">
                                      <ref role="37wK5l" to="z1c3:~ProjectBase.getProjectModules()" resolve="getProjectModules" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="2FX9uaKJCDi" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2FX9uaKJxwv" role="ukAjM">
                            <node concept="37vLTw" id="2FX9uaKJxww" role="2Oq$k0">
                              <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                            </node>
                            <node concept="liA8E" id="2FX9uaKJxwx" role="2OqNvi">
                              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="2FX9uaKJxwy" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="2FX9uaKJxwz" role="37wK5m">
                <ref role="37wK5l" to="bd8o:~ModalityState.defaultModalityState()" resolve="defaultModalityState" />
                <ref role="1Pybhc" to="bd8o:~ModalityState" resolve="ModalityState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2FX9uaKJDa9" role="3cqZAp">
          <node concept="2YIFZM" id="2FX9uaKJDab" role="3clFbG">
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <node concept="3cmrfG" id="2FX9uaKJDac" role="37wK5m">
              <property role="3cmrfH" value="500" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2FX9uaKJFdH" role="3cqZAp" />
        <node concept="3SKdUt" id="2FX9uaKJG8X" role="3cqZAp">
          <node concept="1PaTwC" id="2FX9uaKJG8Y" role="1aUNEU">
            <node concept="3oM_SD" id="2FX9uaKJG8Z" role="1PaTwD">
              <property role="3oM_SC" value="verify" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKJG90" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKJG91" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKJG92" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKJHeI" role="1PaTwD">
              <property role="3oM_SC" value="remove" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKJG94" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKJG95" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKJG96" role="1PaTwD">
              <property role="3oM_SC" value="cloud" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2FX9uaKJG9b" role="3cqZAp">
          <node concept="37vLTI" id="2FX9uaKJG9c" role="3clFbG">
            <node concept="2OqwBi" id="2FX9uaKJG9d" role="37vLTx">
              <node concept="37vLTw" id="2FX9uaKJG9e" role="2Oq$k0">
                <ref role="3cqZAo" node="lO9TSUBsx7" resolve="ms" />
              </node>
              <node concept="liA8E" id="2FX9uaKJG9f" role="2OqNvi">
                <ref role="37wK5l" node="7JjSHvQ43L7" resolve="jsonDump" />
              </node>
            </node>
            <node concept="37vLTw" id="2FX9uaKJG9g" role="37vLTJ">
              <ref role="3cqZAo" node="lO9TSUBsyj" resolve="actualJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2FX9uaKJG9h" role="3cqZAp">
          <node concept="37vLTI" id="2FX9uaKJG9i" role="3clFbG">
            <node concept="1rXfSq" id="2FX9uaKJG9j" role="37vLTx">
              <ref role="37wK5l" node="7JjSHvQ4HQK" resolve="loadJsonDump" />
              <node concept="Xl_RD" id="2FX9uaKJG9k" role="37wK5m">
                <property role="Xl_RC" value="dump_project3" />
              </node>
            </node>
            <node concept="37vLTw" id="2FX9uaKJG9l" role="37vLTJ">
              <ref role="3cqZAo" node="lO9TSUBsyp" resolve="expectedJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2FX9uaKJG9m" role="3cqZAp">
          <node concept="1rXfSq" id="2FX9uaKJG9n" role="3clFbG">
            <ref role="37wK5l" node="7JjSHvQ4V3I" resolve="assertJsonsAreEquals" />
            <node concept="37vLTw" id="2FX9uaKJG9o" role="37wK5m">
              <ref role="3cqZAo" node="lO9TSUBsyp" resolve="expectedJsonDump" />
            </node>
            <node concept="37vLTw" id="2FX9uaKJG9p" role="37wK5m">
              <ref role="3cqZAo" node="lO9TSUBsyj" resolve="actualJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2FX9uaKJFlD" role="3cqZAp" />
        <node concept="3SKdUt" id="KjelMl8LDj" role="3cqZAp">
          <node concept="1PaTwC" id="KjelMl8LDk" role="1aUNEU">
            <node concept="3oM_SD" id="KjelMl8McW" role="1PaTwD">
              <property role="3oM_SC" value="create" />
            </node>
            <node concept="3oM_SD" id="KjelMl8Md7" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="KjelMl8Mdj" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="KjelMl8Mdo" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="KjelMl8Mdu" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="KjelMl8Md_" role="1PaTwD">
              <property role="3oM_SC" value="server," />
            </node>
            <node concept="3oM_SD" id="KjelMl8NGX" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="KjelMl8NH6" role="1PaTwD">
              <property role="3oM_SC" value="one" />
            </node>
            <node concept="3oM_SD" id="KjelMl8NHg" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2FX9uaKPlIF" role="3cqZAp">
          <node concept="2OqwBi" id="2FX9uaKPmNs" role="3clFbG">
            <node concept="37vLTw" id="2FX9uaKPlID" role="2Oq$k0">
              <ref role="3cqZAo" node="lO9TSUBsxI" resolve="treeInRepository" />
            </node>
            <node concept="liA8E" id="2FX9uaKPnx4" role="2OqNvi">
              <ref role="37wK5l" to="csg2:lOVi2Aa0LX" resolve="runWrite" />
              <node concept="1bVj0M" id="2FX9uaKPnEa" role="37wK5m">
                <node concept="37vLTG" id="2FX9uaKPpzm" role="1bW2Oz">
                  <property role="TrG5h" value="root" />
                  <node concept="3uibUv" id="2FX9uaKPpFv" role="1tU5fm">
                    <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                  </node>
                </node>
                <node concept="3clFbS" id="2FX9uaKPnEb" role="1bW5cS">
                  <node concept="3cpWs8" id="2FX9uaKPSvr" role="3cqZAp">
                    <node concept="3cpWsn" id="2FX9uaKPSvs" role="3cpWs9">
                      <property role="TrG5h" value="cloudProject" />
                      <node concept="3uibUv" id="2FX9uaKPSvt" role="1tU5fm">
                        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                      </node>
                      <node concept="2OqwBi" id="2FX9uaKPSZe" role="33vP2m">
                        <node concept="37vLTw" id="2FX9uaKPSLA" role="2Oq$k0">
                          <ref role="3cqZAo" node="lO9TSUBsxI" resolve="treeInRepository" />
                        </node>
                        <node concept="liA8E" id="2FX9uaKPT9g" role="2OqNvi">
                          <ref role="37wK5l" to="csg2:2FX9uaKPtaO" resolve="getProject" />
                          <node concept="Xl_RD" id="2FX9uaKPTlo" role="37wK5m">
                            <property role="Xl_RC" value="SimpleProjectF" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3vlDli" id="24If7DPKjoy" role="3cqZAp">
                    <node concept="3cmrfG" id="24If7DPKjoz" role="3tpDZB">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="24If7DPKjo$" role="3tpDZA">
                      <node concept="2OqwBi" id="24If7DPKjo_" role="2Oq$k0">
                        <node concept="37vLTw" id="24If7DPKjoA" role="2Oq$k0">
                          <ref role="3cqZAo" node="2FX9uaKPSvs" resolve="cloudProject" />
                        </node>
                        <node concept="AQDAd" id="24If7DPKjoB" role="2OqNvi">
                          <ref role="37wK5l" to="csg2:24If7DPFqLp" resolve="getChidlrenAsList" />
                          <node concept="2OqwBi" id="24If7DPKjoC" role="37wK5m">
                            <node concept="359W_D" id="24If7DPKjoD" role="2Oq$k0">
                              <ref role="359W_E" to="w7di:3uw$nPCBu_p" resolve="Project" />
                              <ref role="359W_F" to="w7di:3uw$nPCBuBy" resolve="modules" />
                            </node>
                            <node concept="liA8E" id="24If7DPKjoE" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="34oBXx" id="24If7DPKjoF" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3cpWs8" id="2FX9uaKQkQf" role="3cqZAp">
                    <node concept="3cpWsn" id="2FX9uaKQkQg" role="3cpWs9">
                      <property role="TrG5h" value="cloudModule" />
                      <node concept="3uibUv" id="2FX9uaKQkQh" role="1tU5fm">
                        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                      </node>
                      <node concept="2OqwBi" id="2FX9uaKPgdG" role="33vP2m">
                        <node concept="37vLTw" id="2FX9uaKPfj4" role="2Oq$k0">
                          <ref role="3cqZAo" node="lO9TSUBsxI" resolve="treeInRepository" />
                        </node>
                        <node concept="liA8E" id="2FX9uaKPTxJ" role="2OqNvi">
                          <ref role="37wK5l" to="csg2:2FX9uaKPW_N" resolve="createModuleUnderProject" />
                          <node concept="37vLTw" id="2FX9uaKQeul" role="37wK5m">
                            <ref role="3cqZAo" node="2FX9uaKPSvs" resolve="cloudProject" />
                          </node>
                          <node concept="Xl_RD" id="2FX9uaKQkgR" role="37wK5m">
                            <property role="Xl_RC" value="0c2e757d-7777-7777-7777-a6db9dd85152" />
                          </node>
                          <node concept="Xl_RD" id="2FX9uaKQeFb" role="37wK5m">
                            <property role="Xl_RC" value="cloudFirstModule" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2FX9uaKQrHl" role="3cqZAp">
                    <node concept="2OqwBi" id="2FX9uaKQrWY" role="3clFbG">
                      <node concept="37vLTw" id="2FX9uaKQrHj" role="2Oq$k0">
                        <ref role="3cqZAo" node="lO9TSUBsxI" resolve="treeInRepository" />
                      </node>
                      <node concept="liA8E" id="2FX9uaKQs92" role="2OqNvi">
                        <ref role="37wK5l" to="csg2:lOVi2Aa0LX" resolve="runWrite" />
                        <node concept="1bVj0M" id="2rg0XZ1jjGn" role="37wK5m">
                          <node concept="3clFbS" id="2rg0XZ1jjGo" role="1bW5cS">
                            <node concept="3cpWs8" id="2rg0XZ1jjGp" role="3cqZAp">
                              <node concept="3cpWsn" id="2rg0XZ1jjGq" role="3cpWs9">
                                <property role="TrG5h" value="newModel" />
                                <node concept="3uibUv" id="2rg0XZ1jjGr" role="1tU5fm">
                                  <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                                </node>
                                <node concept="2OqwBi" id="2rg0XZ1jjGs" role="33vP2m">
                                  <node concept="37vLTw" id="2FX9uaKQqJE" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2FX9uaKQkQg" resolve="cloudModule" />
                                  </node>
                                  <node concept="liA8E" id="2rg0XZ1jjGu" role="2OqNvi">
                                    <ref role="37wK5l" to="jks5:~INode.addNewChild(java.lang.String,int,org.modelix.model.api.IConcept)" resolve="addNewChild" />
                                    <node concept="2OqwBi" id="2rg0XZ1jjGv" role="37wK5m">
                                      <node concept="359W_D" id="2rg0XZ1jjGw" role="2Oq$k0">
                                        <ref role="359W_E" to="w7di:qmkA5fOskf" resolve="Module" />
                                        <ref role="359W_F" to="w7di:qmkA5fOski" resolve="models" />
                                      </node>
                                      <node concept="liA8E" id="2rg0XZ1jjGx" role="2OqNvi">
                                        <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                    <node concept="3cmrfG" id="2rg0XZ1jjGy" role="37wK5m">
                                      <property role="3cmrfH" value="-1" />
                                    </node>
                                    <node concept="2YIFZM" id="2rg0XZ1jjGz" role="37wK5m">
                                      <ref role="1Pybhc" to="xxte:5gTrVpGjuL2" resolve="SConceptAdapter" />
                                      <ref role="37wK5l" to="xxte:3ECE8iPOmg5" resolve="wrap" />
                                      <node concept="35c_gC" id="2rg0XZ1jjG$" role="37wK5m">
                                        <ref role="35c_gD" to="w7di:qmkA5fOskc" resolve="Model" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="2rg0XZ1jIcJ" role="3cqZAp">
                              <node concept="2OqwBi" id="2rg0XZ1jIcK" role="3clFbG">
                                <node concept="37vLTw" id="2rg0XZ1jIcL" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2rg0XZ1jjGq" resolve="newModel" />
                                </node>
                                <node concept="liA8E" id="2rg0XZ1jIcM" role="2OqNvi">
                                  <ref role="37wK5l" to="jks5:~INode.setPropertyValue(java.lang.String,java.lang.String)" resolve="setPropertyValue" />
                                  <node concept="2OqwBi" id="2rg0XZ1jIcN" role="37wK5m">
                                    <node concept="355D3s" id="2rg0XZ1jIcO" role="2Oq$k0">
                                      <ref role="355D3t" to="w7di:qmkA5fOskc" resolve="Model" />
                                      <ref role="355D3u" to="w7di:2hbxkgeTB8i" resolve="id" />
                                    </node>
                                    <node concept="liA8E" id="2rg0XZ1jIcP" role="2OqNvi">
                                      <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="2FX9uaKQuoB" role="37wK5m">
                                    <property role="Xl_RC" value="r:0c2e757d-9999-9999-9999-a6db9dd85152" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="2rg0XZ1jjG_" role="3cqZAp">
                              <node concept="2OqwBi" id="2rg0XZ1jjGA" role="3clFbG">
                                <node concept="37vLTw" id="2rg0XZ1jjGB" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2rg0XZ1jjGq" resolve="newModel" />
                                </node>
                                <node concept="liA8E" id="2rg0XZ1jjGC" role="2OqNvi">
                                  <ref role="37wK5l" to="jks5:~INode.setPropertyValue(java.lang.String,java.lang.String)" resolve="setPropertyValue" />
                                  <node concept="2OqwBi" id="2rg0XZ1jjGD" role="37wK5m">
                                    <node concept="355D3s" id="2rg0XZ1jjGE" role="2Oq$k0">
                                      <ref role="355D3t" to="w7di:qmkA5fOskc" resolve="Model" />
                                      <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                    <node concept="liA8E" id="2rg0XZ1jjGF" role="2OqNvi">
                                      <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="2FX9uaKQuQG" role="37wK5m">
                                    <property role="Xl_RC" value="a.b.myCloudFirstModel" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="2rg0XZ1jjGH" role="3cqZAp">
                              <node concept="37vLTw" id="2rg0XZ1jjGI" role="3cqZAk">
                                <ref role="3cqZAo" node="2rg0XZ1jjGq" resolve="newModel" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTG" id="2rg0XZ1jjGJ" role="1bW2Oz">
                            <property role="TrG5h" value="rootNode" />
                            <node concept="3uibUv" id="2rg0XZ1jjGK" role="1tU5fm">
                              <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3vlDli" id="24If7DPKcv1" role="3cqZAp">
                    <node concept="3cmrfG" id="24If7DPKh_W" role="3tpDZB">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="2OqwBi" id="24If7DPKeWw" role="3tpDZA">
                      <node concept="2OqwBi" id="24If7DPKdiJ" role="2Oq$k0">
                        <node concept="37vLTw" id="24If7DPKd4o" role="2Oq$k0">
                          <ref role="3cqZAo" node="2FX9uaKPSvs" resolve="cloudProject" />
                        </node>
                        <node concept="AQDAd" id="24If7DPKdw1" role="2OqNvi">
                          <ref role="37wK5l" to="csg2:24If7DPFqLp" resolve="getChidlrenAsList" />
                          <node concept="2OqwBi" id="24If7DPKiIF" role="37wK5m">
                            <node concept="359W_D" id="24If7DPKdM0" role="2Oq$k0">
                              <ref role="359W_E" to="w7di:3uw$nPCBu_p" resolve="Project" />
                              <ref role="359W_F" to="w7di:3uw$nPCBuBy" resolve="modules" />
                            </node>
                            <node concept="liA8E" id="24If7DPKjee" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="34oBXx" id="24If7DPKhpu" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="2FX9uaKPpuv" role="3cqZAp">
                    <node concept="10M0yZ" id="2FX9uaKPpw3" role="3clFbG">
                      <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                      <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2FX9uaKQw0R" role="3cqZAp">
          <node concept="2YIFZM" id="2FX9uaKQw0S" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <node concept="3cmrfG" id="2FX9uaKQw0T" role="37wK5m">
              <property role="3cmrfH" value="500" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2FX9uaKQvnL" role="3cqZAp" />
        <node concept="3SKdUt" id="2FX9uaKQyeA" role="3cqZAp">
          <node concept="1PaTwC" id="2FX9uaKQyeB" role="1aUNEU">
            <node concept="3oM_SD" id="2FX9uaKQHGF" role="1PaTwD">
              <property role="3oM_SC" value="verify" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKQzjA" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKQzjE" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKQzk0" role="1PaTwD">
              <property role="3oM_SC" value="and" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKQzk6" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKQzkd" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKQzku" role="1PaTwD">
              <property role="3oM_SC" value="present" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKQzkB" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKQzkL" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2FX9uaKQ$rT" role="3cqZAp">
          <node concept="2OqwBi" id="2FX9uaKQ$rU" role="3clFbG">
            <node concept="2YIFZM" id="2FX9uaKQ$rV" role="2Oq$k0">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
            <node concept="liA8E" id="2FX9uaKQ$rW" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.invokeAndWait(java.lang.Runnable,com.intellij.openapi.application.ModalityState)" resolve="invokeAndWait" />
              <node concept="2ShNRf" id="2FX9uaKQ$rX" role="37wK5m">
                <node concept="YeOm9" id="2FX9uaKQ$rY" role="2ShVmc">
                  <node concept="1Y3b0j" id="2FX9uaKQ$rZ" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="2FX9uaKQ$s0" role="1B3o_S" />
                    <node concept="3clFb_" id="2FX9uaKQ$s1" role="jymVt">
                      <property role="TrG5h" value="run" />
                      <node concept="3Tm1VV" id="2FX9uaKQ$s2" role="1B3o_S" />
                      <node concept="3cqZAl" id="2FX9uaKQ$s3" role="3clF45" />
                      <node concept="3clFbS" id="2FX9uaKQ$s4" role="3clF47">
                        <node concept="1QHqEO" id="2FX9uaKQ$s5" role="3cqZAp">
                          <node concept="1QHqEC" id="2FX9uaKQ$s6" role="1QHqEI">
                            <node concept="3clFbS" id="2FX9uaKQ$s7" role="1bW5cS">
                              <node concept="3vlDli" id="24If7DPGt7a" role="3cqZAp">
                                <node concept="3cmrfG" id="24If7DPGt7b" role="3tpDZB">
                                  <property role="3cmrfH" value="2" />
                                </node>
                                <node concept="2OqwBi" id="24If7DPGt7c" role="3tpDZA">
                                  <node concept="2OqwBi" id="24If7DPGt7d" role="2Oq$k0">
                                    <node concept="37vLTw" id="24If7DPGt7e" role="2Oq$k0">
                                      <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                                    </node>
                                    <node concept="liA8E" id="24If7DPGt7f" role="2OqNvi">
                                      <ref role="37wK5l" to="z1c3:~ProjectBase.getProjectModules()" resolve="getProjectModules" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="24If7DPGt7g" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="2FX9uaKQ$s8" role="3cqZAp">
                                <node concept="3cpWsn" id="2FX9uaKQ$s9" role="3cpWs9">
                                  <property role="TrG5h" value="moduleCreatedOnCloud" />
                                  <node concept="3uibUv" id="2FX9uaKQ$sa" role="1tU5fm">
                                    <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                                  </node>
                                  <node concept="2OqwBi" id="2FX9uaKQ$sb" role="33vP2m">
                                    <node concept="37vLTw" id="2FX9uaKQ$sc" role="2Oq$k0">
                                      <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                                    </node>
                                    <node concept="AQDAd" id="2FX9uaKQ$sd" role="2OqNvi">
                                      <ref role="37wK5l" node="5cWpYFRLtp5" resolve="getProjectModule" />
                                      <node concept="Xl_RD" id="2FX9uaKQ_VL" role="37wK5m">
                                        <property role="Xl_RC" value="cloudFirstModule" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1gVbGN" id="2FX9uaKQAtv" role="3cqZAp">
                                <node concept="3y3z36" id="2FX9uaKQBfB" role="1gVkn0">
                                  <node concept="10Nm6u" id="2FX9uaKQByy" role="3uHU7w" />
                                  <node concept="37vLTw" id="2FX9uaKQASJ" role="3uHU7B">
                                    <ref role="3cqZAo" node="2FX9uaKQ$s9" resolve="moduleCreatedOnCloud" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="2FX9uaKQCRK" role="3cqZAp">
                                <node concept="2OqwBi" id="2FX9uaKQD8Y" role="3clFbG">
                                  <node concept="37vLTw" id="2FX9uaKQCRC" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2FX9uaKQ$s9" resolve="moduleCreatedOnCloud" />
                                  </node>
                                  <node concept="AQDAd" id="2FX9uaKQDh1" role="2OqNvi">
                                    <ref role="37wK5l" node="7jRNnvCeAHO" resolve="assertNModels" />
                                    <node concept="3cmrfG" id="2FX9uaKQDtL" role="37wK5m">
                                      <property role="3cmrfH" value="1" />
                                    </node>
                                    <node concept="3clFbT" id="2FX9uaKQDFO" role="37wK5m">
                                      <property role="3clFbU" value="true" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="2FX9uaKQHbm" role="3cqZAp">
                                <node concept="3cpWsn" id="2FX9uaKQHbn" role="3cpWs9">
                                  <property role="TrG5h" value="modelCreatedOnCloud" />
                                  <node concept="3uibUv" id="2FX9uaKQHbo" role="1tU5fm">
                                    <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                  </node>
                                  <node concept="2OqwBi" id="2FX9uaKQHfh" role="33vP2m">
                                    <node concept="37vLTw" id="2FX9uaKQHfi" role="2Oq$k0">
                                      <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                                    </node>
                                    <node concept="AQDAd" id="2FX9uaKQHfj" role="2OqNvi">
                                      <ref role="37wK5l" node="5cWpYFRLM6f" resolve="getProjectModel" />
                                      <node concept="Xl_RD" id="2FX9uaKQHfk" role="37wK5m">
                                        <property role="Xl_RC" value="cloudFirstModule" />
                                      </node>
                                      <node concept="Xl_RD" id="2FX9uaKQHfl" role="37wK5m">
                                        <property role="Xl_RC" value="a.b.myCloudFirstModel" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1gVbGN" id="2FX9uaKQHsS" role="3cqZAp">
                                <node concept="3y3z36" id="2FX9uaKQHsT" role="1gVkn0">
                                  <node concept="10Nm6u" id="2FX9uaKQHsU" role="3uHU7w" />
                                  <node concept="37vLTw" id="2FX9uaKQHFo" role="3uHU7B">
                                    <ref role="3cqZAo" node="2FX9uaKQHbn" resolve="modelCreatedOnCloud" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2FX9uaKQ$sr" role="ukAjM">
                            <node concept="37vLTw" id="2FX9uaKQ$ss" role="2Oq$k0">
                              <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                            </node>
                            <node concept="liA8E" id="2FX9uaKQ$st" role="2OqNvi">
                              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="2FX9uaKQ$su" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="2FX9uaKQ$sv" role="37wK5m">
                <ref role="37wK5l" to="bd8o:~ModalityState.defaultModalityState()" resolve="defaultModalityState" />
                <ref role="1Pybhc" to="bd8o:~ModalityState" resolve="ModalityState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="24If7DPJvZ5" role="3cqZAp" />
        <node concept="3clFbF" id="24If7DPJx$C" role="3cqZAp">
          <node concept="37vLTI" id="24If7DPJx$D" role="3clFbG">
            <node concept="2OqwBi" id="24If7DPJx$E" role="37vLTx">
              <node concept="37vLTw" id="24If7DPJx$F" role="2Oq$k0">
                <ref role="3cqZAo" node="lO9TSUBsx7" resolve="ms" />
              </node>
              <node concept="liA8E" id="24If7DPJx$G" role="2OqNvi">
                <ref role="37wK5l" node="7JjSHvQ43L7" resolve="jsonDump" />
              </node>
            </node>
            <node concept="37vLTw" id="24If7DPJx$H" role="37vLTJ">
              <ref role="3cqZAo" node="lO9TSUBsyj" resolve="actualJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="24If7DPJx$I" role="3cqZAp">
          <node concept="37vLTI" id="24If7DPJx$J" role="3clFbG">
            <node concept="1rXfSq" id="24If7DPJx$K" role="37vLTx">
              <ref role="37wK5l" node="7JjSHvQ4HQK" resolve="loadJsonDump" />
              <node concept="Xl_RD" id="24If7DPJx$L" role="37wK5m">
                <property role="Xl_RC" value="dump_project4" />
              </node>
            </node>
            <node concept="37vLTw" id="24If7DPJx$M" role="37vLTJ">
              <ref role="3cqZAo" node="lO9TSUBsyp" resolve="expectedJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="24If7DPJx$N" role="3cqZAp">
          <node concept="1rXfSq" id="24If7DPJx$O" role="3clFbG">
            <ref role="37wK5l" node="7JjSHvQ4V3I" resolve="assertJsonsAreEquals" />
            <node concept="37vLTw" id="24If7DPJx$P" role="37wK5m">
              <ref role="3cqZAo" node="lO9TSUBsyp" resolve="expectedJsonDump" />
            </node>
            <node concept="37vLTw" id="24If7DPJx$Q" role="37wK5m">
              <ref role="3cqZAo" node="lO9TSUBsyj" resolve="actualJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="24If7DPI3gQ" role="3cqZAp" />
        <node concept="3SKdUt" id="24If7DPI4_r" role="3cqZAp">
          <node concept="1PaTwC" id="24If7DPI4_s" role="1aUNEU">
            <node concept="3oM_SD" id="24If7DPI4_t" role="1PaTwD">
              <property role="3oM_SC" value="remove" />
            </node>
            <node concept="3oM_SD" id="24If7DPI4_u" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="24If7DPI4_v" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="24If7DPI4_w" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="24If7DPI4_x" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="24If7DPI4_y" role="1PaTwD">
              <property role="3oM_SC" value="cloud" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="24If7DPI4_z" role="3cqZAp">
          <node concept="2OqwBi" id="24If7DPI4_$" role="3clFbG">
            <node concept="37vLTw" id="24If7DPI4__" role="2Oq$k0">
              <ref role="3cqZAo" node="lO9TSUBsxI" resolve="treeInRepository" />
            </node>
            <node concept="liA8E" id="24If7DPI4_A" role="2OqNvi">
              <ref role="37wK5l" to="csg2:lOVi2Aa0LX" resolve="runWrite" />
              <node concept="1bVj0M" id="24If7DPI4_B" role="37wK5m">
                <node concept="37vLTG" id="24If7DPI4_C" role="1bW2Oz">
                  <property role="TrG5h" value="root" />
                  <node concept="3uibUv" id="24If7DPI4_D" role="1tU5fm">
                    <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                  </node>
                </node>
                <node concept="3clFbS" id="24If7DPI4_E" role="1bW5cS">
                  <node concept="3cpWs8" id="24If7DPI4_F" role="3cqZAp">
                    <node concept="3cpWsn" id="24If7DPI4_G" role="3cpWs9">
                      <property role="TrG5h" value="cloudProject" />
                      <node concept="3uibUv" id="24If7DPI4_H" role="1tU5fm">
                        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                      </node>
                      <node concept="2OqwBi" id="24If7DPI4_I" role="33vP2m">
                        <node concept="37vLTw" id="24If7DPI4_J" role="2Oq$k0">
                          <ref role="3cqZAo" node="lO9TSUBsxI" resolve="treeInRepository" />
                        </node>
                        <node concept="liA8E" id="24If7DPI4_K" role="2OqNvi">
                          <ref role="37wK5l" to="csg2:2FX9uaKPtaO" resolve="getProject" />
                          <node concept="Xl_RD" id="24If7DPI4_L" role="37wK5m">
                            <property role="Xl_RC" value="SimpleProjectF" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3vlDli" id="24If7DPI4_M" role="3cqZAp">
                    <node concept="3cmrfG" id="24If7DPI4_N" role="3tpDZB">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="2OqwBi" id="24If7DPI4_O" role="3tpDZA">
                      <node concept="2OqwBi" id="24If7DPI4_P" role="2Oq$k0">
                        <node concept="37vLTw" id="24If7DPI4_Q" role="2Oq$k0">
                          <ref role="3cqZAo" node="24If7DPI4_G" resolve="cloudProject" />
                        </node>
                        <node concept="AQDAd" id="24If7DPI4_R" role="2OqNvi">
                          <ref role="37wK5l" to="csg2:24If7DPFqLp" resolve="getChidlrenAsList" />
                          <node concept="2OqwBi" id="24If7DPI4_S" role="37wK5m">
                            <node concept="359W_D" id="24If7DPI4_T" role="2Oq$k0">
                              <ref role="359W_E" to="w7di:3uw$nPCBu_p" resolve="Project" />
                              <ref role="359W_F" to="w7di:3uw$nPCBuBy" resolve="modules" />
                            </node>
                            <node concept="liA8E" id="24If7DPI4_U" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="34oBXx" id="24If7DPI4_V" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3cpWs8" id="24If7DPI4_W" role="3cqZAp">
                    <node concept="3cpWsn" id="24If7DPI4_X" role="3cpWs9">
                      <property role="TrG5h" value="myNewModule" />
                      <node concept="3uibUv" id="24If7DPI4_Y" role="1tU5fm">
                        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                      </node>
                      <node concept="2OqwBi" id="24If7DPI4_Z" role="33vP2m">
                        <node concept="2OqwBi" id="24If7DPI4A0" role="2Oq$k0">
                          <node concept="37vLTw" id="24If7DPI4A1" role="2Oq$k0">
                            <ref role="3cqZAo" node="24If7DPI4_G" resolve="cloudProject" />
                          </node>
                          <node concept="AQDAd" id="24If7DPI4A2" role="2OqNvi">
                            <ref role="37wK5l" to="csg2:24If7DPFqLp" resolve="getChidlrenAsList" />
                            <node concept="2OqwBi" id="24If7DPI4A3" role="37wK5m">
                              <node concept="359W_D" id="24If7DPI4A4" role="2Oq$k0">
                                <ref role="359W_E" to="w7di:3uw$nPCBu_p" resolve="Project" />
                                <ref role="359W_F" to="w7di:3uw$nPCBuBy" resolve="modules" />
                              </node>
                              <node concept="liA8E" id="24If7DPI4A5" role="2OqNvi">
                                <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1z4cxt" id="24If7DPI4A6" role="2OqNvi">
                          <node concept="1bVj0M" id="24If7DPI4A7" role="23t8la">
                            <node concept="3clFbS" id="24If7DPI4A8" role="1bW5cS">
                              <node concept="3clFbF" id="24If7DPI4A9" role="3cqZAp">
                                <node concept="17R0WA" id="24If7DPI4Aa" role="3clFbG">
                                  <node concept="2OqwBi" id="24If7DPI4Ab" role="3uHU7B">
                                    <node concept="37vLTw" id="24If7DPI4Ac" role="2Oq$k0">
                                      <ref role="3cqZAo" node="24If7DPI4Ai" resolve="it" />
                                    </node>
                                    <node concept="liA8E" id="24If7DPI4Ad" role="2OqNvi">
                                      <ref role="37wK5l" to="jks5:~INode.getPropertyValue(java.lang.String)" resolve="getPropertyValue" />
                                      <node concept="2OqwBi" id="24If7DPI4Ae" role="37wK5m">
                                        <node concept="355D3s" id="24If7DPI4Af" role="2Oq$k0">
                                          <ref role="355D3t" to="tpck:h0TrEE$" resolve="INamedConcept" />
                                          <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                                        </node>
                                        <node concept="liA8E" id="24If7DPI4Ag" role="2OqNvi">
                                          <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="24If7DPI4Ah" role="3uHU7w">
                                    <property role="Xl_RC" value="My New Module" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="24If7DPI4Ai" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="24If7DPI4Aj" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Hmddi" id="24If7DPI4Ak" role="3cqZAp">
                    <node concept="37vLTw" id="24If7DPI4Al" role="2Hmdds">
                      <ref role="3cqZAo" node="24If7DPI4_X" resolve="myNewModule" />
                    </node>
                  </node>
                  <node concept="3vlDli" id="24If7DPI4Ar" role="3cqZAp">
                    <node concept="3cmrfG" id="24If7DPI4As" role="3tpDZB">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="24If7DPI4At" role="3tpDZA">
                      <node concept="2OqwBi" id="24If7DPI4Au" role="2Oq$k0">
                        <node concept="37vLTw" id="24If7DPIaMS" role="2Oq$k0">
                          <ref role="3cqZAo" node="24If7DPI4_X" resolve="myNewModule" />
                        </node>
                        <node concept="AQDAd" id="24If7DPI4Aw" role="2OqNvi">
                          <ref role="37wK5l" to="csg2:24If7DPFqLp" resolve="getChidlrenAsList" />
                          <node concept="2OqwBi" id="24If7DPI4Ax" role="37wK5m">
                            <node concept="359W_D" id="24If7DPI4Ay" role="2Oq$k0">
                              <ref role="359W_E" to="w7di:qmkA5fOskf" resolve="Module" />
                              <ref role="359W_F" to="w7di:qmkA5fOski" resolve="models" />
                            </node>
                            <node concept="liA8E" id="24If7DPI4Az" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="34oBXx" id="24If7DPI4A$" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="24If7DPIbU8" role="3cqZAp">
                    <node concept="2OqwBi" id="24If7DPIcaa" role="3clFbG">
                      <node concept="37vLTw" id="24If7DPIbU6" role="2Oq$k0">
                        <ref role="3cqZAo" node="24If7DPI4_X" resolve="myNewModule" />
                      </node>
                      <node concept="liA8E" id="24If7DPIcoe" role="2OqNvi">
                        <ref role="37wK5l" to="jks5:~INode.removeChild(org.modelix.model.api.INode)" resolve="removeChild" />
                        <node concept="2OqwBi" id="24If7DPId_6" role="37wK5m">
                          <node concept="2OqwBi" id="24If7DPIcza" role="2Oq$k0">
                            <node concept="37vLTw" id="24If7DPIczb" role="2Oq$k0">
                              <ref role="3cqZAo" node="24If7DPI4_X" resolve="myNewModule" />
                            </node>
                            <node concept="AQDAd" id="24If7DPIczc" role="2OqNvi">
                              <ref role="37wK5l" to="csg2:24If7DPFqLp" resolve="getChidlrenAsList" />
                              <node concept="2OqwBi" id="24If7DPIczd" role="37wK5m">
                                <node concept="359W_D" id="24If7DPIcze" role="2Oq$k0">
                                  <ref role="359W_E" to="w7di:qmkA5fOskf" resolve="Module" />
                                  <ref role="359W_F" to="w7di:qmkA5fOski" resolve="models" />
                                </node>
                                <node concept="liA8E" id="24If7DPIczf" role="2OqNvi">
                                  <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1uHKPH" id="24If7DPIfjv" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3vlDli" id="24If7DPIbc_" role="3cqZAp">
                    <node concept="3cmrfG" id="24If7DPIbcA" role="3tpDZB">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="24If7DPIbcB" role="3tpDZA">
                      <node concept="2OqwBi" id="24If7DPIbcC" role="2Oq$k0">
                        <node concept="37vLTw" id="24If7DPIbcD" role="2Oq$k0">
                          <ref role="3cqZAo" node="24If7DPI4_X" resolve="myNewModule" />
                        </node>
                        <node concept="AQDAd" id="24If7DPIbcE" role="2OqNvi">
                          <ref role="37wK5l" to="csg2:24If7DPFqLp" resolve="getChidlrenAsList" />
                          <node concept="2OqwBi" id="24If7DPIbcF" role="37wK5m">
                            <node concept="359W_D" id="24If7DPIbcG" role="2Oq$k0">
                              <ref role="359W_E" to="w7di:qmkA5fOskf" resolve="Module" />
                              <ref role="359W_F" to="w7di:qmkA5fOski" resolve="models" />
                            </node>
                            <node concept="liA8E" id="24If7DPIbcH" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="34oBXx" id="24If7DPIbcI" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="24If7DPI4A_" role="3cqZAp">
          <node concept="2YIFZM" id="24If7DPI4AA" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <node concept="3cmrfG" id="24If7DPI4AB" role="37wK5m">
              <property role="3cmrfH" value="500" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="24If7DPI4AC" role="3cqZAp" />
        <node concept="3SKdUt" id="24If7DPI4AD" role="3cqZAp">
          <node concept="1PaTwC" id="24If7DPI4AE" role="1aUNEU">
            <node concept="3oM_SD" id="24If7DPI4AF" role="1PaTwD">
              <property role="3oM_SC" value="verify" />
            </node>
            <node concept="3oM_SD" id="24If7DPI4AG" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="24If7DPI4AH" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="24If7DPI4AI" role="1PaTwD">
              <property role="3oM_SC" value="was" />
            </node>
            <node concept="3oM_SD" id="24If7DPI4AJ" role="1PaTwD">
              <property role="3oM_SC" value="removed" />
            </node>
            <node concept="3oM_SD" id="24If7DPI4AK" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="24If7DPI4AL" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="24If7DPI4AM" role="3cqZAp">
          <node concept="2OqwBi" id="24If7DPI4AN" role="3clFbG">
            <node concept="2YIFZM" id="24If7DPI4AO" role="2Oq$k0">
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
            </node>
            <node concept="liA8E" id="24If7DPI4AP" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.invokeAndWait(java.lang.Runnable,com.intellij.openapi.application.ModalityState)" resolve="invokeAndWait" />
              <node concept="2ShNRf" id="24If7DPI4AQ" role="37wK5m">
                <node concept="YeOm9" id="24If7DPI4AR" role="2ShVmc">
                  <node concept="1Y3b0j" id="24If7DPI4AS" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <node concept="3Tm1VV" id="24If7DPI4AT" role="1B3o_S" />
                    <node concept="3clFb_" id="24If7DPI4AU" role="jymVt">
                      <property role="TrG5h" value="run" />
                      <node concept="3Tm1VV" id="24If7DPI4AV" role="1B3o_S" />
                      <node concept="3cqZAl" id="24If7DPI4AW" role="3clF45" />
                      <node concept="3clFbS" id="24If7DPI4AX" role="3clF47">
                        <node concept="1QHqEO" id="24If7DPI4AY" role="3cqZAp">
                          <node concept="1QHqEC" id="24If7DPI4AZ" role="1QHqEI">
                            <node concept="3clFbS" id="24If7DPI4B0" role="1bW5cS">
                              <node concept="3vlDli" id="24If7DPI4B1" role="3cqZAp">
                                <node concept="3cmrfG" id="24If7DPI4B2" role="3tpDZB">
                                  <property role="3cmrfH" value="2" />
                                </node>
                                <node concept="2OqwBi" id="24If7DPI4B3" role="3tpDZA">
                                  <node concept="2OqwBi" id="24If7DPI4B4" role="2Oq$k0">
                                    <node concept="37vLTw" id="24If7DPI4B5" role="2Oq$k0">
                                      <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                                    </node>
                                    <node concept="liA8E" id="24If7DPI4B6" role="2OqNvi">
                                      <ref role="37wK5l" to="z1c3:~ProjectBase.getProjectModules()" resolve="getProjectModules" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="24If7DPI4B7" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="24If7DPIiJC" role="3cqZAp">
                                <node concept="3cpWsn" id="24If7DPIiJD" role="3cpWs9">
                                  <property role="TrG5h" value="myNewModule" />
                                  <node concept="3uibUv" id="24If7DPIiJE" role="1tU5fm">
                                    <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                                  </node>
                                  <node concept="2OqwBi" id="24If7DPIgXl" role="33vP2m">
                                    <node concept="37vLTw" id="24If7DPIgaq" role="2Oq$k0">
                                      <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                                    </node>
                                    <node concept="AQDAd" id="24If7DPIhJ5" role="2OqNvi">
                                      <ref role="37wK5l" node="5cWpYFRLtp5" resolve="getProjectModule" />
                                      <node concept="Xl_RD" id="24If7DPIhZk" role="37wK5m">
                                        <property role="Xl_RC" value="My New Module" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="24If7DPIl1G" role="3cqZAp">
                                <node concept="2OqwBi" id="24If7DPIkGV" role="3clFbG">
                                  <node concept="37vLTw" id="24If7DPIkqH" role="2Oq$k0">
                                    <ref role="3cqZAo" node="24If7DPIiJD" resolve="myNewModule" />
                                  </node>
                                  <node concept="AQDAd" id="24If7DPIkRV" role="2OqNvi">
                                    <ref role="37wK5l" node="7jRNnvCeAHO" resolve="assertNModels" />
                                    <node concept="3cmrfG" id="24If7DPIliq" role="37wK5m">
                                      <property role="3cmrfH" value="0" />
                                    </node>
                                    <node concept="3clFbT" id="24If7DPIlBJ" role="37wK5m">
                                      <property role="3clFbU" value="true" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="24If7DPI4B8" role="ukAjM">
                            <node concept="37vLTw" id="24If7DPI4B9" role="2Oq$k0">
                              <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                            </node>
                            <node concept="liA8E" id="24If7DPI4Ba" role="2OqNvi">
                              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="24If7DPI4Bb" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="24If7DPI4Bc" role="37wK5m">
                <ref role="37wK5l" to="bd8o:~ModalityState.defaultModalityState()" resolve="defaultModalityState" />
                <ref role="1Pybhc" to="bd8o:~ModalityState" resolve="ModalityState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="24If7DPI3t8" role="3cqZAp" />
        <node concept="3clFbF" id="24If7DPJCZm" role="3cqZAp">
          <node concept="37vLTI" id="24If7DPJCZn" role="3clFbG">
            <node concept="2OqwBi" id="24If7DPJCZo" role="37vLTx">
              <node concept="37vLTw" id="24If7DPJCZp" role="2Oq$k0">
                <ref role="3cqZAo" node="lO9TSUBsx7" resolve="ms" />
              </node>
              <node concept="liA8E" id="24If7DPJCZq" role="2OqNvi">
                <ref role="37wK5l" node="7JjSHvQ43L7" resolve="jsonDump" />
              </node>
            </node>
            <node concept="37vLTw" id="24If7DPJCZr" role="37vLTJ">
              <ref role="3cqZAo" node="lO9TSUBsyj" resolve="actualJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="24If7DPJCZs" role="3cqZAp">
          <node concept="37vLTI" id="24If7DPJCZt" role="3clFbG">
            <node concept="1rXfSq" id="24If7DPJCZu" role="37vLTx">
              <ref role="37wK5l" node="7JjSHvQ4HQK" resolve="loadJsonDump" />
              <node concept="Xl_RD" id="24If7DPJCZv" role="37wK5m">
                <property role="Xl_RC" value="dump_project5" />
              </node>
            </node>
            <node concept="37vLTw" id="24If7DPJCZw" role="37vLTJ">
              <ref role="3cqZAo" node="lO9TSUBsyp" resolve="expectedJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="24If7DPJCZx" role="3cqZAp">
          <node concept="1rXfSq" id="24If7DPJCZy" role="3clFbG">
            <ref role="37wK5l" node="7JjSHvQ4V3I" resolve="assertJsonsAreEquals" />
            <node concept="37vLTw" id="24If7DPJCZz" role="37wK5m">
              <ref role="3cqZAo" node="lO9TSUBsyp" resolve="expectedJsonDump" />
            </node>
            <node concept="37vLTw" id="24If7DPJCZ$" role="37wK5m">
              <ref role="3cqZAo" node="lO9TSUBsyj" resolve="actualJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="24If7DPJ_Dc" role="3cqZAp" />
        <node concept="3SKdUt" id="KjelMl8NHF" role="3cqZAp">
          <node concept="1PaTwC" id="KjelMl8NHG" role="1aUNEU">
            <node concept="3oM_SD" id="KjelMl8NHI" role="1PaTwD">
              <property role="3oM_SC" value="remove" />
            </node>
            <node concept="3oM_SD" id="KjelMl8NHJ" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="KjelMl8NHK" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="KjelMl8Opc" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="KjelMl8Opq" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="KjelMl8Opx" role="1PaTwD">
              <property role="3oM_SC" value="cloud" />
            </node>
          </node>
        </node>
        <node concept="abc8K" id="6Oq35Wg0esJ" role="3cqZAp">
          <node concept="Xl_RD" id="6Oq35Wg0fXK" role="abp_N">
            <property role="Xl_RC" value="GOING TO REMOVE MODULE FROM CLOUD" />
          </node>
        </node>
        <node concept="3clFbF" id="24If7DPF3x$" role="3cqZAp">
          <node concept="2OqwBi" id="24If7DPF3x_" role="3clFbG">
            <node concept="37vLTw" id="24If7DPF3xA" role="2Oq$k0">
              <ref role="3cqZAo" node="lO9TSUBsxI" resolve="treeInRepository" />
            </node>
            <node concept="liA8E" id="24If7DPF3xB" role="2OqNvi">
              <ref role="37wK5l" to="csg2:lOVi2Aa0LX" resolve="runWrite" />
              <node concept="1bVj0M" id="24If7DPF3xC" role="37wK5m">
                <node concept="37vLTG" id="24If7DPF3xD" role="1bW2Oz">
                  <property role="TrG5h" value="root" />
                  <node concept="3uibUv" id="24If7DPF3xE" role="1tU5fm">
                    <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                  </node>
                </node>
                <node concept="3clFbS" id="24If7DPF3xF" role="1bW5cS">
                  <node concept="3cpWs8" id="24If7DPF3xG" role="3cqZAp">
                    <node concept="3cpWsn" id="24If7DPF3xH" role="3cpWs9">
                      <property role="TrG5h" value="cloudProject" />
                      <node concept="3uibUv" id="24If7DPF3xI" role="1tU5fm">
                        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                      </node>
                      <node concept="2OqwBi" id="24If7DPF3xJ" role="33vP2m">
                        <node concept="37vLTw" id="24If7DPF3xK" role="2Oq$k0">
                          <ref role="3cqZAo" node="lO9TSUBsxI" resolve="treeInRepository" />
                        </node>
                        <node concept="liA8E" id="24If7DPF3xL" role="2OqNvi">
                          <ref role="37wK5l" to="csg2:2FX9uaKPtaO" resolve="getProject" />
                          <node concept="Xl_RD" id="24If7DPF3xM" role="37wK5m">
                            <property role="Xl_RC" value="SimpleProjectF" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3vlDli" id="24If7DPFedP" role="3cqZAp">
                    <node concept="3cmrfG" id="24If7DPG6X2" role="3tpDZB">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="2OqwBi" id="24If7DPFfBT" role="3tpDZA">
                      <node concept="2OqwBi" id="24If7DPG3Xo" role="2Oq$k0">
                        <node concept="37vLTw" id="24If7DPFccU" role="2Oq$k0">
                          <ref role="3cqZAo" node="24If7DPF3xH" resolve="cloudProject" />
                        </node>
                        <node concept="AQDAd" id="24If7DPG485" role="2OqNvi">
                          <ref role="37wK5l" to="csg2:24If7DPFqLp" resolve="getChidlrenAsList" />
                          <node concept="2OqwBi" id="24If7DPFd$J" role="37wK5m">
                            <node concept="359W_D" id="24If7DPFcIK" role="2Oq$k0">
                              <ref role="359W_E" to="w7di:3uw$nPCBu_p" resolve="Project" />
                              <ref role="359W_F" to="w7di:3uw$nPCBuBy" resolve="modules" />
                            </node>
                            <node concept="liA8E" id="24If7DPFdW9" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="34oBXx" id="24If7DPG6Pj" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3cpWs8" id="24If7DPGi9Y" role="3cqZAp">
                    <node concept="3cpWsn" id="24If7DPGi9Z" role="3cpWs9">
                      <property role="TrG5h" value="cloudFirstModule" />
                      <node concept="3uibUv" id="24If7DPGia0" role="1tU5fm">
                        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                      </node>
                      <node concept="2OqwBi" id="24If7DPG8Ql" role="33vP2m">
                        <node concept="2OqwBi" id="24If7DPG7Kw" role="2Oq$k0">
                          <node concept="37vLTw" id="24If7DPG7zZ" role="2Oq$k0">
                            <ref role="3cqZAo" node="24If7DPF3xH" resolve="cloudProject" />
                          </node>
                          <node concept="AQDAd" id="24If7DPG7Th" role="2OqNvi">
                            <ref role="37wK5l" to="csg2:24If7DPFqLp" resolve="getChidlrenAsList" />
                            <node concept="2OqwBi" id="24If7DPG7Zz" role="37wK5m">
                              <node concept="359W_D" id="24If7DPG7Z$" role="2Oq$k0">
                                <ref role="359W_E" to="w7di:3uw$nPCBu_p" resolve="Project" />
                                <ref role="359W_F" to="w7di:3uw$nPCBuBy" resolve="modules" />
                              </node>
                              <node concept="liA8E" id="24If7DPG7Z_" role="2OqNvi">
                                <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1z4cxt" id="24If7DPGh3p" role="2OqNvi">
                          <node concept="1bVj0M" id="24If7DPGh3r" role="23t8la">
                            <node concept="3clFbS" id="24If7DPGh3s" role="1bW5cS">
                              <node concept="3clFbF" id="24If7DPGh3t" role="3cqZAp">
                                <node concept="17R0WA" id="24If7DPGh3u" role="3clFbG">
                                  <node concept="2OqwBi" id="24If7DPGh3v" role="3uHU7B">
                                    <node concept="37vLTw" id="24If7DPGh3w" role="2Oq$k0">
                                      <ref role="3cqZAo" node="24If7DPGh3A" resolve="it" />
                                    </node>
                                    <node concept="liA8E" id="24If7DPGh3x" role="2OqNvi">
                                      <ref role="37wK5l" to="jks5:~INode.getPropertyValue(java.lang.String)" resolve="getPropertyValue" />
                                      <node concept="2OqwBi" id="24If7DPGh3y" role="37wK5m">
                                        <node concept="355D3s" id="24If7DPGh3z" role="2Oq$k0">
                                          <ref role="355D3t" to="tpck:h0TrEE$" resolve="INamedConcept" />
                                          <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                                        </node>
                                        <node concept="liA8E" id="24If7DPGh3$" role="2OqNvi">
                                          <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="24If7DPGh3_" role="3uHU7w">
                                    <property role="Xl_RC" value="cloudFirstModule" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="24If7DPGh3A" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="24If7DPGh3B" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Hmddi" id="24If7DPGle0" role="3cqZAp">
                    <node concept="37vLTw" id="24If7DPGlvK" role="2Hmdds">
                      <ref role="3cqZAo" node="24If7DPGi9Z" resolve="cloudFirstModule" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="24If7DPGk2s" role="3cqZAp">
                    <node concept="2OqwBi" id="24If7DPGkh9" role="3clFbG">
                      <node concept="37vLTw" id="24If7DPGk2q" role="2Oq$k0">
                        <ref role="3cqZAo" node="24If7DPF3xH" resolve="cloudProject" />
                      </node>
                      <node concept="liA8E" id="24If7DPGkua" role="2OqNvi">
                        <ref role="37wK5l" to="jks5:~INode.removeChild(org.modelix.model.api.INode)" resolve="removeChild" />
                        <node concept="37vLTw" id="24If7DPGkJd" role="37wK5m">
                          <ref role="3cqZAo" node="24If7DPGi9Z" resolve="cloudFirstModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3vlDli" id="24If7DPG76c" role="3cqZAp">
                    <node concept="3cmrfG" id="24If7DPG76d" role="3tpDZB">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2OqwBi" id="24If7DPG76e" role="3tpDZA">
                      <node concept="2OqwBi" id="24If7DPG76f" role="2Oq$k0">
                        <node concept="37vLTw" id="24If7DPG76g" role="2Oq$k0">
                          <ref role="3cqZAo" node="24If7DPF3xH" resolve="cloudProject" />
                        </node>
                        <node concept="AQDAd" id="24If7DPG76h" role="2OqNvi">
                          <ref role="37wK5l" to="csg2:24If7DPFqLp" resolve="getChidlrenAsList" />
                          <node concept="2OqwBi" id="24If7DPG76i" role="37wK5m">
                            <node concept="359W_D" id="24If7DPG76j" role="2Oq$k0">
                              <ref role="359W_E" to="w7di:3uw$nPCBu_p" resolve="Project" />
                              <ref role="359W_F" to="w7di:3uw$nPCBuBy" resolve="modules" />
                            </node>
                            <node concept="liA8E" id="24If7DPG76k" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="34oBXx" id="24If7DPG76l" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="24If7DPF3yI" role="3cqZAp">
          <node concept="2YIFZM" id="24If7DPF3yJ" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~Thread.sleep(long)" resolve="sleep" />
            <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
            <node concept="3cmrfG" id="24If7DPF3yK" role="37wK5m">
              <property role="3cmrfH" value="500" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6Oq35Wg0jMQ" role="3cqZAp" />
        <node concept="abc8K" id="6Oq35Wg0hAv" role="3cqZAp">
          <node concept="Xl_RD" id="6Oq35Wg0hAw" role="abp_N">
            <property role="Xl_RC" value="GOING TO VERIFY REMOVAL OF MODULE FROM CLOUD" />
          </node>
        </node>
        <node concept="3SKdUt" id="24If7DPF6ix" role="3cqZAp">
          <node concept="1PaTwC" id="24If7DPF6iy" role="1aUNEU">
            <node concept="3oM_SD" id="24If7DPF7Ba" role="1PaTwD">
              <property role="3oM_SC" value="verify" />
            </node>
            <node concept="3oM_SD" id="24If7DPF7Bd" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="24If7DPF7Bh" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="24If7DPF7Bw" role="1PaTwD">
              <property role="3oM_SC" value="was" />
            </node>
            <node concept="3oM_SD" id="24If7DPF7BA" role="1PaTwD">
              <property role="3oM_SC" value="removed" />
            </node>
            <node concept="3oM_SD" id="24If7DPF7BP" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="24If7DPF7BX" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="24If7DPGlQb" role="3cqZAp">
          <node concept="2OqwBi" id="24If7DPGlQc" role="3clFbG">
            <node concept="2YIFZM" id="24If7DPGlQd" role="2Oq$k0">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
            <node concept="liA8E" id="24If7DPGlQe" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.invokeAndWait(java.lang.Runnable,com.intellij.openapi.application.ModalityState)" resolve="invokeAndWait" />
              <node concept="2ShNRf" id="24If7DPGlQf" role="37wK5m">
                <node concept="YeOm9" id="24If7DPGlQg" role="2ShVmc">
                  <node concept="1Y3b0j" id="24If7DPGlQh" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="wyt6:~Runnable" resolve="Runnable" />
                    <node concept="3Tm1VV" id="24If7DPGlQi" role="1B3o_S" />
                    <node concept="3clFb_" id="24If7DPGlQj" role="jymVt">
                      <property role="TrG5h" value="run" />
                      <node concept="3Tm1VV" id="24If7DPGlQk" role="1B3o_S" />
                      <node concept="3cqZAl" id="24If7DPGlQl" role="3clF45" />
                      <node concept="3clFbS" id="24If7DPGlQm" role="3clF47">
                        <node concept="1QHqEO" id="24If7DPGlQn" role="3cqZAp">
                          <node concept="1QHqEC" id="24If7DPGlQo" role="1QHqEI">
                            <node concept="3clFbS" id="24If7DPGlQp" role="1bW5cS">
                              <node concept="3vlDli" id="24If7DPGssA" role="3cqZAp">
                                <node concept="3cmrfG" id="24If7DPGsE0" role="3tpDZB">
                                  <property role="3cmrfH" value="1" />
                                </node>
                                <node concept="2OqwBi" id="24If7DPGlQt" role="3tpDZA">
                                  <node concept="2OqwBi" id="24If7DPGpFe" role="2Oq$k0">
                                    <node concept="37vLTw" id="24If7DPGlQu" role="2Oq$k0">
                                      <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                                    </node>
                                    <node concept="liA8E" id="24If7DPGqnK" role="2OqNvi">
                                      <ref role="37wK5l" to="z1c3:~ProjectBase.getProjectModules()" resolve="getProjectModules" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="24If7DPGrhF" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="24If7DPGlQR" role="ukAjM">
                            <node concept="37vLTw" id="24If7DPGlQS" role="2Oq$k0">
                              <ref role="3cqZAo" node="lO9TSUBsvT" resolve="mpsProject" />
                            </node>
                            <node concept="liA8E" id="24If7DPGlQT" role="2OqNvi">
                              <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="24If7DPGlQU" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="24If7DPGlQV" role="37wK5m">
                <ref role="37wK5l" to="bd8o:~ModalityState.defaultModalityState()" resolve="defaultModalityState" />
                <ref role="1Pybhc" to="bd8o:~ModalityState" resolve="ModalityState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="24If7DPJKjY" role="3cqZAp" />
        <node concept="3clFbF" id="24If7DPJ2gk" role="3cqZAp">
          <node concept="37vLTI" id="24If7DPJ2gl" role="3clFbG">
            <node concept="2OqwBi" id="24If7DPJ2gm" role="37vLTx">
              <node concept="37vLTw" id="24If7DPJ2gn" role="2Oq$k0">
                <ref role="3cqZAo" node="lO9TSUBsx7" resolve="ms" />
              </node>
              <node concept="liA8E" id="24If7DPJ2go" role="2OqNvi">
                <ref role="37wK5l" node="7JjSHvQ43L7" resolve="jsonDump" />
              </node>
            </node>
            <node concept="37vLTw" id="24If7DPJ2gp" role="37vLTJ">
              <ref role="3cqZAo" node="lO9TSUBsyj" resolve="actualJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="24If7DPJ2gq" role="3cqZAp">
          <node concept="37vLTI" id="24If7DPJ2gr" role="3clFbG">
            <node concept="1rXfSq" id="24If7DPJ2gs" role="37vLTx">
              <ref role="37wK5l" node="7JjSHvQ4HQK" resolve="loadJsonDump" />
              <node concept="Xl_RD" id="24If7DPJ2gt" role="37wK5m">
                <property role="Xl_RC" value="dump_project6" />
              </node>
            </node>
            <node concept="37vLTw" id="24If7DPJ2gu" role="37vLTJ">
              <ref role="3cqZAo" node="lO9TSUBsyp" resolve="expectedJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="24If7DPJ2gv" role="3cqZAp">
          <node concept="1rXfSq" id="24If7DPJ2gw" role="3clFbG">
            <ref role="37wK5l" node="7JjSHvQ4V3I" resolve="assertJsonsAreEquals" />
            <node concept="37vLTw" id="24If7DPJ2gx" role="37wK5m">
              <ref role="3cqZAo" node="lO9TSUBsyp" resolve="expectedJsonDump" />
            </node>
            <node concept="37vLTw" id="24If7DPJ2gy" role="37wK5m">
              <ref role="3cqZAo" node="lO9TSUBsyj" resolve="actualJsonDump" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="24If7DPJLzP" role="3cqZAp" />
        <node concept="3SKdUt" id="2FX9uaKLgja" role="3cqZAp">
          <node concept="1PaTwC" id="2FX9uaKLgjb" role="1aUNEU">
            <node concept="3oM_SD" id="2FX9uaKLgjc" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKLgrC" role="1PaTwD">
              <property role="3oM_SC" value="rename" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKLgrF" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2FX9uaKLgrK" role="3cqZAp" />
        <node concept="3SKdUt" id="2FX9uaKLgLl" role="3cqZAp">
          <node concept="1PaTwC" id="2FX9uaKLgLm" role="1aUNEU">
            <node concept="3oM_SD" id="2FX9uaKLgLn" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKLgTT" role="1PaTwD">
              <property role="3oM_SC" value="rename" />
            </node>
            <node concept="3oM_SD" id="2FX9uaKLgTW" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="KjelMl8JmT" role="3cqZAp" />
        <node concept="3cpWs6" id="lO9TSUBsyy" role="3cqZAp">
          <node concept="2YIFZM" id="lO9TSUBsyz" role="3cqZAk">
            <ref role="1Pybhc" node="5yNJPA6btY7" resolve="TestResult" />
            <ref role="37wK5l" node="5yNJPA6trVb" resolve="ok" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="lO9TSUBsy$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="lO9TSUBsy_" role="jymVt" />
    <node concept="3uibUv" id="lO9TSUBsyA" role="1zkMxy">
      <ref role="3uigEE" node="5yNJPA6tjxd" resolve="IntegrationTest" />
    </node>
  </node>
  <node concept="312cEu" id="6Oq35Wg1Gb4">
    <property role="TrG5h" value="ProjectCanBeCopiedFromTheCloudToLocalAndSyncedTest" />
    <property role="3GE5qa" value="tests" />
    <node concept="3Tm1VV" id="6Oq35Wg1Gb5" role="1B3o_S" />
    <node concept="3clFbW" id="6Oq35Wg1Gb6" role="jymVt">
      <node concept="37vLTG" id="6Oq35Wg1Gb7" role="3clF46">
        <property role="TrG5h" value="referenceDir" />
        <node concept="3uibUv" id="6Oq35Wg1Gb8" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="37vLTG" id="6Oq35Wg1Gb9" role="3clF46">
        <property role="TrG5h" value="environment" />
        <node concept="3uibUv" id="6Oq35Wg1Gba" role="1tU5fm">
          <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
        </node>
      </node>
      <node concept="3cqZAl" id="6Oq35Wg1Gbb" role="3clF45" />
      <node concept="3Tm1VV" id="6Oq35Wg1Gbc" role="1B3o_S" />
      <node concept="3clFbS" id="6Oq35Wg1Gbd" role="3clF47">
        <node concept="XkiVB" id="6Oq35Wg1Gbe" role="3cqZAp">
          <ref role="37wK5l" node="5yNJPA6tklF" resolve="IntegrationTest" />
          <node concept="37vLTw" id="6Oq35Wg1Gbf" role="37wK5m">
            <ref role="3cqZAo" node="6Oq35Wg1Gb7" resolve="referenceDir" />
          </node>
          <node concept="37vLTw" id="6Oq35Wg1Gbg" role="37wK5m">
            <ref role="3cqZAo" node="6Oq35Wg1Gb9" resolve="environment" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Oq35Wg1Gbh" role="jymVt" />
    <node concept="3clFb_" id="6Oq35Wg1Gbi" role="jymVt">
      <property role="TrG5h" value="logic" />
      <node concept="3Tm1VV" id="6Oq35Wg1Gbj" role="1B3o_S" />
      <node concept="3uibUv" id="6Oq35Wg1Gbk" role="3clF45">
        <ref role="3uigEE" node="5yNJPA6btY7" resolve="TestResult" />
      </node>
      <node concept="3uibUv" id="6Oq35Wg1Gbl" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="3clFbS" id="6Oq35Wg1Gbm" role="3clF47">
        <node concept="3SKdUt" id="6Oq35Wg28kk" role="3cqZAp">
          <node concept="1PaTwC" id="6Oq35Wg28kl" role="1aUNEU">
            <node concept="3oM_SD" id="6Oq35Wg28km" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg28Gq" role="1PaTwD">
              <property role="3oM_SC" value="open" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg28Uf" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg290a" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2966" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg296c" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg296j" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6Oq35Wg29De" role="3cqZAp">
          <node concept="1PaTwC" id="6Oq35Wg29Df" role="1aUNEU">
            <node concept="3oM_SD" id="6Oq35Wg29Dg" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2a2z" role="1PaTwD">
              <property role="3oM_SC" value="sync" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2a8t" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2aeo" role="1PaTwD">
              <property role="3oM_SC" value="cloud" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2akk" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2aqh" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2aqo" role="1PaTwD">
              <property role="3oM_SC" value="another" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2awn" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6Oq35Wg2b3t" role="3cqZAp">
          <node concept="1PaTwC" id="6Oq35Wg2b3u" role="1aUNEU">
            <node concept="3oM_SD" id="6Oq35Wg2b3v" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2bty" role="1PaTwD">
              <property role="3oM_SC" value="verify" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2bzs" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2bzw" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2bz_" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2bzF" role="1PaTwD">
              <property role="3oM_SC" value="MPS" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2bJW" role="1PaTwD">
              <property role="3oM_SC" value="project" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2bDD" role="1PaTwD">
              <property role="3oM_SC" value="there" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2bQ4" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2bQe" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2bWg" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2bWs" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2c2w" role="1PaTwD">
              <property role="3oM_SC" value="originally" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2c8_" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2c8O" role="1PaTwD">
              <property role="3oM_SC" value="cloud" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6Oq35Wg2cTe" role="3cqZAp">
          <node concept="1PaTwC" id="6Oq35Wg2cTf" role="1aUNEU">
            <node concept="3oM_SD" id="6Oq35Wg2dhe" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2dhf" role="1PaTwD">
              <property role="3oM_SC" value="verify" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2dhg" role="1PaTwD">
              <property role="3oM_SC" value="that" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2dvt" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2d_x" role="1PaTwD">
              <property role="3oM_SC" value="cloud" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2dhl" role="1PaTwD">
              <property role="3oM_SC" value="there" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2dhm" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2dhn" role="1PaTwD">
              <property role="3oM_SC" value="only" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2dho" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2dhp" role="1PaTwD">
              <property role="3oM_SC" value="module" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2dhq" role="1PaTwD">
              <property role="3oM_SC" value="originally" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2dhr" role="1PaTwD">
              <property role="3oM_SC" value="on" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2dhs" role="1PaTwD">
              <property role="3oM_SC" value="cloud" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6Oq35Wg2e9c" role="3cqZAp">
          <node concept="1PaTwC" id="6Oq35Wg2e9d" role="1aUNEU">
            <node concept="3oM_SD" id="6Oq35Wg2e9e" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2ezb" role="1PaTwD">
              <property role="3oM_SC" value="do" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2eD5" role="1PaTwD">
              <property role="3oM_SC" value="a" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2eD9" role="1PaTwD">
              <property role="3oM_SC" value="bunch" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2eDe" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="6Oq35Wg2eDk" role="1PaTwD">
              <property role="3oM_SC" value="changes" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6Oq35Wg27PU" role="3cqZAp" />
        <node concept="3cpWs6" id="6Oq35Wg1GqN" role="3cqZAp">
          <node concept="2YIFZM" id="6Oq35Wg1GqO" role="3cqZAk">
            <ref role="37wK5l" node="5yNJPA6trVb" resolve="ok" />
            <ref role="1Pybhc" node="5yNJPA6btY7" resolve="TestResult" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6Oq35Wg1GqP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6Oq35Wg1GqQ" role="jymVt" />
    <node concept="3uibUv" id="6Oq35Wg1GqR" role="1zkMxy">
      <ref role="3uigEE" node="5yNJPA6tjxd" resolve="IntegrationTest" />
    </node>
  </node>
</model>

