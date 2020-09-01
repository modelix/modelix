<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b0cc4f86-cf49-4ffc-b138-1f9973329ce1(org.modelix.model.mpsplugin)">
  <persistence version="9" />
  <languages>
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="4it6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.loading(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="31cb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.module(MPS.Core/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="w0gx" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.structure.modules(MPS.Core/)" />
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="i5cy" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent.atomic(JDK/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="oiz2" ref="ecfb9949-7433-4db5-85de-0f84d172e4ce/java:gnu.trove.map(de.q60.mps.libs/)" />
    <import index="5ka6" ref="ecfb9949-7433-4db5-85de-0f84d172e4ce/java:gnu.trove.map.hash(de.q60.mps.libs/)" />
    <import index="cmfw" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.event(MPS.OpenAPI/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="nvd4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.repository(MPS.OpenAPI/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="ffp0" ref="87f4b21e-a3a5-459e-a54b-408fd9eb7350/java:org.java_websocket(org.modelix.lib/)" />
    <import index="mxf6" ref="87f4b21e-a3a5-459e-a54b-408fd9eb7350/java:org.json(org.modelix.lib/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="w7di" ref="r:f1cc96fe-d6ef-4a58-b607-1b2e4d02e1de(org.modelix.model.runtimelang.structure)" />
    <import index="dj5d" ref="r:8bca245c-17c6-44f4-9367-ad6ce25cabf5(de.q60.mps.shadowmodels.runtimelang.structure)" />
    <import index="jmi8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.util(MPS.IDEA/)" />
    <import index="ia5i" ref="r:53d14de3-e820-4a3b-9328-a2833dcab0bd(org.modelix.common)" />
    <import index="j9co" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.event(MPS.Core/)" />
    <import index="2k9e" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.structure(MPS.Core/)" />
    <import index="5440" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.client(org.modelix.model.client/)" />
    <import index="xkhl" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.lazy(org.modelix.model.client/)" />
    <import index="jks5" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.api(org.modelix.model.client/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="xxte" ref="r:a79f28f8-6055-40c6-bc5e-47a42a3b97e8(org.modelix.model.mps)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="n7xv" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:org.modelix.model.util.pmap(org.modelix.model.client/)" />
    <import index="fbzs" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.geom(JDK/)" />
    <import index="v18h" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:kotlin(org.modelix.model.client/)" />
    <import index="ouht" ref="0a2651ab-f212-45c2-a2f0-343e76cbc26b/java:kotlin.jvm.functions(org.modelix.model.client/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="5279705229678483897" name="jetbrains.mps.baseLanguage.structure.FloatingPointFloatConstant" flags="nn" index="2$xPTn">
        <property id="5279705229678483899" name="value" index="2$xPTl" />
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
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
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
      <concept id="1070534436861" name="jetbrains.mps.baseLanguage.structure.FloatType" flags="in" index="10OMs4" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
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
      <concept id="4269842503726207156" name="jetbrains.mps.baseLanguage.structure.LongLiteral" flags="nn" index="1adDum">
        <property id="4269842503726207157" name="value" index="1adDun" />
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
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1170075670744" name="jetbrains.mps.baseLanguage.structure.SynchronizedStatement" flags="nn" index="1HWtB8">
        <child id="1170075728144" name="expression" index="1HWFw0" />
        <child id="1170075736412" name="block" index="1HWHxc" />
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
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1178893518978" name="jetbrains.mps.baseLanguage.structure.ThisConstructorInvocation" flags="nn" index="1VxSAg" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="1423104411234567454" name="repo" index="ukAjM" />
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348183" name="jetbrains.mps.lang.access.structure.ExecuteWriteActionStatement" flags="nn" index="1QHqEM" />
      <concept id="8974276187400348177" name="jetbrains.mps.lang.access.structure.ExecuteCommandStatement" flags="nn" index="1QHqEO" />
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
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
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
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
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
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
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
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1176923520476" name="jetbrains.mps.baseLanguage.collections.structure.ExcludeOperation" flags="nn" index="66VNe" />
      <concept id="1172650591544" name="jetbrains.mps.baseLanguage.collections.structure.SkipOperation" flags="nn" index="7r0gD">
        <child id="1172658456740" name="elementsToSkip" index="7T0AP" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1207233427108" name="jetbrains.mps.baseLanguage.collections.structure.MapRemoveOperation" flags="nn" index="kI3uX">
        <child id="1207233489861" name="key" index="kIiFs" />
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
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1237909114519" name="jetbrains.mps.baseLanguage.collections.structure.GetValuesOperation" flags="nn" index="T8wYR" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="4611582986551314327" name="jetbrains.mps.baseLanguage.collections.structure.OfTypeOperation" flags="nn" index="UnYns">
        <child id="4611582986551314344" name="requestedType" index="UnYnz" />
      </concept>
      <concept id="1240217271293" name="jetbrains.mps.baseLanguage.collections.structure.LinkedHashSetCreator" flags="nn" index="32HrFt" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1225621920911" name="jetbrains.mps.baseLanguage.collections.structure.InsertElementOperation" flags="nn" index="1sK_Qi">
        <child id="1225621943565" name="element" index="1sKFgg" />
        <child id="1225621960341" name="index" index="1sKJu8" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1208542034276" name="jetbrains.mps.baseLanguage.collections.structure.MapClearOperation" flags="nn" index="1yHZxX" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1240824834947" name="jetbrains.mps.baseLanguage.collections.structure.ValueAccessOperation" flags="nn" index="3AV6Ez" />
      <concept id="1240825616499" name="jetbrains.mps.baseLanguage.collections.structure.KeyAccessOperation" flags="nn" index="3AY5_j" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="31378964227347002" name="jetbrains.mps.baseLanguage.collections.structure.SelectNotNullOperation" flags="ng" index="1KnU$U" />
    </language>
  </registry>
  <node concept="312cEu" id="4QZGLsLEOdM">
    <property role="TrG5h" value="CloudTransientModel" />
    <property role="2bfB8j" value="true" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3uibUv" id="4QZGLsLEOdN" role="1zkMxy">
      <ref role="3uigEE" to="w1kc:~EditableModelDescriptor" resolve="EditableModelDescriptor" />
    </node>
    <node concept="3uibUv" id="4QZGLsLEOdO" role="EKbjA">
      <ref role="3uigEE" to="mhbf:~EditableSModel" resolve="EditableSModel" />
    </node>
    <node concept="3uibUv" id="4j_LshTVk7i" role="EKbjA">
      <ref role="3uigEE" node="B8a55Urgn8" resolve="IUserObjectContainer" />
    </node>
    <node concept="3uibUv" id="4b0TNz8RAfy" role="EKbjA">
      <ref role="3uigEE" to="g3l6:~TransientSModel" resolve="TransientSModel" />
    </node>
    <node concept="2tJIrI" id="7Zr9caIGWDR" role="jymVt" />
    <node concept="312cEg" id="4QZGLsLEOdP" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myReadOnly" />
      <property role="3TUv4t" value="true" />
      <node concept="10P_77" id="4QZGLsLEOdR" role="1tU5fm" />
      <node concept="3Tm6S6" id="4QZGLsLEOdS" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="4QZGLsLEOdT" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myTrackUndo" />
      <property role="3TUv4t" value="true" />
      <node concept="10P_77" id="4QZGLsLEOdV" role="1tU5fm" />
      <node concept="3Tm6S6" id="4QZGLsLEOdW" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="4j_LshTVllu" role="jymVt">
      <property role="TrG5h" value="userObjects" />
      <node concept="3Tm6S6" id="4j_LshTVllv" role="1B3o_S" />
      <node concept="3uibUv" id="4j_LshTVmfz" role="1tU5fm">
        <ref role="3uigEE" to="n7xv:~CustomPMap" resolve="CustomPMap" />
        <node concept="3uibUv" id="4j_LshTVn2T" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="3uibUv" id="4j_LshTVnJc" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2OqwBi" id="1m9roGBTcTp" role="33vP2m">
        <node concept="10M0yZ" id="1m9roGBTcH0" role="2Oq$k0">
          <ref role="3cqZAo" to="n7xv:~SmallPMap.Companion" resolve="Companion" />
          <ref role="1PxDUh" to="n7xv:~SmallPMap" resolve="SmallPMap" />
        </node>
        <node concept="liA8E" id="1m9roGBTdjW" role="2OqNvi">
          <ref role="37wK5l" to="n7xv:~SmallPMap$Companion.empty()" resolve="empty" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4TPMxtdDOEE" role="jymVt">
      <property role="TrG5h" value="synchronizer" />
      <node concept="3Tm6S6" id="4TPMxtdDOEF" role="1B3o_S" />
      <node concept="3uibUv" id="4TPMxtdDPK1" role="1tU5fm">
        <ref role="3uigEE" node="4TPMxtdCfK_" resolve="ModelSynchronizer" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Zr9caID7_f" role="jymVt" />
    <node concept="3clFbW" id="4QZGLsLEOdX" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3cqZAl" id="4QZGLsLEOdY" role="3clF45" />
      <node concept="37vLTG" id="4QZGLsLEOe3" role="3clF46">
        <property role="TrG5h" value="module" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4QZGLsLEXGZ" role="1tU5fm">
          <ref role="3uigEE" node="115Xaa43tZI" resolve="CloudTransientModule" />
        </node>
      </node>
      <node concept="37vLTG" id="4QZGLsLEU6z" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="4QZGLsLEUur" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="49CIzaqqHFR" role="3clF46">
        <property role="TrG5h" value="modelId" />
        <node concept="3uibUv" id="4rrX99ofhL2" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~SModelId" resolve="SModelId" />
        </node>
      </node>
      <node concept="37vLTG" id="3l$kG67r0rY" role="3clF46">
        <property role="TrG5h" value="branch" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4HpUuL0xg4K" role="1tU5fm">
          <ref role="3uigEE" to="5440:~IIndirectBranch" resolve="IIndirectBranch" />
        </node>
      </node>
      <node concept="37vLTG" id="5D5xac1w5iH" role="3clF46">
        <property role="TrG5h" value="modelNodeId" />
        <node concept="3cpWsb" id="5D5xac1w5UJ" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4QZGLsLEOe5" role="3clF47">
        <node concept="XkiVB" id="4QZGLsLEPPx" role="3cqZAp">
          <ref role="37wK5l" to="w1kc:~EditableModelDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference,org.jetbrains.mps.openapi.persistence.DataSource)" resolve="EditableModelDescriptor" />
          <node concept="1rXfSq" id="4QZGLsLEPPy" role="37wK5m">
            <ref role="37wK5l" node="4QZGLsLEOfD" resolve="createModelRef" />
            <node concept="37vLTw" id="4QZGLsLEUKV" role="37wK5m">
              <ref role="3cqZAo" node="4QZGLsLEU6z" resolve="name" />
            </node>
            <node concept="2OqwBi" id="4QZGLsLEYsR" role="37wK5m">
              <node concept="37vLTw" id="4QZGLsLEPPA" role="2Oq$k0">
                <ref role="3cqZAo" node="4QZGLsLEOe3" resolve="module" />
              </node>
              <node concept="liA8E" id="4QZGLsLEZ8$" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleReference()" resolve="getModuleReference" />
              </node>
            </node>
            <node concept="37vLTw" id="49CIzaqqIZz" role="37wK5m">
              <ref role="3cqZAo" node="49CIzaqqHFR" resolve="modelId" />
            </node>
          </node>
          <node concept="2ShNRf" id="4QZGLsLERB5" role="37wK5m">
            <node concept="1pGfFk" id="4QZGLsLERB7" role="2ShVmc">
              <ref role="37wK5l" to="dush:~NullDataSource.&lt;init&gt;()" resolve="NullDataSource" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4QZGLsLEOe6" role="3cqZAp">
          <node concept="37vLTI" id="4QZGLsLEOe7" role="3clFbG">
            <node concept="37vLTw" id="4QZGLsLEOe8" role="37vLTJ">
              <ref role="3cqZAo" node="4QZGLsLEOdP" resolve="myReadOnly" />
            </node>
            <node concept="3clFbT" id="4QZGLsLEXoW" role="37vLTx" />
          </node>
        </node>
        <node concept="3clFbF" id="4QZGLsLEOea" role="3cqZAp">
          <node concept="37vLTI" id="4QZGLsLEOeb" role="3clFbG">
            <node concept="37vLTw" id="4QZGLsLEOec" role="37vLTJ">
              <ref role="3cqZAo" node="4QZGLsLEOdT" resolve="myTrackUndo" />
            </node>
            <node concept="3clFbT" id="4QZGLsLEW6G" role="37vLTx" />
          </node>
        </node>
        <node concept="3clFbH" id="7Zr9caICdFj" role="3cqZAp" />
        <node concept="3clFbF" id="4TPMxtdDRTF" role="3cqZAp">
          <node concept="37vLTI" id="4TPMxtdDT2s" role="3clFbG">
            <node concept="2ShNRf" id="4TPMxtdDULl" role="37vLTx">
              <node concept="1pGfFk" id="4TPMxtdDU5G" role="2ShVmc">
                <ref role="37wK5l" node="4TPMxtdChW1" resolve="ModelSynchronizer" />
                <node concept="37vLTw" id="4TPMxtdDVu5" role="37wK5m">
                  <ref role="3cqZAo" node="3l$kG67r0rY" resolve="branch" />
                </node>
                <node concept="37vLTw" id="5D5xac1w7qU" role="37wK5m">
                  <ref role="3cqZAo" node="5D5xac1w5iH" resolve="modelNodeId" />
                </node>
                <node concept="Xjq3P" id="4TPMxtdDWdv" role="37wK5m" />
              </node>
            </node>
            <node concept="37vLTw" id="4TPMxtdDRTD" role="37vLTJ">
              <ref role="3cqZAo" node="4TPMxtdDOEE" resolve="synchronizer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1VtHttxSBxJ" role="3cqZAp">
          <node concept="1rXfSq" id="1VtHttxSBxH" role="3clFbG">
            <ref role="37wK5l" node="6T_zoDmt8AM" resolve="runFullSync" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5tQmAwPHgBi" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7Zr9caICXyh" role="jymVt" />
    <node concept="3clFb_" id="7zuOo8p4iMQ" role="jymVt">
      <property role="TrG5h" value="getSynchronizer" />
      <node concept="3uibUv" id="7zuOo8p4iMR" role="3clF45">
        <ref role="3uigEE" node="4TPMxtdCfK_" resolve="ModelSynchronizer" />
      </node>
      <node concept="3Tm1VV" id="7zuOo8p4iMS" role="1B3o_S" />
      <node concept="3clFbS" id="7zuOo8p4iMT" role="3clF47">
        <node concept="3clFbF" id="7zuOo8p4iMU" role="3cqZAp">
          <node concept="2OqwBi" id="7zuOo8p4iMN" role="3clFbG">
            <node concept="Xjq3P" id="7zuOo8p4iMO" role="2Oq$k0" />
            <node concept="2OwXpG" id="7zuOo8p4iMP" role="2OqNvi">
              <ref role="2Oxat5" node="4TPMxtdDOEE" resolve="synchronizer" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7zuOo8p4n9O" role="jymVt" />
    <node concept="3clFb_" id="6T_zoDmt8AM" role="jymVt">
      <property role="TrG5h" value="runFullSync" />
      <node concept="3cqZAl" id="6T_zoDmt8AO" role="3clF45" />
      <node concept="3Tm1VV" id="6T_zoDmt8AP" role="1B3o_S" />
      <node concept="3clFbS" id="6T_zoDmt8AQ" role="3clF47">
        <node concept="3clFbF" id="6T_zoDmtg89" role="3cqZAp">
          <node concept="2OqwBi" id="6T_zoDmth9D" role="3clFbG">
            <node concept="37vLTw" id="6T_zoDmtg88" role="2Oq$k0">
              <ref role="3cqZAo" node="4TPMxtdDOEE" resolve="synchronizer" />
            </node>
            <node concept="liA8E" id="6T_zoDmth_7" role="2OqNvi">
              <ref role="37wK5l" node="6T_zoDmsCQN" resolve="runFullSync" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6T_zoDmt7AT" role="jymVt" />
    <node concept="3clFb_" id="4TPMxtdDYLQ" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="4TPMxtdDYLS" role="3clF45" />
      <node concept="3Tm1VV" id="4TPMxtdDYLT" role="1B3o_S" />
      <node concept="3clFbS" id="4TPMxtdDYLU" role="3clF47">
        <node concept="3clFbF" id="4TPMxtdE1sb" role="3cqZAp">
          <node concept="2EnYce" id="1JFLVobexUh" role="3clFbG">
            <node concept="37vLTw" id="4TPMxtdE1sa" role="2Oq$k0">
              <ref role="3cqZAo" node="4TPMxtdDOEE" resolve="synchronizer" />
            </node>
            <node concept="liA8E" id="4TPMxtdE4rQ" role="2OqNvi">
              <ref role="37wK5l" node="4TPMxtdD17x" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1JFLVobevBB" role="3cqZAp">
          <node concept="37vLTI" id="1JFLVobex$n" role="3clFbG">
            <node concept="37vLTw" id="1JFLVobevB_" role="37vLTJ">
              <ref role="3cqZAo" node="4TPMxtdDOEE" resolve="synchronizer" />
            </node>
            <node concept="10Nm6u" id="1JFLVobexkp" role="37vLTx" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TPMxtdDXTN" role="jymVt" />
    <node concept="3clFb_" id="4j_LshTVkBI" role="jymVt">
      <property role="TrG5h" value="getUserObject" />
      <node concept="37vLTG" id="4j_LshTVkBJ" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="4j_LshTVkBK" role="1tU5fm">
          <ref role="3uigEE" node="B8a55Urgo1" resolve="UserObjectKey" />
          <node concept="16syzq" id="4j_LshTVkBL" role="11_B2D">
            <ref role="16sUi3" node="4j_LshTVkBP" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="4j_LshTVkBM" role="3clF45">
        <ref role="16sUi3" node="4j_LshTVkBP" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="4j_LshTVkBN" role="1B3o_S" />
      <node concept="16euLQ" id="4j_LshTVkBP" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="3clFbS" id="4j_LshTVkBT" role="3clF47">
        <node concept="3clFbF" id="4j_LshTVtzH" role="3cqZAp">
          <node concept="10QFUN" id="4j_LshTVyRB" role="3clFbG">
            <node concept="2OqwBi" id="4j_LshTVyRz" role="10QFUP">
              <node concept="37vLTw" id="4j_LshTVyR$" role="2Oq$k0">
                <ref role="3cqZAo" node="4j_LshTVllu" resolve="userObjects" />
              </node>
              <node concept="liA8E" id="4j_LshTVyR_" role="2OqNvi">
                <ref role="37wK5l" to="n7xv:~CustomPMap.get(java.lang.Object)" resolve="get" />
                <node concept="37vLTw" id="4j_LshTVyRA" role="37wK5m">
                  <ref role="3cqZAo" node="4j_LshTVkBJ" resolve="key" />
                </node>
              </node>
            </node>
            <node concept="16syzq" id="4j_LshTVzim" role="10QFUM">
              <ref role="16sUi3" node="4j_LshTVkBP" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4j_LshTVkBU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4j_LshTVkBV" role="jymVt">
      <property role="TrG5h" value="putUserObject" />
      <node concept="37vLTG" id="4j_LshTVkBW" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="4j_LshTVkBX" role="1tU5fm">
          <ref role="3uigEE" node="B8a55Urgo1" resolve="UserObjectKey" />
          <node concept="16syzq" id="4j_LshTVkBY" role="11_B2D">
            <ref role="16sUi3" node="4j_LshTVkC4" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4j_LshTVkBZ" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="16syzq" id="4j_LshTVkC0" role="1tU5fm">
          <ref role="16sUi3" node="4j_LshTVkC4" resolve="T" />
        </node>
      </node>
      <node concept="3cqZAl" id="4j_LshTVkC1" role="3clF45" />
      <node concept="3Tm1VV" id="4j_LshTVkC2" role="1B3o_S" />
      <node concept="16euLQ" id="4j_LshTVkC4" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="3clFbS" id="4j_LshTVkC8" role="3clF47">
        <node concept="3clFbF" id="4j_LshTV$6h" role="3cqZAp">
          <node concept="37vLTI" id="4j_LshTV$Nw" role="3clFbG">
            <node concept="2OqwBi" id="4j_LshTVAsk" role="37vLTx">
              <node concept="37vLTw" id="4j_LshTV_Ie" role="2Oq$k0">
                <ref role="3cqZAo" node="4j_LshTVllu" resolve="userObjects" />
              </node>
              <node concept="liA8E" id="4j_LshTVAUR" role="2OqNvi">
                <ref role="37wK5l" to="n7xv:~CustomPMap.put(java.lang.Object,java.lang.Object)" resolve="put" />
                <node concept="37vLTw" id="4j_LshTVBiG" role="37wK5m">
                  <ref role="3cqZAo" node="4j_LshTVkBW" resolve="key" />
                </node>
                <node concept="37vLTw" id="4j_LshTVC1N" role="37wK5m">
                  <ref role="3cqZAo" node="4j_LshTVkBZ" resolve="value" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4j_LshTV$6g" role="37vLTJ">
              <ref role="3cqZAo" node="4j_LshTVllu" resolve="userObjects" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4j_LshTVkC9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4QZGLsLEOem" role="jymVt">
      <property role="TrG5h" value="updateTimestamp" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="4QZGLsLEOen" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="4QZGLsLEOeo" role="3clF47" />
      <node concept="3Tm1VV" id="4QZGLsLEOep" role="1B3o_S" />
      <node concept="3cqZAl" id="4QZGLsLEOeq" role="3clF45" />
    </node>
    <node concept="3clFb_" id="4QZGLsLEOer" role="jymVt">
      <property role="TrG5h" value="needsReloading" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="4QZGLsLEOes" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="4QZGLsLEOet" role="3clF47">
        <node concept="3cpWs6" id="4QZGLsLEOeu" role="3cqZAp">
          <node concept="3clFbT" id="4QZGLsLEOev" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4QZGLsLEOew" role="1B3o_S" />
      <node concept="10P_77" id="4QZGLsLEOex" role="3clF45" />
    </node>
    <node concept="3clFb_" id="4QZGLsLEOey" role="jymVt">
      <property role="TrG5h" value="createModel" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="4QZGLsLEOez" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="2AHcQZ" id="4QZGLsLEOe$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="4QZGLsLEOe_" role="3clF47">
        <node concept="3cpWs8" id="4QZGLsLEOeB" role="3cqZAp">
          <node concept="3cpWsn" id="4QZGLsLEOeA" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="smodel" />
            <node concept="3uibUv" id="4QZGLsLEOeC" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
            </node>
            <node concept="2ShNRf" id="4QZGLsLEOeD" role="33vP2m">
              <node concept="YeOm9" id="4QZGLsLEOeE" role="2ShVmc">
                <node concept="1Y3b0j" id="4QZGLsLEOeF" role="YeSDq">
                  <property role="1sVAO0" value="false" />
                  <property role="1EXbeo" value="false" />
                  <ref role="1Y3XeK" to="w1kc:~SModel" resolve="SModel" />
                  <ref role="37wK5l" to="w1kc:~SModel.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference)" resolve="SModel" />
                  <node concept="3clFb_" id="4QZGLsLEOeG" role="jymVt">
                    <property role="TrG5h" value="performUndoableAction" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <node concept="2AHcQZ" id="4QZGLsLEOeH" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                    <node concept="37vLTG" id="4QZGLsLEOeI" role="3clF46">
                      <property role="TrG5h" value="action" />
                      <property role="3TUv4t" value="false" />
                      <node concept="2AHcQZ" id="4QZGLsLEOeJ" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                      <node concept="3uibUv" id="4QZGLsLEOeK" role="1tU5fm">
                        <ref role="3uigEE" to="w1kc:~SNodeUndoableAction" resolve="SNodeUndoableAction" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="4QZGLsLEOeL" role="3clF47">
                      <node concept="3clFbJ" id="4QZGLsLEOeM" role="3cqZAp">
                        <node concept="37vLTw" id="4QZGLsLEOeN" role="3clFbw">
                          <ref role="3cqZAo" node="4QZGLsLEOdT" resolve="myTrackUndo" />
                        </node>
                        <node concept="3clFbS" id="4QZGLsLEOeP" role="3clFbx">
                          <node concept="3clFbF" id="4QZGLsLEOeQ" role="3cqZAp">
                            <node concept="3nyPlj" id="4QZGLsLEOeR" role="3clFbG">
                              <ref role="37wK5l" to="w1kc:~SModel.performUndoableAction(jetbrains.mps.smodel.SNodeUndoableAction)" resolve="performUndoableAction" />
                              <node concept="37vLTw" id="4QZGLsLEOeS" role="37wK5m">
                                <ref role="3cqZAo" node="4QZGLsLEOeI" resolve="action" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3Tmbuc" id="4QZGLsLEOeT" role="1B3o_S" />
                    <node concept="3cqZAl" id="4QZGLsLEOeU" role="3clF45" />
                  </node>
                  <node concept="1rXfSq" id="4QZGLsLEOeV" role="37wK5m">
                    <ref role="37wK5l" to="g3l6:~SModelBase.getReference()" resolve="getReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4QZGLsLEOeW" role="3cqZAp">
          <node concept="2ShNRf" id="4QZGLsLEPQs" role="3cqZAk">
            <node concept="1pGfFk" id="4QZGLsLEPTp" role="2ShVmc">
              <ref role="37wK5l" to="w1kc:~ModelLoadResult.&lt;init&gt;(jetbrains.mps.extapi.model.SModelData,jetbrains.mps.smodel.loading.ModelLoadingState)" resolve="ModelLoadResult" />
              <node concept="37vLTw" id="4QZGLsLEPTq" role="37wK5m">
                <ref role="3cqZAo" node="4QZGLsLEOeA" resolve="smodel" />
              </node>
              <node concept="Rm8GO" id="4QZGLsLEPTr" role="37wK5m">
                <ref role="1Px2BO" to="4it6:~ModelLoadingState" resolve="ModelLoadingState" />
                <ref role="Rm8GQ" to="4it6:~ModelLoadingState.FULLY_LOADED" resolve="FULLY_LOADED" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="4QZGLsLEOf1" role="1B3o_S" />
      <node concept="3uibUv" id="4QZGLsLEOf2" role="3clF45">
        <ref role="3uigEE" to="w1kc:~ModelLoadResult" resolve="ModelLoadResult" />
        <node concept="3uibUv" id="4QZGLsLEOf3" role="11_B2D">
          <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4QZGLsLEOf4" role="jymVt">
      <property role="TrG5h" value="isChanged" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="4QZGLsLEOf5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="4QZGLsLEOf6" role="3clF47">
        <node concept="3cpWs6" id="4QZGLsLEOf7" role="3cqZAp">
          <node concept="3clFbT" id="4QZGLsLEOf8" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4QZGLsLEOf9" role="1B3o_S" />
      <node concept="10P_77" id="4QZGLsLEOfa" role="3clF45" />
    </node>
    <node concept="3clFb_" id="4QZGLsLEOfb" role="jymVt">
      <property role="TrG5h" value="save" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="4QZGLsLEOfc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="4QZGLsLEOfd" role="3clF47" />
      <node concept="3Tm1VV" id="4QZGLsLEOfe" role="1B3o_S" />
      <node concept="3cqZAl" id="4QZGLsLEOff" role="3clF45" />
    </node>
    <node concept="3clFb_" id="4QZGLsLEOfg" role="jymVt">
      <property role="TrG5h" value="rename" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="4QZGLsLEOfh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="4QZGLsLEOfi" role="3clF46">
        <property role="TrG5h" value="newModelName" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="4QZGLsLETfN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4QZGLsLEOfk" role="3clF46">
        <property role="TrG5h" value="changeFile" />
        <property role="3TUv4t" value="false" />
        <node concept="10P_77" id="4QZGLsLEOfl" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4QZGLsLEOfm" role="3clF47">
        <node concept="YS8fn" id="4QZGLsLEOfo" role="3cqZAp">
          <node concept="2ShNRf" id="4QZGLsLEPTG" role="YScLw">
            <node concept="1pGfFk" id="4QZGLsLEPTI" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4QZGLsLEOfp" role="1B3o_S" />
      <node concept="3cqZAl" id="4QZGLsLEOfq" role="3clF45" />
    </node>
    <node concept="3clFb_" id="4QZGLsLEOfr" role="jymVt">
      <property role="TrG5h" value="isReadOnly" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="4QZGLsLEOfs" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="4QZGLsLEOft" role="3clF47">
        <node concept="3cpWs6" id="4QZGLsLEOfu" role="3cqZAp">
          <node concept="37vLTw" id="4QZGLsLEOfv" role="3cqZAk">
            <ref role="3cqZAo" node="4QZGLsLEOdP" resolve="myReadOnly" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4QZGLsLEOfw" role="1B3o_S" />
      <node concept="10P_77" id="4QZGLsLEOfx" role="3clF45" />
    </node>
    <node concept="3clFb_" id="4QZGLsLEOfy" role="jymVt">
      <property role="TrG5h" value="reloadFromSource" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="4QZGLsLEOfz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="4QZGLsLEOf$" role="3clF47">
        <node concept="YS8fn" id="4QZGLsLEOfA" role="3cqZAp">
          <node concept="2ShNRf" id="4QZGLsLEPTP" role="YScLw">
            <node concept="1pGfFk" id="4QZGLsLEPTR" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~UnsupportedOperationException.&lt;init&gt;()" resolve="UnsupportedOperationException" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4QZGLsLEOfB" role="1B3o_S" />
      <node concept="3cqZAl" id="4QZGLsLEOfC" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="4QZGLsLEOfD" role="jymVt">
      <property role="TrG5h" value="createModelRef" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="4QZGLsLEOfE" role="3clF46">
        <property role="TrG5h" value="modelName" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="4QZGLsLETwE" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4QZGLsLEOfG" role="3clF46">
        <property role="TrG5h" value="moduleReference" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4QZGLsLEOfH" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
        </node>
      </node>
      <node concept="37vLTG" id="49CIzaqqG0O" role="3clF46">
        <property role="TrG5h" value="modelId" />
        <node concept="3uibUv" id="4rrX99ofivK" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~SModelId" resolve="SModelId" />
        </node>
      </node>
      <node concept="3clFbS" id="4QZGLsLEOfI" role="3clF47">
        <node concept="3cpWs6" id="4QZGLsLEOfN" role="3cqZAp">
          <node concept="2OqwBi" id="4QZGLsLEOfO" role="3cqZAk">
            <node concept="2YIFZM" id="4QZGLsLEPTZ" role="2Oq$k0">
              <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
            </node>
            <node concept="liA8E" id="4QZGLsLEOfQ" role="2OqNvi">
              <ref role="37wK5l" to="dush:~PersistenceFacade.createModelReference(org.jetbrains.mps.openapi.module.SModuleReference,org.jetbrains.mps.openapi.model.SModelId,java.lang.String)" resolve="createModelReference" />
              <node concept="37vLTw" id="4QZGLsLEOfR" role="37wK5m">
                <ref role="3cqZAo" node="4QZGLsLEOfG" resolve="moduleReference" />
              </node>
              <node concept="37vLTw" id="4QZGLsLEOfS" role="37wK5m">
                <ref role="3cqZAo" node="49CIzaqqG0O" resolve="modelId" />
              </node>
              <node concept="37vLTw" id="4QZGLsLEOfT" role="37wK5m">
                <ref role="3cqZAo" node="4QZGLsLEOfE" resolve="modelName" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4QZGLsLEOfU" role="1B3o_S" />
      <node concept="3uibUv" id="4QZGLsLEOfV" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Zr9caIDD0a" role="jymVt" />
    <node concept="3Tm1VV" id="4QZGLsLESlP" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="115Xaa43tZI">
    <property role="TrG5h" value="CloudTransientModule" />
    <property role="2bfB8j" value="true" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="115Xaa43tZJ" role="1B3o_S" />
    <node concept="3uibUv" id="115Xaa43tZK" role="1zkMxy">
      <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
    </node>
    <node concept="312cEg" id="115Xaa43tZL" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myDescriptor" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="115Xaa43tZN" role="1tU5fm">
        <ref role="3uigEE" to="w0gx:~ModuleDescriptor" resolve="ModuleDescriptor" />
      </node>
      <node concept="3Tm6S6" id="115Xaa43tZO" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="4j_LshTVDL3" role="jymVt">
      <property role="TrG5h" value="userObjects" />
      <node concept="3Tm6S6" id="4j_LshTVDL4" role="1B3o_S" />
      <node concept="3uibUv" id="4j_LshTVDL5" role="1tU5fm">
        <ref role="3uigEE" to="n7xv:~CustomPMap" resolve="CustomPMap" />
        <node concept="3uibUv" id="4j_LshTVDL6" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="3uibUv" id="4j_LshTVDL7" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2OqwBi" id="1m9roGBTgbL" role="33vP2m">
        <node concept="10M0yZ" id="1m9roGBTfZr" role="2Oq$k0">
          <ref role="3cqZAo" to="n7xv:~SmallPMap.Companion" resolve="Companion" />
          <ref role="1PxDUh" to="n7xv:~SmallPMap" resolve="SmallPMap" />
        </node>
        <node concept="liA8E" id="1m9roGBTgsW" role="2OqNvi">
          <ref role="37wK5l" to="n7xv:~SmallPMap$Companion.empty()" resolve="empty" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4j_LshTVE2T" role="jymVt" />
    <node concept="3clFbW" id="115Xaa43tZP" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="115Xaa43yAf" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="115Xaa43yNU" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="49CIzaqqELU" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="4rrX99odFea" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~ModuleId" resolve="ModuleId" />
        </node>
      </node>
      <node concept="3cqZAl" id="115Xaa43tZQ" role="3clF45" />
      <node concept="3clFbS" id="115Xaa43tZR" role="3clF47">
        <node concept="XkiVB" id="115Xaa43vow" role="3cqZAp">
          <ref role="37wK5l" to="z1c3:~AbstractModule.&lt;init&gt;(jetbrains.mps.vfs.IFile)" resolve="AbstractModule" />
          <node concept="10QFUN" id="115Xaa43vox" role="37wK5m">
            <node concept="10Nm6u" id="115Xaa43voy" role="10QFUP" />
            <node concept="3uibUv" id="115Xaa43voz" role="10QFUM">
              <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="115Xaa43tZS" role="3cqZAp">
          <node concept="37vLTI" id="115Xaa43tZT" role="3clFbG">
            <node concept="37vLTw" id="115Xaa43tZU" role="37vLTJ">
              <ref role="3cqZAo" node="115Xaa43tZL" resolve="myDescriptor" />
            </node>
            <node concept="2ShNRf" id="115Xaa43vtH" role="37vLTx">
              <node concept="1pGfFk" id="115Xaa43vtJ" role="2ShVmc">
                <ref role="37wK5l" to="w0gx:~ModuleDescriptor.&lt;init&gt;()" resolve="ModuleDescriptor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="115Xaa43tZW" role="3cqZAp">
          <node concept="2OqwBi" id="115Xaa43vl6" role="3clFbG">
            <node concept="37vLTw" id="115Xaa43vl5" role="2Oq$k0">
              <ref role="3cqZAo" node="115Xaa43tZL" resolve="myDescriptor" />
            </node>
            <node concept="liA8E" id="115Xaa43vl7" role="2OqNvi">
              <ref role="37wK5l" to="w0gx:~ModuleDescriptor.setId(jetbrains.mps.project.ModuleId)" resolve="setId" />
              <node concept="37vLTw" id="4rrX99odG9B" role="37wK5m">
                <ref role="3cqZAo" node="49CIzaqqELU" resolve="id" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="115Xaa43tZZ" role="3cqZAp">
          <node concept="2OqwBi" id="115Xaa43viF" role="3clFbG">
            <node concept="37vLTw" id="115Xaa43viE" role="2Oq$k0">
              <ref role="3cqZAo" node="115Xaa43tZL" resolve="myDescriptor" />
            </node>
            <node concept="liA8E" id="115Xaa43viG" role="2OqNvi">
              <ref role="37wK5l" to="w0gx:~ModuleDescriptor.setNamespace(java.lang.String)" resolve="setNamespace" />
              <node concept="37vLTw" id="115Xaa43yWX" role="37wK5m">
                <ref role="3cqZAo" node="115Xaa43yAf" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="115Xaa43u04" role="3cqZAp">
          <node concept="1rXfSq" id="115Xaa43u05" role="3clFbG">
            <ref role="37wK5l" to="z1c3:~AbstractModule.setModuleReference(org.jetbrains.mps.openapi.module.SModuleReference)" resolve="setModuleReference" />
            <node concept="2OqwBi" id="115Xaa43vtS" role="37wK5m">
              <node concept="37vLTw" id="115Xaa43vtR" role="2Oq$k0">
                <ref role="3cqZAo" node="115Xaa43tZL" resolve="myDescriptor" />
              </node>
              <node concept="liA8E" id="115Xaa43vtT" role="2OqNvi">
                <ref role="37wK5l" to="w0gx:~ModuleDescriptor.getModuleReference()" resolve="getModuleReference" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="115Xaa43yr3" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="4j_LshTVF1o" role="jymVt">
      <property role="TrG5h" value="getUserObject" />
      <node concept="37vLTG" id="4j_LshTVF1p" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="4j_LshTVF1q" role="1tU5fm">
          <ref role="3uigEE" node="B8a55Urgo1" resolve="UserObjectKey" />
          <node concept="16syzq" id="4j_LshTVF1r" role="11_B2D">
            <ref role="16sUi3" node="4j_LshTVF1u" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="4j_LshTVF1s" role="3clF45">
        <ref role="16sUi3" node="4j_LshTVF1u" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="4j_LshTVF1t" role="1B3o_S" />
      <node concept="16euLQ" id="4j_LshTVF1u" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="3clFbS" id="4j_LshTVF1v" role="3clF47">
        <node concept="3clFbF" id="4j_LshTVF1w" role="3cqZAp">
          <node concept="10QFUN" id="4j_LshTVF1x" role="3clFbG">
            <node concept="2OqwBi" id="4j_LshTVF1y" role="10QFUP">
              <node concept="37vLTw" id="4j_LshTVF1z" role="2Oq$k0">
                <ref role="3cqZAo" node="4j_LshTVDL3" resolve="userObjects" />
              </node>
              <node concept="liA8E" id="4j_LshTVF1$" role="2OqNvi">
                <ref role="37wK5l" to="n7xv:~CustomPMap.get(java.lang.Object)" resolve="get" />
                <node concept="37vLTw" id="4j_LshTVF1_" role="37wK5m">
                  <ref role="3cqZAo" node="4j_LshTVF1p" resolve="key" />
                </node>
              </node>
            </node>
            <node concept="16syzq" id="4j_LshTVF1A" role="10QFUM">
              <ref role="16sUi3" node="4j_LshTVF1u" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4j_LshTVF1B" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4j_LshTVF1C" role="jymVt">
      <property role="TrG5h" value="putUserObject" />
      <node concept="37vLTG" id="4j_LshTVF1D" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="4j_LshTVF1E" role="1tU5fm">
          <ref role="3uigEE" node="B8a55Urgo1" resolve="UserObjectKey" />
          <node concept="16syzq" id="4j_LshTVF1F" role="11_B2D">
            <ref role="16sUi3" node="4j_LshTVF1K" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4j_LshTVF1G" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="16syzq" id="4j_LshTVF1H" role="1tU5fm">
          <ref role="16sUi3" node="4j_LshTVF1K" resolve="T" />
        </node>
      </node>
      <node concept="3cqZAl" id="4j_LshTVF1I" role="3clF45" />
      <node concept="3Tm1VV" id="4j_LshTVF1J" role="1B3o_S" />
      <node concept="16euLQ" id="4j_LshTVF1K" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="3clFbS" id="4j_LshTVF1L" role="3clF47">
        <node concept="3clFbF" id="4j_LshTVF1M" role="3cqZAp">
          <node concept="37vLTI" id="4j_LshTVF1N" role="3clFbG">
            <node concept="2OqwBi" id="4j_LshTVF1O" role="37vLTx">
              <node concept="37vLTw" id="4j_LshTVF1P" role="2Oq$k0">
                <ref role="3cqZAo" node="4j_LshTVDL3" resolve="userObjects" />
              </node>
              <node concept="liA8E" id="4j_LshTVF1Q" role="2OqNvi">
                <ref role="37wK5l" to="n7xv:~CustomPMap.put(java.lang.Object,java.lang.Object)" resolve="put" />
                <node concept="37vLTw" id="4j_LshTVF1R" role="37wK5m">
                  <ref role="3cqZAo" node="4j_LshTVF1D" resolve="key" />
                </node>
                <node concept="37vLTw" id="4j_LshTVF1S" role="37wK5m">
                  <ref role="3cqZAo" node="4j_LshTVF1G" resolve="value" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4j_LshTVF1T" role="37vLTJ">
              <ref role="3cqZAo" node="4j_LshTVDL3" resolve="userObjects" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4j_LshTVF1U" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="115Xaa43u0b" role="jymVt">
      <property role="TrG5h" value="getModuleDescriptor" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="115Xaa43u0c" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="2AHcQZ" id="115Xaa43u0d" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="115Xaa43u0e" role="3clF47">
        <node concept="3cpWs6" id="115Xaa43u0f" role="3cqZAp">
          <node concept="37vLTw" id="115Xaa43u0g" role="3cqZAk">
            <ref role="3cqZAo" node="115Xaa43tZL" resolve="myDescriptor" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="115Xaa43u0h" role="1B3o_S" />
      <node concept="3uibUv" id="115Xaa43u0i" role="3clF45">
        <ref role="3uigEE" to="w0gx:~ModuleDescriptor" resolve="ModuleDescriptor" />
      </node>
    </node>
    <node concept="3clFb_" id="115Xaa43u0j" role="jymVt">
      <property role="TrG5h" value="collectMandatoryFacetTypes" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="115Xaa43u0k" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="115Xaa43u0l" role="3clF46">
        <property role="TrG5h" value="types" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="115Xaa43u0m" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="17QB3L" id="115Xaa43zD9" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="115Xaa43u0o" role="3clF47" />
      <node concept="3Tmbuc" id="115Xaa43u0p" role="1B3o_S" />
      <node concept="3cqZAl" id="115Xaa43u0q" role="3clF45" />
    </node>
    <node concept="3clFb_" id="115Xaa43u0r" role="jymVt">
      <property role="TrG5h" value="isPackaged" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="115Xaa43u0s" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="115Xaa43u0t" role="3clF47">
        <node concept="3cpWs6" id="115Xaa43u0u" role="3cqZAp">
          <node concept="3clFbT" id="115Xaa43u0v" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="115Xaa43u0w" role="1B3o_S" />
      <node concept="10P_77" id="115Xaa43u0x" role="3clF45" />
    </node>
    <node concept="3clFb_" id="115Xaa43u0y" role="jymVt">
      <property role="TrG5h" value="isReadOnly" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="115Xaa43u0z" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="115Xaa43u0$" role="3clF47">
        <node concept="3cpWs6" id="115Xaa43u0_" role="3cqZAp">
          <node concept="3clFbT" id="115Xaa43u0A" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="115Xaa43u0B" role="1B3o_S" />
      <node concept="10P_77" id="115Xaa43u0C" role="3clF45" />
    </node>
    <node concept="3uibUv" id="4j_LshTVCRE" role="EKbjA">
      <ref role="3uigEE" node="B8a55Urgn8" resolve="IUserObjectContainer" />
    </node>
    <node concept="3uibUv" id="4b0TNz8RBzG" role="EKbjA">
      <ref role="3uigEE" to="31cb:~TransientSModule" resolve="TransientSModule" />
    </node>
  </node>
  <node concept="312cEu" id="26ispG7Y1u2">
    <property role="TrG5h" value="CloudTransientModules" />
    <node concept="2tJIrI" id="26ispG7Y1va" role="jymVt" />
    <node concept="Wx3nA" id="49CIzaqqBaB" role="jymVt">
      <property role="TrG5h" value="ourInstance" />
      <node concept="3uibUv" id="49CIzaqqAmW" role="1tU5fm">
        <ref role="3uigEE" node="26ispG7Y1u2" resolve="CloudTransientModules" />
      </node>
      <node concept="3Tm6S6" id="49CIzaqqA4F" role="1B3o_S" />
      <node concept="2ShNRf" id="49CIzaqqAK_" role="33vP2m">
        <node concept="1pGfFk" id="49CIzaqqA_$" role="2ShVmc">
          <ref role="37wK5l" node="26ispG7Y1yJ" resolve="CloudTransientModules" />
          <node concept="2YIFZM" id="49CIzaqqB7R" role="37wK5m">
            <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
            <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="49CIzaqq_zt" role="jymVt" />
    <node concept="2YIFZL" id="49CIzaqqD1y" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="3clFbS" id="49CIzaqqBTG" role="3clF47">
        <node concept="3clFbF" id="49CIzaqqCZy" role="3cqZAp">
          <node concept="37vLTw" id="49CIzaqqCZx" role="3clFbG">
            <ref role="3cqZAo" node="49CIzaqqBaB" resolve="ourInstance" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="49CIzaqqCvN" role="3clF45">
        <ref role="3uigEE" node="26ispG7Y1u2" resolve="CloudTransientModules" />
      </node>
      <node concept="3Tm1VV" id="49CIzaqqBTF" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="49CIzaqqBEC" role="jymVt" />
    <node concept="312cEg" id="26ispG7Y1wQ" role="jymVt">
      <property role="TrG5h" value="mpsRepository" />
      <node concept="3Tm6S6" id="26ispG7Y1wR" role="1B3o_S" />
      <node concept="3uibUv" id="26ispG7Y26f" role="1tU5fm">
        <ref role="3uigEE" to="31cb:~SRepositoryExt" resolve="SRepositoryExt" />
      </node>
    </node>
    <node concept="312cEg" id="26ispG7Y1Go" role="jymVt">
      <property role="TrG5h" value="modules" />
      <node concept="3Tm6S6" id="26ispG7Y1Gp" role="1B3o_S" />
      <node concept="_YKpA" id="26ispG7Y1Ia" role="1tU5fm">
        <node concept="3uibUv" id="26ispG7Y1Iu" role="_ZDj9">
          <ref role="3uigEE" node="115Xaa43tZI" resolve="CloudTransientModule" />
        </node>
      </node>
      <node concept="2ShNRf" id="26ispG7Y1Ka" role="33vP2m">
        <node concept="Tc6Ow" id="26ispG7Y1JS" role="2ShVmc">
          <node concept="3uibUv" id="26ispG7Y1JT" role="HW$YZ">
            <ref role="3uigEE" node="115Xaa43tZI" resolve="CloudTransientModule" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="QurUghQjiK" role="jymVt">
      <property role="TrG5h" value="moduleOwner" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="QurUghQjiL" role="1B3o_S" />
      <node concept="3uibUv" id="QurUghQjiM" role="1tU5fm">
        <ref role="3uigEE" to="w1kc:~MPSModuleOwner" resolve="MPSModuleOwner" />
      </node>
      <node concept="2ShNRf" id="QurUghQjiN" role="33vP2m">
        <node concept="YeOm9" id="QurUghQjiO" role="2ShVmc">
          <node concept="1Y3b0j" id="QurUghQjiP" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="w1kc:~MPSModuleOwner" resolve="MPSModuleOwner" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="QurUghQjiQ" role="1B3o_S" />
            <node concept="3clFb_" id="QurUghQjiR" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="isHidden" />
              <property role="DiZV1" value="false" />
              <property role="od$2w" value="false" />
              <node concept="3Tm1VV" id="QurUghQjiS" role="1B3o_S" />
              <node concept="10P_77" id="QurUghQjiT" role="3clF45" />
              <node concept="3clFbS" id="QurUghQjiU" role="3clF47">
                <node concept="3clFbF" id="QurUghQjiV" role="3cqZAp">
                  <node concept="3clFbT" id="QurUghQjiW" role="3clFbG">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="26ispG7YrgL" role="jymVt" />
    <node concept="3clFbW" id="26ispG7Y1yJ" role="jymVt">
      <node concept="3cqZAl" id="26ispG7Y1yK" role="3clF45" />
      <node concept="3Tm1VV" id="26ispG7Y1yL" role="1B3o_S" />
      <node concept="3clFbS" id="26ispG7Y1yN" role="3clF47">
        <node concept="3clFbF" id="26ispG7Y1yR" role="3cqZAp">
          <node concept="37vLTI" id="26ispG7Y1yT" role="3clFbG">
            <node concept="2OqwBi" id="26ispG7Y1yX" role="37vLTJ">
              <node concept="Xjq3P" id="26ispG7Y1yY" role="2Oq$k0" />
              <node concept="2OwXpG" id="26ispG7Y1yZ" role="2OqNvi">
                <ref role="2Oxat5" node="26ispG7Y1wQ" resolve="mpsRepository" />
              </node>
            </node>
            <node concept="37vLTw" id="26ispG7Ysby" role="37vLTx">
              <ref role="3cqZAo" node="26ispG7Y1yQ" resolve="mpsRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="26ispG7Y1yQ" role="3clF46">
        <property role="TrG5h" value="mpsRepository" />
        <node concept="3uibUv" id="26ispG7Ys3S" role="1tU5fm">
          <ref role="3uigEE" to="31cb:~SRepositoryExt" resolve="SRepositoryExt" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="26ispG7Y1yh" role="jymVt" />
    <node concept="3clFb_" id="26ispG7YsJH" role="jymVt">
      <property role="TrG5h" value="createModule" />
      <node concept="37vLTG" id="26ispG7Yvqv" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="26ispG7YvDQ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="49CIzaqqJkv" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="4rrX99odG$k" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~ModuleId" resolve="ModuleId" />
        </node>
      </node>
      <node concept="3uibUv" id="26ispG7YuDO" role="3clF45">
        <ref role="3uigEE" node="115Xaa43tZI" resolve="CloudTransientModule" />
      </node>
      <node concept="3Tm1VV" id="26ispG7YsJK" role="1B3o_S" />
      <node concept="3clFbS" id="26ispG7YsJL" role="3clF47">
        <node concept="3cpWs8" id="26ispG7YvFg" role="3cqZAp">
          <node concept="3cpWsn" id="26ispG7YvFh" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="26ispG7YvFc" role="1tU5fm">
              <ref role="3uigEE" node="115Xaa43tZI" resolve="CloudTransientModule" />
            </node>
            <node concept="10Nm6u" id="1zKPvQfsh6O" role="33vP2m" />
          </node>
        </node>
        <node concept="1QHqEM" id="1zKPvQfsf1m" role="3cqZAp">
          <node concept="1QHqEC" id="1zKPvQfsf1o" role="1QHqEI">
            <node concept="3clFbS" id="1zKPvQfsf1q" role="1bW5cS">
              <node concept="3clFbF" id="1zKPvQfsgmQ" role="3cqZAp">
                <node concept="37vLTI" id="1zKPvQfsgmS" role="3clFbG">
                  <node concept="2ShNRf" id="26ispG7YvFi" role="37vLTx">
                    <node concept="1pGfFk" id="26ispG7YvFj" role="2ShVmc">
                      <ref role="37wK5l" node="115Xaa43tZP" resolve="CloudTransientModule" />
                      <node concept="37vLTw" id="26ispG7YvFk" role="37wK5m">
                        <ref role="3cqZAo" node="26ispG7Yvqv" resolve="name" />
                      </node>
                      <node concept="37vLTw" id="49CIzaqqJZp" role="37wK5m">
                        <ref role="3cqZAo" node="49CIzaqqJkv" resolve="id" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="1zKPvQfsgmW" role="37vLTJ">
                    <ref role="3cqZAo" node="26ispG7YvFh" resolve="module" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="26ispG7YvGM" role="3cqZAp">
                <node concept="2OqwBi" id="26ispG7YwqM" role="3clFbG">
                  <node concept="37vLTw" id="26ispG7YvGK" role="2Oq$k0">
                    <ref role="3cqZAo" node="26ispG7Y1Go" resolve="modules" />
                  </node>
                  <node concept="TSZUe" id="26ispG7YKTU" role="2OqNvi">
                    <node concept="37vLTw" id="26ispG7YLc5" role="25WWJ7">
                      <ref role="3cqZAo" node="26ispG7YvFh" resolve="module" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="RRSsy" id="5dMchn85q5o" role="3cqZAp">
                <node concept="3cpWs3" id="5dMchn85qFE" role="RRSoy">
                  <node concept="37vLTw" id="5dMchn85qRi" role="3uHU7w">
                    <ref role="3cqZAo" node="49CIzaqqJkv" resolve="id" />
                  </node>
                  <node concept="Xl_RD" id="5dMchn85q5q" role="3uHU7B">
                    <property role="Xl_RC" value="Register module " />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="26ispG7YL$T" role="3cqZAp">
                <node concept="2OqwBi" id="26ispG7YLQ2" role="3clFbG">
                  <node concept="37vLTw" id="26ispG7YL$R" role="2Oq$k0">
                    <ref role="3cqZAo" node="26ispG7Y1wQ" resolve="mpsRepository" />
                  </node>
                  <node concept="liA8E" id="26ispG7YM09" role="2OqNvi">
                    <ref role="37wK5l" to="31cb:~SRepositoryExt.registerModule(org.jetbrains.mps.openapi.module.SModule,jetbrains.mps.smodel.MPSModuleOwner)" resolve="registerModule" />
                    <node concept="37vLTw" id="26ispG7YM2J" role="37wK5m">
                      <ref role="3cqZAo" node="26ispG7YvFh" resolve="module" />
                    </node>
                    <node concept="37vLTw" id="26ispG7YMhf" role="37wK5m">
                      <ref role="3cqZAo" node="QurUghQjiK" resolve="moduleOwner" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1zKPvQfsfo3" role="ukAjM">
            <ref role="3cqZAo" node="26ispG7Y1wQ" resolve="mpsRepository" />
          </node>
        </node>
        <node concept="3cpWs6" id="1zKPvQfsg9x" role="3cqZAp">
          <node concept="37vLTw" id="1zKPvQfsg9z" role="3cqZAk">
            <ref role="3cqZAo" node="26ispG7YvFh" resolve="module" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="EMWAvBhETw" role="jymVt" />
    <node concept="3clFb_" id="EMWAvBhRKM" role="jymVt">
      <property role="TrG5h" value="disposeModule" />
      <node concept="37vLTG" id="EMWAvBhSV_" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="EMWAvBhWyX" role="1tU5fm">
          <ref role="3uigEE" node="115Xaa43tZI" resolve="CloudTransientModule" />
        </node>
      </node>
      <node concept="3cqZAl" id="EMWAvBhRKO" role="3clF45" />
      <node concept="3Tm1VV" id="EMWAvBhRKP" role="1B3o_S" />
      <node concept="3clFbS" id="EMWAvBhRKQ" role="3clF47">
        <node concept="1QHqEM" id="EMWAvBi3DV" role="3cqZAp">
          <node concept="1QHqEC" id="EMWAvBi3DX" role="1QHqEI">
            <node concept="3clFbS" id="EMWAvBi3DZ" role="1bW5cS">
              <node concept="3clFbF" id="EMWAvBi04_" role="3cqZAp">
                <node concept="1rXfSq" id="EMWAvBi04z" role="3clFbG">
                  <ref role="37wK5l" node="EMWAvBhFwC" resolve="doDisposeModule" />
                  <node concept="37vLTw" id="EMWAvBi0YN" role="37wK5m">
                    <ref role="3cqZAo" node="EMWAvBhSV_" resolve="module" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="EMWAvBhTD_" role="3cqZAp">
                <node concept="2OqwBi" id="EMWAvBhUAC" role="3clFbG">
                  <node concept="37vLTw" id="EMWAvBhTD$" role="2Oq$k0">
                    <ref role="3cqZAo" node="26ispG7Y1Go" resolve="modules" />
                  </node>
                  <node concept="3dhRuq" id="EMWAvBhVQh" role="2OqNvi">
                    <node concept="37vLTw" id="EMWAvBhXjz" role="25WWJ7">
                      <ref role="3cqZAo" node="EMWAvBhSV_" resolve="module" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="EMWAvBi4m2" role="ukAjM">
            <ref role="3cqZAo" node="26ispG7Y1wQ" resolve="mpsRepository" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="EMWAvBhRta" role="jymVt" />
    <node concept="3clFb_" id="EMWAvBhFwC" role="jymVt">
      <property role="TrG5h" value="doDisposeModule" />
      <node concept="37vLTG" id="EMWAvBhGm6" role="3clF46">
        <property role="TrG5h" value="module" />
        <node concept="3uibUv" id="EMWAvBhGDZ" role="1tU5fm">
          <ref role="3uigEE" node="115Xaa43tZI" resolve="CloudTransientModule" />
        </node>
      </node>
      <node concept="3cqZAl" id="EMWAvBhFwE" role="3clF45" />
      <node concept="3Tmbuc" id="EMWAvBhQqH" role="1B3o_S" />
      <node concept="3clFbS" id="EMWAvBhFwG" role="3clF47">
        <node concept="3clFbJ" id="1JFLVobdZl4" role="3cqZAp">
          <node concept="3clFbS" id="1JFLVobdZl6" role="3clFbx">
            <node concept="RRSsy" id="5dMchn85ryL" role="3cqZAp">
              <node concept="3cpWs3" id="5dMchn85rX8" role="RRSoy">
                <node concept="2OqwBi" id="5dMchn85sW3" role="3uHU7w">
                  <node concept="37vLTw" id="5dMchn85skA" role="2Oq$k0">
                    <ref role="3cqZAo" node="EMWAvBhGm6" resolve="module" />
                  </node>
                  <node concept="liA8E" id="5dMchn85tDM" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleId()" resolve="getModuleId" />
                  </node>
                </node>
                <node concept="Xl_RD" id="5dMchn85ryN" role="3uHU7B">
                  <property role="Xl_RC" value="Unregister module " />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="EMWAvBhN5Q" role="3cqZAp">
              <node concept="2OqwBi" id="EMWAvBhN5R" role="3clFbG">
                <node concept="37vLTw" id="EMWAvBhN5S" role="2Oq$k0">
                  <ref role="3cqZAo" node="26ispG7Y1wQ" resolve="mpsRepository" />
                </node>
                <node concept="liA8E" id="EMWAvBhN5T" role="2OqNvi">
                  <ref role="37wK5l" to="31cb:~SRepositoryExt.unregisterModule(org.jetbrains.mps.openapi.module.SModule,jetbrains.mps.smodel.MPSModuleOwner)" resolve="unregisterModule" />
                  <node concept="37vLTw" id="EMWAvBhPhX" role="37wK5m">
                    <ref role="3cqZAo" node="EMWAvBhGm6" resolve="module" />
                  </node>
                  <node concept="37vLTw" id="EMWAvBhN5V" role="37wK5m">
                    <ref role="3cqZAo" node="QurUghQjiK" resolve="moduleOwner" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1JFLVobesml" role="3clFbw">
            <node concept="2OqwBi" id="1JFLVobe0x9" role="3uHU7B">
              <node concept="37vLTw" id="1JFLVobdZSP" role="2Oq$k0">
                <ref role="3cqZAo" node="EMWAvBhGm6" resolve="module" />
              </node>
              <node concept="liA8E" id="1JFLVobe1m2" role="2OqNvi">
                <ref role="37wK5l" to="31cb:~SModuleBase.getRepository()" resolve="getRepository" />
              </node>
            </node>
            <node concept="10Nm6u" id="1JFLVobe1OS" role="3uHU7w" />
          </node>
        </node>
        <node concept="3cpWs8" id="EMWAvBhN5W" role="3cqZAp">
          <node concept="3cpWsn" id="EMWAvBhN5X" role="3cpWs9">
            <property role="TrG5h" value="models" />
            <node concept="A3Dl8" id="EMWAvBhN5Y" role="1tU5fm">
              <node concept="3uibUv" id="EMWAvBhN5Z" role="A3Ik2">
                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
              </node>
            </node>
            <node concept="2OqwBi" id="EMWAvBhN60" role="33vP2m">
              <node concept="37vLTw" id="EMWAvBhQ2a" role="2Oq$k0">
                <ref role="3cqZAo" node="EMWAvBhGm6" resolve="module" />
              </node>
              <node concept="liA8E" id="EMWAvBhN62" role="2OqNvi">
                <ref role="37wK5l" to="31cb:~SModuleBase.getModels()" resolve="getModels" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="EMWAvBhN63" role="3cqZAp">
          <node concept="2GrKxI" id="EMWAvBhN64" role="2Gsz3X">
            <property role="TrG5h" value="model" />
          </node>
          <node concept="2OqwBi" id="EMWAvBhN65" role="2GsD0m">
            <node concept="37vLTw" id="EMWAvBhN66" role="2Oq$k0">
              <ref role="3cqZAo" node="EMWAvBhN5X" resolve="models" />
            </node>
            <node concept="UnYns" id="EMWAvBhN67" role="2OqNvi">
              <node concept="3uibUv" id="EMWAvBhN68" role="UnYnz">
                <ref role="3uigEE" node="4QZGLsLEOdM" resolve="CloudTransientModel" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="EMWAvBhN69" role="2LFqv$">
            <node concept="3clFbF" id="EMWAvBhN6a" role="3cqZAp">
              <node concept="2OqwBi" id="EMWAvBhN6b" role="3clFbG">
                <node concept="2GrUjf" id="EMWAvBhN6c" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="EMWAvBhN64" resolve="model" />
                </node>
                <node concept="liA8E" id="EMWAvBhN6d" role="2OqNvi">
                  <ref role="37wK5l" node="4TPMxtdDYLQ" resolve="dispose" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="26ispG7YsvT" role="jymVt" />
    <node concept="3clFb_" id="26ispG7Y1vD" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="26ispG7Y1vF" role="3clF45" />
      <node concept="3Tm1VV" id="26ispG7Y1vG" role="1B3o_S" />
      <node concept="3clFbS" id="26ispG7Y1vH" role="3clF47">
        <node concept="3clFbF" id="2a45eKorcwJ" role="3cqZAp">
          <node concept="2YIFZM" id="2a45eKordgB" role="3clFbG">
            <ref role="37wK5l" node="2a45eKor3F7" resolve="runWrite" />
            <ref role="1Pybhc" node="2a45eKor38C" resolve="WriteAccessUtil" />
            <node concept="37vLTw" id="2a45eKordFu" role="37wK5m">
              <ref role="3cqZAo" node="26ispG7Y1wQ" resolve="mpsRepository" />
            </node>
            <node concept="1bVj0M" id="2a45eKordJM" role="37wK5m">
              <node concept="3clFbS" id="2a45eKordJN" role="1bW5cS">
                <node concept="3J1_TO" id="2a45eKordJO" role="3cqZAp">
                  <node concept="3clFbS" id="2a45eKordJP" role="1zxBo7">
                    <node concept="2Gpval" id="2a45eKordJQ" role="3cqZAp">
                      <node concept="2GrKxI" id="2a45eKordJR" role="2Gsz3X">
                        <property role="TrG5h" value="module" />
                      </node>
                      <node concept="37vLTw" id="2a45eKordJS" role="2GsD0m">
                        <ref role="3cqZAo" node="26ispG7Y1Go" resolve="modules" />
                      </node>
                      <node concept="3clFbS" id="2a45eKordJT" role="2LFqv$">
                        <node concept="3clFbF" id="2a45eKordJU" role="3cqZAp">
                          <node concept="1rXfSq" id="2a45eKordJV" role="3clFbG">
                            <ref role="37wK5l" node="EMWAvBhFwC" resolve="doDisposeModule" />
                            <node concept="2GrUjf" id="2a45eKordJW" role="37wK5m">
                              <ref role="2Gs0qQ" node="2a45eKordJR" resolve="module" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2a45eKordJX" role="3cqZAp">
                      <node concept="2OqwBi" id="2a45eKordJY" role="3clFbG">
                        <node concept="37vLTw" id="2a45eKordJZ" role="2Oq$k0">
                          <ref role="3cqZAo" node="26ispG7Y1Go" resolve="modules" />
                        </node>
                        <node concept="2Kehj3" id="2a45eKordK0" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="3uVAMA" id="2a45eKordK1" role="1zxBo5">
                    <node concept="XOnhg" id="2a45eKordK2" role="1zc67B">
                      <property role="3TUv4t" value="false" />
                      <property role="TrG5h" value="ex" />
                      <node concept="nSUau" id="8aGEJopfJT3" role="1tU5fm">
                        <node concept="3uibUv" id="2a45eKordK3" role="nSUat">
                          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="2a45eKordK4" role="1zc67A">
                      <node concept="RRSsy" id="2a45eKordK5" role="3cqZAp">
                        <property role="RRSoG" value="gZ5fh_4/error" />
                        <node concept="Xl_RD" id="2a45eKordK6" role="RRSoy" />
                        <node concept="37vLTw" id="2a45eKordK7" role="RRSow">
                          <ref role="3cqZAo" node="2a45eKordK2" resolve="ex" />
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
    <node concept="2tJIrI" id="3$AzfXQ8HJm" role="jymVt" />
    <node concept="3Tm1VV" id="26ispG7Y1u3" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4TPMxtdCfK_">
    <property role="TrG5h" value="ModelSynchronizer" />
    <node concept="Wx3nA" id="4TPMxtdwm8M" role="jymVt">
      <property role="TrG5h" value="DETACHED_NODES_ROLE" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="4TPMxtdwm8N" role="1tU5fm" />
      <node concept="3Tm1VV" id="4TPMxtdwm8O" role="1B3o_S" />
      <node concept="Xl_RD" id="4TPMxtdwm8P" role="33vP2m">
        <property role="Xl_RC" value="detached" />
      </node>
    </node>
    <node concept="2tJIrI" id="4TPMxtdCu8U" role="jymVt" />
    <node concept="312cEg" id="3l$kG67pCcy" role="jymVt">
      <property role="TrG5h" value="syncMuted" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3l$kG67pCcz" role="1B3o_S" />
      <node concept="3uibUv" id="4KaF0n8PpHp" role="1tU5fm">
        <ref role="3uigEE" to="i5cy:~AtomicInteger" resolve="AtomicInteger" />
      </node>
      <node concept="2ShNRf" id="3l$kG67pHZK" role="33vP2m">
        <node concept="1pGfFk" id="3l$kG67pHk4" role="2ShVmc">
          <ref role="37wK5l" to="i5cy:~AtomicInteger.&lt;init&gt;(int)" resolve="AtomicInteger" />
          <node concept="3cmrfG" id="4KaF0n8PB6F" role="37wK5m">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7Zr9caIEQRr" role="jymVt">
      <property role="TrG5h" value="nodeMap" />
      <node concept="3Tm6S6" id="7Zr9caIEQRs" role="1B3o_S" />
      <node concept="3uibUv" id="7Zr9caIESkl" role="1tU5fm">
        <ref role="3uigEE" node="7Zr9caIDEiL" resolve="ModelSynchronizer.NodeMap" />
      </node>
      <node concept="2ShNRf" id="7Zr9caIETXG" role="33vP2m">
        <node concept="HV5vD" id="7Zr9caIEVuy" role="2ShVmc">
          <ref role="HV5vE" node="7Zr9caIDEiL" resolve="ModelSynchronizer.NodeMap" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4TPMxtdD8F5" role="jymVt">
      <property role="TrG5h" value="activeBranch" />
      <node concept="3Tm6S6" id="4TPMxtdD8F6" role="1B3o_S" />
      <node concept="3uibUv" id="1VtHttxZet_" role="1tU5fm">
        <ref role="3uigEE" to="5440:~IIndirectBranch" resolve="IIndirectBranch" />
      </node>
    </node>
    <node concept="312cEg" id="4TPMxtdDg7r" role="jymVt">
      <property role="TrG5h" value="model" />
      <node concept="3Tm6S6" id="4TPMxtdDg7s" role="1B3o_S" />
      <node concept="3uibUv" id="4TPMxtdDiMA" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
    </node>
    <node concept="312cEg" id="4TPMxte8CKo" role="jymVt">
      <property role="TrG5h" value="pendingReferences" />
      <node concept="3Tm6S6" id="4TPMxte8CKp" role="1B3o_S" />
      <node concept="_YKpA" id="4TPMxte8GzO" role="1tU5fm">
        <node concept="1ajhzC" id="4TPMxte8GMH" role="_ZDj9">
          <node concept="3cqZAl" id="4TPMxte8GY6" role="1ajl9A" />
        </node>
      </node>
      <node concept="2ShNRf" id="4TPMxte8HNJ" role="33vP2m">
        <node concept="Tc6Ow" id="4TPMxte8HwS" role="2ShVmc">
          <node concept="1ajhzC" id="4TPMxte8HwT" role="HW$YZ">
            <node concept="3cqZAl" id="4TPMxte8HwU" role="1ajl9A" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7zuOo8p3CJV" role="jymVt">
      <property role="TrG5h" value="async" />
      <node concept="3Tm6S6" id="7zuOo8p3CJW" role="1B3o_S" />
      <node concept="10P_77" id="7zuOo8p3IHZ" role="1tU5fm" />
      <node concept="3clFbT" id="7zuOo8p3JPB" role="33vP2m">
        <property role="3clFbU" value="true" />
      </node>
    </node>
    <node concept="312cEg" id="5D5xac1t4Do" role="jymVt">
      <property role="TrG5h" value="modelNodeId" />
      <node concept="3Tm6S6" id="5D5xac1t4Dp" role="1B3o_S" />
      <node concept="3cpWsb" id="5D5xac1taNJ" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="4TPMxtdD63K" role="jymVt" />
    <node concept="312cEg" id="4TPMxtdClMY" role="jymVt">
      <property role="TrG5h" value="branchListener" />
      <node concept="3Tm6S6" id="4TPMxtdClMZ" role="1B3o_S" />
      <node concept="3uibUv" id="1m9roGBqyA2" role="1tU5fm">
        <ref role="3uigEE" to="jks5:~IBranchListener" resolve="IBranchListener" />
      </node>
      <node concept="2ShNRf" id="7Zr9caICVpi" role="33vP2m">
        <node concept="YeOm9" id="7Zr9caICX00" role="2ShVmc">
          <node concept="1Y3b0j" id="7Zr9caICX03" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="jks5:~IBranchListener" resolve="IBranchListener" />
            <node concept="3Tm1VV" id="7Zr9caICX04" role="1B3o_S" />
            <node concept="3clFb_" id="7Zr9caICX09" role="jymVt">
              <property role="TrG5h" value="treeChanged" />
              <node concept="37vLTG" id="7Zr9caICX0a" role="3clF46">
                <property role="TrG5h" value="oldTree" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="1m9roGBqB6p" role="1tU5fm">
                  <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
                </node>
              </node>
              <node concept="37vLTG" id="7Zr9caICX0c" role="3clF46">
                <property role="TrG5h" value="newTree" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="1m9roGBqCdj" role="1tU5fm">
                  <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
                </node>
              </node>
              <node concept="3cqZAl" id="7Zr9caICX0e" role="3clF45" />
              <node concept="3Tm1VV" id="7Zr9caICX0f" role="1B3o_S" />
              <node concept="3clFbS" id="7Zr9caICX0h" role="3clF47">
                <node concept="3clFbJ" id="3l$kG67qkuj" role="3cqZAp">
                  <node concept="3clFbS" id="3l$kG67qkul" role="3clFbx">
                    <node concept="3cpWs6" id="3l$kG67qwHj" role="3cqZAp" />
                  </node>
                  <node concept="3y3z36" id="4KaF0n8PDTR" role="3clFbw">
                    <node concept="3cmrfG" id="4KaF0n8PFBI" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="3l$kG67qt35" role="3uHU7B">
                      <node concept="37vLTw" id="3l$kG67qmUT" role="2Oq$k0">
                        <ref role="3cqZAo" node="3l$kG67pCcy" resolve="syncMuted" />
                      </node>
                      <node concept="liA8E" id="4KaF0n8PDaZ" role="2OqNvi">
                        <ref role="37wK5l" to="i5cy:~AtomicInteger.get()" resolve="get" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7zuOo8p3KDn" role="3cqZAp">
                  <node concept="3clFbS" id="7zuOo8p3KDp" role="3clFbx">
                    <node concept="3clFbF" id="4jf43puRaMw" role="3cqZAp">
                      <node concept="2OqwBi" id="4jf43puReFm" role="3clFbG">
                        <node concept="2YIFZM" id="4jf43puRbcC" role="2Oq$k0">
                          <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                          <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                        </node>
                        <node concept="liA8E" id="4jf43puRffQ" role="2OqNvi">
                          <ref role="37wK5l" to="bd8o:~Application.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                          <node concept="1bVj0M" id="4jf43puRiPx" role="37wK5m">
                            <node concept="3clFbS" id="4jf43puRiPy" role="1bW5cS">
                              <node concept="3clFbF" id="7zuOo8p3we4" role="3cqZAp">
                                <node concept="1rXfSq" id="7zuOo8p3we3" role="3clFbG">
                                  <ref role="37wK5l" node="7zuOo8p3mLz" resolve="sync" />
                                  <node concept="37vLTw" id="7zuOo8p3xof" role="37wK5m">
                                    <ref role="3cqZAo" node="7Zr9caICX0a" resolve="oldTree" />
                                  </node>
                                  <node concept="37vLTw" id="7zuOo8p3yz_" role="37wK5m">
                                    <ref role="3cqZAo" node="7Zr9caICX0c" resolve="newTree" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="7zuOo8p3Lbk" role="3clFbw">
                    <ref role="3cqZAo" node="7zuOo8p3CJV" resolve="async" />
                  </node>
                  <node concept="9aQIb" id="7zuOo8p3MjI" role="9aQIa">
                    <node concept="3clFbS" id="7zuOo8p3MjJ" role="9aQI4">
                      <node concept="3clFbF" id="7zuOo8p3MUq" role="3cqZAp">
                        <node concept="1rXfSq" id="7zuOo8p3MUr" role="3clFbG">
                          <ref role="37wK5l" node="7zuOo8p3mLz" resolve="sync" />
                          <node concept="37vLTw" id="7zuOo8p3MUs" role="37wK5m">
                            <ref role="3cqZAo" node="7Zr9caICX0a" resolve="oldTree" />
                          </node>
                          <node concept="37vLTw" id="7zuOo8p3MUt" role="37wK5m">
                            <ref role="3cqZAo" node="7Zr9caICX0c" resolve="newTree" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7Zr9caICX0j" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="7zuOo8p3mLz" role="jymVt">
              <property role="TrG5h" value="sync" />
              <node concept="37vLTG" id="7zuOo8p3svS" role="3clF46">
                <property role="TrG5h" value="oldTree" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="1m9roGBqDkW" role="1tU5fm">
                  <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
                </node>
              </node>
              <node concept="37vLTG" id="7zuOo8p3svU" role="3clF46">
                <property role="TrG5h" value="newTree" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="1m9roGBqFAk" role="1tU5fm">
                  <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
                </node>
              </node>
              <node concept="3cqZAl" id="7zuOo8p3mL_" role="3clF45" />
              <node concept="3Tm1VV" id="7zuOo8p3mLA" role="1B3o_S" />
              <node concept="3clFbS" id="7zuOo8p3mLB" role="3clF47">
                <node concept="3clFbF" id="4TPMxte71yP" role="3cqZAp">
                  <node concept="1rXfSq" id="4TPMxte71yN" role="3clFbG">
                    <ref role="37wK5l" node="3l$kG67pN9J" resolve="withSyncMuted" />
                    <node concept="1bVj0M" id="4TPMxte738O" role="37wK5m">
                      <node concept="3clFbS" id="4TPMxte738P" role="1bW5cS">
                        <node concept="3clFbF" id="6HiBqPCnle7" role="3cqZAp">
                          <node concept="2YIFZM" id="6HiBqPCnlAG" role="3clFbG">
                            <ref role="1Pybhc" node="6FW8YbU5vOS" resolve="CommandHelper" />
                            <ref role="37wK5l" node="6FW8YbU5wHo" resolve="runInCommand" />
                            <node concept="1bVj0M" id="6HiBqPCnmYI" role="37wK5m">
                              <node concept="3clFbS" id="6HiBqPCnmYJ" role="1bW5cS">
                                <node concept="3clFbF" id="7Zr9caICZED" role="3cqZAp">
                                  <node concept="2OqwBi" id="7Zr9caID0el" role="3clFbG">
                                    <node concept="37vLTw" id="7Zr9caICZEC" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7zuOo8p3svU" resolve="newTree" />
                                    </node>
                                    <node concept="liA8E" id="7Zr9caID0lJ" role="2OqNvi">
                                      <ref role="37wK5l" to="jks5:~ITree.visitChanges(org.modelix.model.api.ITree,org.modelix.model.api.ITreeChangeVisitor)" resolve="visitChanges" />
                                      <node concept="37vLTw" id="7Zr9caID1jx" role="37wK5m">
                                        <ref role="3cqZAo" node="7zuOo8p3svS" resolve="oldTree" />
                                      </node>
                                      <node concept="2ShNRf" id="7Zr9caID2lT" role="37wK5m">
                                        <node concept="YeOm9" id="7Zr9caID4mq" role="2ShVmc">
                                          <node concept="1Y3b0j" id="7Zr9caID4mt" role="YeSDq">
                                            <property role="2bfB8j" value="true" />
                                            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                            <ref role="1Y3XeK" to="jks5:~ITreeChangeVisitor" resolve="ITreeChangeVisitor" />
                                            <node concept="3clFb_" id="5D5xac1tfFf" role="jymVt">
                                              <property role="TrG5h" value="isInsideModel" />
                                              <node concept="37vLTG" id="5D5xac1th$Z" role="3clF46">
                                                <property role="TrG5h" value="nodeId" />
                                                <node concept="3cpWsb" id="5D5xac1tidY" role="1tU5fm" />
                                              </node>
                                              <node concept="10P_77" id="5D5xac1tiJY" role="3clF45" />
                                              <node concept="3Tm1VV" id="5D5xac1tfFi" role="1B3o_S" />
                                              <node concept="3clFbS" id="5D5xac1tfFj" role="3clF47">
                                                <node concept="3cpWs8" id="5D5xac1tmn7" role="3cqZAp">
                                                  <node concept="3cpWsn" id="5D5xac1tmn8" role="3cpWs9">
                                                    <property role="TrG5h" value="parent" />
                                                    <node concept="3cpWsb" id="5D5xac1tmi$" role="1tU5fm" />
                                                    <node concept="2OqwBi" id="5D5xac1tmn9" role="33vP2m">
                                                      <node concept="37vLTw" id="5D5xac1tmna" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="7zuOo8p3svU" resolve="newTree" />
                                                      </node>
                                                      <node concept="liA8E" id="5D5xac1tmnb" role="2OqNvi">
                                                        <ref role="37wK5l" to="jks5:~ITree.getParent(long)" resolve="getParent" />
                                                        <node concept="37vLTw" id="5D5xac1tmnc" role="37wK5m">
                                                          <ref role="3cqZAo" node="5D5xac1th$Z" resolve="nodeId" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3clFbJ" id="5D5xac1tnvL" role="3cqZAp">
                                                  <node concept="3clFbS" id="5D5xac1tnvN" role="3clFbx">
                                                    <node concept="3cpWs6" id="5D5xac1ts$M" role="3cqZAp">
                                                      <node concept="3clFbT" id="5D5xac1ttrQ" role="3cqZAk" />
                                                    </node>
                                                  </node>
                                                  <node concept="3clFbC" id="5D5xac1tq3B" role="3clFbw">
                                                    <node concept="3cmrfG" id="5D5xac1tr26" role="3uHU7w">
                                                      <property role="3cmrfH" value="0" />
                                                    </node>
                                                    <node concept="37vLTw" id="5D5xac1tovO" role="3uHU7B">
                                                      <ref role="3cqZAo" node="5D5xac1tmn8" resolve="parent" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3clFbJ" id="5D5xac1tvt2" role="3cqZAp">
                                                  <node concept="3clFbS" id="5D5xac1tvt4" role="3clFbx">
                                                    <node concept="3cpWs6" id="5D5xac1tARt" role="3cqZAp">
                                                      <node concept="17R0WA" id="7lI5IOrZUxC" role="3cqZAk">
                                                        <node concept="2OqwBi" id="7lI5IOrZUxD" role="3uHU7w">
                                                          <node concept="359W_D" id="7lI5IOrZUxE" role="2Oq$k0">
                                                            <ref role="359W_E" to="dj5d:qmkA5fOskc" resolve="Model" />
                                                            <ref role="359W_F" to="dj5d:qmkA5fOskk" resolve="rootNodes" />
                                                          </node>
                                                          <node concept="liA8E" id="7lI5IOrZUxF" role="2OqNvi">
                                                            <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                                                          </node>
                                                        </node>
                                                        <node concept="2OqwBi" id="7lI5IOrZUxG" role="3uHU7B">
                                                          <node concept="37vLTw" id="7lI5IOrZUxH" role="2Oq$k0">
                                                            <ref role="3cqZAo" node="7zuOo8p3svU" resolve="newTree" />
                                                          </node>
                                                          <node concept="liA8E" id="7lI5IOrZUxI" role="2OqNvi">
                                                            <ref role="37wK5l" to="jks5:~ITree.getRole(long)" resolve="getRole" />
                                                            <node concept="37vLTw" id="7lI5IOrZUxJ" role="37wK5m">
                                                              <ref role="3cqZAo" node="5D5xac1th$Z" resolve="nodeId" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="3clFbC" id="5D5xac1tz1w" role="3clFbw">
                                                    <node concept="37vLTw" id="5D5xac1txtF" role="3uHU7B">
                                                      <ref role="3cqZAo" node="5D5xac1tmn8" resolve="parent" />
                                                    </node>
                                                    <node concept="37vLTw" id="5D5xac1t_dQ" role="3uHU7w">
                                                      <ref role="3cqZAo" node="5D5xac1t4Do" resolve="modelNodeId" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3cpWs6" id="5D5xac1tEct" role="3cqZAp">
                                                  <node concept="1rXfSq" id="5D5xac1tH2q" role="3cqZAk">
                                                    <ref role="37wK5l" node="5D5xac1tfFf" resolve="isInsideModel" />
                                                    <node concept="37vLTw" id="5D5xac1tJ1y" role="37wK5m">
                                                      <ref role="3cqZAo" node="5D5xac1tmn8" resolve="parent" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFb_" id="5D5xac1umN3" role="jymVt">
                                              <property role="TrG5h" value="isInsideModelOrModel" />
                                              <node concept="37vLTG" id="5D5xac1uy4h" role="3clF46">
                                                <property role="TrG5h" value="nodeId" />
                                                <node concept="3cpWsb" id="5D5xac1uzwC" role="1tU5fm" />
                                              </node>
                                              <node concept="10P_77" id="5D5xac1uw4a" role="3clF45" />
                                              <node concept="3Tm1VV" id="5D5xac1umN6" role="1B3o_S" />
                                              <node concept="3clFbS" id="5D5xac1umN7" role="3clF47">
                                                <node concept="3clFbJ" id="5D5xac1uy3z" role="3cqZAp">
                                                  <node concept="3clFbC" id="5D5xac1uA33" role="3clFbw">
                                                    <node concept="37vLTw" id="5D5xac1uCb9" role="3uHU7w">
                                                      <ref role="3cqZAo" node="5D5xac1t4Do" resolve="modelNodeId" />
                                                    </node>
                                                    <node concept="37vLTw" id="5D5xac1u$sg" role="3uHU7B">
                                                      <ref role="3cqZAo" node="5D5xac1uy4h" resolve="nodeId" />
                                                    </node>
                                                  </node>
                                                  <node concept="3clFbS" id="5D5xac1uy3_" role="3clFbx">
                                                    <node concept="3cpWs6" id="5D5xac1uDHA" role="3cqZAp">
                                                      <node concept="3clFbT" id="5D5xac1uE_h" role="3cqZAk">
                                                        <property role="3clFbU" value="true" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3cpWs6" id="5D5xac1uGTO" role="3cqZAp">
                                                  <node concept="1rXfSq" id="5D5xac1uJKT" role="3cqZAk">
                                                    <ref role="37wK5l" node="5D5xac1tfFf" resolve="isInsideModel" />
                                                    <node concept="37vLTw" id="5D5xac1uLLn" role="37wK5m">
                                                      <ref role="3cqZAo" node="5D5xac1uy4h" resolve="nodeId" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFb_" id="7lI5IOrZLBi" role="jymVt">
                                              <property role="TrG5h" value="isModelProperties" />
                                              <node concept="37vLTG" id="7lI5IOrZLBj" role="3clF46">
                                                <property role="TrG5h" value="nodeId" />
                                                <node concept="3cpWsb" id="7lI5IOrZLBk" role="1tU5fm" />
                                              </node>
                                              <node concept="10P_77" id="7lI5IOrZLBl" role="3clF45" />
                                              <node concept="3Tm1VV" id="7lI5IOrZLBm" role="1B3o_S" />
                                              <node concept="3clFbS" id="7lI5IOrZLBn" role="3clF47">
                                                <node concept="3cpWs8" id="7lI5IOs007C" role="3cqZAp">
                                                  <node concept="3cpWsn" id="7lI5IOs007D" role="3cpWs9">
                                                    <property role="TrG5h" value="parent" />
                                                    <node concept="3cpWsb" id="7lI5IOs007E" role="1tU5fm" />
                                                    <node concept="2OqwBi" id="7lI5IOs007F" role="33vP2m">
                                                      <node concept="37vLTw" id="7lI5IOs007G" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="7zuOo8p3svU" resolve="newTree" />
                                                      </node>
                                                      <node concept="liA8E" id="7lI5IOs007H" role="2OqNvi">
                                                        <ref role="37wK5l" to="jks5:~ITree.getParent(long)" resolve="getParent" />
                                                        <node concept="37vLTw" id="7lI5IOs007I" role="37wK5m">
                                                          <ref role="3cqZAo" node="7lI5IOrZLBj" resolve="nodeId" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3clFbJ" id="7lI5IOs007J" role="3cqZAp">
                                                  <node concept="3clFbS" id="7lI5IOs007K" role="3clFbx">
                                                    <node concept="3cpWs6" id="7lI5IOs007L" role="3cqZAp">
                                                      <node concept="3clFbT" id="7lI5IOs007M" role="3cqZAk" />
                                                    </node>
                                                  </node>
                                                  <node concept="3clFbC" id="7lI5IOs007N" role="3clFbw">
                                                    <node concept="3cmrfG" id="7lI5IOs007O" role="3uHU7w">
                                                      <property role="3cmrfH" value="0" />
                                                    </node>
                                                    <node concept="37vLTw" id="7lI5IOs007P" role="3uHU7B">
                                                      <ref role="3cqZAo" node="7lI5IOs007D" resolve="parent" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3clFbJ" id="7lI5IOs007Q" role="3cqZAp">
                                                  <node concept="3clFbS" id="7lI5IOs007R" role="3clFbx">
                                                    <node concept="3cpWs6" id="7lI5IOs007S" role="3cqZAp">
                                                      <node concept="17QLQc" id="7lI5IOs026f" role="3cqZAk">
                                                        <node concept="2OqwBi" id="7lI5IOs007X" role="3uHU7B">
                                                          <node concept="37vLTw" id="7lI5IOs007Y" role="2Oq$k0">
                                                            <ref role="3cqZAo" node="7zuOo8p3svU" resolve="newTree" />
                                                          </node>
                                                          <node concept="liA8E" id="7lI5IOs007Z" role="2OqNvi">
                                                            <ref role="37wK5l" to="jks5:~ITree.getRole(long)" resolve="getRole" />
                                                            <node concept="37vLTw" id="7lI5IOs0080" role="37wK5m">
                                                              <ref role="3cqZAo" node="7lI5IOrZLBj" resolve="nodeId" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                        <node concept="2OqwBi" id="7lI5IOs007U" role="3uHU7w">
                                                          <node concept="359W_D" id="7lI5IOs007V" role="2Oq$k0">
                                                            <ref role="359W_E" to="dj5d:qmkA5fOskc" resolve="Model" />
                                                            <ref role="359W_F" to="dj5d:qmkA5fOskk" resolve="rootNodes" />
                                                          </node>
                                                          <node concept="liA8E" id="7lI5IOs007W" role="2OqNvi">
                                                            <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="3clFbC" id="7lI5IOs0081" role="3clFbw">
                                                    <node concept="37vLTw" id="7lI5IOs0082" role="3uHU7B">
                                                      <ref role="3cqZAo" node="7lI5IOs007D" resolve="parent" />
                                                    </node>
                                                    <node concept="37vLTw" id="7lI5IOs0083" role="3uHU7w">
                                                      <ref role="3cqZAo" node="5D5xac1t4Do" resolve="modelNodeId" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3cpWs6" id="7lI5IOs0084" role="3cqZAp">
                                                  <node concept="1rXfSq" id="7lI5IOs0085" role="3cqZAk">
                                                    <ref role="37wK5l" node="7lI5IOrZLBi" resolve="isModelProperties" />
                                                    <node concept="37vLTw" id="7lI5IOs0086" role="37wK5m">
                                                      <ref role="3cqZAo" node="7lI5IOs007D" resolve="parent" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="2tJIrI" id="7lI5IOrZLrC" role="jymVt" />
                                            <node concept="3Tm1VV" id="7Zr9caID4mu" role="1B3o_S" />
                                            <node concept="3clFb_" id="7Zr9caID4mA" role="jymVt">
                                              <property role="TrG5h" value="containmentChanged" />
                                              <node concept="37vLTG" id="7Zr9caID4mB" role="3clF46">
                                                <property role="TrG5h" value="nodeId" />
                                                <node concept="3cpWsb" id="7Zr9caID4mC" role="1tU5fm" />
                                              </node>
                                              <node concept="3cqZAl" id="7Zr9caID4mD" role="3clF45" />
                                              <node concept="3Tm1VV" id="7Zr9caID4mE" role="1B3o_S" />
                                              <node concept="3clFbS" id="7Zr9caID4mG" role="3clF47" />
                                              <node concept="2AHcQZ" id="7Zr9caID4mI" role="2AJF6D">
                                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                              </node>
                                            </node>
                                            <node concept="2tJIrI" id="7Zr9caID4mJ" role="jymVt" />
                                            <node concept="3clFb_" id="7Zr9caID4mK" role="jymVt">
                                              <property role="TrG5h" value="childrenChanged" />
                                              <node concept="37vLTG" id="7Zr9caID4mL" role="3clF46">
                                                <property role="TrG5h" value="nodeId" />
                                                <property role="3TUv4t" value="true" />
                                                <node concept="3cpWsb" id="7Zr9caID4mM" role="1tU5fm" />
                                              </node>
                                              <node concept="37vLTG" id="7Zr9caID4mN" role="3clF46">
                                                <property role="TrG5h" value="role" />
                                                <property role="3TUv4t" value="true" />
                                                <node concept="17QB3L" id="7Zr9caID4mO" role="1tU5fm" />
                                              </node>
                                              <node concept="3cqZAl" id="7Zr9caID4mP" role="3clF45" />
                                              <node concept="3Tm1VV" id="7Zr9caID4mQ" role="1B3o_S" />
                                              <node concept="3clFbS" id="7Zr9caID4mS" role="3clF47">
                                                <node concept="3clFbJ" id="5XmGB66uLT5" role="3cqZAp">
                                                  <node concept="3clFbS" id="5XmGB66uLT7" role="3clFbx">
                                                    <node concept="3clFbJ" id="5XmGB66uOC_" role="3cqZAp">
                                                      <node concept="3clFbS" id="5XmGB66uOCB" role="3clFbx">
                                                        <node concept="3clFbF" id="5XmGB66uS7E" role="3cqZAp">
                                                          <node concept="1rXfSq" id="5XmGB66uS7F" role="3clFbG">
                                                            <ref role="37wK5l" node="3l$kG67nirj" resolve="syncChildren" />
                                                            <node concept="37vLTw" id="5XmGB66uS7G" role="37wK5m">
                                                              <ref role="3cqZAo" node="7Zr9caID4mL" resolve="nodeId" />
                                                            </node>
                                                            <node concept="37vLTw" id="5XmGB66uS7H" role="37wK5m">
                                                              <ref role="3cqZAo" node="7Zr9caID4mN" resolve="role" />
                                                            </node>
                                                            <node concept="37vLTw" id="5XmGB66uS7I" role="37wK5m">
                                                              <ref role="3cqZAo" node="7zuOo8p3svU" resolve="newTree" />
                                                            </node>
                                                            <node concept="3clFbT" id="5XmGB66uS7J" role="37wK5m" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="17R0WA" id="5XmGB66uQN1" role="3clFbw">
                                                        <node concept="37vLTw" id="5XmGB66uPzd" role="3uHU7B">
                                                          <ref role="3cqZAo" node="7Zr9caID4mN" resolve="role" />
                                                        </node>
                                                        <node concept="2OqwBi" id="5XmGB66uR60" role="3uHU7w">
                                                          <node concept="359W_D" id="5XmGB66uR61" role="2Oq$k0">
                                                            <ref role="359W_E" to="dj5d:qmkA5fOskc" resolve="Model" />
                                                            <ref role="359W_F" to="dj5d:qmkA5fOskk" resolve="rootNodes" />
                                                          </node>
                                                          <node concept="liA8E" id="5XmGB66uR62" role="2OqNvi">
                                                            <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="9aQIb" id="5XmGB66uS6r" role="9aQIa">
                                                        <node concept="3clFbS" id="5XmGB66uS6s" role="9aQI4">
                                                          <node concept="3clFbF" id="7lI5IOs0pKX" role="3cqZAp">
                                                            <node concept="1rXfSq" id="7lI5IOs0pKV" role="3clFbG">
                                                              <ref role="37wK5l" node="7lI5IOs09sV" resolve="syncModelPropertiesToModel" />
                                                              <node concept="37vLTw" id="1DfnvxVzTh3" role="37wK5m">
                                                                <ref role="3cqZAo" node="7zuOo8p3svU" resolve="newTree" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="3clFbC" id="5XmGB66uMp1" role="3clFbw">
                                                    <node concept="37vLTw" id="5XmGB66uMp2" role="3uHU7w">
                                                      <ref role="3cqZAo" node="7Zr9caID4mL" resolve="nodeId" />
                                                    </node>
                                                    <node concept="37vLTw" id="5XmGB66uMp3" role="3uHU7B">
                                                      <ref role="3cqZAo" node="5D5xac1t4Do" resolve="modelNodeId" />
                                                    </node>
                                                  </node>
                                                  <node concept="3eNFk2" id="5XmGB66uVI9" role="3eNLev">
                                                    <node concept="3clFbS" id="5XmGB66uVIb" role="3eOfB_">
                                                      <node concept="3clFbF" id="5XmGB66uYJ8" role="3cqZAp">
                                                        <node concept="1rXfSq" id="5XmGB66uYJ9" role="3clFbG">
                                                          <ref role="37wK5l" node="7lI5IOs09sV" resolve="syncModelPropertiesToModel" />
                                                          <node concept="37vLTw" id="5XmGB66uYJa" role="37wK5m">
                                                            <ref role="3cqZAo" node="7zuOo8p3svU" resolve="newTree" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="1rXfSq" id="5XmGB66uWeC" role="3eO9$A">
                                                      <ref role="37wK5l" node="7lI5IOrZLBi" resolve="isModelProperties" />
                                                      <node concept="37vLTw" id="5XmGB66uWeD" role="37wK5m">
                                                        <ref role="3cqZAo" node="7Zr9caID4mL" resolve="nodeId" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="3eNFk2" id="5XmGB66uZuq" role="3eNLev">
                                                    <node concept="3clFbS" id="5XmGB66uZus" role="3eOfB_">
                                                      <node concept="3clFbF" id="5XmGB66v0nV" role="3cqZAp">
                                                        <node concept="1rXfSq" id="5XmGB66v0nW" role="3clFbG">
                                                          <ref role="37wK5l" node="3l$kG67nirj" resolve="syncChildren" />
                                                          <node concept="37vLTw" id="5XmGB66v0nX" role="37wK5m">
                                                            <ref role="3cqZAo" node="7Zr9caID4mL" resolve="nodeId" />
                                                          </node>
                                                          <node concept="37vLTw" id="5XmGB66v0nY" role="37wK5m">
                                                            <ref role="3cqZAo" node="7Zr9caID4mN" resolve="role" />
                                                          </node>
                                                          <node concept="37vLTw" id="5XmGB66v0nZ" role="37wK5m">
                                                            <ref role="3cqZAo" node="7zuOo8p3svU" resolve="newTree" />
                                                          </node>
                                                          <node concept="3clFbT" id="5XmGB66v0o0" role="37wK5m" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="1rXfSq" id="5XmGB66v00r" role="3eO9$A">
                                                      <ref role="37wK5l" node="5D5xac1tfFf" resolve="isInsideModel" />
                                                      <node concept="37vLTw" id="5XmGB66v00s" role="37wK5m">
                                                        <ref role="3cqZAo" node="7Zr9caID4mL" resolve="nodeId" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="2AHcQZ" id="7Zr9caID4mU" role="2AJF6D">
                                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                              </node>
                                            </node>
                                            <node concept="2tJIrI" id="7Zr9caID4mV" role="jymVt" />
                                            <node concept="3clFb_" id="7Zr9caID4mW" role="jymVt">
                                              <property role="TrG5h" value="referenceChanged" />
                                              <node concept="37vLTG" id="7Zr9caID4mX" role="3clF46">
                                                <property role="TrG5h" value="nodeId" />
                                                <node concept="3cpWsb" id="7Zr9caID4mY" role="1tU5fm" />
                                              </node>
                                              <node concept="37vLTG" id="7Zr9caID4mZ" role="3clF46">
                                                <property role="TrG5h" value="role" />
                                                <node concept="17QB3L" id="7Zr9caID4n0" role="1tU5fm" />
                                              </node>
                                              <node concept="3cqZAl" id="7Zr9caID4n1" role="3clF45" />
                                              <node concept="3Tm1VV" id="7Zr9caID4n2" role="1B3o_S" />
                                              <node concept="3clFbS" id="7Zr9caID4n4" role="3clF47">
                                                <node concept="3clFbJ" id="7lI5IOs0rnJ" role="3cqZAp">
                                                  <node concept="3clFbS" id="7lI5IOs0rnK" role="3clFbx">
                                                    <node concept="3clFbF" id="7lI5IOs0rnL" role="3cqZAp">
                                                      <node concept="1rXfSq" id="7lI5IOs0rnM" role="3clFbG">
                                                        <ref role="37wK5l" node="7lI5IOs09sV" resolve="syncModelPropertiesToModel" />
                                                        <node concept="37vLTw" id="1DfnvxVzUnY" role="37wK5m">
                                                          <ref role="3cqZAo" node="7zuOo8p3svU" resolve="newTree" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3cpWs6" id="7lI5IOs0rnN" role="3cqZAp" />
                                                  </node>
                                                  <node concept="1rXfSq" id="7lI5IOs0rnO" role="3clFbw">
                                                    <ref role="37wK5l" node="7lI5IOrZLBi" resolve="isModelProperties" />
                                                    <node concept="37vLTw" id="7lI5IOs0rnP" role="37wK5m">
                                                      <ref role="3cqZAo" node="7Zr9caID4mX" resolve="nodeId" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3clFbJ" id="5D5xac1uQ20" role="3cqZAp">
                                                  <node concept="3clFbS" id="5D5xac1uQ21" role="3clFbx">
                                                    <node concept="3cpWs6" id="5D5xac1uQ22" role="3cqZAp" />
                                                  </node>
                                                  <node concept="3fqX7Q" id="5D5xac1uQ23" role="3clFbw">
                                                    <node concept="1rXfSq" id="5D5xac1uQ24" role="3fr31v">
                                                      <ref role="37wK5l" node="5D5xac1tfFf" resolve="isInsideModel" />
                                                      <node concept="37vLTw" id="5D5xac1uQ25" role="37wK5m">
                                                        <ref role="3cqZAo" node="7Zr9caID4mX" resolve="nodeId" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3clFbF" id="4TPMxteeY7p" role="3cqZAp">
                                                  <node concept="1rXfSq" id="4TPMxteeY7n" role="3clFbG">
                                                    <ref role="37wK5l" node="4TPMxteehBt" resolve="syncReference" />
                                                    <node concept="37vLTw" id="4TPMxteeZpf" role="37wK5m">
                                                      <ref role="3cqZAo" node="7Zr9caID4mX" resolve="nodeId" />
                                                    </node>
                                                    <node concept="37vLTw" id="4TPMxtef1M1" role="37wK5m">
                                                      <ref role="3cqZAo" node="7zuOo8p3svU" resolve="newTree" />
                                                    </node>
                                                    <node concept="37vLTw" id="4TPMxtef0zT" role="37wK5m">
                                                      <ref role="3cqZAo" node="7Zr9caID4mZ" resolve="role" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="2AHcQZ" id="7Zr9caID4n6" role="2AJF6D">
                                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                              </node>
                                            </node>
                                            <node concept="2tJIrI" id="7Zr9caID4n7" role="jymVt" />
                                            <node concept="3clFb_" id="7Zr9caID4n8" role="jymVt">
                                              <property role="TrG5h" value="propertyChanged" />
                                              <node concept="37vLTG" id="7Zr9caID4n9" role="3clF46">
                                                <property role="TrG5h" value="nodeId" />
                                                <property role="3TUv4t" value="true" />
                                                <node concept="3cpWsb" id="7Zr9caID4na" role="1tU5fm" />
                                              </node>
                                              <node concept="37vLTG" id="7Zr9caID4nb" role="3clF46">
                                                <property role="TrG5h" value="role" />
                                                <node concept="17QB3L" id="7Zr9caID4nc" role="1tU5fm" />
                                              </node>
                                              <node concept="3cqZAl" id="7Zr9caID4nd" role="3clF45" />
                                              <node concept="3Tm1VV" id="7Zr9caID4ne" role="1B3o_S" />
                                              <node concept="3clFbS" id="7Zr9caID4ng" role="3clF47">
                                                <node concept="3clFbJ" id="7lI5IOs0sgY" role="3cqZAp">
                                                  <node concept="3clFbS" id="7lI5IOs0sgZ" role="3clFbx">
                                                    <node concept="3clFbF" id="7lI5IOs0sh0" role="3cqZAp">
                                                      <node concept="1rXfSq" id="7lI5IOs0sh1" role="3clFbG">
                                                        <ref role="37wK5l" node="7lI5IOs09sV" resolve="syncModelPropertiesToModel" />
                                                        <node concept="37vLTw" id="1DfnvxVzVuT" role="37wK5m">
                                                          <ref role="3cqZAo" node="7zuOo8p3svU" resolve="newTree" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="3cpWs6" id="7lI5IOs0sh2" role="3cqZAp" />
                                                  </node>
                                                  <node concept="1rXfSq" id="7lI5IOs0sh3" role="3clFbw">
                                                    <ref role="37wK5l" node="7lI5IOrZLBi" resolve="isModelProperties" />
                                                    <node concept="37vLTw" id="7lI5IOs0sh4" role="37wK5m">
                                                      <ref role="3cqZAo" node="7Zr9caID4n9" resolve="nodeId" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3clFbJ" id="5D5xac1uQwm" role="3cqZAp">
                                                  <node concept="3clFbS" id="5D5xac1uQwn" role="3clFbx">
                                                    <node concept="3cpWs6" id="5D5xac1uQwo" role="3cqZAp" />
                                                  </node>
                                                  <node concept="3fqX7Q" id="5D5xac1uQwp" role="3clFbw">
                                                    <node concept="1rXfSq" id="5D5xac1uQwq" role="3fr31v">
                                                      <ref role="37wK5l" node="5D5xac1tfFf" resolve="isInsideModel" />
                                                      <node concept="37vLTw" id="5D5xac1uQwr" role="37wK5m">
                                                        <ref role="3cqZAo" node="7Zr9caID4n9" resolve="nodeId" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3cpWs8" id="7Zr9caIGfei" role="3cqZAp">
                                                  <node concept="3cpWsn" id="7Zr9caIGfej" role="3cpWs9">
                                                    <property role="TrG5h" value="snode" />
                                                    <node concept="3uibUv" id="7Zr9caIGfeh" role="1tU5fm">
                                                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                                    </node>
                                                    <node concept="1rXfSq" id="3l$kG67iC8_" role="33vP2m">
                                                      <ref role="37wK5l" node="3l$kG67i8x8" resolve="getOrCreateNode" />
                                                      <node concept="37vLTw" id="3l$kG67iC8A" role="37wK5m">
                                                        <ref role="3cqZAo" node="7Zr9caID4n9" resolve="nodeId" />
                                                      </node>
                                                      <node concept="37vLTw" id="3l$kG67iC8B" role="37wK5m">
                                                        <ref role="3cqZAo" node="7zuOo8p3svU" resolve="newTree" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3cpWs8" id="1m9roGBs6$q" role="3cqZAp">
                                                  <node concept="3cpWsn" id="1m9roGBs6$r" role="3cpWs9">
                                                    <property role="TrG5h" value="properties" />
                                                    <node concept="A3Dl8" id="1m9roGBs7S9" role="1tU5fm">
                                                      <node concept="3uibUv" id="1m9roGBs7Sb" role="A3Ik2">
                                                        <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                                                      </node>
                                                    </node>
                                                    <node concept="2OqwBi" id="1m9roGBs6$s" role="33vP2m">
                                                      <node concept="2OqwBi" id="1m9roGBs6$t" role="2Oq$k0">
                                                        <node concept="37vLTw" id="1m9roGBs6$u" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="7Zr9caIGfej" resolve="snode" />
                                                        </node>
                                                        <node concept="liA8E" id="1m9roGBs6$v" role="2OqNvi">
                                                          <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                                                        </node>
                                                      </node>
                                                      <node concept="liA8E" id="1m9roGBs6$w" role="2OqNvi">
                                                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getProperties()" resolve="getProperties" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3cpWs8" id="1m9roGBsdrq" role="3cqZAp">
                                                  <node concept="3cpWsn" id="1m9roGBsdrr" role="3cpWs9">
                                                    <property role="TrG5h" value="property" />
                                                    <node concept="3uibUv" id="1m9roGBsdbB" role="1tU5fm">
                                                      <ref role="3uigEE" to="c17a:~SProperty" resolve="SProperty" />
                                                    </node>
                                                    <node concept="2OqwBi" id="1m9roGBsdrs" role="33vP2m">
                                                      <node concept="37vLTw" id="1m9roGBsdrt" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="1m9roGBs6$r" resolve="properties" />
                                                      </node>
                                                      <node concept="1z4cxt" id="1m9roGBsdru" role="2OqNvi">
                                                        <node concept="1bVj0M" id="1m9roGBsdrv" role="23t8la">
                                                          <node concept="3clFbS" id="1m9roGBsdrw" role="1bW5cS">
                                                            <node concept="3clFbF" id="1m9roGBsdrx" role="3cqZAp">
                                                              <node concept="17R0WA" id="1m9roGBsdry" role="3clFbG">
                                                                <node concept="37vLTw" id="1m9roGBsdrz" role="3uHU7w">
                                                                  <ref role="3cqZAo" node="7Zr9caID4nb" resolve="role" />
                                                                </node>
                                                                <node concept="2OqwBi" id="1m9roGBsdr$" role="3uHU7B">
                                                                  <node concept="37vLTw" id="1m9roGBsdr_" role="2Oq$k0">
                                                                    <ref role="3cqZAo" node="1m9roGBsdrB" resolve="it" />
                                                                  </node>
                                                                  <node concept="liA8E" id="1m9roGBsdrA" role="2OqNvi">
                                                                    <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                                                                  </node>
                                                                </node>
                                                              </node>
                                                            </node>
                                                          </node>
                                                          <node concept="Rh6nW" id="1m9roGBsdrB" role="1bW2Oz">
                                                            <property role="TrG5h" value="it" />
                                                            <node concept="2jxLKc" id="1m9roGBsdrC" role="1tU5fm" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3clFbF" id="1m9roGBs1nG" role="3cqZAp">
                                                  <node concept="2OqwBi" id="1m9roGBs2Aj" role="3clFbG">
                                                    <node concept="37vLTw" id="1m9roGBs1nE" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="7Zr9caIGfej" resolve="snode" />
                                                    </node>
                                                    <node concept="liA8E" id="1m9roGBs2QH" role="2OqNvi">
                                                      <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
                                                      <node concept="37vLTw" id="1m9roGBsdrD" role="37wK5m">
                                                        <ref role="3cqZAo" node="1m9roGBsdrr" resolve="property" />
                                                      </node>
                                                      <node concept="2OqwBi" id="1m9roGBsea0" role="37wK5m">
                                                        <node concept="37vLTw" id="1m9roGBsea1" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="7zuOo8p3svU" resolve="newTree" />
                                                        </node>
                                                        <node concept="liA8E" id="1m9roGBsea2" role="2OqNvi">
                                                          <ref role="37wK5l" to="jks5:~ITree.getProperty(long,java.lang.String)" resolve="getProperty" />
                                                          <node concept="37vLTw" id="1m9roGBsea3" role="37wK5m">
                                                            <ref role="3cqZAo" node="7Zr9caID4n9" resolve="nodeId" />
                                                          </node>
                                                          <node concept="37vLTw" id="1m9roGBsea4" role="37wK5m">
                                                            <ref role="3cqZAo" node="7Zr9caID4nb" resolve="role" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="2AHcQZ" id="7Zr9caID4ni" role="2AJF6D">
                                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                              </node>
                                            </node>
                                            <node concept="2tJIrI" id="7Zr9caID4nv" role="jymVt" />
                                            <node concept="3clFb_" id="7Zr9caID4nw" role="jymVt">
                                              <property role="TrG5h" value="nodeRemoved" />
                                              <node concept="37vLTG" id="7Zr9caID4nx" role="3clF46">
                                                <property role="TrG5h" value="nodeId" />
                                                <node concept="3cpWsb" id="7Zr9caID4ny" role="1tU5fm" />
                                              </node>
                                              <node concept="3cqZAl" id="7Zr9caID4nz" role="3clF45" />
                                              <node concept="3Tm1VV" id="7Zr9caID4n$" role="1B3o_S" />
                                              <node concept="3clFbS" id="7Zr9caID4nA" role="3clF47" />
                                              <node concept="2AHcQZ" id="7Zr9caID4nC" role="2AJF6D">
                                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                              </node>
                                            </node>
                                            <node concept="2tJIrI" id="7Zr9caID4nD" role="jymVt" />
                                            <node concept="3clFb_" id="7Zr9caID4nE" role="jymVt">
                                              <property role="TrG5h" value="nodeAdded" />
                                              <node concept="37vLTG" id="7Zr9caID4nF" role="3clF46">
                                                <property role="TrG5h" value="nodeId" />
                                                <node concept="3cpWsb" id="7Zr9caID4nG" role="1tU5fm" />
                                              </node>
                                              <node concept="3cqZAl" id="7Zr9caID4nH" role="3clF45" />
                                              <node concept="3Tm1VV" id="7Zr9caID4nI" role="1B3o_S" />
                                              <node concept="3clFbS" id="7Zr9caID4nK" role="3clF47">
                                                <node concept="3clFbJ" id="5D5xac1uQMo" role="3cqZAp">
                                                  <node concept="3clFbS" id="5D5xac1uQMp" role="3clFbx">
                                                    <node concept="3cpWs6" id="5D5xac1uQMq" role="3cqZAp" />
                                                  </node>
                                                  <node concept="3fqX7Q" id="5D5xac1uQMr" role="3clFbw">
                                                    <node concept="1rXfSq" id="5D5xac1uQMs" role="3fr31v">
                                                      <ref role="37wK5l" node="5D5xac1tfFf" resolve="isInsideModel" />
                                                      <node concept="37vLTw" id="5D5xac1uQMt" role="37wK5m">
                                                        <ref role="3cqZAo" node="7Zr9caID4nF" resolve="nodeId" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="3clFbF" id="4TPMxtdIjE6" role="3cqZAp">
                                                  <node concept="1rXfSq" id="4TPMxtdIjE4" role="3clFbG">
                                                    <ref role="37wK5l" node="4TPMxtdGRYz" resolve="syncNode" />
                                                    <node concept="37vLTw" id="4TPMxtdIkIO" role="37wK5m">
                                                      <ref role="3cqZAo" node="7Zr9caID4nF" resolve="nodeId" />
                                                    </node>
                                                    <node concept="37vLTw" id="4TPMxtdIm5c" role="37wK5m">
                                                      <ref role="3cqZAo" node="7zuOo8p3svU" resolve="newTree" />
                                                    </node>
                                                    <node concept="3clFbT" id="4TPMxtdInfn" role="37wK5m">
                                                      <property role="3clFbU" value="true" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="2AHcQZ" id="7Zr9caID4nM" role="2AJF6D">
                                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="4TPMxtez4$K" role="3cqZAp">
                                  <node concept="1rXfSq" id="4TPMxtez4$L" role="3clFbG">
                                    <ref role="37wK5l" node="4TPMxte8IF0" resolve="processPendingReferences" />
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
    <node concept="312cEg" id="4TPMxtdDxNo" role="jymVt">
      <property role="TrG5h" value="nodeChangeListener" />
      <node concept="3Tm6S6" id="4TPMxtdDxNp" role="1B3o_S" />
      <node concept="3uibUv" id="4TPMxtdD$Gn" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNodeChangeListener" resolve="SNodeChangeListener" />
      </node>
      <node concept="2ShNRf" id="4TPMxtdD_Dp" role="33vP2m">
        <node concept="YeOm9" id="4TPMxtdD_Dq" role="2ShVmc">
          <node concept="1Y3b0j" id="4TPMxtdD_Dr" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="mhbf:~SNodeChangeListener" resolve="SNodeChangeListener" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="4TPMxtdD_Ds" role="1B3o_S" />
            <node concept="3clFb_" id="4TPMxtdD_Dt" role="jymVt">
              <property role="TrG5h" value="propertyChanged" />
              <node concept="3Tm1VV" id="4TPMxtdD_Du" role="1B3o_S" />
              <node concept="3cqZAl" id="4TPMxtdD_Dv" role="3clF45" />
              <node concept="37vLTG" id="4TPMxtdD_Dw" role="3clF46">
                <property role="TrG5h" value="e" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="4TPMxtdD_Dx" role="1tU5fm">
                  <ref role="3uigEE" to="cmfw:~SPropertyChangeEvent" resolve="SPropertyChangeEvent" />
                </node>
                <node concept="2AHcQZ" id="4TPMxtdD_Dy" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="4TPMxtdD_Dz" role="3clF47">
                <node concept="3clFbJ" id="4TPMxtdD_D$" role="3cqZAp">
                  <node concept="3clFbS" id="4TPMxtdD_D_" role="3clFbx">
                    <node concept="3cpWs6" id="4TPMxtdD_DA" role="3cqZAp" />
                  </node>
                  <node concept="3y3z36" id="4KaF0n8PGKA" role="3clFbw">
                    <node concept="3cmrfG" id="4KaF0n8PIv1" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="4TPMxtdD_DB" role="3uHU7B">
                      <node concept="37vLTw" id="4TPMxtdD_DC" role="2Oq$k0">
                        <ref role="3cqZAo" node="3l$kG67pCcy" resolve="syncMuted" />
                      </node>
                      <node concept="liA8E" id="4TPMxtdD_DD" role="2OqNvi">
                        <ref role="37wK5l" to="i5cy:~AtomicInteger.get()" resolve="get" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4TPMxtdD_DE" role="3cqZAp">
                  <node concept="1rXfSq" id="4TPMxtdD_DF" role="3clFbG">
                    <ref role="37wK5l" node="3l$kG67pN9J" resolve="withSyncMuted" />
                    <node concept="1bVj0M" id="4TPMxtdD_DG" role="37wK5m">
                      <property role="3yWfEV" value="true" />
                      <node concept="3clFbS" id="4TPMxtdD_DH" role="1bW5cS">
                        <node concept="3cpWs8" id="1VtHttxWahG" role="3cqZAp">
                          <node concept="3cpWsn" id="1VtHttxWahH" role="3cpWs9">
                            <property role="TrG5h" value="branch" />
                            <property role="3TUv4t" value="true" />
                            <node concept="3uibUv" id="1VtHttxWah$" role="1tU5fm">
                              <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
                            </node>
                            <node concept="2OqwBi" id="1VtHttxWahI" role="33vP2m">
                              <node concept="37vLTw" id="1VtHttxWahJ" role="2Oq$k0">
                                <ref role="3cqZAo" node="4TPMxtdD8F5" resolve="activeBranch" />
                              </node>
                              <node concept="liA8E" id="1VtHttxWahK" role="2OqNvi">
                                <ref role="37wK5l" to="5440:~IIndirectBranch.getBranch()" resolve="getBranch" />
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
                                  <node concept="3cpWs8" id="4TPMxtdD_DO" role="3cqZAp">
                                    <node concept="3cpWsn" id="4TPMxtdD_DP" role="3cpWs9">
                                      <property role="TrG5h" value="id" />
                                      <node concept="3cpWsb" id="4TPMxtdD_DQ" role="1tU5fm" />
                                      <node concept="2OqwBi" id="4TPMxtdD_DR" role="33vP2m">
                                        <node concept="37vLTw" id="4TPMxtdD_DS" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7Zr9caIEQRr" resolve="nodeMap" />
                                        </node>
                                        <node concept="liA8E" id="4TPMxtdD_DT" role="2OqNvi">
                                          <ref role="37wK5l" node="7Zr9caIDNwM" resolve="getId" />
                                          <node concept="2OqwBi" id="4TPMxtdD_DU" role="37wK5m">
                                            <node concept="37vLTw" id="4TPMxtdD_DV" role="2Oq$k0">
                                              <ref role="3cqZAo" node="4TPMxtdD_Dw" resolve="e" />
                                            </node>
                                            <node concept="liA8E" id="4TPMxtdD_DW" role="2OqNvi">
                                              <ref role="37wK5l" to="cmfw:~SPropertyChangeEvent.getNode()" resolve="getNode" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbJ" id="4TPMxtdIJsl" role="3cqZAp">
                                    <node concept="3clFbS" id="4TPMxtdIJsn" role="3clFbx">
                                      <node concept="3clFbF" id="4TPMxtdD_DX" role="3cqZAp">
                                        <node concept="2OqwBi" id="4TPMxtdD_DY" role="3clFbG">
                                          <node concept="2OqwBi" id="4TPMxtdD_DZ" role="2Oq$k0">
                                            <node concept="liA8E" id="4TPMxtdD_E1" role="2OqNvi">
                                              <ref role="37wK5l" to="jks5:~IBranch.getWriteTransaction()" resolve="getWriteTransaction" />
                                            </node>
                                            <node concept="37vLTw" id="1VtHttxWbJ1" role="2Oq$k0">
                                              <ref role="3cqZAo" node="1VtHttxWahH" resolve="branch" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="4TPMxtdD_E2" role="2OqNvi">
                                            <ref role="37wK5l" to="jks5:~IWriteTransaction.setProperty(long,java.lang.String,java.lang.String)" resolve="setProperty" />
                                            <node concept="37vLTw" id="4TPMxtdD_E3" role="37wK5m">
                                              <ref role="3cqZAo" node="4TPMxtdD_DP" resolve="id" />
                                            </node>
                                            <node concept="2OqwBi" id="4TPMxtdD_E4" role="37wK5m">
                                              <node concept="2OqwBi" id="4TPMxtdD_E5" role="2Oq$k0">
                                                <node concept="37vLTw" id="4TPMxtdD_E6" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="4TPMxtdD_Dw" resolve="e" />
                                                </node>
                                                <node concept="liA8E" id="4TPMxtdD_E7" role="2OqNvi">
                                                  <ref role="37wK5l" to="cmfw:~SPropertyChangeEvent.getProperty()" resolve="getProperty" />
                                                </node>
                                              </node>
                                              <node concept="liA8E" id="4TPMxtdD_E8" role="2OqNvi">
                                                <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                                              </node>
                                            </node>
                                            <node concept="2OqwBi" id="4TPMxtdD_E9" role="37wK5m">
                                              <node concept="37vLTw" id="4TPMxtdD_Ea" role="2Oq$k0">
                                                <ref role="3cqZAo" node="4TPMxtdD_Dw" resolve="e" />
                                              </node>
                                              <node concept="liA8E" id="4TPMxtdD_Eb" role="2OqNvi">
                                                <ref role="37wK5l" to="cmfw:~SPropertyChangeEvent.getNewValue()" resolve="getNewValue" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3y3z36" id="4TPMxtdIMKs" role="3clFbw">
                                      <node concept="37vLTw" id="4TPMxtdIK8z" role="3uHU7B">
                                        <ref role="3cqZAo" node="4TPMxtdD_DP" resolve="id" />
                                      </node>
                                      <node concept="1adDum" id="4TPMxtdIMnh" role="3uHU7w">
                                        <property role="1adDun" value="0L" />
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
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="4TPMxtdD_Ec" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="4TPMxtdD_Ed" role="jymVt" />
            <node concept="3clFb_" id="4TPMxtdD_Ee" role="jymVt">
              <property role="TrG5h" value="referenceChanged" />
              <node concept="3Tm1VV" id="4TPMxtdD_Ef" role="1B3o_S" />
              <node concept="3cqZAl" id="4TPMxtdD_Eg" role="3clF45" />
              <node concept="37vLTG" id="4TPMxtdD_Eh" role="3clF46">
                <property role="TrG5h" value="e" />
                <node concept="3uibUv" id="4TPMxtdD_Ei" role="1tU5fm">
                  <ref role="3uigEE" to="cmfw:~SReferenceChangeEvent" resolve="SReferenceChangeEvent" />
                </node>
                <node concept="2AHcQZ" id="4TPMxtdD_Ej" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="4TPMxtdD_Ek" role="3clF47">
                <node concept="3clFbJ" id="4TPMxtdD_El" role="3cqZAp">
                  <node concept="3clFbS" id="4TPMxtdD_Em" role="3clFbx">
                    <node concept="3cpWs6" id="4TPMxtdD_En" role="3cqZAp" />
                  </node>
                  <node concept="3y3z36" id="4KaF0n8PIvY" role="3clFbw">
                    <node concept="3cmrfG" id="4KaF0n8PJWw" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="4TPMxtdD_Eo" role="3uHU7B">
                      <node concept="37vLTw" id="4TPMxtdD_Ep" role="2Oq$k0">
                        <ref role="3cqZAo" node="3l$kG67pCcy" resolve="syncMuted" />
                      </node>
                      <node concept="liA8E" id="4TPMxtdD_Eq" role="2OqNvi">
                        <ref role="37wK5l" to="i5cy:~AtomicInteger.get()" resolve="get" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4TPMxtebpOf" role="3cqZAp">
                  <node concept="1rXfSq" id="4TPMxtebpOg" role="3clFbG">
                    <ref role="37wK5l" node="3l$kG67pN9J" resolve="withSyncMuted" />
                    <node concept="1bVj0M" id="4TPMxtebpOh" role="37wK5m">
                      <property role="3yWfEV" value="true" />
                      <node concept="3clFbS" id="4TPMxtebpOi" role="1bW5cS">
                        <node concept="3cpWs8" id="1VtHttxWcSH" role="3cqZAp">
                          <node concept="3cpWsn" id="1VtHttxWcSI" role="3cpWs9">
                            <property role="TrG5h" value="branch" />
                            <property role="3TUv4t" value="true" />
                            <node concept="3uibUv" id="1VtHttxWcSJ" role="1tU5fm">
                              <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
                            </node>
                            <node concept="2OqwBi" id="1VtHttxWcSK" role="33vP2m">
                              <node concept="37vLTw" id="1VtHttxWcSL" role="2Oq$k0">
                                <ref role="3cqZAo" node="4TPMxtdD8F5" resolve="activeBranch" />
                              </node>
                              <node concept="liA8E" id="1VtHttxWcSM" role="2OqNvi">
                                <ref role="37wK5l" to="5440:~IIndirectBranch.getBranch()" resolve="getBranch" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="4TPMxtebpOj" role="3cqZAp">
                          <node concept="2OqwBi" id="4TPMxtebpOk" role="3clFbG">
                            <node concept="liA8E" id="4TPMxtebpOm" role="2OqNvi">
                              <ref role="37wK5l" to="jks5:~IBranch.runWrite(kotlin.jvm.functions.Function0)" resolve="runWrite" />
                              <node concept="1bVj0M" id="4TPMxtebpOn" role="37wK5m">
                                <node concept="3clFbS" id="4TPMxtebpOo" role="1bW5cS">
                                  <node concept="3cpWs8" id="4TPMxtebOLn" role="3cqZAp">
                                    <node concept="3cpWsn" id="4TPMxtebOLo" role="3cpWs9">
                                      <property role="TrG5h" value="t" />
                                      <node concept="3uibUv" id="4TPMxtebOLp" role="1tU5fm">
                                        <ref role="3uigEE" to="jks5:~IWriteTransaction" resolve="IWriteTransaction" />
                                      </node>
                                      <node concept="2OqwBi" id="4TPMxtebOLq" role="33vP2m">
                                        <node concept="liA8E" id="4TPMxtebOLs" role="2OqNvi">
                                          <ref role="37wK5l" to="jks5:~IBranch.getWriteTransaction()" resolve="getWriteTransaction" />
                                        </node>
                                        <node concept="2OqwBi" id="1VtHttxUr9h" role="2Oq$k0">
                                          <node concept="37vLTw" id="4TPMxtebOLr" role="2Oq$k0">
                                            <ref role="3cqZAo" node="4TPMxtdD8F5" resolve="activeBranch" />
                                          </node>
                                          <node concept="liA8E" id="1VtHttxUsco" role="2OqNvi">
                                            <ref role="37wK5l" to="5440:~IIndirectBranch.getBranch()" resolve="getBranch" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs8" id="4TPMxtebnPV" role="3cqZAp">
                                    <node concept="3cpWsn" id="4TPMxtebnPW" role="3cpWs9">
                                      <property role="TrG5h" value="targetSNode" />
                                      <node concept="3uibUv" id="4TPMxtebnPX" role="1tU5fm">
                                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                      </node>
                                      <node concept="2EnYce" id="4TPMxtebLGm" role="33vP2m">
                                        <node concept="2OqwBi" id="4TPMxtebBe2" role="2Oq$k0">
                                          <node concept="37vLTw" id="4TPMxtebAkY" role="2Oq$k0">
                                            <ref role="3cqZAo" node="4TPMxtdD_Eh" resolve="e" />
                                          </node>
                                          <node concept="liA8E" id="4TPMxtebCMH" role="2OqNvi">
                                            <ref role="37wK5l" to="cmfw:~SReferenceChangeEvent.getNewValue()" resolve="getNewValue" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="4TPMxtebFId" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SReference.getTargetNode()" resolve="getTargetNode" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs8" id="4TPMxtecbWl" role="3cqZAp">
                                    <node concept="3cpWsn" id="4TPMxtecbWm" role="3cpWs9">
                                      <property role="TrG5h" value="sourceId" />
                                      <node concept="3cpWsb" id="4TPMxtecbWg" role="1tU5fm" />
                                      <node concept="1rXfSq" id="4TPMxtecbWn" role="33vP2m">
                                        <ref role="37wK5l" node="4TPMxtdKBae" resolve="getOrCreateNode" />
                                        <node concept="2OqwBi" id="4TPMxtecbWo" role="37wK5m">
                                          <node concept="37vLTw" id="4TPMxtecbWp" role="2Oq$k0">
                                            <ref role="3cqZAo" node="4TPMxtdD_Eh" resolve="e" />
                                          </node>
                                          <node concept="liA8E" id="4TPMxtecbWq" role="2OqNvi">
                                            <ref role="37wK5l" to="cmfw:~SReferenceChangeEvent.getNode()" resolve="getNode" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbJ" id="4TPMxtexaF3" role="3cqZAp">
                                    <node concept="3clFbS" id="4TPMxtexaF5" role="3clFbx">
                                      <node concept="3clFbF" id="4TPMxtexg5x" role="3cqZAp">
                                        <node concept="2OqwBi" id="4TPMxtexg5y" role="3clFbG">
                                          <node concept="37vLTw" id="4TPMxtexg5z" role="2Oq$k0">
                                            <ref role="3cqZAo" node="4TPMxtebOLo" resolve="t" />
                                          </node>
                                          <node concept="liA8E" id="4TPMxtexg5$" role="2OqNvi">
                                            <ref role="37wK5l" to="jks5:~IWriteTransaction.setReferenceTarget(long,java.lang.String,org.modelix.model.api.INodeReference)" resolve="setReferenceTarget" />
                                            <node concept="37vLTw" id="4TPMxtexg5_" role="37wK5m">
                                              <ref role="3cqZAo" node="4TPMxtecbWm" resolve="sourceId" />
                                            </node>
                                            <node concept="2OqwBi" id="4TPMxtexg5A" role="37wK5m">
                                              <node concept="2OqwBi" id="4TPMxtexg5B" role="2Oq$k0">
                                                <node concept="37vLTw" id="4TPMxtexg5C" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="4TPMxtdD_Eh" resolve="e" />
                                                </node>
                                                <node concept="liA8E" id="4TPMxtexg5D" role="2OqNvi">
                                                  <ref role="37wK5l" to="cmfw:~SReferenceChangeEvent.getAssociationLink()" resolve="getAssociationLink" />
                                                </node>
                                              </node>
                                              <node concept="liA8E" id="4TPMxtexg5E" role="2OqNvi">
                                                <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                                              </node>
                                            </node>
                                            <node concept="10Nm6u" id="4TPMxtexhZT" role="37wK5m" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbC" id="4TPMxtexdhn" role="3clFbw">
                                      <node concept="10Nm6u" id="4TPMxtexdMn" role="3uHU7w" />
                                      <node concept="37vLTw" id="4TPMxtexc9S" role="3uHU7B">
                                        <ref role="3cqZAo" node="4TPMxtebnPW" resolve="targetSNode" />
                                      </node>
                                    </node>
                                    <node concept="9aQIb" id="4TPMxtexeJ$" role="9aQIa">
                                      <node concept="3clFbS" id="4TPMxtexeJ_" role="9aQI4">
                                        <node concept="3cpWs8" id="4TPMxtebnQ2" role="3cqZAp">
                                          <node concept="3cpWsn" id="4TPMxtebnQ3" role="3cpWs9">
                                            <property role="TrG5h" value="targetId" />
                                            <node concept="3cpWsb" id="4TPMxtebnQ4" role="1tU5fm" />
                                            <node concept="2OqwBi" id="4TPMxtext7r" role="33vP2m">
                                              <node concept="37vLTw" id="4TPMxtexrMO" role="2Oq$k0">
                                                <ref role="3cqZAo" node="7Zr9caIEQRr" resolve="nodeMap" />
                                              </node>
                                              <node concept="liA8E" id="4TPMxtexvDo" role="2OqNvi">
                                                <ref role="37wK5l" node="7Zr9caIDNwM" resolve="getId" />
                                                <node concept="37vLTw" id="4TPMxtexxd_" role="37wK5m">
                                                  <ref role="3cqZAo" node="4TPMxtebnPW" resolve="targetSNode" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3cpWs8" id="4TPMxtexEao" role="3cqZAp">
                                          <node concept="3cpWsn" id="4TPMxtexEap" role="3cpWs9">
                                            <property role="TrG5h" value="targetNode" />
                                            <node concept="3uibUv" id="4TPMxtexEaq" role="1tU5fm">
                                              <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbJ" id="4TPMxtexyFL" role="3cqZAp">
                                          <node concept="3clFbS" id="4TPMxtexyFN" role="3clFbx">
                                            <node concept="3clFbF" id="4TPMxtexRsk" role="3cqZAp">
                                              <node concept="37vLTI" id="4TPMxtexSvX" role="3clFbG">
                                                <node concept="37vLTw" id="4TPMxtexRsj" role="37vLTJ">
                                                  <ref role="3cqZAo" node="4TPMxtexEap" resolve="targetNode" />
                                                </node>
                                                <node concept="2YIFZM" id="4TPMxtexNWR" role="37vLTx">
                                                  <ref role="1Pybhc" to="xxte:5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                                                  <ref role="37wK5l" to="xxte:5gTrVpGyMwR" resolve="wrap" />
                                                  <node concept="37vLTw" id="4TPMxtexPt1" role="37wK5m">
                                                    <ref role="3cqZAo" node="4TPMxtebnPW" resolve="targetSNode" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbC" id="4TPMxtex_Pt" role="3clFbw">
                                            <node concept="1adDum" id="4TPMxtexAOt" role="3uHU7w">
                                              <property role="1adDun" value="0L" />
                                            </node>
                                            <node concept="37vLTw" id="4TPMxtex$c0" role="3uHU7B">
                                              <ref role="3cqZAo" node="4TPMxtebnQ3" resolve="targetId" />
                                            </node>
                                          </node>
                                          <node concept="9aQIb" id="4TPMxtexBNt" role="9aQIa">
                                            <node concept="3clFbS" id="4TPMxtexBNu" role="9aQI4">
                                              <node concept="3clFbF" id="4TPMxtexHvE" role="3cqZAp">
                                                <node concept="37vLTI" id="4TPMxtexHM4" role="3clFbG">
                                                  <node concept="37vLTw" id="4TPMxtexHvD" role="37vLTJ">
                                                    <ref role="3cqZAo" node="4TPMxtexEap" resolve="targetNode" />
                                                  </node>
                                                  <node concept="2ShNRf" id="4TPMxtexIw8" role="37vLTx">
                                                    <node concept="1pGfFk" id="4TPMxtexIw9" role="2ShVmc">
                                                      <ref role="37wK5l" to="jks5:~PNodeAdapter.&lt;init&gt;(long,org.modelix.model.api.IBranch)" resolve="PNodeAdapter" />
                                                      <node concept="37vLTw" id="4TPMxtexIwa" role="37wK5m">
                                                        <ref role="3cqZAo" node="4TPMxtebnQ3" resolve="targetId" />
                                                      </node>
                                                      <node concept="37vLTw" id="1VtHttxWjrX" role="37wK5m">
                                                        <ref role="3cqZAo" node="1VtHttxWcSI" resolve="branch" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbF" id="4TPMxtebnQc" role="3cqZAp">
                                          <node concept="2OqwBi" id="4TPMxtebnQd" role="3clFbG">
                                            <node concept="37vLTw" id="4TPMxtebnQe" role="2Oq$k0">
                                              <ref role="3cqZAo" node="4TPMxtebOLo" resolve="t" />
                                            </node>
                                            <node concept="liA8E" id="4TPMxtebnQf" role="2OqNvi">
                                              <ref role="37wK5l" to="jks5:~IWriteTransaction.setReferenceTarget(long,java.lang.String,org.modelix.model.api.INodeReference)" resolve="setReferenceTarget" />
                                              <node concept="37vLTw" id="4TPMxteclm1" role="37wK5m">
                                                <ref role="3cqZAo" node="4TPMxtecbWm" resolve="sourceId" />
                                              </node>
                                              <node concept="2OqwBi" id="4TPMxtecpIQ" role="37wK5m">
                                                <node concept="2OqwBi" id="4TPMxteco2P" role="2Oq$k0">
                                                  <node concept="37vLTw" id="4TPMxtecn6G" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="4TPMxtdD_Eh" resolve="e" />
                                                  </node>
                                                  <node concept="liA8E" id="4TPMxtecp2U" role="2OqNvi">
                                                    <ref role="37wK5l" to="cmfw:~SReferenceChangeEvent.getAssociationLink()" resolve="getAssociationLink" />
                                                  </node>
                                                </node>
                                                <node concept="liA8E" id="4TPMxtecqu4" role="2OqNvi">
                                                  <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                                                </node>
                                              </node>
                                              <node concept="2OqwBi" id="4TPMxtexUkR" role="37wK5m">
                                                <node concept="37vLTw" id="4TPMxtexL2k" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="4TPMxtexEap" resolve="targetNode" />
                                                </node>
                                                <node concept="liA8E" id="4TPMxtexV8S" role="2OqNvi">
                                                  <ref role="37wK5l" to="jks5:~INode.getReference()" resolve="getReference" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs6" id="1yReInOoR$" role="3cqZAp">
                                    <node concept="10M0yZ" id="1yReInOoR_" role="3cqZAk">
                                      <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                                      <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="1VtHttxWevJ" role="2Oq$k0">
                              <ref role="3cqZAo" node="1VtHttxWcSI" resolve="branch" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="4TPMxtdD_Er" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="4TPMxtdD_Es" role="jymVt" />
            <node concept="3clFb_" id="4TPMxtdD_Et" role="jymVt">
              <property role="TrG5h" value="nodeAdded" />
              <node concept="3Tm1VV" id="4TPMxtdD_Eu" role="1B3o_S" />
              <node concept="3cqZAl" id="4TPMxtdD_Ev" role="3clF45" />
              <node concept="37vLTG" id="4TPMxtdD_Ew" role="3clF46">
                <property role="TrG5h" value="e" />
                <node concept="3uibUv" id="4TPMxtdD_Ex" role="1tU5fm">
                  <ref role="3uigEE" to="cmfw:~SNodeAddEvent" resolve="SNodeAddEvent" />
                </node>
                <node concept="2AHcQZ" id="4TPMxtdD_Ey" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="4TPMxtdD_Ez" role="3clF47">
                <node concept="3clFbJ" id="4TPMxtdD_E$" role="3cqZAp">
                  <node concept="3clFbS" id="4TPMxtdD_E_" role="3clFbx">
                    <node concept="3cpWs6" id="4TPMxtdD_EA" role="3cqZAp" />
                  </node>
                  <node concept="3y3z36" id="4KaF0n8PKDd" role="3clFbw">
                    <node concept="3cmrfG" id="4KaF0n8PLvP" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="4TPMxtdD_EB" role="3uHU7B">
                      <node concept="37vLTw" id="4TPMxtdD_EC" role="2Oq$k0">
                        <ref role="3cqZAo" node="3l$kG67pCcy" resolve="syncMuted" />
                      </node>
                      <node concept="liA8E" id="4TPMxtdD_ED" role="2OqNvi">
                        <ref role="37wK5l" to="i5cy:~AtomicInteger.get()" resolve="get" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4TPMxtdD_EE" role="3cqZAp">
                  <node concept="1rXfSq" id="4TPMxtdD_EF" role="3clFbG">
                    <ref role="37wK5l" node="3l$kG67pN9J" resolve="withSyncMuted" />
                    <node concept="1bVj0M" id="4TPMxtdD_EG" role="37wK5m">
                      <property role="3yWfEV" value="true" />
                      <node concept="3clFbS" id="4TPMxtdD_EH" role="1bW5cS">
                        <node concept="3clFbF" id="4TPMxtdD_EI" role="3cqZAp">
                          <node concept="2OqwBi" id="4TPMxtdD_EJ" role="3clFbG">
                            <node concept="liA8E" id="4TPMxtdD_EL" role="2OqNvi">
                              <ref role="37wK5l" to="jks5:~IBranch.runWrite(kotlin.jvm.functions.Function0)" resolve="runWrite" />
                              <node concept="1bVj0M" id="4TPMxtdD_EM" role="37wK5m">
                                <property role="3yWfEV" value="true" />
                                <node concept="3clFbS" id="4TPMxtdD_EN" role="1bW5cS">
                                  <node concept="3cpWs8" id="4TPMxtdD_EO" role="3cqZAp">
                                    <node concept="3cpWsn" id="4TPMxtdD_EP" role="3cpWs9">
                                      <property role="TrG5h" value="t" />
                                      <node concept="3uibUv" id="4TPMxtdD_EQ" role="1tU5fm">
                                        <ref role="3uigEE" to="jks5:~IWriteTransaction" resolve="IWriteTransaction" />
                                      </node>
                                      <node concept="2OqwBi" id="4TPMxtdD_ER" role="33vP2m">
                                        <node concept="liA8E" id="4TPMxtdD_ET" role="2OqNvi">
                                          <ref role="37wK5l" to="jks5:~IBranch.getWriteTransaction()" resolve="getWriteTransaction" />
                                        </node>
                                        <node concept="2OqwBi" id="1VtHttxUyLq" role="2Oq$k0">
                                          <node concept="37vLTw" id="4TPMxtdD_ES" role="2Oq$k0">
                                            <ref role="3cqZAo" node="4TPMxtdD8F5" resolve="activeBranch" />
                                          </node>
                                          <node concept="liA8E" id="1VtHttxUzUh" role="2OqNvi">
                                            <ref role="37wK5l" to="5440:~IIndirectBranch.getBranch()" resolve="getBranch" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs8" id="4TPMxtdD_EU" role="3cqZAp">
                                    <node concept="3cpWsn" id="4TPMxtdD_EV" role="3cpWs9">
                                      <property role="TrG5h" value="parentId" />
                                      <node concept="3cpWsb" id="4TPMxtdD_EW" role="1tU5fm" />
                                    </node>
                                  </node>
                                  <node concept="3cpWs8" id="4TPMxtdD_EX" role="3cqZAp">
                                    <node concept="3cpWsn" id="4TPMxtdD_EY" role="3cpWs9">
                                      <property role="TrG5h" value="role" />
                                      <node concept="17QB3L" id="4TPMxtdD_EZ" role="1tU5fm" />
                                    </node>
                                  </node>
                                  <node concept="3clFbJ" id="4TPMxtdD_F0" role="3cqZAp">
                                    <node concept="3clFbS" id="4TPMxtdD_F1" role="3clFbx">
                                      <node concept="3clFbF" id="4TPMxtdD_F2" role="3cqZAp">
                                        <node concept="37vLTI" id="4TPMxtdD_F3" role="3clFbG">
                                          <node concept="37vLTw" id="5D5xac1vaxg" role="37vLTx">
                                            <ref role="3cqZAo" node="5D5xac1t4Do" resolve="modelNodeId" />
                                          </node>
                                          <node concept="37vLTw" id="4TPMxtdD_F5" role="37vLTJ">
                                            <ref role="3cqZAo" node="4TPMxtdD_EV" resolve="parentId" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbF" id="4TPMxtdD_F6" role="3cqZAp">
                                        <node concept="37vLTI" id="4TPMxtdD_F7" role="3clFbG">
                                          <node concept="2OqwBi" id="5D5xac1vfef" role="37vLTx">
                                            <node concept="359W_D" id="5D5xac1vcho" role="2Oq$k0">
                                              <ref role="359W_E" to="dj5d:qmkA5fOskc" resolve="Model" />
                                              <ref role="359W_F" to="dj5d:qmkA5fOskk" resolve="rootNodes" />
                                            </node>
                                            <node concept="liA8E" id="5D5xac1vgvI" role="2OqNvi">
                                              <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                                            </node>
                                          </node>
                                          <node concept="37vLTw" id="4TPMxtdD_F9" role="37vLTJ">
                                            <ref role="3cqZAo" node="4TPMxtdD_EY" resolve="role" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="4TPMxtdD_Fa" role="3clFbw">
                                      <node concept="37vLTw" id="4TPMxtdD_Fb" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4TPMxtdD_Ew" resolve="e" />
                                      </node>
                                      <node concept="liA8E" id="4TPMxtdD_Fc" role="2OqNvi">
                                        <ref role="37wK5l" to="cmfw:~SNodeAddEvent.isRoot()" resolve="isRoot" />
                                      </node>
                                    </node>
                                    <node concept="9aQIb" id="4TPMxtdD_Fd" role="9aQIa">
                                      <node concept="3clFbS" id="4TPMxtdD_Fe" role="9aQI4">
                                        <node concept="3clFbF" id="4TPMxtdD_Ff" role="3cqZAp">
                                          <node concept="37vLTI" id="4TPMxtdD_Fg" role="3clFbG">
                                            <node concept="2OqwBi" id="4TPMxtdD_Fh" role="37vLTx">
                                              <node concept="37vLTw" id="4TPMxtdD_Fi" role="2Oq$k0">
                                                <ref role="3cqZAo" node="7Zr9caIEQRr" resolve="nodeMap" />
                                              </node>
                                              <node concept="liA8E" id="4TPMxtdD_Fj" role="2OqNvi">
                                                <ref role="37wK5l" node="7Zr9caIDNwM" resolve="getId" />
                                                <node concept="2OqwBi" id="4TPMxtdD_Fk" role="37wK5m">
                                                  <node concept="37vLTw" id="4TPMxtdD_Fl" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="4TPMxtdD_Ew" resolve="e" />
                                                  </node>
                                                  <node concept="liA8E" id="4TPMxtdD_Fm" role="2OqNvi">
                                                    <ref role="37wK5l" to="cmfw:~SNodeAddEvent.getParent()" resolve="getParent" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="37vLTw" id="4TPMxtdD_Fn" role="37vLTJ">
                                              <ref role="3cqZAo" node="4TPMxtdD_EV" resolve="parentId" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbF" id="4TPMxtdD_Fo" role="3cqZAp">
                                          <node concept="37vLTI" id="4TPMxtdD_Fp" role="3clFbG">
                                            <node concept="2OqwBi" id="4TPMxtdD_Fq" role="37vLTx">
                                              <node concept="2OqwBi" id="4TPMxtdD_Fr" role="2Oq$k0">
                                                <node concept="37vLTw" id="4TPMxtdD_Fs" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="4TPMxtdD_Ew" resolve="e" />
                                                </node>
                                                <node concept="liA8E" id="4TPMxtdD_Ft" role="2OqNvi">
                                                  <ref role="37wK5l" to="cmfw:~SNodeAddEvent.getAggregationLink()" resolve="getAggregationLink" />
                                                </node>
                                              </node>
                                              <node concept="liA8E" id="4TPMxtdD_Fu" role="2OqNvi">
                                                <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                                              </node>
                                            </node>
                                            <node concept="37vLTw" id="4TPMxtdD_Fv" role="37vLTJ">
                                              <ref role="3cqZAo" node="4TPMxtdD_EY" resolve="role" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbJ" id="4TPMxtdJ2dt" role="3cqZAp">
                                    <node concept="3clFbS" id="4TPMxtdJ2dv" role="3clFbx">
                                      <node concept="3cpWs6" id="1yReInOt59" role="3cqZAp">
                                        <node concept="10M0yZ" id="1yReInOt5a" role="3cqZAk">
                                          <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                                          <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbC" id="4TPMxtdJ5oc" role="3clFbw">
                                      <node concept="1adDum" id="4TPMxtdJ6nS" role="3uHU7w">
                                        <property role="1adDun" value="0L" />
                                      </node>
                                      <node concept="37vLTw" id="4TPMxtdJ3IG" role="3uHU7B">
                                        <ref role="3cqZAo" node="4TPMxtdD_EV" resolve="parentId" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs8" id="4TPMxte5mk9" role="3cqZAp">
                                    <node concept="3cpWsn" id="4TPMxte5mka" role="3cpWs9">
                                      <property role="TrG5h" value="child" />
                                      <node concept="3Tqbb2" id="4TPMxte5nF$" role="1tU5fm" />
                                      <node concept="2OqwBi" id="4TPMxte5mkb" role="33vP2m">
                                        <node concept="37vLTw" id="4TPMxte5mkc" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4TPMxtdD_Ew" resolve="e" />
                                        </node>
                                        <node concept="liA8E" id="4TPMxte5mkd" role="2OqNvi">
                                          <ref role="37wK5l" to="cmfw:~SNodeAddEvent.getChild()" resolve="getChild" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbJ" id="4jf43pv8ENe" role="3cqZAp">
                                    <node concept="3clFbS" id="4jf43pv8ENg" role="3clFbx">
                                      <node concept="3cpWs8" id="4TPMxtdD_Fw" role="3cqZAp">
                                        <node concept="3cpWsn" id="4TPMxtdD_Fx" role="3cpWs9">
                                          <property role="TrG5h" value="childId" />
                                          <node concept="3cpWsb" id="4TPMxtdD_Fy" role="1tU5fm" />
                                          <node concept="2OqwBi" id="4TPMxte4Ynf" role="33vP2m">
                                            <node concept="37vLTw" id="4TPMxte4Xq$" role="2Oq$k0">
                                              <ref role="3cqZAo" node="7Zr9caIEQRr" resolve="nodeMap" />
                                            </node>
                                            <node concept="liA8E" id="4TPMxte50iz" role="2OqNvi">
                                              <ref role="37wK5l" node="7Zr9caIDNwM" resolve="getId" />
                                              <node concept="37vLTw" id="4TPMxte5mkf" role="37wK5m">
                                                <ref role="3cqZAo" node="4TPMxte5mka" resolve="child" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbJ" id="4TPMxte53LR" role="3cqZAp">
                                        <node concept="3clFbS" id="4TPMxte53LT" role="3clFbx">
                                          <node concept="3clFbF" id="4TPMxte5ala" role="3cqZAp">
                                            <node concept="37vLTI" id="4TPMxte5Ccx" role="3clFbG">
                                              <node concept="37vLTw" id="4TPMxte5ACl" role="37vLTJ">
                                                <ref role="3cqZAo" node="4TPMxtdD_Fx" resolve="childId" />
                                              </node>
                                              <node concept="2OqwBi" id="4TPMxte5aCb" role="37vLTx">
                                                <node concept="37vLTw" id="4TPMxte5al9" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="4TPMxtdD_EP" resolve="t" />
                                                </node>
                                                <node concept="liA8E" id="4TPMxte5dz6" role="2OqNvi">
                                                  <ref role="37wK5l" to="jks5:~IWriteTransaction.addNewChild(long,java.lang.String,int,org.modelix.model.api.IConcept)" resolve="addNewChild" />
                                                  <node concept="37vLTw" id="4TPMxte5e1A" role="37wK5m">
                                                    <ref role="3cqZAo" node="4TPMxtdD_EV" resolve="parentId" />
                                                  </node>
                                                  <node concept="37vLTw" id="4TPMxte5e1B" role="37wK5m">
                                                    <ref role="3cqZAo" node="4TPMxtdD_EY" resolve="role" />
                                                  </node>
                                                  <node concept="3cmrfG" id="3WN29VkuIIB" role="37wK5m">
                                                    <property role="3cmrfH" value="-1" />
                                                  </node>
                                                  <node concept="2YIFZM" id="4TPMxte5vGx" role="37wK5m">
                                                    <ref role="1Pybhc" to="xxte:5gTrVpGjuL2" resolve="SConceptAdapter" />
                                                    <ref role="37wK5l" to="xxte:3ECE8iPOmg5" resolve="wrap" />
                                                    <node concept="2OqwBi" id="4TPMxte5x2h" role="37wK5m">
                                                      <node concept="37vLTw" id="4TPMxte5wGP" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="4TPMxte5mka" resolve="child" />
                                                      </node>
                                                      <node concept="2yIwOk" id="4TPMxte5_qI" role="2OqNvi" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbF" id="4TPMxte5WKi" role="3cqZAp">
                                            <node concept="2OqwBi" id="4TPMxte5XXO" role="3clFbG">
                                              <node concept="37vLTw" id="4TPMxte5WKg" role="2Oq$k0">
                                                <ref role="3cqZAo" node="7Zr9caIEQRr" resolve="nodeMap" />
                                              </node>
                                              <node concept="liA8E" id="4TPMxte5ZW6" role="2OqNvi">
                                                <ref role="37wK5l" node="7Zr9caIDItk" resolve="put" />
                                                <node concept="37vLTw" id="4TPMxte61C3" role="37wK5m">
                                                  <ref role="3cqZAo" node="4TPMxtdD_Fx" resolve="childId" />
                                                </node>
                                                <node concept="37vLTw" id="4TPMxte63ac" role="37wK5m">
                                                  <ref role="3cqZAo" node="4TPMxte5mka" resolve="child" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbC" id="4TPMxte7wpB" role="3clFbw">
                                          <node concept="37vLTw" id="4TPMxte54xr" role="3uHU7B">
                                            <ref role="3cqZAo" node="4TPMxtdD_Fx" resolve="childId" />
                                          </node>
                                          <node concept="1adDum" id="4TPMxte56QY" role="3uHU7w">
                                            <property role="1adDun" value="0L" />
                                          </node>
                                        </node>
                                        <node concept="9aQIb" id="4TPMxte57N_" role="9aQIa">
                                          <node concept="3clFbS" id="4TPMxte57NA" role="9aQI4">
                                            <node concept="3clFbF" id="4TPMxtdD_G7" role="3cqZAp">
                                              <node concept="2OqwBi" id="4TPMxtdD_G8" role="3clFbG">
                                                <node concept="37vLTw" id="4TPMxtdD_G9" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="4TPMxtdD_EP" resolve="t" />
                                                </node>
                                                <node concept="liA8E" id="4TPMxtdD_Ga" role="2OqNvi">
                                                  <ref role="37wK5l" to="jks5:~IWriteTransaction.moveChild(long,java.lang.String,int,long)" resolve="moveChild" />
                                                  <node concept="37vLTw" id="4TPMxtdD_Gb" role="37wK5m">
                                                    <ref role="3cqZAo" node="4TPMxtdD_EV" resolve="parentId" />
                                                  </node>
                                                  <node concept="37vLTw" id="4TPMxtdD_Gc" role="37wK5m">
                                                    <ref role="3cqZAo" node="4TPMxtdD_EY" resolve="role" />
                                                  </node>
                                                  <node concept="3cmrfG" id="3WN29VkuJTY" role="37wK5m">
                                                    <property role="3cmrfH" value="-1" />
                                                  </node>
                                                  <node concept="37vLTw" id="4TPMxtdD_Ge" role="37wK5m">
                                                    <ref role="3cqZAo" node="4TPMxtdD_Fx" resolve="childId" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="4jf43pv8GcE" role="3clFbw">
                                      <node concept="37vLTw" id="4jf43pv8FOw" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4TPMxtdD_Ew" resolve="e" />
                                      </node>
                                      <node concept="liA8E" id="4jf43pv8Hjx" role="2OqNvi">
                                        <ref role="37wK5l" to="cmfw:~SNodeAddEvent.isRoot()" resolve="isRoot" />
                                      </node>
                                    </node>
                                    <node concept="9aQIb" id="3WN29Vkr6Au" role="9aQIa">
                                      <node concept="3clFbS" id="3WN29Vkr6Av" role="9aQI4">
                                        <node concept="3clFbF" id="4jf43pv8Aqy" role="3cqZAp">
                                          <node concept="1rXfSq" id="4jf43pv8Aqz" role="3clFbG">
                                            <ref role="37wK5l" node="3WN29VkugTc" resolve="syncChildren" />
                                            <node concept="2OqwBi" id="3WN29VkuPKS" role="37wK5m">
                                              <node concept="37vLTw" id="3WN29VkuPiQ" role="2Oq$k0">
                                                <ref role="3cqZAo" node="4TPMxtdD_Ew" resolve="e" />
                                              </node>
                                              <node concept="liA8E" id="3WN29VkuQzt" role="2OqNvi">
                                                <ref role="37wK5l" to="cmfw:~SNodeAddEvent.getAggregationLink()" resolve="getAggregationLink" />
                                              </node>
                                            </node>
                                            <node concept="37vLTw" id="3WN29VkuRZn" role="37wK5m">
                                              <ref role="3cqZAo" node="4TPMxtdD_EP" resolve="t" />
                                            </node>
                                            <node concept="37vLTw" id="3WN29VkuUER" role="37wK5m">
                                              <ref role="3cqZAo" node="4TPMxtdD_EV" resolve="parentId" />
                                            </node>
                                            <node concept="2OqwBi" id="3WN29VkuWH8" role="37wK5m">
                                              <node concept="37vLTw" id="3WN29VkuWiq" role="2Oq$k0">
                                                <ref role="3cqZAo" node="4TPMxtdD_Ew" resolve="e" />
                                              </node>
                                              <node concept="liA8E" id="3WN29VkuXUV" role="2OqNvi">
                                                <ref role="37wK5l" to="cmfw:~SNodeAddEvent.getParent()" resolve="getParent" />
                                              </node>
                                            </node>
                                            <node concept="3clFbT" id="4jf43pv8Aq_" role="37wK5m" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="4TPMxtdWeEH" role="3cqZAp">
                                    <node concept="1rXfSq" id="4TPMxtdWeEF" role="3clFbG">
                                      <ref role="37wK5l" node="7Zr9caIF7Ck" resolve="syncNode" />
                                      <node concept="37vLTw" id="4TPMxte5mkg" role="37wK5m">
                                        <ref role="3cqZAo" node="4TPMxte5mka" resolve="child" />
                                      </node>
                                      <node concept="3clFbT" id="4TPMxtdWiCM" role="37wK5m">
                                        <property role="3clFbU" value="true" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="4TPMxtez1xz" role="3cqZAp">
                                    <node concept="1rXfSq" id="4TPMxtez1xx" role="3clFbG">
                                      <ref role="37wK5l" node="4TPMxte8IF0" resolve="processPendingReferences" />
                                    </node>
                                  </node>
                                  <node concept="3cpWs6" id="1yReInOpm6" role="3cqZAp">
                                    <node concept="10M0yZ" id="1yReInOpm7" role="3cqZAk">
                                      <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                                      <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="1VtHttxUvU4" role="2Oq$k0">
                              <node concept="37vLTw" id="4TPMxtdD_EK" role="2Oq$k0">
                                <ref role="3cqZAo" node="4TPMxtdD8F5" resolve="activeBranch" />
                              </node>
                              <node concept="liA8E" id="1VtHttxUx2U" role="2OqNvi">
                                <ref role="37wK5l" to="5440:~IIndirectBranch.getBranch()" resolve="getBranch" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="4TPMxtdD_Gf" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="4TPMxtdD_Gg" role="jymVt" />
            <node concept="3clFb_" id="4TPMxtdD_Gh" role="jymVt">
              <property role="TrG5h" value="nodeRemoved" />
              <node concept="3Tm1VV" id="4TPMxtdD_Gi" role="1B3o_S" />
              <node concept="3cqZAl" id="4TPMxtdD_Gj" role="3clF45" />
              <node concept="37vLTG" id="4TPMxtdD_Gk" role="3clF46">
                <property role="TrG5h" value="e" />
                <node concept="3uibUv" id="4TPMxtdD_Gl" role="1tU5fm">
                  <ref role="3uigEE" to="cmfw:~SNodeRemoveEvent" resolve="SNodeRemoveEvent" />
                </node>
                <node concept="2AHcQZ" id="4TPMxtdD_Gm" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="4TPMxtdD_Gn" role="3clF47">
                <node concept="3clFbJ" id="4TPMxtdD_Go" role="3cqZAp">
                  <node concept="3clFbS" id="4TPMxtdD_Gp" role="3clFbx">
                    <node concept="3cpWs6" id="4TPMxtdD_Gq" role="3cqZAp" />
                  </node>
                  <node concept="3y3z36" id="4KaF0n8PN0c" role="3clFbw">
                    <node concept="3cmrfG" id="4KaF0n8PNCg" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="4TPMxtdD_Gr" role="3uHU7B">
                      <node concept="37vLTw" id="4TPMxtdD_Gs" role="2Oq$k0">
                        <ref role="3cqZAo" node="3l$kG67pCcy" resolve="syncMuted" />
                      </node>
                      <node concept="liA8E" id="4TPMxtdD_Gt" role="2OqNvi">
                        <ref role="37wK5l" to="i5cy:~AtomicInteger.get()" resolve="get" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4TPMxtdD_Gu" role="3cqZAp">
                  <node concept="1rXfSq" id="4TPMxtdD_Gv" role="3clFbG">
                    <ref role="37wK5l" node="3l$kG67pN9J" resolve="withSyncMuted" />
                    <node concept="1bVj0M" id="4TPMxtdD_Gw" role="37wK5m">
                      <property role="3yWfEV" value="true" />
                      <node concept="3clFbS" id="4TPMxtdD_Gx" role="1bW5cS">
                        <node concept="3cpWs8" id="1VtHttxWlgV" role="3cqZAp">
                          <node concept="3cpWsn" id="1VtHttxWlgW" role="3cpWs9">
                            <property role="TrG5h" value="branch" />
                            <property role="3TUv4t" value="true" />
                            <node concept="3uibUv" id="1VtHttxWlgX" role="1tU5fm">
                              <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
                            </node>
                            <node concept="2OqwBi" id="1VtHttxWlgY" role="33vP2m">
                              <node concept="37vLTw" id="1VtHttxWlgZ" role="2Oq$k0">
                                <ref role="3cqZAo" node="4TPMxtdD8F5" resolve="activeBranch" />
                              </node>
                              <node concept="liA8E" id="1VtHttxWlh0" role="2OqNvi">
                                <ref role="37wK5l" to="5440:~IIndirectBranch.getBranch()" resolve="getBranch" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="4TPMxtdD_Gy" role="3cqZAp">
                          <node concept="2OqwBi" id="4TPMxtdD_Gz" role="3clFbG">
                            <node concept="liA8E" id="4TPMxtdD_G_" role="2OqNvi">
                              <ref role="37wK5l" to="jks5:~IBranch.runWrite(kotlin.jvm.functions.Function0)" resolve="runWrite" />
                              <node concept="1bVj0M" id="4TPMxtdD_GA" role="37wK5m">
                                <property role="3yWfEV" value="true" />
                                <node concept="3clFbS" id="4TPMxtdD_GB" role="1bW5cS">
                                  <node concept="3cpWs8" id="4TPMxtdD_GC" role="3cqZAp">
                                    <node concept="3cpWsn" id="4TPMxtdD_GD" role="3cpWs9">
                                      <property role="TrG5h" value="t" />
                                      <node concept="3uibUv" id="4TPMxtdD_GE" role="1tU5fm">
                                        <ref role="3uigEE" to="jks5:~IWriteTransaction" resolve="IWriteTransaction" />
                                      </node>
                                      <node concept="2OqwBi" id="4TPMxtdD_GF" role="33vP2m">
                                        <node concept="liA8E" id="4TPMxtdD_GH" role="2OqNvi">
                                          <ref role="37wK5l" to="jks5:~IBranch.getWriteTransaction()" resolve="getWriteTransaction" />
                                        </node>
                                        <node concept="37vLTw" id="1VtHttxWogc" role="2Oq$k0">
                                          <ref role="3cqZAo" node="1VtHttxWlgW" resolve="branch" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs8" id="4TPMxtdD_GI" role="3cqZAp">
                                    <node concept="3cpWsn" id="4TPMxtdD_GJ" role="3cpWs9">
                                      <property role="TrG5h" value="childId" />
                                      <node concept="3cpWsb" id="4TPMxtdD_GK" role="1tU5fm" />
                                      <node concept="2OqwBi" id="4TPMxtdD_GL" role="33vP2m">
                                        <node concept="37vLTw" id="4TPMxtdD_GM" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7Zr9caIEQRr" resolve="nodeMap" />
                                        </node>
                                        <node concept="liA8E" id="4TPMxtdD_GN" role="2OqNvi">
                                          <ref role="37wK5l" node="7Zr9caIDNwM" resolve="getId" />
                                          <node concept="2OqwBi" id="4TPMxtdD_GO" role="37wK5m">
                                            <node concept="37vLTw" id="4TPMxtdD_GP" role="2Oq$k0">
                                              <ref role="3cqZAo" node="4TPMxtdD_Gk" resolve="e" />
                                            </node>
                                            <node concept="liA8E" id="4TPMxtdD_GQ" role="2OqNvi">
                                              <ref role="37wK5l" to="cmfw:~SNodeRemoveEvent.getChild()" resolve="getChild" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbJ" id="4TPMxtdD_GR" role="3cqZAp">
                                    <node concept="3clFbS" id="4TPMxtdD_GS" role="3clFbx">
                                      <node concept="3clFbF" id="4TPMxtdD_GT" role="3cqZAp">
                                        <node concept="2OqwBi" id="4TPMxtdD_GU" role="3clFbG">
                                          <node concept="37vLTw" id="4TPMxtdD_GV" role="2Oq$k0">
                                            <ref role="3cqZAo" node="4TPMxtdD_GD" resolve="t" />
                                          </node>
                                          <node concept="liA8E" id="4TPMxtdD_GW" role="2OqNvi">
                                            <ref role="37wK5l" to="jks5:~IWriteTransaction.moveChild(long,java.lang.String,int,long)" resolve="moveChild" />
                                            <node concept="10M0yZ" id="4TPMxtdD_GX" role="37wK5m">
                                              <ref role="1PxDUh" to="jks5:~ITree" resolve="ITree" />
                                              <ref role="3cqZAo" to="jks5:~ITree.ROOT_ID" resolve="ROOT_ID" />
                                            </node>
                                            <node concept="37vLTw" id="4TPMxtdWE5N" role="37wK5m">
                                              <ref role="3cqZAo" node="4TPMxtdwm8M" resolve="DETACHED_NODES_ROLE" />
                                            </node>
                                            <node concept="3cmrfG" id="4TPMxtdD_GZ" role="37wK5m">
                                              <property role="3cmrfH" value="-1" />
                                            </node>
                                            <node concept="37vLTw" id="4TPMxtdD_H0" role="37wK5m">
                                              <ref role="3cqZAo" node="4TPMxtdD_GJ" resolve="childId" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3y3z36" id="4TPMxtdD_H1" role="3clFbw">
                                      <node concept="37vLTw" id="4TPMxtdD_H2" role="3uHU7B">
                                        <ref role="3cqZAo" node="4TPMxtdD_GJ" resolve="childId" />
                                      </node>
                                      <node concept="1adDum" id="4TPMxtdD_H3" role="3uHU7w">
                                        <property role="1adDun" value="0L" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs6" id="1yReInOu2N" role="3cqZAp">
                                    <node concept="10M0yZ" id="1yReInOu2O" role="3cqZAk">
                                      <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                                      <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="1VtHttxWmyo" role="2Oq$k0">
                              <ref role="3cqZAo" node="1VtHttxWlgW" resolve="branch" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="4TPMxtdD_H4" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7lI5IOrOoIP" role="jymVt">
      <property role="TrG5h" value="modelListener" />
      <node concept="3Tm6S6" id="7lI5IOrOoIQ" role="1B3o_S" />
      <node concept="3uibUv" id="7lI5IOrP01l" role="1tU5fm">
        <ref role="3uigEE" to="j9co:~SModelListener" resolve="SModelListener" />
      </node>
      <node concept="2ShNRf" id="7lI5IOrOwEV" role="33vP2m">
        <node concept="YeOm9" id="7lI5IOrOXJG" role="2ShVmc">
          <node concept="1Y3b0j" id="7lI5IOrOXJJ" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="j9co:~SModelListener" resolve="SModelListener" />
            <node concept="3Tm1VV" id="7lI5IOrOXJK" role="1B3o_S" />
            <node concept="3clFb_" id="7lI5IOrP13d" role="jymVt">
              <property role="TrG5h" value="languageAdded" />
              <node concept="3Tm1VV" id="7lI5IOrP13e" role="1B3o_S" />
              <node concept="3cqZAl" id="7lI5IOrP13g" role="3clF45" />
              <node concept="37vLTG" id="7lI5IOrP13h" role="3clF46">
                <property role="TrG5h" value="event" />
                <node concept="3uibUv" id="7lI5IOrP13i" role="1tU5fm">
                  <ref role="3uigEE" to="j9co:~SModelLanguageEvent" resolve="SModelLanguageEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="7lI5IOrP13k" role="3clF47">
                <node concept="3clFbJ" id="4$UNf1h81IK" role="3cqZAp">
                  <node concept="3clFbS" id="4$UNf1h81IL" role="3clFbx">
                    <node concept="3cpWs6" id="4$UNf1h81IM" role="3cqZAp" />
                  </node>
                  <node concept="3y3z36" id="4KaF0n8POnB" role="3clFbw">
                    <node concept="3cmrfG" id="4KaF0n8PPDG" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="4$UNf1h81IN" role="3uHU7B">
                      <node concept="37vLTw" id="4$UNf1h81IO" role="2Oq$k0">
                        <ref role="3cqZAo" node="3l$kG67pCcy" resolve="syncMuted" />
                      </node>
                      <node concept="liA8E" id="4$UNf1h81IP" role="2OqNvi">
                        <ref role="37wK5l" to="i5cy:~AtomicInteger.get()" resolve="get" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7lI5IOrZkBp" role="3cqZAp">
                  <node concept="1rXfSq" id="7lI5IOrZkBo" role="3clFbG">
                    <ref role="37wK5l" node="7lI5IOrPX5R" resolve="syncUsedLanguagesFromModel" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7lI5IOrP13l" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="7lI5IOrP13m" role="jymVt">
              <property role="TrG5h" value="languageRemoved" />
              <node concept="3Tm1VV" id="7lI5IOrP13n" role="1B3o_S" />
              <node concept="3cqZAl" id="7lI5IOrP13p" role="3clF45" />
              <node concept="37vLTG" id="7lI5IOrP13q" role="3clF46">
                <property role="TrG5h" value="event" />
                <node concept="3uibUv" id="7lI5IOrP13r" role="1tU5fm">
                  <ref role="3uigEE" to="j9co:~SModelLanguageEvent" resolve="SModelLanguageEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="7lI5IOrP13t" role="3clF47">
                <node concept="3clFbJ" id="4$UNf1h7XPm" role="3cqZAp">
                  <node concept="3clFbS" id="4$UNf1h7XPo" role="3clFbx">
                    <node concept="3cpWs6" id="4$UNf1h81Iz" role="3cqZAp" />
                  </node>
                  <node concept="3y3z36" id="4KaF0n8PQM$" role="3clFbw">
                    <node concept="3cmrfG" id="4KaF0n8PRBq" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="4$UNf1h80kZ" role="3uHU7B">
                      <node concept="37vLTw" id="4$UNf1h7YVJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="3l$kG67pCcy" resolve="syncMuted" />
                      </node>
                      <node concept="liA8E" id="4$UNf1h819t" role="2OqNvi">
                        <ref role="37wK5l" to="i5cy:~AtomicInteger.get()" resolve="get" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7lI5IOrZmk4" role="3cqZAp">
                  <node concept="1rXfSq" id="7lI5IOrZmk3" role="3clFbG">
                    <ref role="37wK5l" node="7lI5IOrPX5R" resolve="syncUsedLanguagesFromModel" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7lI5IOrP13u" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="7lI5IOrP12v" role="jymVt">
              <property role="TrG5h" value="devkitAdded" />
              <node concept="3Tm1VV" id="7lI5IOrP12w" role="1B3o_S" />
              <node concept="3cqZAl" id="7lI5IOrP12y" role="3clF45" />
              <node concept="37vLTG" id="7lI5IOrP12z" role="3clF46">
                <property role="TrG5h" value="event" />
                <node concept="3uibUv" id="7lI5IOrP12$" role="1tU5fm">
                  <ref role="3uigEE" to="j9co:~SModelDevKitEvent" resolve="SModelDevKitEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="7lI5IOrP12A" role="3clF47">
                <node concept="3clFbJ" id="4$UNf1h82sI" role="3cqZAp">
                  <node concept="3clFbS" id="4$UNf1h82sJ" role="3clFbx">
                    <node concept="3cpWs6" id="4$UNf1h82sK" role="3cqZAp" />
                  </node>
                  <node concept="3y3z36" id="4KaF0n8PS5q" role="3clFbw">
                    <node concept="3cmrfG" id="4KaF0n8PSMo" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="4$UNf1h82sL" role="3uHU7B">
                      <node concept="37vLTw" id="4$UNf1h82sM" role="2Oq$k0">
                        <ref role="3cqZAo" node="3l$kG67pCcy" resolve="syncMuted" />
                      </node>
                      <node concept="liA8E" id="4$UNf1h82sN" role="2OqNvi">
                        <ref role="37wK5l" to="i5cy:~AtomicInteger.get()" resolve="get" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7lI5IOrZo2A" role="3cqZAp">
                  <node concept="1rXfSq" id="7lI5IOrZo2_" role="3clFbG">
                    <ref role="37wK5l" node="7lI5IOrSQ6O" resolve="syncUsedDevkitsFromModel" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7lI5IOrP12B" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="7lI5IOrP12C" role="jymVt">
              <property role="TrG5h" value="devkitRemoved" />
              <node concept="3Tm1VV" id="7lI5IOrP12D" role="1B3o_S" />
              <node concept="3cqZAl" id="7lI5IOrP12F" role="3clF45" />
              <node concept="37vLTG" id="7lI5IOrP12G" role="3clF46">
                <property role="TrG5h" value="event" />
                <node concept="3uibUv" id="7lI5IOrP12H" role="1tU5fm">
                  <ref role="3uigEE" to="j9co:~SModelDevKitEvent" resolve="SModelDevKitEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="7lI5IOrP12J" role="3clF47">
                <node concept="3clFbJ" id="4$UNf1h83af" role="3cqZAp">
                  <node concept="3clFbS" id="4$UNf1h83ag" role="3clFbx">
                    <node concept="3cpWs6" id="4$UNf1h83ah" role="3cqZAp" />
                  </node>
                  <node concept="3y3z36" id="4KaF0n8PU3S" role="3clFbw">
                    <node concept="3cmrfG" id="4KaF0n8PUK7" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="4$UNf1h83ai" role="3uHU7B">
                      <node concept="37vLTw" id="4$UNf1h83aj" role="2Oq$k0">
                        <ref role="3cqZAo" node="3l$kG67pCcy" resolve="syncMuted" />
                      </node>
                      <node concept="liA8E" id="4$UNf1h83ak" role="2OqNvi">
                        <ref role="37wK5l" to="i5cy:~AtomicInteger.get()" resolve="get" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7lI5IOrZpLd" role="3cqZAp">
                  <node concept="1rXfSq" id="7lI5IOrZpLc" role="3clFbG">
                    <ref role="37wK5l" node="7lI5IOrSQ6O" resolve="syncUsedDevkitsFromModel" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7lI5IOrP12K" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="7lI5IOrPlSJ" role="jymVt" />
            <node concept="3clFb_" id="7lI5IOrP11D" role="jymVt">
              <property role="TrG5h" value="beforeChildRemoved" />
              <node concept="3Tm1VV" id="7lI5IOrP11E" role="1B3o_S" />
              <node concept="3cqZAl" id="7lI5IOrP11G" role="3clF45" />
              <node concept="37vLTG" id="7lI5IOrP11H" role="3clF46">
                <property role="TrG5h" value="event" />
                <node concept="3uibUv" id="7lI5IOrP11I" role="1tU5fm">
                  <ref role="3uigEE" to="j9co:~SModelChildEvent" resolve="SModelChildEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="7lI5IOrP11K" role="3clF47" />
              <node concept="2AHcQZ" id="7lI5IOrP11L" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="7lI5IOrP11M" role="jymVt">
              <property role="TrG5h" value="beforeModelDisposed" />
              <node concept="3Tm1VV" id="7lI5IOrP11N" role="1B3o_S" />
              <node concept="3cqZAl" id="7lI5IOrP11P" role="3clF45" />
              <node concept="37vLTG" id="7lI5IOrP11Q" role="3clF46">
                <property role="TrG5h" value="model" />
                <node concept="3uibUv" id="7lI5IOrP11R" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
              <node concept="3clFbS" id="7lI5IOrP11T" role="3clF47" />
              <node concept="2AHcQZ" id="7lI5IOrP11U" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="7lI5IOrP11V" role="jymVt">
              <property role="TrG5h" value="beforeModelRenamed" />
              <node concept="3Tm1VV" id="7lI5IOrP11W" role="1B3o_S" />
              <node concept="3cqZAl" id="7lI5IOrP11Y" role="3clF45" />
              <node concept="37vLTG" id="7lI5IOrP11Z" role="3clF46">
                <property role="TrG5h" value="event" />
                <node concept="3uibUv" id="7lI5IOrP120" role="1tU5fm">
                  <ref role="3uigEE" to="j9co:~SModelRenamedEvent" resolve="SModelRenamedEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="7lI5IOrP122" role="3clF47" />
              <node concept="2AHcQZ" id="7lI5IOrP123" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="7lI5IOrP124" role="jymVt">
              <property role="TrG5h" value="beforeRootRemoved" />
              <node concept="3Tm1VV" id="7lI5IOrP125" role="1B3o_S" />
              <node concept="3cqZAl" id="7lI5IOrP127" role="3clF45" />
              <node concept="37vLTG" id="7lI5IOrP128" role="3clF46">
                <property role="TrG5h" value="event" />
                <node concept="3uibUv" id="7lI5IOrP129" role="1tU5fm">
                  <ref role="3uigEE" to="j9co:~SModelRootEvent" resolve="SModelRootEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="7lI5IOrP12b" role="3clF47" />
              <node concept="2AHcQZ" id="7lI5IOrP12c" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="7lI5IOrP12d" role="jymVt">
              <property role="TrG5h" value="childAdded" />
              <node concept="3Tm1VV" id="7lI5IOrP12e" role="1B3o_S" />
              <node concept="3cqZAl" id="7lI5IOrP12g" role="3clF45" />
              <node concept="37vLTG" id="7lI5IOrP12h" role="3clF46">
                <property role="TrG5h" value="event" />
                <node concept="3uibUv" id="7lI5IOrP12i" role="1tU5fm">
                  <ref role="3uigEE" to="j9co:~SModelChildEvent" resolve="SModelChildEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="7lI5IOrP12k" role="3clF47" />
              <node concept="2AHcQZ" id="7lI5IOrP12l" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="7lI5IOrP12m" role="jymVt">
              <property role="TrG5h" value="childRemoved" />
              <node concept="3Tm1VV" id="7lI5IOrP12n" role="1B3o_S" />
              <node concept="3cqZAl" id="7lI5IOrP12p" role="3clF45" />
              <node concept="37vLTG" id="7lI5IOrP12q" role="3clF46">
                <property role="TrG5h" value="event" />
                <node concept="3uibUv" id="7lI5IOrP12r" role="1tU5fm">
                  <ref role="3uigEE" to="j9co:~SModelChildEvent" resolve="SModelChildEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="7lI5IOrP12t" role="3clF47" />
              <node concept="2AHcQZ" id="7lI5IOrP12u" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="7lI5IOrP12L" role="jymVt">
              <property role="TrG5h" value="getPriority" />
              <node concept="3Tm1VV" id="7lI5IOrP12M" role="1B3o_S" />
              <node concept="2AHcQZ" id="7lI5IOrP12O" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="7lI5IOrP12P" role="3clF45">
                <ref role="3uigEE" to="j9co:~SModelListener$SModelListenerPriority" resolve="SModelListener.SModelListenerPriority" />
              </node>
              <node concept="3clFbS" id="7lI5IOrP12R" role="3clF47">
                <node concept="3clFbF" id="1DfnvxVx3qY" role="3cqZAp">
                  <node concept="Rm8GO" id="1DfnvxVx3Ov" role="3clFbG">
                    <ref role="Rm8GQ" to="j9co:~SModelListener$SModelListenerPriority.CLIENT" resolve="CLIENT" />
                    <ref role="1Px2BO" to="j9co:~SModelListener$SModelListenerPriority" resolve="SModelListener.SModelListenerPriority" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7lI5IOrP12S" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="7lI5IOrP12V" role="jymVt">
              <property role="TrG5h" value="importAdded" />
              <node concept="3Tm1VV" id="7lI5IOrP12W" role="1B3o_S" />
              <node concept="3cqZAl" id="7lI5IOrP12Y" role="3clF45" />
              <node concept="37vLTG" id="7lI5IOrP12Z" role="3clF46">
                <property role="TrG5h" value="event" />
                <node concept="3uibUv" id="7lI5IOrP130" role="1tU5fm">
                  <ref role="3uigEE" to="j9co:~SModelImportEvent" resolve="SModelImportEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="7lI5IOrP132" role="3clF47" />
              <node concept="2AHcQZ" id="7lI5IOrP133" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="7lI5IOrP134" role="jymVt">
              <property role="TrG5h" value="importRemoved" />
              <node concept="3Tm1VV" id="7lI5IOrP135" role="1B3o_S" />
              <node concept="3cqZAl" id="7lI5IOrP137" role="3clF45" />
              <node concept="37vLTG" id="7lI5IOrP138" role="3clF46">
                <property role="TrG5h" value="event" />
                <node concept="3uibUv" id="7lI5IOrP139" role="1tU5fm">
                  <ref role="3uigEE" to="j9co:~SModelImportEvent" resolve="SModelImportEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="7lI5IOrP13b" role="3clF47" />
              <node concept="2AHcQZ" id="7lI5IOrP13c" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="7lI5IOrP13v" role="jymVt">
              <property role="TrG5h" value="modelLoadingStateChanged" />
              <node concept="3Tm1VV" id="7lI5IOrP13w" role="1B3o_S" />
              <node concept="3cqZAl" id="7lI5IOrP13y" role="3clF45" />
              <node concept="37vLTG" id="7lI5IOrP13z" role="3clF46">
                <property role="TrG5h" value="model" />
                <node concept="3uibUv" id="7lI5IOrP13$" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
              <node concept="37vLTG" id="7lI5IOrP13_" role="3clF46">
                <property role="TrG5h" value="state" />
                <node concept="3uibUv" id="7lI5IOrP13A" role="1tU5fm">
                  <ref role="3uigEE" to="4it6:~ModelLoadingState" resolve="ModelLoadingState" />
                </node>
              </node>
              <node concept="3clFbS" id="7lI5IOrP13C" role="3clF47" />
              <node concept="2AHcQZ" id="7lI5IOrP13D" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="7lI5IOrP13E" role="jymVt">
              <property role="TrG5h" value="modelRenamed" />
              <node concept="3Tm1VV" id="7lI5IOrP13F" role="1B3o_S" />
              <node concept="3cqZAl" id="7lI5IOrP13H" role="3clF45" />
              <node concept="37vLTG" id="7lI5IOrP13I" role="3clF46">
                <property role="TrG5h" value="event" />
                <node concept="3uibUv" id="7lI5IOrP13J" role="1tU5fm">
                  <ref role="3uigEE" to="j9co:~SModelRenamedEvent" resolve="SModelRenamedEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="7lI5IOrP13L" role="3clF47" />
              <node concept="2AHcQZ" id="7lI5IOrP13M" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="7lI5IOrP13N" role="jymVt">
              <property role="TrG5h" value="modelSaved" />
              <node concept="3Tm1VV" id="7lI5IOrP13O" role="1B3o_S" />
              <node concept="3cqZAl" id="7lI5IOrP13Q" role="3clF45" />
              <node concept="37vLTG" id="7lI5IOrP13R" role="3clF46">
                <property role="TrG5h" value="model" />
                <node concept="3uibUv" id="7lI5IOrP13S" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
              <node concept="3clFbS" id="7lI5IOrP13U" role="3clF47" />
              <node concept="2AHcQZ" id="7lI5IOrP13V" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="7lI5IOrP13W" role="jymVt">
              <property role="TrG5h" value="propertyChanged" />
              <node concept="3Tm1VV" id="7lI5IOrP13X" role="1B3o_S" />
              <node concept="3cqZAl" id="7lI5IOrP13Z" role="3clF45" />
              <node concept="37vLTG" id="7lI5IOrP140" role="3clF46">
                <property role="TrG5h" value="event" />
                <node concept="3uibUv" id="7lI5IOrP141" role="1tU5fm">
                  <ref role="3uigEE" to="j9co:~SModelPropertyEvent" resolve="SModelPropertyEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="7lI5IOrP143" role="3clF47" />
              <node concept="2AHcQZ" id="7lI5IOrP144" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="7lI5IOrP145" role="jymVt">
              <property role="TrG5h" value="referenceAdded" />
              <node concept="3Tm1VV" id="7lI5IOrP146" role="1B3o_S" />
              <node concept="3cqZAl" id="7lI5IOrP148" role="3clF45" />
              <node concept="37vLTG" id="7lI5IOrP149" role="3clF46">
                <property role="TrG5h" value="event" />
                <node concept="3uibUv" id="7lI5IOrP14a" role="1tU5fm">
                  <ref role="3uigEE" to="j9co:~SModelReferenceEvent" resolve="SModelReferenceEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="7lI5IOrP14c" role="3clF47" />
              <node concept="2AHcQZ" id="7lI5IOrP14d" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="7lI5IOrP14e" role="jymVt">
              <property role="TrG5h" value="referenceRemoved" />
              <node concept="3Tm1VV" id="7lI5IOrP14f" role="1B3o_S" />
              <node concept="3cqZAl" id="7lI5IOrP14h" role="3clF45" />
              <node concept="37vLTG" id="7lI5IOrP14i" role="3clF46">
                <property role="TrG5h" value="event" />
                <node concept="3uibUv" id="7lI5IOrP14j" role="1tU5fm">
                  <ref role="3uigEE" to="j9co:~SModelReferenceEvent" resolve="SModelReferenceEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="7lI5IOrP14l" role="3clF47" />
              <node concept="2AHcQZ" id="7lI5IOrP14m" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="7lI5IOrP14n" role="jymVt">
              <property role="TrG5h" value="rootAdded" />
              <node concept="3Tm1VV" id="7lI5IOrP14o" role="1B3o_S" />
              <node concept="2AHcQZ" id="7lI5IOrP14q" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
              </node>
              <node concept="3cqZAl" id="7lI5IOrP14u" role="3clF45" />
              <node concept="37vLTG" id="7lI5IOrP14v" role="3clF46">
                <property role="TrG5h" value="event" />
                <node concept="3uibUv" id="7lI5IOrP14w" role="1tU5fm">
                  <ref role="3uigEE" to="j9co:~SModelRootEvent" resolve="SModelRootEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="7lI5IOrP14y" role="3clF47" />
              <node concept="2AHcQZ" id="7lI5IOrP14z" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3clFb_" id="7lI5IOrP14$" role="jymVt">
              <property role="TrG5h" value="rootRemoved" />
              <node concept="3Tm1VV" id="7lI5IOrP14_" role="1B3o_S" />
              <node concept="2AHcQZ" id="7lI5IOrP14B" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Deprecated" resolve="Deprecated" />
              </node>
              <node concept="3cqZAl" id="7lI5IOrP14F" role="3clF45" />
              <node concept="37vLTG" id="7lI5IOrP14G" role="3clF46">
                <property role="TrG5h" value="event" />
                <node concept="3uibUv" id="7lI5IOrP14H" role="1tU5fm">
                  <ref role="3uigEE" to="j9co:~SModelRootEvent" resolve="SModelRootEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="7lI5IOrP14J" role="3clF47" />
              <node concept="2AHcQZ" id="7lI5IOrP14K" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TPMxtdCkVF" role="jymVt" />
    <node concept="3clFbW" id="4TPMxtdChW1" role="jymVt">
      <node concept="37vLTG" id="4TPMxtdDbvD" role="3clF46">
        <property role="TrG5h" value="branch" />
        <node concept="3uibUv" id="4HpUuL0xrFn" role="1tU5fm">
          <ref role="3uigEE" to="5440:~IIndirectBranch" resolve="IIndirectBranch" />
        </node>
      </node>
      <node concept="37vLTG" id="5D5xac1w165" role="3clF46">
        <property role="TrG5h" value="modelNodeId" />
        <node concept="3cpWsb" id="5D5xac1w1uC" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4TPMxtdDctF" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="4TPMxtdDdrk" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3cqZAl" id="4TPMxtdChW3" role="3clF45" />
      <node concept="3Tm1VV" id="4TPMxtdChW4" role="1B3o_S" />
      <node concept="3clFbS" id="4TPMxtdChW5" role="3clF47">
        <node concept="3clFbF" id="4TPMxtdDjSi" role="3cqZAp">
          <node concept="37vLTI" id="4TPMxtdDlrm" role="3clFbG">
            <node concept="37vLTw" id="4TPMxtdDmts" role="37vLTx">
              <ref role="3cqZAo" node="4TPMxtdDbvD" resolve="branch" />
            </node>
            <node concept="2OqwBi" id="4TPMxtdDkl6" role="37vLTJ">
              <node concept="Xjq3P" id="4TPMxtdDjSg" role="2Oq$k0" />
              <node concept="2OwXpG" id="4TPMxtdDlkQ" role="2OqNvi">
                <ref role="2Oxat5" node="4TPMxtdD8F5" resolve="activeBranch" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4TPMxtdDnv5" role="3cqZAp">
          <node concept="37vLTI" id="4TPMxtdDpXS" role="3clFbG">
            <node concept="37vLTw" id="4TPMxtdDrb5" role="37vLTx">
              <ref role="3cqZAo" node="4TPMxtdDctF" resolve="model" />
            </node>
            <node concept="2OqwBi" id="4TPMxtdDoEP" role="37vLTJ">
              <node concept="Xjq3P" id="4TPMxtdDnv3" role="2Oq$k0" />
              <node concept="2OwXpG" id="4TPMxtdDpd0" role="2OqNvi">
                <ref role="2Oxat5" node="4TPMxtdDg7r" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5D5xac1w1Ks" role="3cqZAp">
          <node concept="37vLTI" id="5D5xac1w3fF" role="3clFbG">
            <node concept="37vLTw" id="5D5xac1w3Pe" role="37vLTx">
              <ref role="3cqZAo" node="5D5xac1w165" resolve="modelNodeId" />
            </node>
            <node concept="2OqwBi" id="5D5xac1w1TZ" role="37vLTJ">
              <node concept="Xjq3P" id="5D5xac1w1Kq" role="2Oq$k0" />
              <node concept="2OwXpG" id="5D5xac1w282" role="2OqNvi">
                <ref role="2Oxat5" node="5D5xac1t4Do" resolve="modelNodeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Zr9caICU8d" role="3cqZAp">
          <node concept="2OqwBi" id="7Zr9caICULc" role="3clFbG">
            <node concept="37vLTw" id="7Zr9caICU8b" role="2Oq$k0">
              <ref role="3cqZAo" node="4TPMxtdDbvD" resolve="branch" />
            </node>
            <node concept="liA8E" id="7Zr9caICV4a" role="2OqNvi">
              <ref role="37wK5l" to="5440:~IIndirectBranch.addListener(org.modelix.model.api.IBranchListener)" resolve="addListener" />
              <node concept="37vLTw" id="4TPMxtdDwu5" role="37wK5m">
                <ref role="3cqZAo" node="4TPMxtdClMY" resolve="branchListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4TPMxtdDBLt" role="3cqZAp">
          <node concept="2OqwBi" id="4TPMxtdDD3U" role="3clFbG">
            <node concept="37vLTw" id="4TPMxtdDBLr" role="2Oq$k0">
              <ref role="3cqZAo" node="4TPMxtdDctF" resolve="model" />
            </node>
            <node concept="liA8E" id="4TPMxtdDE5y" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.addChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="addChangeListener" />
              <node concept="37vLTw" id="4TPMxtdDEC3" role="37wK5m">
                <ref role="3cqZAo" node="4TPMxtdDxNo" resolve="nodeChangeListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7lI5IOrOhnh" role="3cqZAp">
          <node concept="2OqwBi" id="7lI5IOrOhO4" role="3clFbG">
            <node concept="1eOMI4" id="7lI5IOrP2HG" role="2Oq$k0">
              <node concept="10QFUN" id="7lI5IOrP2HF" role="1eOMHV">
                <node concept="37vLTw" id="7lI5IOrP2HE" role="10QFUP">
                  <ref role="3cqZAo" node="4TPMxtdDctF" resolve="model" />
                </node>
                <node concept="3uibUv" id="7lI5IOrP2PG" role="10QFUM">
                  <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7lI5IOrP2Zr" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~SModelInternal.addModelListener(jetbrains.mps.smodel.event.SModelListener)" resolve="addModelListener" />
              <node concept="37vLTw" id="7lI5IOrP3IO" role="37wK5m">
                <ref role="3cqZAo" node="7lI5IOrOoIP" resolve="modelListener" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="FBnEnNIXIO" role="jymVt" />
    <node concept="3clFb_" id="FBnEnNIZgD" role="jymVt">
      <property role="TrG5h" value="prefetchTree" />
      <node concept="37vLTG" id="FBnEnNJqzd" role="3clF46">
        <property role="TrG5h" value="tree" />
        <node concept="3uibUv" id="FBnEnNJyqx" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
        </node>
      </node>
      <node concept="3cqZAl" id="FBnEnNIZgF" role="3clF45" />
      <node concept="3Tm6S6" id="FBnEnNJj0G" role="1B3o_S" />
      <node concept="3clFbS" id="FBnEnNIZgH" role="3clF47">
        <node concept="3clFbJ" id="FBnEnNJ$zs" role="3cqZAp">
          <node concept="2ZW3vV" id="FBnEnNJ_ID" role="3clFbw">
            <node concept="3uibUv" id="FBnEnNJ_Sn" role="2ZW6by">
              <ref role="3uigEE" to="xkhl:~CLTree" resolve="CLTree" />
            </node>
            <node concept="37vLTw" id="FBnEnNJ$JE" role="2ZW6bz">
              <ref role="3cqZAo" node="FBnEnNJqzd" resolve="tree" />
            </node>
          </node>
          <node concept="3clFbS" id="FBnEnNJ$zu" role="3clFbx">
            <node concept="3clFbF" id="FBnEnNJAVw" role="3cqZAp">
              <node concept="2OqwBi" id="FBnEnNJBIE" role="3clFbG">
                <node concept="1eOMI4" id="FBnEnNJAVs" role="2Oq$k0">
                  <node concept="10QFUN" id="FBnEnNJAVp" role="1eOMHV">
                    <node concept="3uibUv" id="FBnEnNJAVu" role="10QFUM">
                      <ref role="3uigEE" to="xkhl:~CLTree" resolve="CLTree" />
                    </node>
                    <node concept="37vLTw" id="FBnEnNJAVv" role="10QFUP">
                      <ref role="3cqZAo" node="FBnEnNJqzd" resolve="tree" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="FBnEnNKzGx" role="2OqNvi">
                  <ref role="37wK5l" to="xkhl:~CLTree.prefetchAll()" resolve="prefetchAll" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7zuOo8p3Njl" role="jymVt" />
    <node concept="3clFb_" id="7zuOo8p3Opf" role="jymVt">
      <property role="TrG5h" value="setAsync" />
      <node concept="37vLTG" id="7zuOo8p49Ls" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="10P_77" id="7zuOo8p4e9T" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7zuOo8p3Oph" role="3clF45" />
      <node concept="3Tm1VV" id="7zuOo8p3Opi" role="1B3o_S" />
      <node concept="3clFbS" id="7zuOo8p3Opj" role="3clF47">
        <node concept="3clFbF" id="7zuOo8p4fJK" role="3cqZAp">
          <node concept="37vLTI" id="7zuOo8p4gt8" role="3clFbG">
            <node concept="37vLTw" id="7zuOo8p4gDn" role="37vLTx">
              <ref role="3cqZAo" node="7zuOo8p49Ls" resolve="value" />
            </node>
            <node concept="37vLTw" id="7zuOo8p4fJJ" role="37vLTJ">
              <ref role="3cqZAo" node="7zuOo8p3CJV" resolve="async" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TPMxtdCYh8" role="jymVt" />
    <node concept="3clFb_" id="6T_zoDmsCQN" role="jymVt">
      <property role="TrG5h" value="runFullSync" />
      <node concept="3cqZAl" id="6T_zoDmsCQP" role="3clF45" />
      <node concept="3Tm1VV" id="6T_zoDmsCQQ" role="1B3o_S" />
      <node concept="3clFbS" id="6T_zoDmsCQR" role="3clF47">
        <node concept="3clFbF" id="7ardNfhLUPM" role="3cqZAp">
          <node concept="2OqwBi" id="7ardNfhLYgy" role="3clFbG">
            <node concept="10M0yZ" id="7ardNfhLXth" role="2Oq$k0">
              <ref role="3cqZAo" node="Onv88ZOFFp" resolve="FIXED" />
              <ref role="1PxDUh" node="Onv88ZNSEL" resolve="SharedExecutors" />
            </node>
            <node concept="liA8E" id="7ardNfhLYMW" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~Executor.execute(java.lang.Runnable)" resolve="execute" />
              <node concept="1bVj0M" id="7ardNfhLZc6" role="37wK5m">
                <node concept="3clFbS" id="7ardNfhLZc7" role="1bW5cS">
                  <node concept="3cpWs8" id="7ardNfhM1$t" role="3cqZAp">
                    <node concept="3cpWsn" id="7ardNfhM1$u" role="3cpWs9">
                      <property role="TrG5h" value="branch" />
                      <node concept="3uibUv" id="7ardNfhM1yM" role="1tU5fm">
                        <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
                      </node>
                      <node concept="2OqwBi" id="7ardNfhM1$v" role="33vP2m">
                        <node concept="37vLTw" id="7ardNfhM1$w" role="2Oq$k0">
                          <ref role="3cqZAo" node="4TPMxtdD8F5" resolve="activeBranch" />
                        </node>
                        <node concept="liA8E" id="7ardNfhM1$x" role="2OqNvi">
                          <ref role="37wK5l" to="5440:~IIndirectBranch.getBranch()" resolve="getBranch" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="7ardNfhM3s4" role="3cqZAp">
                    <node concept="3cpWsn" id="7ardNfhM3s5" role="3cpWs9">
                      <property role="TrG5h" value="tree" />
                      <node concept="3uibUv" id="7Aj1SIwRNSQ" role="1tU5fm">
                        <ref role="3uigEE" to="xkhl:~CLTree" resolve="CLTree" />
                      </node>
                      <node concept="10QFUN" id="7Aj1SIwRPvl" role="33vP2m">
                        <node concept="2OqwBi" id="7Aj1SIwRPva" role="10QFUP">
                          <node concept="37vLTw" id="7Aj1SIwRPvb" role="2Oq$k0">
                            <ref role="3cqZAo" node="7ardNfhM1$u" resolve="branch" />
                          </node>
                          <node concept="liA8E" id="7Aj1SIwRPvc" role="2OqNvi">
                            <ref role="37wK5l" to="jks5:~IBranch.computeRead(kotlin.jvm.functions.Function0)" resolve="computeRead" />
                            <node concept="1bVj0M" id="7Aj1SIwRPvd" role="37wK5m">
                              <node concept="3clFbS" id="7Aj1SIwRPve" role="1bW5cS">
                                <node concept="3clFbF" id="7Aj1SIwRPvf" role="3cqZAp">
                                  <node concept="2OqwBi" id="7Aj1SIwRPvg" role="3clFbG">
                                    <node concept="2OqwBi" id="7Aj1SIwRPvh" role="2Oq$k0">
                                      <node concept="37vLTw" id="7Aj1SIwRPvi" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7ardNfhM1$u" resolve="branch" />
                                      </node>
                                      <node concept="liA8E" id="7Aj1SIwRPvj" role="2OqNvi">
                                        <ref role="37wK5l" to="jks5:~IBranch.getTransaction()" resolve="getTransaction" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="7Aj1SIwRPvk" role="2OqNvi">
                                      <ref role="37wK5l" to="jks5:~ITransaction.getTree()" resolve="getTree" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3uibUv" id="7Aj1SIwRPv9" role="10QFUM">
                          <ref role="3uigEE" to="xkhl:~CLTree" resolve="CLTree" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6NKC_4ZsyaW" role="3cqZAp" />
                  <node concept="1X3_iC" id="7Aj1SIwTaI1" role="lGtFl">
                    <property role="3V$3am" value="statement" />
                    <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                    <node concept="3clFbF" id="7ardNfhM5bQ" role="8Wnug">
                      <node concept="1rXfSq" id="7ardNfhM5bO" role="3clFbG">
                        <ref role="37wK5l" node="FBnEnNIZgD" resolve="prefetchTree" />
                        <node concept="37vLTw" id="7ardNfhM6bF" role="37wK5m">
                          <ref role="3cqZAo" node="7ardNfhM3s5" resolve="tree" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3SKdUt" id="7Aj1SIwTcG9" role="3cqZAp">
                    <node concept="1PaTwC" id="7Aj1SIwTcGa" role="1aUNEU">
                      <node concept="3oM_SD" id="7Aj1SIwTcGc" role="1PaTwD">
                        <property role="3oM_SC" value="prefetch" />
                      </node>
                      <node concept="3oM_SD" id="7Aj1SIwTdMf" role="1PaTwD">
                        <property role="3oM_SC" value="model" />
                      </node>
                      <node concept="3oM_SD" id="7Aj1SIwTdMi" role="1PaTwD">
                        <property role="3oM_SC" value="content" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="6NKC_4ZsAMq" role="3cqZAp">
                    <node concept="3cpWsn" id="6NKC_4ZsAMr" role="3cpWs9">
                      <property role="TrG5h" value="prefetched" />
                      <node concept="A3Dl8" id="6NKC_4Zs$bP" role="1tU5fm">
                        <node concept="3uibUv" id="6NKC_4Zs$bS" role="A3Ik2">
                          <ref role="3uigEE" to="xkhl:~CLNode" resolve="CLNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6NKC_4ZsAMs" role="33vP2m">
                        <node concept="37vLTw" id="6NKC_4ZsAMt" role="2Oq$k0">
                          <ref role="3cqZAo" node="7ardNfhM3s5" resolve="tree" />
                        </node>
                        <node concept="liA8E" id="6NKC_4ZsAMu" role="2OqNvi">
                          <ref role="37wK5l" to="xkhl:~CLTree.getDescendants(long,boolean)" resolve="getDescendants" />
                          <node concept="37vLTw" id="6NKC_4ZsAMv" role="37wK5m">
                            <ref role="3cqZAo" node="5D5xac1t4Do" resolve="modelNodeId" />
                          </node>
                          <node concept="3clFbT" id="6NKC_4ZsAMw" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="RRSsy" id="6NKC_4ZsTvG" role="3cqZAp">
                    <node concept="3cpWs3" id="6NKC_4ZsZGF" role="RRSoy">
                      <node concept="Xl_RD" id="6NKC_4ZsZSQ" role="3uHU7w">
                        <property role="Xl_RC" value=" nodes" />
                      </node>
                      <node concept="3cpWs3" id="6NKC_4ZsVv1" role="3uHU7B">
                        <node concept="Xl_RD" id="6NKC_4ZsTvI" role="3uHU7B">
                          <property role="Xl_RC" value="Prefetched " />
                        </node>
                        <node concept="2OqwBi" id="6NKC_4ZsX_q" role="3uHU7w">
                          <node concept="37vLTw" id="6NKC_4ZsWsV" role="2Oq$k0">
                            <ref role="3cqZAo" node="6NKC_4ZsAMr" resolve="prefetched" />
                          </node>
                          <node concept="34oBXx" id="6NKC_4ZsYaQ" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="6NKC_4ZszFv" role="3cqZAp" />
                  <node concept="3clFbF" id="6T_zoDmsTLM" role="3cqZAp">
                    <node concept="2OqwBi" id="6T_zoDmsTLN" role="3clFbG">
                      <node concept="2YIFZM" id="6T_zoDmsTLO" role="2Oq$k0">
                        <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                        <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                      </node>
                      <node concept="liA8E" id="6T_zoDmsTLP" role="2OqNvi">
                        <ref role="37wK5l" to="bd8o:~Application.invokeLater(java.lang.Runnable)" resolve="invokeLater" />
                        <node concept="1bVj0M" id="6T_zoDmsTLQ" role="37wK5m">
                          <property role="3yWfEV" value="true" />
                          <node concept="3clFbS" id="6T_zoDmsTLR" role="1bW5cS">
                            <node concept="3clFbF" id="6T_zoDmsTLW" role="3cqZAp">
                              <node concept="2YIFZM" id="6T_zoDmsTLX" role="3clFbG">
                                <ref role="1Pybhc" node="6FW8YbU5vOS" resolve="CommandHelper" />
                                <ref role="37wK5l" node="6FW8YbU5wHo" resolve="runInCommand" />
                                <node concept="1bVj0M" id="6T_zoDmsTLY" role="37wK5m">
                                  <property role="3yWfEV" value="true" />
                                  <node concept="3clFbS" id="6T_zoDmsTLZ" role="1bW5cS">
                                    <node concept="3clFbF" id="6T_zoDmsTLS" role="3cqZAp">
                                      <node concept="1rXfSq" id="6T_zoDmsTLT" role="3clFbG">
                                        <ref role="37wK5l" node="3l$kG67pN9J" resolve="withSyncMuted" />
                                        <node concept="1bVj0M" id="6T_zoDmsTLU" role="37wK5m">
                                          <property role="3yWfEV" value="true" />
                                          <node concept="3clFbS" id="6T_zoDmsTLV" role="1bW5cS">
                                            <node concept="3cpWs8" id="1VtHttxWptU" role="3cqZAp">
                                              <node concept="3cpWsn" id="1VtHttxWptV" role="3cpWs9">
                                                <property role="TrG5h" value="branch" />
                                                <property role="3TUv4t" value="true" />
                                                <node concept="3uibUv" id="1VtHttxWptW" role="1tU5fm">
                                                  <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
                                                </node>
                                                <node concept="2OqwBi" id="1VtHttxWptX" role="33vP2m">
                                                  <node concept="37vLTw" id="1VtHttxWptY" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="4TPMxtdD8F5" resolve="activeBranch" />
                                                  </node>
                                                  <node concept="liA8E" id="1VtHttxWptZ" role="2OqNvi">
                                                    <ref role="37wK5l" to="5440:~IIndirectBranch.getBranch()" resolve="getBranch" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFbF" id="6T_zoDmt1bQ" role="3cqZAp">
                                              <node concept="2OqwBi" id="6T_zoDmt1mi" role="3clFbG">
                                                <node concept="37vLTw" id="1VtHttxWqno" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="1VtHttxWptV" resolve="branch" />
                                                </node>
                                                <node concept="liA8E" id="6T_zoDmt1Pd" role="2OqNvi">
                                                  <ref role="37wK5l" to="jks5:~IBranch.runRead(kotlin.jvm.functions.Function0)" resolve="runRead" />
                                                  <node concept="1bVj0M" id="6T_zoDmt2jl" role="37wK5m">
                                                    <node concept="3clFbS" id="6T_zoDmt2jm" role="1bW5cS">
                                                      <node concept="2Gpval" id="aOvvhdNO$o" role="3cqZAp">
                                                        <node concept="2GrKxI" id="aOvvhdNO$q" role="2Gsz3X">
                                                          <property role="TrG5h" value="root" />
                                                        </node>
                                                        <node concept="2OqwBi" id="1HfAgdDSgKg" role="2GsD0m">
                                                          <node concept="2ShNRf" id="aOvvhdOc3U" role="2Oq$k0">
                                                            <node concept="Tc6Ow" id="aOvvhdOdKD" role="2ShVmc">
                                                              <node concept="3uibUv" id="aOvvhdOeWS" role="HW$YZ">
                                                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                                              </node>
                                                              <node concept="2OqwBi" id="aOvvhdOgYB" role="I$8f6">
                                                                <node concept="37vLTw" id="aOvvhdOgYC" role="2Oq$k0">
                                                                  <ref role="3cqZAo" node="4TPMxtdDg7r" resolve="model" />
                                                                </node>
                                                                <node concept="liA8E" id="aOvvhdOgYD" role="2OqNvi">
                                                                  <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                                                                </node>
                                                              </node>
                                                            </node>
                                                          </node>
                                                          <node concept="UnYns" id="1HfAgdDSi9X" role="2OqNvi">
                                                            <node concept="3Tqbb2" id="1HfAgdDSj5E" role="UnYnz" />
                                                          </node>
                                                        </node>
                                                        <node concept="3clFbS" id="aOvvhdNO$u" role="2LFqv$">
                                                          <node concept="3clFbF" id="1HfAgdDSjkS" role="3cqZAp">
                                                            <node concept="2OqwBi" id="1HfAgdDSl_b" role="3clFbG">
                                                              <node concept="2OqwBi" id="1HfAgdDSjK4" role="2Oq$k0">
                                                                <node concept="2GrUjf" id="1HfAgdDSjkQ" role="2Oq$k0">
                                                                  <ref role="2Gs0qQ" node="aOvvhdNO$q" resolve="root" />
                                                                </node>
                                                                <node concept="32TBzR" id="1HfAgdDSkjb" role="2OqNvi" />
                                                              </node>
                                                              <node concept="2es0OD" id="1HfAgdDSnuY" role="2OqNvi">
                                                                <node concept="1bVj0M" id="1HfAgdDSnv0" role="23t8la">
                                                                  <node concept="3clFbS" id="1HfAgdDSnv1" role="1bW5cS">
                                                                    <node concept="3clFbF" id="1HfAgdDSobm" role="3cqZAp">
                                                                      <node concept="2OqwBi" id="1HfAgdDSoH9" role="3clFbG">
                                                                        <node concept="37vLTw" id="1HfAgdDSobl" role="2Oq$k0">
                                                                          <ref role="3cqZAo" node="1HfAgdDSnv2" resolve="it" />
                                                                        </node>
                                                                        <node concept="3YRAZt" id="1HfAgdDSpjc" role="2OqNvi" />
                                                                      </node>
                                                                    </node>
                                                                  </node>
                                                                  <node concept="Rh6nW" id="1HfAgdDSnv2" role="1bW2Oz">
                                                                    <property role="TrG5h" value="it" />
                                                                    <node concept="2jxLKc" id="1HfAgdDSnv3" role="1tU5fm" />
                                                                  </node>
                                                                </node>
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="3clFbF" id="6T_zoDmsTNL" role="3cqZAp">
                                                        <node concept="1rXfSq" id="6T_zoDmsTNM" role="3clFbG">
                                                          <ref role="37wK5l" node="3l$kG67nirj" resolve="syncChildren" />
                                                          <node concept="37vLTw" id="5D5xac1uRJ3" role="37wK5m">
                                                            <ref role="3cqZAo" node="5D5xac1t4Do" resolve="modelNodeId" />
                                                          </node>
                                                          <node concept="2OqwBi" id="5D5xac1uUnA" role="37wK5m">
                                                            <node concept="359W_D" id="5D5xac1uSJ7" role="2Oq$k0">
                                                              <ref role="359W_E" to="dj5d:qmkA5fOskc" resolve="Model" />
                                                              <ref role="359W_F" to="dj5d:qmkA5fOskk" resolve="rootNodes" />
                                                            </node>
                                                            <node concept="liA8E" id="5D5xac1uVd5" role="2OqNvi">
                                                              <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                                                            </node>
                                                          </node>
                                                          <node concept="2OqwBi" id="6T_zoDmt4QI" role="37wK5m">
                                                            <node concept="2OqwBi" id="6T_zoDmt0h6" role="2Oq$k0">
                                                              <node concept="37vLTw" id="1VtHttxWrG0" role="2Oq$k0">
                                                                <ref role="3cqZAo" node="1VtHttxWptV" resolve="branch" />
                                                              </node>
                                                              <node concept="liA8E" id="6T_zoDmt4Gn" role="2OqNvi">
                                                                <ref role="37wK5l" to="jks5:~IBranch.getTransaction()" resolve="getTransaction" />
                                                              </node>
                                                            </node>
                                                            <node concept="liA8E" id="6T_zoDmt5vi" role="2OqNvi">
                                                              <ref role="37wK5l" to="jks5:~ITransaction.getTree()" resolve="getTree" />
                                                            </node>
                                                          </node>
                                                          <node concept="3clFbT" id="6T_zoDmsTNP" role="37wK5m">
                                                            <property role="3clFbU" value="true" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="3clFbF" id="6T_zoDmsTO7" role="3cqZAp">
                                                        <node concept="1rXfSq" id="6T_zoDmsTO8" role="3clFbG">
                                                          <ref role="37wK5l" node="4TPMxte8IF0" resolve="processPendingReferences" />
                                                        </node>
                                                      </node>
                                                      <node concept="3clFbF" id="1DfnvxVyLYH" role="3cqZAp">
                                                        <node concept="1rXfSq" id="1DfnvxVyLYF" role="3clFbG">
                                                          <ref role="37wK5l" node="7lI5IOs09sV" resolve="syncModelPropertiesToModel" />
                                                          <node concept="2OqwBi" id="1DfnvxVzRnW" role="37wK5m">
                                                            <node concept="2OqwBi" id="1DfnvxVzQnK" role="2Oq$k0">
                                                              <node concept="37vLTw" id="1DfnvxVzPYj" role="2Oq$k0">
                                                                <ref role="3cqZAo" node="1VtHttxWptV" resolve="branch" />
                                                              </node>
                                                              <node concept="liA8E" id="1DfnvxVzQU3" role="2OqNvi">
                                                                <ref role="37wK5l" to="jks5:~IBranch.getTransaction()" resolve="getTransaction" />
                                                              </node>
                                                            </node>
                                                            <node concept="liA8E" id="1DfnvxVzRSp" role="2OqNvi">
                                                              <ref role="37wK5l" to="jks5:~ITransaction.getTree()" resolve="getTree" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="3cpWs6" id="1yReInOuNq" role="3cqZAp">
                                                        <node concept="10M0yZ" id="1yReInOuNr" role="3cqZAk">
                                                          <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                                                          <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
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
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6T_zoDms$sm" role="jymVt" />
    <node concept="3clFb_" id="4TPMxtdD17x" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="4TPMxtdD17z" role="3clF45" />
      <node concept="3Tm1VV" id="4TPMxtdD17$" role="1B3o_S" />
      <node concept="3clFbS" id="4TPMxtdD17_" role="3clF47">
        <node concept="3clFbF" id="4TPMxtdDGc2" role="3cqZAp">
          <node concept="2OqwBi" id="4TPMxtdDGia" role="3clFbG">
            <node concept="37vLTw" id="4TPMxtdDGc1" role="2Oq$k0">
              <ref role="3cqZAo" node="4TPMxtdD8F5" resolve="activeBranch" />
            </node>
            <node concept="liA8E" id="4TPMxtdDIkp" role="2OqNvi">
              <ref role="37wK5l" to="5440:~IIndirectBranch.removeListener(org.modelix.model.api.IBranchListener)" resolve="removeListener" />
              <node concept="37vLTw" id="4TPMxtdDIRU" role="37wK5m">
                <ref role="3cqZAo" node="4TPMxtdClMY" resolve="branchListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4TPMxtdDJLu" role="3cqZAp">
          <node concept="2OqwBi" id="4TPMxtdDKmb" role="3clFbG">
            <node concept="37vLTw" id="4TPMxtdDJLs" role="2Oq$k0">
              <ref role="3cqZAo" node="4TPMxtdDg7r" resolve="model" />
            </node>
            <node concept="liA8E" id="4TPMxtdDMrj" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.removeChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="removeChangeListener" />
              <node concept="37vLTw" id="4TPMxtdDMXV" role="37wK5m">
                <ref role="3cqZAo" node="4TPMxtdDxNo" resolve="nodeChangeListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7lI5IOrPlvb" role="3cqZAp">
          <node concept="2OqwBi" id="7lI5IOrPlvc" role="3clFbG">
            <node concept="1eOMI4" id="7lI5IOrPlvd" role="2Oq$k0">
              <node concept="10QFUN" id="7lI5IOrPlve" role="1eOMHV">
                <node concept="37vLTw" id="7lI5IOrPlvf" role="10QFUP">
                  <ref role="3cqZAo" node="4TPMxtdDg7r" resolve="model" />
                </node>
                <node concept="3uibUv" id="7lI5IOrPlvg" role="10QFUM">
                  <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7lI5IOrPlvh" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~SModelInternal.removeModelListener(jetbrains.mps.smodel.event.SModelListener)" resolve="removeModelListener" />
              <node concept="37vLTw" id="7lI5IOrPlvi" role="37wK5m">
                <ref role="3cqZAo" node="7lI5IOrOoIP" resolve="modelListener" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TPMxtdChO_" role="jymVt" />
    <node concept="3clFb_" id="3l$kG67pN9J" role="jymVt">
      <property role="TrG5h" value="withSyncMuted" />
      <node concept="37vLTG" id="3l$kG67pWGz" role="3clF46">
        <property role="TrG5h" value="r" />
        <node concept="1ajhzC" id="3l$kG67pZGt" role="1tU5fm">
          <node concept="3cqZAl" id="3l$kG67q064" role="1ajl9A" />
        </node>
      </node>
      <node concept="3cqZAl" id="3l$kG67pN9L" role="3clF45" />
      <node concept="3Tmbuc" id="3l$kG67qgv3" role="1B3o_S" />
      <node concept="3clFbS" id="3l$kG67pN9N" role="3clF47">
        <node concept="3clFbF" id="4KaF0n8PWia" role="3cqZAp">
          <node concept="2OqwBi" id="4KaF0n8PWic" role="3clFbG">
            <node concept="37vLTw" id="4KaF0n8PWid" role="2Oq$k0">
              <ref role="3cqZAo" node="3l$kG67pCcy" resolve="syncMuted" />
            </node>
            <node concept="liA8E" id="4KaF0n8PWie" role="2OqNvi">
              <ref role="37wK5l" to="i5cy:~AtomicInteger.incrementAndGet()" resolve="incrementAndGet" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="1$Bf1B1aHMD" role="3cqZAp">
          <node concept="3clFbS" id="1$Bf1B1aHMF" role="1zxBo7">
            <node concept="3clFbF" id="3l$kG67qe4X" role="3cqZAp">
              <node concept="2OqwBi" id="3l$kG67qe6d" role="3clFbG">
                <node concept="37vLTw" id="3l$kG67qe4V" role="2Oq$k0">
                  <ref role="3cqZAo" node="3l$kG67pWGz" resolve="r" />
                </node>
                <node concept="1Bd96e" id="3l$kG67qe_g" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="7u$whvIaqEu" role="1zxBo6">
            <node concept="3clFbS" id="1$Bf1B1aHMG" role="1wplMD">
              <node concept="3clFbF" id="3l$kG67q9ov" role="3cqZAp">
                <node concept="2OqwBi" id="3l$kG67qaxD" role="3clFbG">
                  <node concept="37vLTw" id="3l$kG67q9ot" role="2Oq$k0">
                    <ref role="3cqZAo" node="3l$kG67pCcy" resolve="syncMuted" />
                  </node>
                  <node concept="liA8E" id="4KaF0n8PWdG" role="2OqNvi">
                    <ref role="37wK5l" to="i5cy:~AtomicInteger.decrementAndGet()" resolve="decrementAndGet" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TPMxtdChWt" role="jymVt" />
    <node concept="3clFb_" id="7lI5IOs09sV" role="jymVt">
      <property role="TrG5h" value="syncModelPropertiesToModel" />
      <node concept="37vLTG" id="1DfnvxVzF$S" role="3clF46">
        <property role="TrG5h" value="tree" />
        <node concept="3uibUv" id="1DfnvxVzF$T" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
        </node>
      </node>
      <node concept="3cqZAl" id="7lI5IOs09sX" role="3clF45" />
      <node concept="3Tm1VV" id="7lI5IOs09sY" role="1B3o_S" />
      <node concept="3clFbS" id="7lI5IOs09sZ" role="3clF47">
        <node concept="3clFbF" id="7lI5IOs0fuf" role="3cqZAp">
          <node concept="1rXfSq" id="7lI5IOs0fue" role="3clFbG">
            <ref role="37wK5l" node="7lI5IOrWGyL" resolve="syncUsedLanguagesToModel" />
            <node concept="37vLTw" id="1DfnvxVzObF" role="37wK5m">
              <ref role="3cqZAo" node="1DfnvxVzF$S" resolve="tree" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7lI5IOs0j2N" role="3cqZAp">
          <node concept="1rXfSq" id="7lI5IOs0j2L" role="3clFbG">
            <ref role="37wK5l" node="7lI5IOrXN3f" resolve="syncUsedDevkitsToModel" />
            <node concept="37vLTw" id="1DfnvxVzP4j" role="37wK5m">
              <ref role="3cqZAo" node="1DfnvxVzF$S" resolve="tree" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7lI5IOs04aq" role="jymVt" />
    <node concept="3clFb_" id="7lI5IOrWGyL" role="jymVt">
      <property role="TrG5h" value="syncUsedLanguagesToModel" />
      <node concept="37vLTG" id="1DfnvxVzyzf" role="3clF46">
        <property role="TrG5h" value="tree" />
        <node concept="3uibUv" id="1DfnvxVzyzg" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
        </node>
      </node>
      <node concept="3cqZAl" id="7lI5IOrWGyN" role="3clF45" />
      <node concept="3Tm1VV" id="7lI5IOrWGyO" role="1B3o_S" />
      <node concept="3clFbS" id="7lI5IOrWGyP" role="3clF47">
        <node concept="3cpWs8" id="7lI5IOrXE$J" role="3cqZAp">
          <node concept="3cpWsn" id="7lI5IOrXE$K" role="3cpWs9">
            <property role="TrG5h" value="usedLanguages" />
            <node concept="A3Dl8" id="7lI5IOrXE$L" role="1tU5fm">
              <node concept="3uibUv" id="7lI5IOrXE$M" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
              </node>
            </node>
            <node concept="2OqwBi" id="7lI5IOrXE$N" role="33vP2m">
              <node concept="2ShNRf" id="7lI5IOrXE$O" role="2Oq$k0">
                <node concept="1pGfFk" id="7lI5IOrXE$P" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~ModelImports.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelImports" />
                  <node concept="37vLTw" id="7lI5IOrXE$Q" role="37wK5m">
                    <ref role="3cqZAo" node="4TPMxtdDg7r" resolve="model" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7lI5IOrXE$R" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelImports.getUsedLanguages()" resolve="getUsedLanguages" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7lI5IOrXDE8" role="3cqZAp">
          <node concept="1rXfSq" id="7lI5IOrXDE7" role="3clFbG">
            <ref role="37wK5l" node="7lI5IOrPmNM" resolve="syncModuleReferencesToModel" />
            <node concept="37vLTw" id="1DfnvxVzEKY" role="37wK5m">
              <ref role="3cqZAo" node="1DfnvxVzyzf" resolve="tree" />
            </node>
            <node concept="Xl_RD" id="7lI5IOrXEtg" role="37wK5m">
              <property role="Xl_RC" value="usedLanguages" />
            </node>
            <node concept="2OqwBi" id="7lI5IOrXFiP" role="37wK5m">
              <node concept="37vLTw" id="7lI5IOrXFiQ" role="2Oq$k0">
                <ref role="3cqZAo" node="7lI5IOrXE$K" resolve="usedLanguages" />
              </node>
              <node concept="3$u5V9" id="7lI5IOrXFiR" role="2OqNvi">
                <node concept="1bVj0M" id="7lI5IOrXFiS" role="23t8la">
                  <node concept="3clFbS" id="7lI5IOrXFiT" role="1bW5cS">
                    <node concept="3clFbF" id="7lI5IOrXFiU" role="3cqZAp">
                      <node concept="2OqwBi" id="7lI5IOrXFiV" role="3clFbG">
                        <node concept="37vLTw" id="7lI5IOrXFiW" role="2Oq$k0">
                          <ref role="3cqZAo" node="7lI5IOrXFiY" resolve="it" />
                        </node>
                        <node concept="liA8E" id="7lI5IOrXFiX" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SLanguage.getSourceModuleReference()" resolve="getSourceModuleReference" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="7lI5IOrXFiY" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="7lI5IOrXFiZ" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1bVj0M" id="7lI5IOrXFU7" role="37wK5m">
              <node concept="37vLTG" id="7lI5IOrXFZ_" role="1bW2Oz">
                <property role="TrG5h" value="toRemove" />
                <node concept="3uibUv" id="7lI5IOrXGi_" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
                </node>
              </node>
              <node concept="3clFbS" id="7lI5IOrXFU9" role="1bW5cS">
                <node concept="3clFbF" id="7lI5IOrXGKf" role="3cqZAp">
                  <node concept="2OqwBi" id="7lI5IOrXJIV" role="3clFbG">
                    <node concept="2ShNRf" id="7lI5IOrXGKd" role="2Oq$k0">
                      <node concept="1pGfFk" id="7lI5IOrXIwF" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~ModelImports.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelImports" />
                        <node concept="37vLTw" id="7lI5IOrXIXH" role="37wK5m">
                          <ref role="3cqZAo" node="4TPMxtdDg7r" resolve="model" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7lI5IOrXKrz" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~ModelImports.removeUsedLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="removeUsedLanguage" />
                      <node concept="2YIFZM" id="7lI5IOrXLCb" role="37wK5m">
                        <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getLanguage(org.jetbrains.mps.openapi.module.SModuleReference)" resolve="getLanguage" />
                        <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                        <node concept="37vLTw" id="7lI5IOrXLTM" role="37wK5m">
                          <ref role="3cqZAo" node="7lI5IOrXFZ_" resolve="toRemove" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1bVj0M" id="7lI5IOrXLZb" role="37wK5m">
              <node concept="37vLTG" id="7lI5IOrXLZc" role="1bW2Oz">
                <property role="TrG5h" value="toAdd" />
                <node concept="3uibUv" id="7lI5IOrXLZd" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
                </node>
              </node>
              <node concept="3clFbS" id="7lI5IOrXLZe" role="1bW5cS">
                <node concept="3clFbF" id="7lI5IOrXLZf" role="3cqZAp">
                  <node concept="2OqwBi" id="7lI5IOrXLZg" role="3clFbG">
                    <node concept="2ShNRf" id="7lI5IOrXLZh" role="2Oq$k0">
                      <node concept="1pGfFk" id="7lI5IOrXLZi" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~ModelImports.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelImports" />
                        <node concept="37vLTw" id="7lI5IOrXLZj" role="37wK5m">
                          <ref role="3cqZAo" node="4TPMxtdDg7r" resolve="model" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7lI5IOrXLZk" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~ModelImports.addUsedLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="addUsedLanguage" />
                      <node concept="2YIFZM" id="7lI5IOrXLZl" role="37wK5m">
                        <ref role="37wK5l" to="2k9e:~MetaAdapterFactory.getLanguage(org.jetbrains.mps.openapi.module.SModuleReference)" resolve="getLanguage" />
                        <ref role="1Pybhc" to="2k9e:~MetaAdapterFactory" resolve="MetaAdapterFactory" />
                        <node concept="37vLTw" id="7lI5IOrXLZm" role="37wK5m">
                          <ref role="3cqZAo" node="7lI5IOrXLZc" resolve="toAdd" />
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
    <node concept="2tJIrI" id="7lI5IOrYahG" role="jymVt" />
    <node concept="3clFb_" id="7lI5IOrXN3f" role="jymVt">
      <property role="TrG5h" value="syncUsedDevkitsToModel" />
      <node concept="37vLTG" id="1DfnvxVzpuo" role="3clF46">
        <property role="TrG5h" value="tree" />
        <node concept="3uibUv" id="1DfnvxVztV$" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
        </node>
      </node>
      <node concept="3cqZAl" id="7lI5IOrXN3g" role="3clF45" />
      <node concept="3Tm1VV" id="7lI5IOrXN3h" role="1B3o_S" />
      <node concept="3clFbS" id="7lI5IOrXN3i" role="3clF47">
        <node concept="3clFbF" id="7lI5IOrXN3s" role="3cqZAp">
          <node concept="1rXfSq" id="7lI5IOrXN3t" role="3clFbG">
            <ref role="37wK5l" node="7lI5IOrPmNM" resolve="syncModuleReferencesToModel" />
            <node concept="37vLTw" id="1DfnvxVzwzV" role="37wK5m">
              <ref role="3cqZAo" node="1DfnvxVzpuo" resolve="tree" />
            </node>
            <node concept="Xl_RD" id="7lI5IOrXN3u" role="37wK5m">
              <property role="Xl_RC" value="usedDevkits" />
            </node>
            <node concept="2OqwBi" id="7lI5IOrY4os" role="37wK5m">
              <node concept="2ShNRf" id="7lI5IOrY4ot" role="2Oq$k0">
                <node concept="1pGfFk" id="7lI5IOrY4ou" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~ModelImports.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelImports" />
                  <node concept="37vLTw" id="7lI5IOrY4ov" role="37wK5m">
                    <ref role="3cqZAo" node="4TPMxtdDg7r" resolve="model" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7lI5IOrY4ow" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelImports.getUsedDevKits()" resolve="getUsedDevKits" />
              </node>
            </node>
            <node concept="1bVj0M" id="7lI5IOrXN3E" role="37wK5m">
              <node concept="37vLTG" id="7lI5IOrXN3F" role="1bW2Oz">
                <property role="TrG5h" value="toRemove" />
                <node concept="3uibUv" id="7lI5IOrXN3G" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
                </node>
              </node>
              <node concept="3clFbS" id="7lI5IOrXN3H" role="1bW5cS">
                <node concept="3clFbF" id="7lI5IOrXN3I" role="3cqZAp">
                  <node concept="2OqwBi" id="7lI5IOrXN3J" role="3clFbG">
                    <node concept="1eOMI4" id="7lI5IOrY7N0" role="2Oq$k0">
                      <node concept="10QFUN" id="7lI5IOrY7MZ" role="1eOMHV">
                        <node concept="37vLTw" id="7lI5IOrY7MY" role="10QFUP">
                          <ref role="3cqZAo" node="4TPMxtdDg7r" resolve="model" />
                        </node>
                        <node concept="3uibUv" id="7lI5IOrY8Fi" role="10QFUM">
                          <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7lI5IOrXN3N" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~SModelInternal.deleteDevKit(org.jetbrains.mps.openapi.module.SModuleReference)" resolve="deleteDevKit" />
                      <node concept="37vLTw" id="7lI5IOrY9k6" role="37wK5m">
                        <ref role="3cqZAo" node="7lI5IOrXN3F" resolve="toRemove" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1bVj0M" id="7lI5IOrXN3Q" role="37wK5m">
              <node concept="37vLTG" id="7lI5IOrXN3R" role="1bW2Oz">
                <property role="TrG5h" value="toAdd" />
                <node concept="3uibUv" id="7lI5IOrXN3S" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
                </node>
              </node>
              <node concept="3clFbS" id="7lI5IOrXN3T" role="1bW5cS">
                <node concept="3clFbF" id="7lI5IOrXN3U" role="3cqZAp">
                  <node concept="2OqwBi" id="7lI5IOrXN3V" role="3clFbG">
                    <node concept="2ShNRf" id="7lI5IOrXN3W" role="2Oq$k0">
                      <node concept="1pGfFk" id="7lI5IOrXN3X" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~ModelImports.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelImports" />
                        <node concept="37vLTw" id="7lI5IOrXN3Y" role="37wK5m">
                          <ref role="3cqZAo" node="4TPMxtdDg7r" resolve="model" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7lI5IOrXN3Z" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~ModelImports.addUsedDevKit(org.jetbrains.mps.openapi.module.SModuleReference)" resolve="addUsedDevKit" />
                      <node concept="37vLTw" id="7lI5IOrY5Ex" role="37wK5m">
                        <ref role="3cqZAo" node="7lI5IOrXN3R" resolve="toAdd" />
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
    <node concept="2tJIrI" id="7lI5IOrWBzJ" role="jymVt" />
    <node concept="3clFb_" id="7lI5IOrPmNM" role="jymVt">
      <property role="TrG5h" value="syncModuleReferencesToModel" />
      <node concept="37vLTG" id="1DfnvxVyObV" role="3clF46">
        <property role="TrG5h" value="tree" />
        <node concept="3uibUv" id="1DfnvxVyVEo" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
        </node>
      </node>
      <node concept="37vLTG" id="7lI5IOrUXnc" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="7lI5IOrV4z1" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7lI5IOrVlCz" role="3clF46">
        <property role="TrG5h" value="existingImports" />
        <node concept="A3Dl8" id="7lI5IOrVrfX" role="1tU5fm">
          <node concept="3uibUv" id="7lI5IOrVucf" role="A3Ik2">
            <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7lI5IOrVOj6" role="3clF46">
        <property role="TrG5h" value="removeImport" />
        <node concept="1ajhzC" id="7lI5IOrVVU7" role="1tU5fm">
          <node concept="3uibUv" id="7lI5IOrW2cH" role="1ajw0F">
            <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
          </node>
          <node concept="3cqZAl" id="7lI5IOrW3nr" role="1ajl9A" />
        </node>
      </node>
      <node concept="37vLTG" id="7lI5IOrW8AO" role="3clF46">
        <property role="TrG5h" value="addImport" />
        <node concept="1ajhzC" id="7lI5IOrWglg" role="1tU5fm">
          <node concept="3uibUv" id="7lI5IOrWm$b" role="1ajw0F">
            <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
          </node>
          <node concept="3cqZAl" id="7lI5IOrWisZ" role="1ajl9A" />
        </node>
      </node>
      <node concept="3cqZAl" id="7lI5IOrPmNO" role="3clF45" />
      <node concept="3Tm1VV" id="7lI5IOrPmNP" role="1B3o_S" />
      <node concept="3clFbS" id="7lI5IOrPmNQ" role="3clF47">
        <node concept="3cpWs8" id="7lI5IOrVkEV" role="3cqZAp">
          <node concept="3cpWsn" id="7lI5IOrVkEW" role="3cpWs9">
            <property role="TrG5h" value="expectedImports" />
            <node concept="A3Dl8" id="7lI5IOrVkEX" role="1tU5fm">
              <node concept="3uibUv" id="1yReInOy$v" role="A3Ik2">
                <ref role="3uigEE" to="wyt6:~Long" resolve="Long" />
              </node>
            </node>
            <node concept="2OqwBi" id="1DfnvxVz3ci" role="33vP2m">
              <node concept="37vLTw" id="1DfnvxVz1QN" role="2Oq$k0">
                <ref role="3cqZAo" node="1DfnvxVyObV" resolve="tree" />
              </node>
              <node concept="liA8E" id="1DfnvxVz4sW" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~ITree.getChildren(long,java.lang.String)" resolve="getChildren" />
                <node concept="37vLTw" id="1DfnvxVz5dq" role="37wK5m">
                  <ref role="3cqZAo" node="5D5xac1t4Do" resolve="modelNodeId" />
                </node>
                <node concept="37vLTw" id="1DfnvxVz70W" role="37wK5m">
                  <ref role="3cqZAo" node="7lI5IOrUXnc" resolve="role" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7lI5IOrVluw" role="3cqZAp" />
        <node concept="3cpWs8" id="7lI5IOrVy3B" role="3cqZAp">
          <node concept="3cpWsn" id="7lI5IOrVy3C" role="3cpWs9">
            <property role="TrG5h" value="missingImports" />
            <node concept="A3Dl8" id="7lI5IOrVy3D" role="1tU5fm">
              <node concept="3uibUv" id="1yReInOzg7" role="A3Ik2">
                <ref role="3uigEE" to="wyt6:~Long" resolve="Long" />
              </node>
            </node>
            <node concept="2OqwBi" id="7lI5IOrVy3F" role="33vP2m">
              <node concept="2OqwBi" id="7lI5IOrVy3G" role="2Oq$k0">
                <node concept="37vLTw" id="7lI5IOrVDUF" role="2Oq$k0">
                  <ref role="3cqZAo" node="7lI5IOrVkEW" resolve="expectedImports" />
                </node>
                <node concept="3zZkjj" id="7lI5IOrVy3I" role="2OqNvi">
                  <node concept="1bVj0M" id="7lI5IOrVy3J" role="23t8la">
                    <node concept="3clFbS" id="7lI5IOrVy3K" role="1bW5cS">
                      <node concept="3clFbF" id="7lI5IOrVy3L" role="3cqZAp">
                        <node concept="3fqX7Q" id="7lI5IOrVy3M" role="3clFbG">
                          <node concept="2OqwBi" id="7lI5IOrVy3N" role="3fr31v">
                            <node concept="2OqwBi" id="7lI5IOrVy3O" role="2Oq$k0">
                              <node concept="37vLTw" id="7lI5IOrVFk0" role="2Oq$k0">
                                <ref role="3cqZAo" node="7lI5IOrVlCz" resolve="existingImports" />
                              </node>
                              <node concept="3$u5V9" id="7lI5IOrVy3Q" role="2OqNvi">
                                <node concept="1bVj0M" id="7lI5IOrVy3R" role="23t8la">
                                  <node concept="3clFbS" id="7lI5IOrVy3S" role="1bW5cS">
                                    <node concept="3clFbF" id="7lI5IOrVy3T" role="3cqZAp">
                                      <node concept="2OqwBi" id="7lI5IOrVy3U" role="3clFbG">
                                        <node concept="2OqwBi" id="7lI5IOrVy3V" role="2Oq$k0">
                                          <node concept="37vLTw" id="7lI5IOrVy3W" role="2Oq$k0">
                                            <ref role="3cqZAo" node="7lI5IOrVy3Z" resolve="it" />
                                          </node>
                                          <node concept="liA8E" id="7lI5IOrVy3X" role="2OqNvi">
                                            <ref role="37wK5l" to="lui2:~SModuleReference.getModuleId()" resolve="getModuleId" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="7lI5IOrVy3Y" role="2OqNvi">
                                          <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="7lI5IOrVy3Z" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="7lI5IOrVy40" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3JPx81" id="7lI5IOrVy41" role="2OqNvi">
                              <node concept="2OqwBi" id="1DfnvxVzaVR" role="25WWJ7">
                                <node concept="37vLTw" id="1DfnvxVz9xA" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1DfnvxVyObV" resolve="tree" />
                                </node>
                                <node concept="liA8E" id="1DfnvxVzc4h" role="2OqNvi">
                                  <ref role="37wK5l" to="jks5:~ITree.getProperty(long,java.lang.String)" resolve="getProperty" />
                                  <node concept="37vLTw" id="1DfnvxVzdG0" role="37wK5m">
                                    <ref role="3cqZAo" node="7lI5IOrVy46" resolve="it" />
                                  </node>
                                  <node concept="2OqwBi" id="4$UNf1h8VUL" role="37wK5m">
                                    <node concept="355D3s" id="4$UNf1h8VUM" role="2Oq$k0">
                                      <ref role="355D3t" to="w7di:4$UNf1h8MVy" resolve="UsedModule" />
                                      <ref role="355D3u" to="w7di:4$UNf1h8MXr" resolve="id" />
                                    </node>
                                    <node concept="liA8E" id="4$UNf1h8VUN" role="2OqNvi">
                                      <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="7lI5IOrVy46" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="7lI5IOrVy47" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="7lI5IOrVy48" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7lI5IOrVy35" role="3cqZAp">
          <node concept="3cpWsn" id="7lI5IOrVy36" role="3cpWs9">
            <property role="TrG5h" value="unexpectedImports" />
            <node concept="A3Dl8" id="7lI5IOrVy37" role="1tU5fm">
              <node concept="3uibUv" id="7lI5IOrVy38" role="A3Ik2">
                <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
              </node>
            </node>
            <node concept="2OqwBi" id="7lI5IOrVy39" role="33vP2m">
              <node concept="2OqwBi" id="7lI5IOrVy3a" role="2Oq$k0">
                <node concept="37vLTw" id="7lI5IOrVAIM" role="2Oq$k0">
                  <ref role="3cqZAo" node="7lI5IOrVlCz" resolve="existingImports" />
                </node>
                <node concept="3zZkjj" id="7lI5IOrVy3c" role="2OqNvi">
                  <node concept="1bVj0M" id="7lI5IOrVy3d" role="23t8la">
                    <node concept="3clFbS" id="7lI5IOrVy3e" role="1bW5cS">
                      <node concept="3clFbF" id="7lI5IOrVy3f" role="3cqZAp">
                        <node concept="3fqX7Q" id="7lI5IOrVy3g" role="3clFbG">
                          <node concept="2OqwBi" id="7lI5IOrVy3h" role="3fr31v">
                            <node concept="2OqwBi" id="7lI5IOrVy3i" role="2Oq$k0">
                              <node concept="37vLTw" id="7lI5IOrVCey" role="2Oq$k0">
                                <ref role="3cqZAo" node="7lI5IOrVkEW" resolve="expectedImports" />
                              </node>
                              <node concept="3$u5V9" id="7lI5IOrVy3k" role="2OqNvi">
                                <node concept="1bVj0M" id="7lI5IOrVy3l" role="23t8la">
                                  <node concept="3clFbS" id="7lI5IOrVy3m" role="1bW5cS">
                                    <node concept="3clFbF" id="7lI5IOrVy3n" role="3cqZAp">
                                      <node concept="2OqwBi" id="1DfnvxVzeV3" role="3clFbG">
                                        <node concept="37vLTw" id="1DfnvxVzem$" role="2Oq$k0">
                                          <ref role="3cqZAo" node="1DfnvxVyObV" resolve="tree" />
                                        </node>
                                        <node concept="liA8E" id="1DfnvxVzg1b" role="2OqNvi">
                                          <ref role="37wK5l" to="jks5:~ITree.getProperty(long,java.lang.String)" resolve="getProperty" />
                                          <node concept="37vLTw" id="1DfnvxVzh_$" role="37wK5m">
                                            <ref role="3cqZAo" node="7lI5IOrVy3s" resolve="it" />
                                          </node>
                                          <node concept="2OqwBi" id="4$UNf1h8UYo" role="37wK5m">
                                            <node concept="355D3s" id="4$UNf1h8TMP" role="2Oq$k0">
                                              <ref role="355D3t" to="w7di:4$UNf1h8MVy" resolve="UsedModule" />
                                              <ref role="355D3u" to="w7di:4$UNf1h8MXr" resolve="id" />
                                            </node>
                                            <node concept="liA8E" id="4$UNf1h8VBo" role="2OqNvi">
                                              <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="7lI5IOrVy3s" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="7lI5IOrVy3t" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3JPx81" id="7lI5IOrVy3u" role="2OqNvi">
                              <node concept="2OqwBi" id="7lI5IOrVy3v" role="25WWJ7">
                                <node concept="2OqwBi" id="7lI5IOrVy3w" role="2Oq$k0">
                                  <node concept="37vLTw" id="7lI5IOrVy3x" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7lI5IOrVy3$" resolve="it" />
                                  </node>
                                  <node concept="liA8E" id="7lI5IOrVy3y" role="2OqNvi">
                                    <ref role="37wK5l" to="lui2:~SModuleReference.getModuleId()" resolve="getModuleId" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="7lI5IOrVy3z" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="7lI5IOrVy3$" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="7lI5IOrVy3_" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="7lI5IOrVy3A" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7lI5IOrVxTN" role="3cqZAp" />
        <node concept="2Gpval" id="7lI5IOrVL_2" role="3cqZAp">
          <node concept="2GrKxI" id="7lI5IOrVL_4" role="2Gsz3X">
            <property role="TrG5h" value="unexpectedimport" />
          </node>
          <node concept="37vLTw" id="7lI5IOrVNQZ" role="2GsD0m">
            <ref role="3cqZAo" node="7lI5IOrVy36" resolve="unexpectedImports" />
          </node>
          <node concept="3clFbS" id="7lI5IOrVL_8" role="2LFqv$">
            <node concept="3clFbF" id="7lI5IOrVYSY" role="3cqZAp">
              <node concept="2OqwBi" id="7lI5IOrVZDR" role="3clFbG">
                <node concept="37vLTw" id="7lI5IOrVYSX" role="2Oq$k0">
                  <ref role="3cqZAo" node="7lI5IOrVOj6" resolve="removeImport" />
                </node>
                <node concept="1Bd96e" id="7lI5IOrVZFU" role="2OqNvi">
                  <node concept="2GrUjf" id="7lI5IOrW13F" role="1BdPVh">
                    <ref role="2Gs0qQ" node="7lI5IOrVL_4" resolve="unexpectedimport" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7lI5IOrVKId" role="3cqZAp" />
        <node concept="2Gpval" id="7lI5IOrW5lf" role="3cqZAp">
          <node concept="2GrKxI" id="7lI5IOrW5lh" role="2Gsz3X">
            <property role="TrG5h" value="missingImport" />
          </node>
          <node concept="37vLTw" id="7lI5IOrW89i" role="2GsD0m">
            <ref role="3cqZAo" node="7lI5IOrVy3C" resolve="missingImports" />
          </node>
          <node concept="3clFbS" id="7lI5IOrW5ll" role="2LFqv$">
            <node concept="3clFbF" id="7lI5IOrWkD6" role="3cqZAp">
              <node concept="2OqwBi" id="7lI5IOrWlq2" role="3clFbG">
                <node concept="37vLTw" id="7lI5IOrWkD5" role="2Oq$k0">
                  <ref role="3cqZAo" node="7lI5IOrW8AO" resolve="addImport" />
                </node>
                <node concept="1Bd96e" id="7lI5IOrWm0o" role="2OqNvi">
                  <node concept="2ShNRf" id="7lI5IOrWq68" role="1BdPVh">
                    <node concept="1pGfFk" id="7lI5IOrWsl7" role="2ShVmc">
                      <ref role="37wK5l" to="w0gx:~ModuleReference.&lt;init&gt;(java.lang.String,org.jetbrains.mps.openapi.module.SModuleId)" resolve="ModuleReference" />
                      <node concept="2OqwBi" id="1DfnvxVzjn0" role="37wK5m">
                        <node concept="37vLTw" id="1DfnvxVziqm" role="2Oq$k0">
                          <ref role="3cqZAo" node="1DfnvxVyObV" resolve="tree" />
                        </node>
                        <node concept="liA8E" id="1DfnvxVzkcR" role="2OqNvi">
                          <ref role="37wK5l" to="jks5:~ITree.getProperty(long,java.lang.String)" resolve="getProperty" />
                          <node concept="2GrUjf" id="1DfnvxVzlcn" role="37wK5m">
                            <ref role="2Gs0qQ" node="7lI5IOrW5lh" resolve="missingImport" />
                          </node>
                          <node concept="2OqwBi" id="4$UNf1h8XGX" role="37wK5m">
                            <node concept="355D3s" id="4$UNf1h8XGY" role="2Oq$k0">
                              <ref role="355D3t" to="w7di:4$UNf1h8MVy" resolve="UsedModule" />
                              <ref role="355D3u" to="w7di:4$UNf1h8MXt" resolve="name" />
                            </node>
                            <node concept="liA8E" id="4$UNf1h8XGZ" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2YIFZM" id="7lI5IOrWxMR" role="37wK5m">
                        <ref role="37wK5l" to="z1c3:~ModuleId.fromString(java.lang.String)" resolve="fromString" />
                        <ref role="1Pybhc" to="z1c3:~ModuleId" resolve="ModuleId" />
                        <node concept="2OqwBi" id="1DfnvxVzmUE" role="37wK5m">
                          <node concept="37vLTw" id="1DfnvxVzmUF" role="2Oq$k0">
                            <ref role="3cqZAo" node="1DfnvxVyObV" resolve="tree" />
                          </node>
                          <node concept="liA8E" id="1DfnvxVzmUG" role="2OqNvi">
                            <ref role="37wK5l" to="jks5:~ITree.getProperty(long,java.lang.String)" resolve="getProperty" />
                            <node concept="2GrUjf" id="1DfnvxVzmUH" role="37wK5m">
                              <ref role="2Gs0qQ" node="7lI5IOrW5lh" resolve="missingImport" />
                            </node>
                            <node concept="2OqwBi" id="4$UNf1h8Wf5" role="37wK5m">
                              <node concept="355D3s" id="4$UNf1h8Wf6" role="2Oq$k0">
                                <ref role="355D3t" to="w7di:4$UNf1h8MVy" resolve="UsedModule" />
                                <ref role="355D3u" to="w7di:4$UNf1h8MXr" resolve="id" />
                              </node>
                              <node concept="liA8E" id="4$UNf1h8Wf7" role="2OqNvi">
                                <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
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
    <node concept="2tJIrI" id="7lI5IOrQawN" role="jymVt" />
    <node concept="3clFb_" id="1DfnvxVy6BB" role="jymVt">
      <property role="TrG5h" value="syncModelPropertiesFromModel" />
      <node concept="3cqZAl" id="1DfnvxVy6BD" role="3clF45" />
      <node concept="3Tm1VV" id="1DfnvxVy6BE" role="1B3o_S" />
      <node concept="3clFbS" id="1DfnvxVy6BF" role="3clF47">
        <node concept="3clFbF" id="1DfnvxVyHsO" role="3cqZAp">
          <node concept="2OqwBi" id="1DfnvxVyHsP" role="3clFbG">
            <node concept="2OqwBi" id="1DfnvxVyHsQ" role="2Oq$k0">
              <node concept="37vLTw" id="1DfnvxVyHsR" role="2Oq$k0">
                <ref role="3cqZAo" node="4TPMxtdD8F5" resolve="activeBranch" />
              </node>
              <node concept="liA8E" id="1DfnvxVyHsS" role="2OqNvi">
                <ref role="37wK5l" to="5440:~IIndirectBranch.getBranch()" resolve="getBranch" />
              </node>
            </node>
            <node concept="liA8E" id="1DfnvxVyHsT" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~IBranch.runWrite(kotlin.jvm.functions.Function0)" resolve="runWrite" />
              <node concept="1bVj0M" id="1DfnvxVyHsU" role="37wK5m">
                <node concept="3clFbS" id="1DfnvxVyHsV" role="1bW5cS">
                  <node concept="3clFbF" id="1DfnvxVyJiN" role="3cqZAp">
                    <node concept="1rXfSq" id="1DfnvxVyJiL" role="3clFbG">
                      <ref role="37wK5l" node="7lI5IOrPX5R" resolve="syncUsedLanguagesFromModel" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="1DfnvxVyKrP" role="3cqZAp">
                    <node concept="1rXfSq" id="1DfnvxVyKrN" role="3clFbG">
                      <ref role="37wK5l" node="7lI5IOrSQ6O" resolve="syncUsedDevkitsFromModel" />
                    </node>
                  </node>
                  <node concept="3cpWs6" id="1yReInNCdI" role="3cqZAp">
                    <node concept="10M0yZ" id="1yReInND4L" role="3cqZAk">
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
    </node>
    <node concept="2tJIrI" id="1DfnvxVxXo5" role="jymVt" />
    <node concept="3clFb_" id="7lI5IOrPX5R" role="jymVt">
      <property role="TrG5h" value="syncUsedLanguagesFromModel" />
      <node concept="3cqZAl" id="7lI5IOrPX5S" role="3clF45" />
      <node concept="3Tm1VV" id="7lI5IOrPX5T" role="1B3o_S" />
      <node concept="3clFbS" id="7lI5IOrPX5U" role="3clF47">
        <node concept="3clFbF" id="1DfnvxVxNMG" role="3cqZAp">
          <node concept="2OqwBi" id="1DfnvxVxPI3" role="3clFbG">
            <node concept="2OqwBi" id="1DfnvxVxOGw" role="2Oq$k0">
              <node concept="37vLTw" id="1DfnvxVxNME" role="2Oq$k0">
                <ref role="3cqZAo" node="4TPMxtdD8F5" resolve="activeBranch" />
              </node>
              <node concept="liA8E" id="1DfnvxVxPyW" role="2OqNvi">
                <ref role="37wK5l" to="5440:~IIndirectBranch.getBranch()" resolve="getBranch" />
              </node>
            </node>
            <node concept="liA8E" id="1DfnvxVxQA_" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~IBranch.runWrite(kotlin.jvm.functions.Function0)" resolve="runWrite" />
              <node concept="1bVj0M" id="1DfnvxVxR3w" role="37wK5m">
                <node concept="3clFbS" id="1DfnvxVxR3x" role="1bW5cS">
                  <node concept="3cpWs8" id="7lI5IOrRlsc" role="3cqZAp">
                    <node concept="3cpWsn" id="7lI5IOrRlsd" role="3cpWs9">
                      <property role="TrG5h" value="usedLanguages" />
                      <node concept="A3Dl8" id="7lI5IOrUPp5" role="1tU5fm">
                        <node concept="3uibUv" id="7lI5IOrUPp7" role="A3Ik2">
                          <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7lI5IOrRlsy" role="33vP2m">
                        <node concept="2ShNRf" id="7lI5IOrRlsz" role="2Oq$k0">
                          <node concept="1pGfFk" id="7lI5IOrRls$" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~ModelImports.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelImports" />
                            <node concept="37vLTw" id="7lI5IOrRls_" role="37wK5m">
                              <ref role="3cqZAo" node="4TPMxtdDg7r" resolve="model" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7lI5IOrRlsA" role="2OqNvi">
                          <ref role="37wK5l" to="w1kc:~ModelImports.getUsedLanguages()" resolve="getUsedLanguages" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7lI5IOrUHya" role="3cqZAp">
                    <node concept="1rXfSq" id="7lI5IOrUHy8" role="3clFbG">
                      <ref role="37wK5l" node="7lI5IOrTyQI" resolve="syncModuleReferencesFromModel" />
                      <node concept="Xl_RD" id="7lI5IOrUIY2" role="37wK5m">
                        <property role="Xl_RC" value="usedLanguages" />
                      </node>
                      <node concept="2OqwBi" id="7lI5IOrURI5" role="37wK5m">
                        <node concept="37vLTw" id="7lI5IOrURkC" role="2Oq$k0">
                          <ref role="3cqZAo" node="7lI5IOrRlsd" resolve="usedLanguages" />
                        </node>
                        <node concept="3$u5V9" id="7lI5IOrURYy" role="2OqNvi">
                          <node concept="1bVj0M" id="7lI5IOrURY$" role="23t8la">
                            <node concept="3clFbS" id="7lI5IOrURY_" role="1bW5cS">
                              <node concept="3clFbF" id="7lI5IOrUSfQ" role="3cqZAp">
                                <node concept="2OqwBi" id="7lI5IOrUSny" role="3clFbG">
                                  <node concept="37vLTw" id="7lI5IOrUSfP" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7lI5IOrURYA" resolve="it" />
                                  </node>
                                  <node concept="liA8E" id="7lI5IOrUSxB" role="2OqNvi">
                                    <ref role="37wK5l" to="c17a:~SLanguage.getSourceModuleReference()" resolve="getSourceModuleReference" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="7lI5IOrURYA" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="7lI5IOrURYB" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="1yReInND9X" role="3cqZAp">
                    <node concept="10M0yZ" id="1yReInND9Y" role="3cqZAk">
                      <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                      <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7lI5IOrTaMP" role="jymVt" />
    <node concept="3clFb_" id="7lI5IOrSQ6O" role="jymVt">
      <property role="TrG5h" value="syncUsedDevkitsFromModel" />
      <node concept="3cqZAl" id="7lI5IOrSQ6P" role="3clF45" />
      <node concept="3Tm1VV" id="7lI5IOrSQ6Q" role="1B3o_S" />
      <node concept="3clFbS" id="7lI5IOrSQ6R" role="3clF47">
        <node concept="3clFbF" id="1DfnvxVxU1j" role="3cqZAp">
          <node concept="2OqwBi" id="1DfnvxVxU1k" role="3clFbG">
            <node concept="2OqwBi" id="1DfnvxVxU1l" role="2Oq$k0">
              <node concept="37vLTw" id="1DfnvxVxU1m" role="2Oq$k0">
                <ref role="3cqZAo" node="4TPMxtdD8F5" resolve="activeBranch" />
              </node>
              <node concept="liA8E" id="1DfnvxVxU1n" role="2OqNvi">
                <ref role="37wK5l" to="5440:~IIndirectBranch.getBranch()" resolve="getBranch" />
              </node>
            </node>
            <node concept="liA8E" id="1DfnvxVxU1o" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~IBranch.runWrite(kotlin.jvm.functions.Function0)" resolve="runWrite" />
              <node concept="1bVj0M" id="1DfnvxVxU1p" role="37wK5m">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="1DfnvxVxU1q" role="1bW5cS">
                  <node concept="3clFbF" id="7lI5IOrUD1Z" role="3cqZAp">
                    <node concept="1rXfSq" id="7lI5IOrUD1X" role="3clFbG">
                      <ref role="37wK5l" node="7lI5IOrTyQI" resolve="syncModuleReferencesFromModel" />
                      <node concept="Xl_RD" id="7lI5IOrUEtw" role="37wK5m">
                        <property role="Xl_RC" value="usedDevkits" />
                      </node>
                      <node concept="2OqwBi" id="7lI5IOrUEyz" role="37wK5m">
                        <node concept="2ShNRf" id="7lI5IOrUEy$" role="2Oq$k0">
                          <node concept="1pGfFk" id="7lI5IOrUEy_" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~ModelImports.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel)" resolve="ModelImports" />
                            <node concept="37vLTw" id="7lI5IOrUEyA" role="37wK5m">
                              <ref role="3cqZAo" node="4TPMxtdDg7r" resolve="model" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7lI5IOrUEyB" role="2OqNvi">
                          <ref role="37wK5l" to="w1kc:~ModelImports.getUsedDevKits()" resolve="getUsedDevKits" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="1yReInNDkx" role="3cqZAp">
                    <node concept="10M0yZ" id="1yReInNDky" role="3cqZAk">
                      <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                      <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7lI5IOrUvvG" role="jymVt" />
    <node concept="3clFb_" id="7lI5IOrTyQI" role="jymVt">
      <property role="TrG5h" value="syncModuleReferencesFromModel" />
      <node concept="37vLTG" id="7lI5IOrU7eZ" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="7lI5IOrU7iP" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7lI5IOrUfxW" role="3clF46">
        <property role="TrG5h" value="expectedImports" />
        <node concept="A3Dl8" id="7lI5IOrUoaH" role="1tU5fm">
          <node concept="3uibUv" id="7lI5IOrUoZT" role="A3Ik2">
            <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7lI5IOrTyQJ" role="3clF45" />
      <node concept="3Tm1VV" id="7lI5IOrTyQK" role="1B3o_S" />
      <node concept="3clFbS" id="7lI5IOrTyQL" role="3clF47">
        <node concept="3cpWs8" id="7lI5IOrTyQM" role="3cqZAp">
          <node concept="3cpWsn" id="7lI5IOrTyQN" role="3cpWs9">
            <property role="TrG5h" value="modelNode" />
            <node concept="3uibUv" id="7lI5IOrTyQO" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
            </node>
            <node concept="2ShNRf" id="7lI5IOrTyQP" role="33vP2m">
              <node concept="1pGfFk" id="7lI5IOrTyQQ" role="2ShVmc">
                <ref role="37wK5l" to="jks5:~PNodeAdapter.&lt;init&gt;(long,org.modelix.model.api.IBranch)" resolve="PNodeAdapter" />
                <node concept="37vLTw" id="7lI5IOrTyQR" role="37wK5m">
                  <ref role="3cqZAo" node="5D5xac1t4Do" resolve="modelNodeId" />
                </node>
                <node concept="2OqwBi" id="7lI5IOrTyQS" role="37wK5m">
                  <node concept="37vLTw" id="7lI5IOrTyQT" role="2Oq$k0">
                    <ref role="3cqZAo" node="4TPMxtdD8F5" resolve="activeBranch" />
                  </node>
                  <node concept="liA8E" id="7lI5IOrTyQU" role="2OqNvi">
                    <ref role="37wK5l" to="5440:~IIndirectBranch.getBranch()" resolve="getBranch" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7lI5IOrTyR7" role="3cqZAp">
          <node concept="3cpWsn" id="7lI5IOrTyR8" role="3cpWs9">
            <property role="TrG5h" value="existingImports" />
            <node concept="A3Dl8" id="7lI5IOrTyR9" role="1tU5fm">
              <node concept="3uibUv" id="7lI5IOrTyRa" role="A3Ik2">
                <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
              </node>
            </node>
            <node concept="2OqwBi" id="7lI5IOrTyRb" role="33vP2m">
              <node concept="37vLTw" id="7lI5IOrTyRc" role="2Oq$k0">
                <ref role="3cqZAo" node="7lI5IOrTyQN" resolve="modelNode" />
              </node>
              <node concept="liA8E" id="7lI5IOrTyRd" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~INode.getChildren(java.lang.String)" resolve="getChildren" />
                <node concept="37vLTw" id="7lI5IOrUsMK" role="37wK5m">
                  <ref role="3cqZAo" node="7lI5IOrU7eZ" resolve="role" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7lI5IOrTyRf" role="3cqZAp">
          <node concept="3cpWsn" id="7lI5IOrTyRg" role="3cpWs9">
            <property role="TrG5h" value="missingImports" />
            <node concept="A3Dl8" id="7lI5IOrTyRh" role="1tU5fm">
              <node concept="3uibUv" id="7lI5IOrTyRi" role="A3Ik2">
                <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
              </node>
            </node>
            <node concept="2OqwBi" id="7lI5IOrTyRj" role="33vP2m">
              <node concept="2OqwBi" id="7lI5IOrTyRk" role="2Oq$k0">
                <node concept="37vLTw" id="7lI5IOrTyRl" role="2Oq$k0">
                  <ref role="3cqZAo" node="7lI5IOrUfxW" resolve="expectedImports" />
                </node>
                <node concept="3zZkjj" id="7lI5IOrTyRm" role="2OqNvi">
                  <node concept="1bVj0M" id="7lI5IOrTyRn" role="23t8la">
                    <node concept="3clFbS" id="7lI5IOrTyRo" role="1bW5cS">
                      <node concept="3clFbF" id="7lI5IOrTyRp" role="3cqZAp">
                        <node concept="3fqX7Q" id="7lI5IOrTyRq" role="3clFbG">
                          <node concept="2OqwBi" id="7lI5IOrTyRr" role="3fr31v">
                            <node concept="2OqwBi" id="7lI5IOrTyRs" role="2Oq$k0">
                              <node concept="37vLTw" id="7lI5IOrTyRt" role="2Oq$k0">
                                <ref role="3cqZAo" node="7lI5IOrTyR8" resolve="existingImports" />
                              </node>
                              <node concept="3$u5V9" id="7lI5IOrTyRu" role="2OqNvi">
                                <node concept="1bVj0M" id="7lI5IOrTyRv" role="23t8la">
                                  <node concept="3clFbS" id="7lI5IOrTyRw" role="1bW5cS">
                                    <node concept="3clFbF" id="7lI5IOrTyRx" role="3cqZAp">
                                      <node concept="2OqwBi" id="7lI5IOrTyRy" role="3clFbG">
                                        <node concept="37vLTw" id="7lI5IOrTyRz" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7lI5IOrTyRA" resolve="it" />
                                        </node>
                                        <node concept="liA8E" id="7lI5IOrTyR$" role="2OqNvi">
                                          <ref role="37wK5l" to="jks5:~INode.getPropertyValue(java.lang.String)" resolve="getPropertyValue" />
                                          <node concept="2OqwBi" id="4$UNf1h8WZQ" role="37wK5m">
                                            <node concept="355D3s" id="4$UNf1h8WZR" role="2Oq$k0">
                                              <ref role="355D3t" to="w7di:4$UNf1h8MVy" resolve="UsedModule" />
                                              <ref role="355D3u" to="w7di:4$UNf1h8MXr" resolve="id" />
                                            </node>
                                            <node concept="liA8E" id="4$UNf1h8WZS" role="2OqNvi">
                                              <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="7lI5IOrTyRA" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="7lI5IOrTyRB" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3JPx81" id="7lI5IOrTyRC" role="2OqNvi">
                              <node concept="2OqwBi" id="7lI5IOrTyRD" role="25WWJ7">
                                <node concept="2OqwBi" id="7lI5IOrTyRE" role="2Oq$k0">
                                  <node concept="37vLTw" id="7lI5IOrTyRF" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7lI5IOrTyRI" resolve="it" />
                                  </node>
                                  <node concept="liA8E" id="7lI5IOrTyRG" role="2OqNvi">
                                    <ref role="37wK5l" to="lui2:~SModuleReference.getModuleId()" resolve="getModuleId" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="7lI5IOrTyRH" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="7lI5IOrTyRI" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="7lI5IOrTyRJ" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="7lI5IOrTyRK" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7lI5IOrTyRL" role="3cqZAp">
          <node concept="3cpWsn" id="7lI5IOrTyRM" role="3cpWs9">
            <property role="TrG5h" value="unexpectedImports" />
            <node concept="A3Dl8" id="7lI5IOrVwMs" role="1tU5fm">
              <node concept="3uibUv" id="7lI5IOrVwMu" role="A3Ik2">
                <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
              </node>
            </node>
            <node concept="2OqwBi" id="7lI5IOrTyRP" role="33vP2m">
              <node concept="2OqwBi" id="7lI5IOrTyRQ" role="2Oq$k0">
                <node concept="37vLTw" id="7lI5IOrTyRR" role="2Oq$k0">
                  <ref role="3cqZAo" node="7lI5IOrTyR8" resolve="existingImports" />
                </node>
                <node concept="3zZkjj" id="7lI5IOrTyRS" role="2OqNvi">
                  <node concept="1bVj0M" id="7lI5IOrTyRT" role="23t8la">
                    <node concept="3clFbS" id="7lI5IOrTyRU" role="1bW5cS">
                      <node concept="3clFbF" id="7lI5IOrTyRV" role="3cqZAp">
                        <node concept="3fqX7Q" id="7lI5IOrTyRW" role="3clFbG">
                          <node concept="2OqwBi" id="7lI5IOrTyRX" role="3fr31v">
                            <node concept="2OqwBi" id="7lI5IOrTyRY" role="2Oq$k0">
                              <node concept="37vLTw" id="7lI5IOrTyRZ" role="2Oq$k0">
                                <ref role="3cqZAo" node="7lI5IOrUfxW" resolve="expectedImports" />
                              </node>
                              <node concept="3$u5V9" id="7lI5IOrTyS0" role="2OqNvi">
                                <node concept="1bVj0M" id="7lI5IOrTyS1" role="23t8la">
                                  <node concept="3clFbS" id="7lI5IOrTyS2" role="1bW5cS">
                                    <node concept="3clFbF" id="7lI5IOrTyS3" role="3cqZAp">
                                      <node concept="2OqwBi" id="7lI5IOrTyS4" role="3clFbG">
                                        <node concept="2OqwBi" id="7lI5IOrTyS5" role="2Oq$k0">
                                          <node concept="37vLTw" id="7lI5IOrTyS6" role="2Oq$k0">
                                            <ref role="3cqZAo" node="7lI5IOrTyS9" resolve="it" />
                                          </node>
                                          <node concept="liA8E" id="7lI5IOrTyS7" role="2OqNvi">
                                            <ref role="37wK5l" to="lui2:~SModuleReference.getModuleId()" resolve="getModuleId" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="7lI5IOrTyS8" role="2OqNvi">
                                          <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="7lI5IOrTyS9" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="7lI5IOrTySa" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3JPx81" id="7lI5IOrTySb" role="2OqNvi">
                              <node concept="2OqwBi" id="7lI5IOrTySc" role="25WWJ7">
                                <node concept="37vLTw" id="7lI5IOrTySd" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7lI5IOrTySg" resolve="it" />
                                </node>
                                <node concept="liA8E" id="7lI5IOrTySe" role="2OqNvi">
                                  <ref role="37wK5l" to="jks5:~INode.getPropertyValue(java.lang.String)" resolve="getPropertyValue" />
                                  <node concept="2OqwBi" id="4$UNf1h8Wso" role="37wK5m">
                                    <node concept="355D3s" id="4$UNf1h8Wsp" role="2Oq$k0">
                                      <ref role="355D3t" to="w7di:4$UNf1h8MVy" resolve="UsedModule" />
                                      <ref role="355D3u" to="w7di:4$UNf1h8MXr" resolve="id" />
                                    </node>
                                    <node concept="liA8E" id="4$UNf1h8Wsq" role="2OqNvi">
                                      <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="7lI5IOrTySg" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="7lI5IOrTySh" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="7lI5IOrTySi" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7lI5IOrTySj" role="3cqZAp" />
        <node concept="2Gpval" id="7lI5IOrTySk" role="3cqZAp">
          <node concept="2GrKxI" id="7lI5IOrTySl" role="2Gsz3X">
            <property role="TrG5h" value="unexpectedImport" />
          </node>
          <node concept="37vLTw" id="7lI5IOrTySm" role="2GsD0m">
            <ref role="3cqZAo" node="7lI5IOrTyRM" resolve="unexpectedImports" />
          </node>
          <node concept="3clFbS" id="7lI5IOrTySn" role="2LFqv$">
            <node concept="3clFbF" id="7lI5IOrTySo" role="3cqZAp">
              <node concept="2OqwBi" id="7lI5IOrTySp" role="3clFbG">
                <node concept="2OqwBi" id="7lI5IOrTySq" role="2Oq$k0">
                  <node concept="2OqwBi" id="7lI5IOrTySr" role="2Oq$k0">
                    <node concept="37vLTw" id="7lI5IOrTySs" role="2Oq$k0">
                      <ref role="3cqZAo" node="4TPMxtdD8F5" resolve="activeBranch" />
                    </node>
                    <node concept="liA8E" id="7lI5IOrTySt" role="2OqNvi">
                      <ref role="37wK5l" to="5440:~IIndirectBranch.getBranch()" resolve="getBranch" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7lI5IOrTySu" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~IBranch.getWriteTransaction()" resolve="getWriteTransaction" />
                  </node>
                </node>
                <node concept="liA8E" id="7lI5IOrTySv" role="2OqNvi">
                  <ref role="37wK5l" to="jks5:~IWriteTransaction.deleteNode(long)" resolve="deleteNode" />
                  <node concept="2OqwBi" id="7lI5IOrTySw" role="37wK5m">
                    <node concept="1eOMI4" id="7lI5IOrTySx" role="2Oq$k0">
                      <node concept="10QFUN" id="7lI5IOrTySy" role="1eOMHV">
                        <node concept="2GrUjf" id="7lI5IOrTySz" role="10QFUP">
                          <ref role="2Gs0qQ" node="7lI5IOrTySl" resolve="unexpectedImport" />
                        </node>
                        <node concept="3uibUv" id="7lI5IOrTyS$" role="10QFUM">
                          <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7lI5IOrTyS_" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~PNodeAdapter.getNodeId()" resolve="getNodeId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7lI5IOrTySA" role="3cqZAp" />
        <node concept="2Gpval" id="7lI5IOrTySB" role="3cqZAp">
          <node concept="2GrKxI" id="7lI5IOrTySC" role="2Gsz3X">
            <property role="TrG5h" value="missingImport" />
          </node>
          <node concept="37vLTw" id="7lI5IOrTySD" role="2GsD0m">
            <ref role="3cqZAo" node="7lI5IOrTyRg" resolve="missingImports" />
          </node>
          <node concept="3clFbS" id="7lI5IOrTySE" role="2LFqv$">
            <node concept="3cpWs8" id="7lI5IOrTySF" role="3cqZAp">
              <node concept="3cpWsn" id="7lI5IOrTySG" role="3cpWs9">
                <property role="TrG5h" value="importNode" />
                <node concept="3uibUv" id="7lI5IOrTySH" role="1tU5fm">
                  <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                </node>
                <node concept="2OqwBi" id="7lI5IOrTySI" role="33vP2m">
                  <node concept="37vLTw" id="7lI5IOrTySJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="7lI5IOrTyQN" resolve="modelNode" />
                  </node>
                  <node concept="liA8E" id="7lI5IOrTySK" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~INode.addNewChild(java.lang.String,int,org.modelix.model.api.IConcept)" resolve="addNewChild" />
                    <node concept="37vLTw" id="7lI5IOrUuWn" role="37wK5m">
                      <ref role="3cqZAo" node="7lI5IOrU7eZ" resolve="role" />
                    </node>
                    <node concept="3cmrfG" id="7lI5IOrTySM" role="37wK5m">
                      <property role="3cmrfH" value="-1" />
                    </node>
                    <node concept="2YIFZM" id="7lI5IOrTySN" role="37wK5m">
                      <ref role="1Pybhc" to="xxte:5gTrVpGjuL2" resolve="SConceptAdapter" />
                      <ref role="37wK5l" to="xxte:3ECE8iPOmg5" resolve="wrap" />
                      <node concept="35c_gC" id="7lI5IOrTySO" role="37wK5m">
                        <ref role="35c_gD" to="w7di:4$UNf1h8MVy" resolve="UsedModule" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7lI5IOrTySP" role="3cqZAp">
              <node concept="2OqwBi" id="7lI5IOrTySQ" role="3clFbG">
                <node concept="37vLTw" id="7lI5IOrTySR" role="2Oq$k0">
                  <ref role="3cqZAo" node="7lI5IOrTySG" resolve="importNode" />
                </node>
                <node concept="liA8E" id="7lI5IOrTySS" role="2OqNvi">
                  <ref role="37wK5l" to="jks5:~INode.setPropertyValue(java.lang.String,java.lang.String)" resolve="setPropertyValue" />
                  <node concept="2OqwBi" id="4$UNf1h8X$V" role="37wK5m">
                    <node concept="355D3s" id="4$UNf1h8X$W" role="2Oq$k0">
                      <ref role="355D3t" to="w7di:4$UNf1h8MVy" resolve="UsedModule" />
                      <ref role="355D3u" to="w7di:4$UNf1h8MXr" resolve="id" />
                    </node>
                    <node concept="liA8E" id="4$UNf1h8X$X" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7lI5IOrTySU" role="37wK5m">
                    <node concept="2OqwBi" id="7lI5IOrTySV" role="2Oq$k0">
                      <node concept="2GrUjf" id="7lI5IOrTySW" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="7lI5IOrTySC" resolve="missingImport" />
                      </node>
                      <node concept="liA8E" id="7lI5IOrTySX" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModuleReference.getModuleId()" resolve="getModuleId" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7lI5IOrTySY" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7lI5IOrTySZ" role="3cqZAp">
              <node concept="2OqwBi" id="7lI5IOrTyT0" role="3clFbG">
                <node concept="37vLTw" id="7lI5IOrTyT1" role="2Oq$k0">
                  <ref role="3cqZAo" node="7lI5IOrTySG" resolve="importNode" />
                </node>
                <node concept="liA8E" id="7lI5IOrTyT2" role="2OqNvi">
                  <ref role="37wK5l" to="jks5:~INode.setPropertyValue(java.lang.String,java.lang.String)" resolve="setPropertyValue" />
                  <node concept="2OqwBi" id="4$UNf1h8Y6D" role="37wK5m">
                    <node concept="355D3s" id="4$UNf1h8Y6E" role="2Oq$k0">
                      <ref role="355D3t" to="w7di:4$UNf1h8MVy" resolve="UsedModule" />
                      <ref role="355D3u" to="w7di:4$UNf1h8MXt" resolve="name" />
                    </node>
                    <node concept="liA8E" id="4$UNf1h8Y6F" role="2OqNvi">
                      <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7lI5IOrTyT4" role="37wK5m">
                    <node concept="2GrUjf" id="7lI5IOrTyT5" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7lI5IOrTySC" resolve="missingImport" />
                    </node>
                    <node concept="liA8E" id="7lI5IOrTyT6" role="2OqNvi">
                      <ref role="37wK5l" to="lui2:~SModuleReference.getModuleName()" resolve="getModuleName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7lI5IOrPqGz" role="jymVt" />
    <node concept="2tJIrI" id="7lI5IOrPrhR" role="jymVt" />
    <node concept="3clFb_" id="3l$kG67i8x8" role="jymVt">
      <property role="TrG5h" value="getOrCreateNode" />
      <node concept="37vLTG" id="3l$kG67ikeu" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3cpWsb" id="3l$kG67im_X" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3l$kG67imPn" role="3clF46">
        <property role="TrG5h" value="tree" />
        <node concept="3uibUv" id="4TPMxteSGS0" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
        </node>
      </node>
      <node concept="3uibUv" id="3l$kG67ii8q" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3Tmbuc" id="3l$kG67iuHG" role="1B3o_S" />
      <node concept="3clFbS" id="3l$kG67i8xc" role="3clF47">
        <node concept="3clFbJ" id="4TPMxtdwQ1P" role="3cqZAp">
          <node concept="3clFbS" id="4TPMxtdwQ1R" role="3clFbx">
            <node concept="YS8fn" id="4TPMxtdx2Ho" role="3cqZAp">
              <node concept="2ShNRf" id="4TPMxtdx3p9" role="YScLw">
                <node concept="1pGfFk" id="4TPMxtdx5Z_" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="3cpWs3" id="4TPMxtdx7en" role="37wK5m">
                    <node concept="37vLTw" id="4TPMxtdx7U9" role="3uHU7w">
                      <ref role="3cqZAo" node="3l$kG67ikeu" resolve="nodeId" />
                    </node>
                    <node concept="Xl_RD" id="4TPMxtdx6GU" role="3uHU7B">
                      <property role="Xl_RC" value="Invalid ID " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="4TPMxtdwVjG" role="3clFbw">
            <node concept="3clFbC" id="4TPMxtdwZqc" role="3uHU7w">
              <node concept="10M0yZ" id="4TPMxtdx1Ap" role="3uHU7w">
                <ref role="1PxDUh" to="jks5:~ITree" resolve="ITree" />
                <ref role="3cqZAo" to="jks5:~ITree.ROOT_ID" resolve="ROOT_ID" />
              </node>
              <node concept="37vLTw" id="4TPMxtdwWxM" role="3uHU7B">
                <ref role="3cqZAo" node="3l$kG67ikeu" resolve="nodeId" />
              </node>
            </node>
            <node concept="3clFbC" id="4TPMxtdwSuf" role="3uHU7B">
              <node concept="37vLTw" id="4TPMxtdwQMn" role="3uHU7B">
                <ref role="3cqZAo" node="3l$kG67ikeu" resolve="nodeId" />
              </node>
              <node concept="1adDum" id="4TPMxtdwXPb" role="3uHU7w">
                <property role="1adDun" value="0L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3l$kG67ipxd" role="3cqZAp">
          <node concept="2OqwBi" id="3l$kG67ipxf" role="3clFbG">
            <node concept="37vLTw" id="3l$kG67ipxg" role="2Oq$k0">
              <ref role="3cqZAo" node="7Zr9caIEQRr" resolve="nodeMap" />
            </node>
            <node concept="liA8E" id="3l$kG67ipxh" role="2OqNvi">
              <ref role="37wK5l" node="3l$kG67fE3M" resolve="getOrCreateNode" />
              <node concept="37vLTw" id="3l$kG67ipxi" role="37wK5m">
                <ref role="3cqZAo" node="3l$kG67ikeu" resolve="nodeId" />
              </node>
              <node concept="1bVj0M" id="3l$kG67ipxj" role="37wK5m">
                <node concept="3clFbS" id="3l$kG67ipxk" role="1bW5cS">
                  <node concept="3clFbF" id="3l$kG67ipxl" role="3cqZAp">
                    <node concept="2YIFZM" id="3l$kG67ipxm" role="3clFbG">
                      <ref role="1Pybhc" to="xxte:5gTrVpGjuL2" resolve="SConceptAdapter" />
                      <ref role="37wK5l" to="xxte:3ECE8iPIttW" resolve="unwrap" />
                      <node concept="2OqwBi" id="3l$kG67ipxn" role="37wK5m">
                        <node concept="37vLTw" id="3l$kG67ir1a" role="2Oq$k0">
                          <ref role="3cqZAo" node="3l$kG67imPn" resolve="tree" />
                        </node>
                        <node concept="liA8E" id="3l$kG67ipxp" role="2OqNvi">
                          <ref role="37wK5l" to="jks5:~ITree.getConcept(long)" resolve="getConcept" />
                          <node concept="37vLTw" id="3l$kG67ipxq" role="37wK5m">
                            <ref role="3cqZAo" node="3l$kG67ikeu" resolve="nodeId" />
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
    <node concept="2tJIrI" id="3l$kG67i63h" role="jymVt" />
    <node concept="3clFb_" id="4TPMxtdGRYz" role="jymVt">
      <property role="TrG5h" value="syncNode" />
      <node concept="37vLTG" id="4TPMxtdGYQl" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3cpWsb" id="4TPMxtdH1yZ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4TPMxtdH1Fg" role="3clF46">
        <property role="TrG5h" value="tree" />
        <node concept="3uibUv" id="4TPMxteSIok" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
        </node>
      </node>
      <node concept="37vLTG" id="4TPMxtdH4T$" role="3clF46">
        <property role="TrG5h" value="includeDescendants" />
        <node concept="10P_77" id="4TPMxtdH7vy" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="4TPMxtdGRY_" role="3clF45" />
      <node concept="3Tm1VV" id="4TPMxtdGRYA" role="1B3o_S" />
      <node concept="3clFbS" id="4TPMxtdGRYB" role="3clF47">
        <node concept="3cpWs8" id="4TPMxtdHETf" role="3cqZAp">
          <node concept="3cpWsn" id="4TPMxtdHETg" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3uibUv" id="4TPMxtdHETb" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
            </node>
            <node concept="2YIFZM" id="4TPMxtdHETh" role="33vP2m">
              <ref role="1Pybhc" to="xxte:5gTrVpGjuL2" resolve="SConceptAdapter" />
              <ref role="37wK5l" to="xxte:3ECE8iPIttW" resolve="unwrap" />
              <node concept="2OqwBi" id="4TPMxtdHETi" role="37wK5m">
                <node concept="37vLTw" id="4TPMxtdHETj" role="2Oq$k0">
                  <ref role="3cqZAo" node="4TPMxtdH1Fg" resolve="tree" />
                </node>
                <node concept="liA8E" id="4TPMxtdHETk" role="2OqNvi">
                  <ref role="37wK5l" to="jks5:~ITree.getConcept(long)" resolve="getConcept" />
                  <node concept="37vLTw" id="4TPMxtdHETl" role="37wK5m">
                    <ref role="3cqZAo" node="4TPMxtdGYQl" resolve="nodeId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="VGIwA62dxh" role="3cqZAp">
          <node concept="3clFbS" id="VGIwA62dxj" role="3clFbx">
            <node concept="YS8fn" id="VGIwA62oRp" role="3cqZAp">
              <node concept="2ShNRf" id="VGIwA62qOo" role="YScLw">
                <node concept="1pGfFk" id="VGIwA62KRU" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="3cpWs3" id="VGIwA62M4C" role="37wK5m">
                    <node concept="37vLTw" id="VGIwA62MfW" role="3uHU7w">
                      <ref role="3cqZAo" node="4TPMxtdGYQl" resolve="nodeId" />
                    </node>
                    <node concept="Xl_RD" id="VGIwA62Lo7" role="3uHU7B">
                      <property role="Xl_RC" value="Node has no concept: " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="VGIwA62eTR" role="3clFbw">
            <node concept="10Nm6u" id="VGIwA62f5b" role="3uHU7w" />
            <node concept="37vLTw" id="VGIwA62ecy" role="3uHU7B">
              <ref role="3cqZAo" node="4TPMxtdHETg" resolve="concept" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4TPMxtdHjaX" role="3cqZAp">
          <node concept="3cpWsn" id="4TPMxtdHjaY" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="4TPMxtdHjaV" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2OqwBi" id="4TPMxtdHjaZ" role="33vP2m">
              <node concept="37vLTw" id="4TPMxtdHjb0" role="2Oq$k0">
                <ref role="3cqZAo" node="7Zr9caIEQRr" resolve="nodeMap" />
              </node>
              <node concept="liA8E" id="4TPMxtdHjb1" role="2OqNvi">
                <ref role="37wK5l" node="3l$kG67fE3M" resolve="getOrCreateNode" />
                <node concept="37vLTw" id="4TPMxtdHjb2" role="37wK5m">
                  <ref role="3cqZAo" node="4TPMxtdGYQl" resolve="nodeId" />
                </node>
                <node concept="1bVj0M" id="4TPMxtdHjb3" role="37wK5m">
                  <node concept="3clFbS" id="4TPMxtdHjb4" role="1bW5cS">
                    <node concept="3clFbF" id="4TPMxtdHjb5" role="3cqZAp">
                      <node concept="37vLTw" id="4TPMxtdHETm" role="3clFbG">
                        <ref role="3cqZAo" node="4TPMxtdHETg" resolve="concept" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="4TPMxtdHvx_" role="3cqZAp">
          <node concept="2GrKxI" id="4TPMxtdHvxB" role="2Gsz3X">
            <property role="TrG5h" value="property" />
          </node>
          <node concept="2OqwBi" id="4TPMxtdHwfJ" role="2GsD0m">
            <node concept="37vLTw" id="4TPMxtdHFDd" role="2Oq$k0">
              <ref role="3cqZAo" node="4TPMxtdHETg" resolve="concept" />
            </node>
            <node concept="liA8E" id="4TPMxtdHxnE" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.getProperties()" resolve="getProperties" />
            </node>
          </node>
          <node concept="3clFbS" id="4TPMxtdHvxF" role="2LFqv$">
            <node concept="3clFbF" id="4TPMxtdHxDc" role="3cqZAp">
              <node concept="2OqwBi" id="4TPMxtdHxM7" role="3clFbG">
                <node concept="37vLTw" id="4TPMxtdHxDb" role="2Oq$k0">
                  <ref role="3cqZAo" node="4TPMxtdHjaY" resolve="node" />
                </node>
                <node concept="liA8E" id="4TPMxtdHDXt" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.setProperty(org.jetbrains.mps.openapi.language.SProperty,java.lang.String)" resolve="setProperty" />
                  <node concept="2GrUjf" id="4TPMxtdHEl2" role="37wK5m">
                    <ref role="2Gs0qQ" node="4TPMxtdHvxB" resolve="property" />
                  </node>
                  <node concept="2OqwBi" id="4TPMxtdHKX4" role="37wK5m">
                    <node concept="37vLTw" id="4TPMxtdHKte" role="2Oq$k0">
                      <ref role="3cqZAo" node="4TPMxtdH1Fg" resolve="tree" />
                    </node>
                    <node concept="liA8E" id="4TPMxtdHLGq" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~ITree.getProperty(long,java.lang.String)" resolve="getProperty" />
                      <node concept="37vLTw" id="4TPMxtdHM7z" role="37wK5m">
                        <ref role="3cqZAo" node="4TPMxtdGYQl" resolve="nodeId" />
                      </node>
                      <node concept="2OqwBi" id="4TPMxtdHNJs" role="37wK5m">
                        <node concept="2GrUjf" id="4TPMxtdHN4e" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4TPMxtdHvxB" resolve="property" />
                        </node>
                        <node concept="liA8E" id="4TPMxtdI7OL" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="4TPMxtef32U" role="3cqZAp">
          <node concept="2GrKxI" id="4TPMxtef32V" role="2Gsz3X">
            <property role="TrG5h" value="link" />
          </node>
          <node concept="2OqwBi" id="4TPMxtef32W" role="2GsD0m">
            <node concept="37vLTw" id="4TPMxtef32X" role="2Oq$k0">
              <ref role="3cqZAo" node="4TPMxtdHETg" resolve="concept" />
            </node>
            <node concept="liA8E" id="4TPMxtef5A8" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.getReferenceLinks()" resolve="getReferenceLinks" />
            </node>
          </node>
          <node concept="3clFbS" id="4TPMxtef32Z" role="2LFqv$">
            <node concept="3clFbF" id="4TPMxtef8dy" role="3cqZAp">
              <node concept="1rXfSq" id="4TPMxtef8dw" role="3clFbG">
                <ref role="37wK5l" node="4TPMxteehBt" resolve="syncReference" />
                <node concept="37vLTw" id="4TPMxtef9Hj" role="37wK5m">
                  <ref role="3cqZAo" node="4TPMxtdGYQl" resolve="nodeId" />
                </node>
                <node concept="37vLTw" id="4TPMxtefb1p" role="37wK5m">
                  <ref role="3cqZAo" node="4TPMxtdH1Fg" resolve="tree" />
                </node>
                <node concept="2OqwBi" id="4TPMxtefcZs" role="37wK5m">
                  <node concept="2GrUjf" id="4TPMxtefcof" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="4TPMxtef32V" resolve="link" />
                  </node>
                  <node concept="liA8E" id="4TPMxtefFjV" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4TPMxtdH8eE" role="3cqZAp">
          <node concept="1rXfSq" id="4TPMxtdH8eD" role="3clFbG">
            <ref role="37wK5l" node="3l$kG67o271" resolve="syncChildren" />
            <node concept="37vLTw" id="4TPMxtdH8EY" role="37wK5m">
              <ref role="3cqZAo" node="4TPMxtdGYQl" resolve="nodeId" />
            </node>
            <node concept="37vLTw" id="4TPMxtdH8YB" role="37wK5m">
              <ref role="3cqZAo" node="4TPMxtdH1Fg" resolve="tree" />
            </node>
            <node concept="37vLTw" id="4TPMxtdH9tl" role="37wK5m">
              <ref role="3cqZAo" node="4TPMxtdH4T$" resolve="includeDescendants" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TPMxtdGOSX" role="jymVt" />
    <node concept="3clFb_" id="7Zr9caICYpJ" role="jymVt">
      <property role="TrG5h" value="syncProperties" />
      <node concept="37vLTG" id="7Zr9caIEVMT" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3uibUv" id="7Zr9caIFbEA" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
      </node>
      <node concept="37vLTG" id="7Zr9caIF5Th" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3uibUv" id="7Zr9caIFbYz" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
      </node>
      <node concept="3cqZAl" id="7Zr9caICYpL" role="3clF45" />
      <node concept="3Tm1VV" id="7Zr9caICYpM" role="1B3o_S" />
      <node concept="3clFbS" id="7Zr9caICYpN" role="3clF47">
        <node concept="2Gpval" id="7Zr9caIFl$g" role="3cqZAp">
          <node concept="2GrKxI" id="7Zr9caIFl$h" role="2Gsz3X">
            <property role="TrG5h" value="property" />
          </node>
          <node concept="3clFbS" id="7Zr9caIFl$j" role="2LFqv$">
            <node concept="3clFbF" id="7Zr9caIFouV" role="3cqZAp">
              <node concept="2OqwBi" id="7Zr9caIFpg0" role="3clFbG">
                <node concept="37vLTw" id="7Zr9caIFouU" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Zr9caIF5Th" resolve="target" />
                </node>
                <node concept="liA8E" id="7Zr9caIFp_V" role="2OqNvi">
                  <ref role="37wK5l" to="jks5:~INode.setPropertyValue(java.lang.String,java.lang.String)" resolve="setPropertyValue" />
                  <node concept="2OqwBi" id="7Zr9caIFqkm" role="37wK5m">
                    <node concept="2GrUjf" id="7Zr9caIFqjJ" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7Zr9caIFl$h" resolve="property" />
                    </node>
                    <node concept="liA8E" id="7Zr9caIFqv_" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~IProperty.getName()" resolve="getName" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7Zr9caIFs9k" role="37wK5m">
                    <node concept="37vLTw" id="7Zr9caIFrk0" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Zr9caIEVMT" resolve="source" />
                    </node>
                    <node concept="liA8E" id="7Zr9caIFsxs" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~INode.getPropertyValue(java.lang.String)" resolve="getPropertyValue" />
                      <node concept="2OqwBi" id="7Zr9caIFuN4" role="37wK5m">
                        <node concept="2GrUjf" id="7Zr9caIFtYn" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="7Zr9caIFl$h" resolve="property" />
                        </node>
                        <node concept="liA8E" id="7Zr9caIFzi5" role="2OqNvi">
                          <ref role="37wK5l" to="jks5:~IProperty.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7Zr9caIFlJh" role="2GsD0m">
            <node concept="2OqwBi" id="7Zr9caIFjU$" role="2Oq$k0">
              <node concept="37vLTw" id="7Zr9caIFmus" role="2Oq$k0">
                <ref role="3cqZAo" node="7Zr9caIF5Th" resolve="target" />
              </node>
              <node concept="liA8E" id="7Zr9caIFk7Z" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~INode.getConcept()" resolve="getConcept" />
              </node>
            </node>
            <node concept="liA8E" id="7Zr9caIFmAl" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~IConcept.getProperties()" resolve="getProperties" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TPMxteegLt" role="jymVt" />
    <node concept="3clFb_" id="4TPMxteehBt" role="jymVt">
      <property role="TrG5h" value="syncReference" />
      <node concept="37vLTG" id="4TPMxteetrp" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <property role="3TUv4t" value="true" />
        <node concept="3cpWsb" id="4TPMxteexVk" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4TPMxteeyAS" role="3clF46">
        <property role="TrG5h" value="tree" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4TPMxteSJ$U" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
        </node>
      </node>
      <node concept="37vLTG" id="4TPMxteeKtL" role="3clF46">
        <property role="TrG5h" value="role" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="4TPMxteeOxP" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="4TPMxteehBv" role="3clF45" />
      <node concept="3Tm1VV" id="4TPMxteehBw" role="1B3o_S" />
      <node concept="3clFbS" id="4TPMxteehBx" role="3clF47">
        <node concept="3clFbF" id="4TPMxtez5Wi" role="3cqZAp">
          <node concept="2OqwBi" id="4TPMxtez7bu" role="3clFbG">
            <node concept="37vLTw" id="4TPMxtez5Wg" role="2Oq$k0">
              <ref role="3cqZAo" node="4TPMxte8CKo" resolve="pendingReferences" />
            </node>
            <node concept="TSZUe" id="4TPMxtezoWN" role="2OqNvi">
              <node concept="1bVj0M" id="4TPMxtezpfD" role="25WWJ7">
                <node concept="3clFbS" id="4TPMxtezpfF" role="1bW5cS">
                  <node concept="3cpWs8" id="4TPMxteerO7" role="3cqZAp">
                    <node concept="3cpWsn" id="4TPMxteerO8" role="3cpWs9">
                      <property role="TrG5h" value="node" />
                      <node concept="3uibUv" id="4TPMxteerO9" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="1rXfSq" id="4TPMxteerOa" role="33vP2m">
                        <ref role="37wK5l" node="3l$kG67i8x8" resolve="getOrCreateNode" />
                        <node concept="37vLTw" id="4TPMxteerOb" role="37wK5m">
                          <ref role="3cqZAo" node="4TPMxteetrp" resolve="nodeId" />
                        </node>
                        <node concept="37vLTw" id="4TPMxteerOc" role="37wK5m">
                          <ref role="3cqZAo" node="4TPMxteeyAS" resolve="tree" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4TPMxteerOd" role="3cqZAp">
                    <node concept="3cpWsn" id="4TPMxteerOe" role="3cpWs9">
                      <property role="TrG5h" value="target" />
                      <node concept="3uibUv" id="4TPMxteerOf" role="1tU5fm">
                        <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
                      </node>
                      <node concept="2OqwBi" id="4TPMxteerOg" role="33vP2m">
                        <node concept="37vLTw" id="4TPMxteerOh" role="2Oq$k0">
                          <ref role="3cqZAo" node="4TPMxteeyAS" resolve="tree" />
                        </node>
                        <node concept="liA8E" id="4TPMxteerOi" role="2OqNvi">
                          <ref role="37wK5l" to="jks5:~ITree.getReferenceTarget(long,java.lang.String)" resolve="getReferenceTarget" />
                          <node concept="37vLTw" id="4TPMxteerOj" role="37wK5m">
                            <ref role="3cqZAo" node="4TPMxteetrp" resolve="nodeId" />
                          </node>
                          <node concept="37vLTw" id="4TPMxteerOk" role="37wK5m">
                            <ref role="3cqZAo" node="4TPMxteeKtL" resolve="role" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4TPMxteerOl" role="3cqZAp">
                    <node concept="3cpWsn" id="4TPMxteerOm" role="3cpWs9">
                      <property role="TrG5h" value="targetNode" />
                      <node concept="3uibUv" id="4TPMxteerOn" role="1tU5fm">
                        <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                      </node>
                      <node concept="2EnYce" id="4TPMxteerOo" role="33vP2m">
                        <node concept="37vLTw" id="4TPMxteerOp" role="2Oq$k0">
                          <ref role="3cqZAo" node="4TPMxteerOe" resolve="target" />
                        </node>
                        <node concept="liA8E" id="4TPMxteerOq" role="2OqNvi">
                          <ref role="37wK5l" to="jks5:~INodeReference.resolveNode(org.modelix.model.api.INodeResolveContext)" resolve="resolveNode" />
                          <node concept="2ShNRf" id="6TdxBJ4sPCL" role="37wK5m">
                            <node concept="1pGfFk" id="6TdxBJ4sYDA" role="2ShVmc">
                              <ref role="37wK5l" to="jks5:~CompositeNodeResolveContext.&lt;init&gt;(org.modelix.model.api.INodeResolveContext...)" resolve="CompositeNodeResolveContext" />
                              <node concept="2ShNRf" id="6TdxBJ4sZRi" role="37wK5m">
                                <node concept="1pGfFk" id="6TdxBJ4t5FH" role="2ShVmc">
                                  <ref role="37wK5l" to="jks5:~PNodeResolveContext.&lt;init&gt;(org.modelix.model.api.IBranch)" resolve="PNodeResolveContext" />
                                  <node concept="2OqwBi" id="1VtHttxWt1l" role="37wK5m">
                                    <node concept="37vLTw" id="6TdxBJ4t68Y" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4TPMxtdD8F5" resolve="activeBranch" />
                                    </node>
                                    <node concept="liA8E" id="1VtHttxWtEN" role="2OqNvi">
                                      <ref role="37wK5l" to="5440:~IIndirectBranch.getBranch()" resolve="getBranch" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2ShNRf" id="4TPMxteerOr" role="37wK5m">
                                <node concept="1pGfFk" id="4TPMxteerOs" role="2ShVmc">
                                  <ref role="37wK5l" to="xxte:7gxeZuyfxRC" resolve="SRepositoryResolveContext" />
                                  <node concept="2OqwBi" id="4TPMxteerOt" role="37wK5m">
                                    <node concept="37vLTw" id="4TPMxteerOu" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4TPMxtdDg7r" resolve="model" />
                                    </node>
                                    <node concept="liA8E" id="4TPMxteerOv" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
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
                  <node concept="3cpWs8" id="4TPMxteerOL" role="3cqZAp">
                    <node concept="3cpWsn" id="4TPMxteerOM" role="3cpWs9">
                      <property role="TrG5h" value="targetSNode" />
                      <node concept="3uibUv" id="4TPMxteerON" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="4TPMxtezNyC" role="3cqZAp">
                    <node concept="3clFbS" id="4TPMxtezNyE" role="3clFbx">
                      <node concept="3cpWs8" id="4TPMxteerOw" role="3cqZAp">
                        <node concept="3cpWsn" id="4TPMxteerOx" role="3cpWs9">
                          <property role="TrG5h" value="targetPNode" />
                          <node concept="3uibUv" id="4TPMxteerOy" role="1tU5fm">
                            <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                          </node>
                          <node concept="10QFUN" id="4TPMxtezRkt" role="33vP2m">
                            <node concept="37vLTw" id="4TPMxtezRks" role="10QFUP">
                              <ref role="3cqZAo" node="4TPMxteerOm" resolve="targetNode" />
                            </node>
                            <node concept="3uibUv" id="4TPMxtezRkr" role="10QFUM">
                              <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="4TPMxteerOA" role="3cqZAp">
                        <node concept="3cpWsn" id="4TPMxteerOB" role="3cpWs9">
                          <property role="TrG5h" value="targetId" />
                          <node concept="3cpWsb" id="4TPMxteerOC" role="1tU5fm" />
                          <node concept="3K4zz7" id="4TPMxteerOD" role="33vP2m">
                            <node concept="1adDum" id="4TPMxteerOE" role="3K4E3e">
                              <property role="1adDun" value="0L" />
                            </node>
                            <node concept="2OqwBi" id="4TPMxteerOF" role="3K4GZi">
                              <node concept="37vLTw" id="4TPMxteerOG" role="2Oq$k0">
                                <ref role="3cqZAo" node="4TPMxteerOx" resolve="targetPNode" />
                              </node>
                              <node concept="liA8E" id="4TPMxteerOH" role="2OqNvi">
                                <ref role="37wK5l" to="jks5:~PNodeAdapter.getNodeId()" resolve="getNodeId" />
                              </node>
                            </node>
                            <node concept="3clFbC" id="4TPMxteerOI" role="3K4Cdx">
                              <node concept="10Nm6u" id="4TPMxteerOJ" role="3uHU7w" />
                              <node concept="37vLTw" id="4TPMxteerOK" role="3uHU7B">
                                <ref role="3cqZAo" node="4TPMxteerOx" resolve="targetPNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="4TPMxtezTc_" role="3cqZAp">
                        <node concept="37vLTI" id="4TPMxtezTcB" role="3clFbG">
                          <node concept="3K4zz7" id="4TPMxteerOO" role="37vLTx">
                            <node concept="10Nm6u" id="4TPMxteerOP" role="3K4E3e" />
                            <node concept="1rXfSq" id="4TPMxteerOQ" role="3K4GZi">
                              <ref role="37wK5l" node="3l$kG67i8x8" resolve="getOrCreateNode" />
                              <node concept="37vLTw" id="4TPMxteerOR" role="37wK5m">
                                <ref role="3cqZAo" node="4TPMxteerOB" resolve="targetId" />
                              </node>
                              <node concept="37vLTw" id="4TPMxteerOS" role="37wK5m">
                                <ref role="3cqZAo" node="4TPMxteeyAS" resolve="tree" />
                              </node>
                            </node>
                            <node concept="3clFbC" id="4TPMxteerOT" role="3K4Cdx">
                              <node concept="1adDum" id="4TPMxteerOU" role="3uHU7w">
                                <property role="1adDun" value="0L" />
                              </node>
                              <node concept="37vLTw" id="4TPMxteerOV" role="3uHU7B">
                                <ref role="3cqZAo" node="4TPMxteerOB" resolve="targetId" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="4TPMxtezTcF" role="37vLTJ">
                            <ref role="3cqZAo" node="4TPMxteerOM" resolve="targetSNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2ZW3vV" id="4TPMxtezOI1" role="3clFbw">
                      <node concept="3uibUv" id="4TPMxtezP6q" role="2ZW6by">
                        <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                      </node>
                      <node concept="37vLTw" id="4TPMxtezO8v" role="2ZW6bz">
                        <ref role="3cqZAo" node="4TPMxteerOm" resolve="targetNode" />
                      </node>
                    </node>
                    <node concept="9aQIb" id="4TPMxtezRKe" role="9aQIa">
                      <node concept="3clFbS" id="4TPMxtezRKf" role="9aQI4">
                        <node concept="3clFbF" id="4TPMxtezVu2" role="3cqZAp">
                          <node concept="37vLTI" id="4TPMxtezW2Y" role="3clFbG">
                            <node concept="2YIFZM" id="4TPMxtezWW1" role="37vLTx">
                              <ref role="1Pybhc" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                              <ref role="37wK5l" to="xxte:4EhVFrZ6z9$" resolve="wrap" />
                              <node concept="37vLTw" id="4TPMxtezXz0" role="37wK5m">
                                <ref role="3cqZAo" node="4TPMxteerOm" resolve="targetNode" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="4TPMxtezVu1" role="37vLTJ">
                              <ref role="3cqZAo" node="4TPMxteerOM" resolve="targetSNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4TPMxteerOW" role="3cqZAp">
                    <node concept="2OqwBi" id="4TPMxteerOX" role="3clFbG">
                      <node concept="37vLTw" id="4TPMxteerOY" role="2Oq$k0">
                        <ref role="3cqZAo" node="4TPMxteerO8" resolve="node" />
                      </node>
                      <node concept="liA8E" id="4TPMxteerOZ" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
                        <node concept="1rXfSq" id="4TPMxteerP0" role="37wK5m">
                          <ref role="37wK5l" node="4TPMxtedAHY" resolve="findReferenceLink" />
                          <node concept="2OqwBi" id="4TPMxteerP1" role="37wK5m">
                            <node concept="37vLTw" id="4TPMxteerP2" role="2Oq$k0">
                              <ref role="3cqZAo" node="4TPMxteerO8" resolve="node" />
                            </node>
                            <node concept="liA8E" id="4TPMxteerP3" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="4TPMxteerP4" role="37wK5m">
                            <ref role="3cqZAo" node="4TPMxteeKtL" resolve="role" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="4TPMxteerP5" role="37wK5m">
                          <ref role="3cqZAo" node="4TPMxteerOM" resolve="targetSNode" />
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
    <node concept="2tJIrI" id="7Zr9caIFadw" role="jymVt" />
    <node concept="3clFb_" id="3l$kG67o271" role="jymVt">
      <property role="TrG5h" value="syncChildren" />
      <node concept="37vLTG" id="3l$kG67o6ke" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3cpWsb" id="3l$kG67o8XM" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3l$kG67o98f" role="3clF46">
        <property role="TrG5h" value="tree" />
        <node concept="3uibUv" id="4TPMxteSKxM" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
        </node>
      </node>
      <node concept="37vLTG" id="4TPMxtdGsPK" role="3clF46">
        <property role="TrG5h" value="includeDescendants" />
        <node concept="10P_77" id="4TPMxtdGvo$" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="3l$kG67o273" role="3clF45" />
      <node concept="3Tm1VV" id="3l$kG67o274" role="1B3o_S" />
      <node concept="3clFbS" id="3l$kG67o275" role="3clF47">
        <node concept="3cpWs8" id="3l$kG67oeXV" role="3cqZAp">
          <node concept="3cpWsn" id="3l$kG67oeXW" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3uibUv" id="3l$kG67oeXP" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
            </node>
            <node concept="2OqwBi" id="3l$kG67oeXX" role="33vP2m">
              <node concept="37vLTw" id="3l$kG67oeXY" role="2Oq$k0">
                <ref role="3cqZAo" node="3l$kG67o98f" resolve="tree" />
              </node>
              <node concept="liA8E" id="3l$kG67oeXZ" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~ITree.getConcept(long)" resolve="getConcept" />
                <node concept="37vLTw" id="3l$kG67oeY0" role="37wK5m">
                  <ref role="3cqZAo" node="3l$kG67o6ke" resolve="nodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="3l$kG67onG8" role="3cqZAp">
          <node concept="2GrKxI" id="3l$kG67onGa" role="2Gsz3X">
            <property role="TrG5h" value="link" />
          </node>
          <node concept="2OqwBi" id="3l$kG67opTo" role="2GsD0m">
            <node concept="37vLTw" id="3l$kG67op5u" role="2Oq$k0">
              <ref role="3cqZAo" node="3l$kG67oeXW" resolve="concept" />
            </node>
            <node concept="liA8E" id="3l$kG67opZQ" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~IConcept.getChildLinks()" resolve="getChildLinks" />
            </node>
          </node>
          <node concept="3clFbS" id="3l$kG67onGe" role="2LFqv$">
            <node concept="3clFbF" id="3l$kG67orsF" role="3cqZAp">
              <node concept="1rXfSq" id="3l$kG67orsE" role="3clFbG">
                <ref role="37wK5l" node="3l$kG67nirj" resolve="syncChildren" />
                <node concept="37vLTw" id="3l$kG67osuE" role="37wK5m">
                  <ref role="3cqZAo" node="3l$kG67o6ke" resolve="nodeId" />
                </node>
                <node concept="2OqwBi" id="3l$kG67ouBx" role="37wK5m">
                  <node concept="2GrUjf" id="3l$kG67ouwz" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="3l$kG67onGa" resolve="link" />
                  </node>
                  <node concept="liA8E" id="3l$kG67ouKu" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~IChildLink.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="37vLTw" id="3l$kG67otkB" role="37wK5m">
                  <ref role="3cqZAo" node="3l$kG67o98f" resolve="tree" />
                </node>
                <node concept="37vLTw" id="4TPMxtdGz2s" role="37wK5m">
                  <ref role="3cqZAo" node="4TPMxtdGsPK" resolve="includeDescendants" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3l$kG67nZk0" role="jymVt" />
    <node concept="3clFb_" id="3l$kG67nirj" role="jymVt">
      <property role="TrG5h" value="syncChildren" />
      <node concept="37vLTG" id="3l$kG67nrtX" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <property role="3TUv4t" value="true" />
        <node concept="3cpWsb" id="3l$kG67nu52" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3l$kG67nukw" role="3clF46">
        <property role="TrG5h" value="role" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="3l$kG67nwVB" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3l$kG67nE83" role="3clF46">
        <property role="TrG5h" value="tree" />
        <node concept="3uibUv" id="4TPMxteSEWM" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
        </node>
      </node>
      <node concept="37vLTG" id="4TPMxtdGvRL" role="3clF46">
        <property role="TrG5h" value="includeDescendants" />
        <node concept="10P_77" id="4TPMxtdGvRM" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="3l$kG67nirl" role="3clF45" />
      <node concept="3Tm1VV" id="3l$kG67nirm" role="1B3o_S" />
      <node concept="3clFbS" id="3l$kG67nirn" role="3clF47">
        <node concept="3cpWs8" id="3l$kG67m5xh" role="3cqZAp">
          <node concept="3cpWsn" id="3l$kG67m5xi" role="3cpWs9">
            <property role="TrG5h" value="isRootNodes" />
            <node concept="10P_77" id="3l$kG67m5x8" role="1tU5fm" />
            <node concept="1Wc70l" id="3l$kG67m5xj" role="33vP2m">
              <node concept="17R0WA" id="3l$kG67m5xk" role="3uHU7w">
                <node concept="2OqwBi" id="5D5xac1uZGU" role="3uHU7w">
                  <node concept="359W_D" id="5D5xac1uXwz" role="2Oq$k0">
                    <ref role="359W_E" to="dj5d:qmkA5fOskc" resolve="Model" />
                    <ref role="359W_F" to="dj5d:qmkA5fOskk" resolve="rootNodes" />
                  </node>
                  <node concept="liA8E" id="5D5xac1v0D8" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="37vLTw" id="3l$kG67m5xm" role="3uHU7B">
                  <ref role="3cqZAo" node="3l$kG67nukw" resolve="role" />
                </node>
              </node>
              <node concept="3clFbC" id="3l$kG67m5xn" role="3uHU7B">
                <node concept="37vLTw" id="3l$kG67m5xo" role="3uHU7B">
                  <ref role="3cqZAo" node="3l$kG67nrtX" resolve="nodeId" />
                </node>
                <node concept="37vLTw" id="5D5xac1uWtB" role="3uHU7w">
                  <ref role="3cqZAo" node="5D5xac1t4Do" resolve="modelNodeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Zr9caIHztj" role="3cqZAp">
          <node concept="3cpWsn" id="7Zr9caIHztk" role="3cpWs9">
            <property role="TrG5h" value="existingNodes" />
            <node concept="2hMVRd" id="7Zr9caIHztb" role="1tU5fm">
              <node concept="3uibUv" id="7Zr9caIHzte" role="2hN53Y">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Zr9caIGKwh" role="3cqZAp">
          <node concept="37vLTw" id="3l$kG67m5xq" role="3clFbw">
            <ref role="3cqZAo" node="3l$kG67m5xi" resolve="isRootNodes" />
          </node>
          <node concept="3clFbS" id="7Zr9caIGKwj" role="3clFbx">
            <node concept="3clFbF" id="3l$kG67m7o0" role="3cqZAp">
              <node concept="37vLTI" id="3l$kG67m7o2" role="3clFbG">
                <node concept="2ShNRf" id="7Zr9caIHztl" role="37vLTx">
                  <node concept="2i4dXS" id="7Zr9caIHztm" role="2ShVmc">
                    <node concept="3uibUv" id="7Zr9caIHztn" role="HW$YZ">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="4TPMxtdFSo2" role="I$8f6">
                      <node concept="37vLTw" id="4TPMxtdFRVk" role="2Oq$k0">
                        <ref role="3cqZAo" node="4TPMxtdDg7r" resolve="model" />
                      </node>
                      <node concept="liA8E" id="4TPMxtdFUK1" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="3l$kG67m7o6" role="37vLTJ">
                  <ref role="3cqZAo" node="7Zr9caIHztk" resolve="existingNodes" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="7Zr9caIHb31" role="9aQIa">
            <node concept="3clFbS" id="7Zr9caIHb32" role="9aQI4">
              <node concept="3cpWs8" id="4TPMxtd_A0i" role="3cqZAp">
                <node concept="3cpWsn" id="4TPMxtd_A0j" role="3cpWs9">
                  <property role="TrG5h" value="parentNode" />
                  <node concept="3uibUv" id="4TPMxtd_A0e" role="1tU5fm">
                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                  </node>
                  <node concept="2OqwBi" id="4TPMxtd_A0k" role="33vP2m">
                    <node concept="37vLTw" id="4TPMxtd_A0l" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Zr9caIEQRr" resolve="nodeMap" />
                    </node>
                    <node concept="liA8E" id="4TPMxtd_A0m" role="2OqNvi">
                      <ref role="37wK5l" node="7Zr9caIDL3D" resolve="getNode" />
                      <node concept="37vLTw" id="4TPMxtd_A0n" role="37wK5m">
                        <ref role="3cqZAo" node="3l$kG67nrtX" resolve="nodeId" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="bwRlaStoOM" role="3cqZAp">
                <node concept="3clFbS" id="bwRlaStoOO" role="3clFbx">
                  <node concept="3clFbF" id="bwRlaStqc0" role="3cqZAp">
                    <node concept="2OqwBi" id="bwRlaStqbX" role="3clFbG">
                      <node concept="10M0yZ" id="bwRlaStqbY" role="2Oq$k0">
                        <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                        <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                      </node>
                      <node concept="liA8E" id="bwRlaStqbZ" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                        <node concept="Xl_RD" id="bwRlaStqp1" role="37wK5m">
                          <property role="Xl_RC" value="parent is null" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="bwRlaStpMu" role="3clFbw">
                  <node concept="10Nm6u" id="bwRlaStpYL" role="3uHU7w" />
                  <node concept="37vLTw" id="bwRlaStpjL" role="3uHU7B">
                    <ref role="3cqZAo" node="4TPMxtd_A0j" resolve="parentNode" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3l$kG67mbV7" role="3cqZAp">
                <node concept="37vLTI" id="3l$kG67mbV9" role="3clFbG">
                  <node concept="2ShNRf" id="3l$kG67m3Xe" role="37vLTx">
                    <node concept="2i4dXS" id="3l$kG67m3Xf" role="2ShVmc">
                      <node concept="3uibUv" id="3l$kG67m3Xg" role="HW$YZ">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="10QFUN" id="4TPMxtd_JkI" role="I$8f6">
                        <node concept="2OqwBi" id="4TPMxtd_JkA" role="10QFUP">
                          <node concept="37vLTw" id="4TPMxtd_JkB" role="2Oq$k0">
                            <ref role="3cqZAo" node="4TPMxtd_A0j" resolve="parentNode" />
                          </node>
                          <node concept="liA8E" id="4TPMxtd_JkC" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                            <node concept="1rXfSq" id="4TPMxtd_JkD" role="37wK5m">
                              <ref role="37wK5l" node="4TPMxtdzYEb" resolve="findContainmentLink" />
                              <node concept="2OqwBi" id="4TPMxtd_JkE" role="37wK5m">
                                <node concept="37vLTw" id="4TPMxtd_JkF" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4TPMxtd_A0j" resolve="parentNode" />
                                </node>
                                <node concept="liA8E" id="4TPMxtd_JkG" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="4TPMxtd_JkH" role="37wK5m">
                                <ref role="3cqZAo" node="3l$kG67nukw" resolve="role" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="A3Dl8" id="4TPMxtd_KT9" role="10QFUM">
                          <node concept="3uibUv" id="4TPMxtd_Lug" role="A3Ik2">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="3l$kG67mbVd" role="37vLTJ">
                    <ref role="3cqZAo" node="7Zr9caIHztk" resolve="existingNodes" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3l$kG67m3Xi" role="3cqZAp">
          <node concept="3cpWsn" id="3l$kG67m3Xj" role="3cpWs9">
            <property role="TrG5h" value="existingIds" />
            <node concept="2hMVRd" id="3l$kG67m3Xk" role="1tU5fm">
              <node concept="3cpWsb" id="3l$kG67m3Xl" role="2hN53Y" />
            </node>
            <node concept="2ShNRf" id="3l$kG67m3Xm" role="33vP2m">
              <node concept="2i4dXS" id="3l$kG67m3Xn" role="2ShVmc">
                <node concept="3cpWsb" id="3l$kG67m3Xo" role="HW$YZ" />
                <node concept="2OqwBi" id="4TPMxtdB$fH" role="I$8f6">
                  <node concept="2OqwBi" id="3l$kG67m3Xp" role="2Oq$k0">
                    <node concept="37vLTw" id="3l$kG67m3Xq" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Zr9caIHztk" resolve="existingNodes" />
                    </node>
                    <node concept="3$u5V9" id="3l$kG67m3Xr" role="2OqNvi">
                      <node concept="1bVj0M" id="3l$kG67m3Xs" role="23t8la">
                        <node concept="3clFbS" id="3l$kG67m3Xt" role="1bW5cS">
                          <node concept="3clFbF" id="3l$kG67m3Xu" role="3cqZAp">
                            <node concept="2OqwBi" id="3l$kG67m3Xv" role="3clFbG">
                              <node concept="37vLTw" id="3l$kG67m3Xw" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Zr9caIEQRr" resolve="nodeMap" />
                              </node>
                              <node concept="liA8E" id="3l$kG67m3Xx" role="2OqNvi">
                                <ref role="37wK5l" node="7Zr9caIDNwM" resolve="getId" />
                                <node concept="37vLTw" id="3l$kG67m3Xy" role="37wK5m">
                                  <ref role="3cqZAo" node="3l$kG67m3Xz" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="3l$kG67m3Xz" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="3l$kG67m3X$" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3zZkjj" id="4TPMxtdBKvs" role="2OqNvi">
                    <node concept="1bVj0M" id="4TPMxtdBKvu" role="23t8la">
                      <node concept="3clFbS" id="4TPMxtdBKvv" role="1bW5cS">
                        <node concept="3clFbF" id="4TPMxtdBOuV" role="3cqZAp">
                          <node concept="3y3z36" id="4TPMxtdBQHy" role="3clFbG">
                            <node concept="1adDum" id="4TPMxtdBUKt" role="3uHU7w">
                              <property role="1adDun" value="0L" />
                            </node>
                            <node concept="37vLTw" id="4TPMxtdBOuU" role="3uHU7B">
                              <ref role="3cqZAo" node="4TPMxtdBKvw" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="4TPMxtdBKvw" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="4TPMxtdBKvx" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3l$kG67m3X_" role="3cqZAp">
          <node concept="3cpWsn" id="3l$kG67m3XA" role="3cpWs9">
            <property role="TrG5h" value="expectedIds" />
            <node concept="2hMVRd" id="1m9roGBFdGA" role="1tU5fm">
              <node concept="3uibUv" id="1m9roGBFgEz" role="2hN53Y">
                <ref role="3uigEE" to="wyt6:~Long" resolve="Long" />
              </node>
            </node>
            <node concept="2ShNRf" id="1yReInNMYY" role="33vP2m">
              <node concept="2i4dXS" id="1yReInNKNf" role="2ShVmc">
                <node concept="3uibUv" id="1yReInNKNg" role="HW$YZ">
                  <ref role="3uigEE" to="wyt6:~Long" resolve="Long" />
                </node>
                <node concept="2OqwBi" id="3l$kG67m3XG" role="I$8f6">
                  <node concept="37vLTw" id="3l$kG67nL78" role="2Oq$k0">
                    <ref role="3cqZAo" node="3l$kG67nE83" resolve="tree" />
                  </node>
                  <node concept="liA8E" id="3l$kG67m3XI" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~ITree.getChildren(long,java.lang.String)" resolve="getChildren" />
                    <node concept="37vLTw" id="3l$kG67m3XJ" role="37wK5m">
                      <ref role="3cqZAo" node="3l$kG67nrtX" resolve="nodeId" />
                    </node>
                    <node concept="37vLTw" id="3l$kG67m3XK" role="37wK5m">
                      <ref role="3cqZAo" node="3l$kG67nukw" resolve="role" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3l$kG67m3XL" role="3cqZAp">
          <node concept="3cpWsn" id="3l$kG67m3XM" role="3cpWs9">
            <property role="TrG5h" value="missingIds" />
            <node concept="A3Dl8" id="3l$kG67m3XN" role="1tU5fm">
              <node concept="3cpWsb" id="3l$kG67m3XO" role="A3Ik2" />
            </node>
            <node concept="2OqwBi" id="3l$kG67m3XP" role="33vP2m">
              <node concept="37vLTw" id="3l$kG67m3XQ" role="2Oq$k0">
                <ref role="3cqZAo" node="3l$kG67m3XA" resolve="expectedIds" />
              </node>
              <node concept="66VNe" id="3l$kG67m3XR" role="2OqNvi">
                <node concept="37vLTw" id="3l$kG67m3XS" role="576Qk">
                  <ref role="3cqZAo" node="3l$kG67m3Xj" resolve="existingIds" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3l$kG67m3Y1" role="3cqZAp">
          <node concept="3cpWsn" id="3l$kG67m3Y2" role="3cpWs9">
            <property role="TrG5h" value="unexpectedNodes" />
            <node concept="A3Dl8" id="3l$kG67m3Y3" role="1tU5fm">
              <node concept="3uibUv" id="3l$kG67m3Y4" role="A3Ik2">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="4TPMxtdA6pJ" role="33vP2m">
              <node concept="37vLTw" id="4TPMxtdA1Ju" role="2Oq$k0">
                <ref role="3cqZAo" node="7Zr9caIHztk" resolve="existingNodes" />
              </node>
              <node concept="3zZkjj" id="4TPMxtdAb83" role="2OqNvi">
                <node concept="1bVj0M" id="4TPMxtdAb85" role="23t8la">
                  <node concept="3clFbS" id="4TPMxtdAb86" role="1bW5cS">
                    <node concept="3cpWs8" id="4TPMxtdAuwW" role="3cqZAp">
                      <node concept="3cpWsn" id="4TPMxtdAuwX" role="3cpWs9">
                        <property role="TrG5h" value="id" />
                        <node concept="3cpWsb" id="4TPMxtdAuwT" role="1tU5fm" />
                        <node concept="2OqwBi" id="4TPMxtdAuwY" role="33vP2m">
                          <node concept="37vLTw" id="4TPMxtdAuwZ" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Zr9caIEQRr" resolve="nodeMap" />
                          </node>
                          <node concept="liA8E" id="4TPMxtdAux0" role="2OqNvi">
                            <ref role="37wK5l" node="7Zr9caIDNwM" resolve="getId" />
                            <node concept="37vLTw" id="4TPMxtdAux1" role="37wK5m">
                              <ref role="3cqZAo" node="4TPMxtdAb87" resolve="n" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="4TPMxtdAfJe" role="3cqZAp">
                      <node concept="22lmx$" id="4TPMxtdAJvC" role="3clFbG">
                        <node concept="3fqX7Q" id="4TPMxtdBhmD" role="3uHU7w">
                          <node concept="2OqwBi" id="4TPMxtdBhmF" role="3fr31v">
                            <node concept="37vLTw" id="4TPMxtdGe5L" role="2Oq$k0">
                              <ref role="3cqZAo" node="3l$kG67m3XA" resolve="expectedIds" />
                            </node>
                            <node concept="3JPx81" id="4TPMxtdBhmH" role="2OqNvi">
                              <node concept="37vLTw" id="4TPMxtdBhmI" role="25WWJ7">
                                <ref role="3cqZAo" node="4TPMxtdAuwX" resolve="id" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="4TPMxtdAAIg" role="3uHU7B">
                          <node concept="37vLTw" id="4TPMxtdAux2" role="3uHU7B">
                            <ref role="3cqZAo" node="4TPMxtdAuwX" resolve="id" />
                          </node>
                          <node concept="1adDum" id="4TPMxtdBlqB" role="3uHU7w">
                            <property role="1adDun" value="0L" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="4TPMxtdAb87" role="1bW2Oz">
                    <property role="TrG5h" value="n" />
                    <node concept="2jxLKc" id="4TPMxtdAb88" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3l$kG67m3Yh" role="3cqZAp" />
        <node concept="2Gpval" id="3l$kG67m3Yi" role="3cqZAp">
          <node concept="2GrKxI" id="3l$kG67m3Yj" role="2Gsz3X">
            <property role="TrG5h" value="missingId" />
          </node>
          <node concept="37vLTw" id="3l$kG67m3Yk" role="2GsD0m">
            <ref role="3cqZAo" node="3l$kG67m3XM" resolve="missingIds" />
          </node>
          <node concept="3clFbS" id="3l$kG67m3Yl" role="2LFqv$">
            <node concept="3cpWs8" id="3l$kG67m3Ym" role="3cqZAp">
              <node concept="3cpWsn" id="3l$kG67m3Yn" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="3l$kG67m3Yo" role="1tU5fm" />
                <node concept="1rXfSq" id="3l$kG67m3Yp" role="33vP2m">
                  <ref role="37wK5l" node="3l$kG67i8x8" resolve="getOrCreateNode" />
                  <node concept="2GrUjf" id="3l$kG67m3Yq" role="37wK5m">
                    <ref role="2Gs0qQ" node="3l$kG67m3Yj" resolve="missingId" />
                  </node>
                  <node concept="37vLTw" id="3l$kG67nOik" role="37wK5m">
                    <ref role="3cqZAo" node="3l$kG67nE83" resolve="tree" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3l$kG67m3Ys" role="3cqZAp">
              <node concept="3clFbS" id="3l$kG67m3Yt" role="3clFbx">
                <node concept="3clFbF" id="3l$kG67m3Yu" role="3cqZAp">
                  <node concept="2OqwBi" id="3l$kG67m3Yv" role="3clFbG">
                    <node concept="37vLTw" id="3l$kG67m3Yw" role="2Oq$k0">
                      <ref role="3cqZAo" node="3l$kG67m3Yn" resolve="node" />
                    </node>
                    <node concept="3YRAZt" id="3l$kG67m3Yx" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3l$kG67m3Yy" role="3clFbw">
                <node concept="2OqwBi" id="3l$kG67m3Yz" role="2Oq$k0">
                  <node concept="37vLTw" id="3l$kG67m3Y$" role="2Oq$k0">
                    <ref role="3cqZAo" node="3l$kG67m3Yn" resolve="node" />
                  </node>
                  <node concept="1mfA1w" id="3l$kG67m3Y_" role="2OqNvi" />
                </node>
                <node concept="3x8VRR" id="3l$kG67m3YA" role="2OqNvi" />
              </node>
            </node>
            <node concept="3clFbJ" id="3l$kG67miDM" role="3cqZAp">
              <node concept="3clFbS" id="3l$kG67miDO" role="3clFbx">
                <node concept="3clFbF" id="3l$kG67m3YF" role="3cqZAp">
                  <node concept="2OqwBi" id="3l$kG67m3YG" role="3clFbG">
                    <node concept="37vLTw" id="4TPMxtdFV5a" role="2Oq$k0">
                      <ref role="3cqZAo" node="4TPMxtdDg7r" resolve="model" />
                    </node>
                    <node concept="liA8E" id="4TPMxtdFWYc" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
                      <node concept="37vLTw" id="4TPMxtdFXaY" role="37wK5m">
                        <ref role="3cqZAo" node="3l$kG67m3Yn" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="3l$kG67mlO0" role="3clFbw">
                <ref role="3cqZAo" node="3l$kG67m5xi" resolve="isRootNodes" />
              </node>
              <node concept="9aQIb" id="3l$kG67mp0G" role="9aQIa">
                <node concept="3clFbS" id="3l$kG67mp0H" role="9aQI4">
                  <node concept="3cpWs8" id="3l$kG67mvm0" role="3cqZAp">
                    <node concept="3cpWsn" id="3l$kG67mvm1" role="3cpWs9">
                      <property role="TrG5h" value="parentNode" />
                      <node concept="3uibUv" id="3l$kG67mvlS" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="1rXfSq" id="3l$kG67mvm2" role="33vP2m">
                        <ref role="37wK5l" node="3l$kG67i8x8" resolve="getOrCreateNode" />
                        <node concept="37vLTw" id="3l$kG67mvm3" role="37wK5m">
                          <ref role="3cqZAo" node="3l$kG67nrtX" resolve="nodeId" />
                        </node>
                        <node concept="37vLTw" id="3l$kG67nPSH" role="37wK5m">
                          <ref role="3cqZAo" node="3l$kG67nE83" resolve="tree" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3l$kG67mrKK" role="3cqZAp">
                    <node concept="2OqwBi" id="3l$kG67mxBh" role="3clFbG">
                      <node concept="37vLTw" id="3l$kG67mvm5" role="2Oq$k0">
                        <ref role="3cqZAo" node="3l$kG67mvm1" resolve="parentNode" />
                      </node>
                      <node concept="liA8E" id="3l$kG67mzas" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.addChild(org.jetbrains.mps.openapi.language.SContainmentLink,org.jetbrains.mps.openapi.model.SNode)" resolve="addChild" />
                        <node concept="1rXfSq" id="4TPMxtd_rCB" role="37wK5m">
                          <ref role="37wK5l" node="4TPMxtdzYEb" resolve="findContainmentLink" />
                          <node concept="2OqwBi" id="4TPMxtd_utW" role="37wK5m">
                            <node concept="37vLTw" id="4TPMxtd_tA$" role="2Oq$k0">
                              <ref role="3cqZAo" node="3l$kG67mvm1" resolve="parentNode" />
                            </node>
                            <node concept="liA8E" id="4TPMxtd_vzG" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="4TPMxtd_wmL" role="37wK5m">
                            <ref role="3cqZAo" node="3l$kG67nukw" resolve="role" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="3l$kG67n4cb" role="37wK5m">
                          <ref role="3cqZAo" node="3l$kG67m3Yn" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4TPMxtdxWVb" role="3cqZAp" />
        <node concept="2Gpval" id="4TPMxtdxZyZ" role="3cqZAp">
          <node concept="2GrKxI" id="4TPMxtdxZz1" role="2Gsz3X">
            <property role="TrG5h" value="unexpected" />
          </node>
          <node concept="2OqwBi" id="4TPMxtdyuWV" role="2GsD0m">
            <node concept="37vLTw" id="4TPMxtdy3P0" role="2Oq$k0">
              <ref role="3cqZAo" node="3l$kG67m3Y2" resolve="unexpectedNodes" />
            </node>
            <node concept="UnYns" id="4TPMxtdyYu0" role="2OqNvi">
              <node concept="3Tqbb2" id="4TPMxtdyZ3k" role="UnYnz" />
            </node>
          </node>
          <node concept="3clFbS" id="4TPMxtdxZz5" role="2LFqv$">
            <node concept="3clFbF" id="4TPMxtdy5KN" role="3cqZAp">
              <node concept="2OqwBi" id="4TPMxtdz0qz" role="3clFbG">
                <node concept="2GrUjf" id="4TPMxtdy6tt" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4TPMxtdxZz1" resolve="unexpected" />
                </node>
                <node concept="3YRAZt" id="4TPMxtdznLW" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4TPMxtdGz9s" role="3cqZAp" />
        <node concept="3SKdUt" id="4TPMxteuDxC" role="3cqZAp">
          <node concept="1PaTwC" id="xL$$tDozsr" role="1aUNEU">
            <node concept="3oM_SD" id="xL$$tDozss" role="1PaTwD">
              <property role="3oM_SC" value="order" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4TPMxteuL8c" role="3cqZAp">
          <node concept="3clFbS" id="4TPMxteuL8e" role="3clFbx">
            <node concept="3cpWs8" id="4TPMxteuYYR" role="3cqZAp">
              <node concept="3cpWsn" id="4TPMxteuYYS" role="3cpWs9">
                <property role="TrG5h" value="parentNode" />
                <node concept="3Tqbb2" id="4TPMxtev3wi" role="1tU5fm" />
                <node concept="2OqwBi" id="4TPMxteuYYU" role="33vP2m">
                  <node concept="37vLTw" id="4TPMxteuYYV" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Zr9caIEQRr" resolve="nodeMap" />
                  </node>
                  <node concept="liA8E" id="4TPMxteuYYW" role="2OqNvi">
                    <ref role="37wK5l" node="7Zr9caIDL3D" resolve="getNode" />
                    <node concept="37vLTw" id="4TPMxteuYYX" role="37wK5m">
                      <ref role="3cqZAo" node="3l$kG67nrtX" resolve="nodeId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4TPMxtevnlU" role="3cqZAp">
              <node concept="3cpWsn" id="4TPMxtevnlV" role="3cpWs9">
                <property role="TrG5h" value="link" />
                <node concept="3uibUv" id="4TPMxtevnlL" role="1tU5fm">
                  <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
                </node>
                <node concept="1rXfSq" id="4TPMxtevnlW" role="33vP2m">
                  <ref role="37wK5l" node="4TPMxtdzYEb" resolve="findContainmentLink" />
                  <node concept="2OqwBi" id="4TPMxtevnlX" role="37wK5m">
                    <node concept="37vLTw" id="4TPMxtevnlY" role="2Oq$k0">
                      <ref role="3cqZAo" node="4TPMxteuYYS" resolve="parentNode" />
                    </node>
                    <node concept="2yIwOk" id="4TPMxtevnlZ" role="2OqNvi" />
                  </node>
                  <node concept="37vLTw" id="4TPMxtevnm0" role="37wK5m">
                    <ref role="3cqZAo" node="3l$kG67nukw" resolve="role" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4TPMxteuHwY" role="3cqZAp">
              <node concept="3cpWsn" id="4TPMxteuHx1" role="3cpWs9">
                <property role="TrG5h" value="index" />
                <node concept="10Oyi0" id="4TPMxteuHwW" role="1tU5fm" />
                <node concept="3cmrfG" id="4TPMxteuJYt" role="33vP2m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="4TPMxteuFAH" role="3cqZAp">
              <node concept="2GrKxI" id="4TPMxteuFAJ" role="2Gsz3X">
                <property role="TrG5h" value="expectedId" />
              </node>
              <node concept="3clFbS" id="4TPMxteuFAN" role="2LFqv$">
                <node concept="3cpWs8" id="4TPMxteuTzi" role="3cqZAp">
                  <node concept="3cpWsn" id="4TPMxteuTzj" role="3cpWs9">
                    <property role="TrG5h" value="expectedNode" />
                    <node concept="3Tqbb2" id="4TPMxtewlsu" role="1tU5fm" />
                    <node concept="2OqwBi" id="4TPMxteuTzk" role="33vP2m">
                      <node concept="37vLTw" id="4TPMxteuTzl" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Zr9caIEQRr" resolve="nodeMap" />
                      </node>
                      <node concept="liA8E" id="4TPMxteuTzm" role="2OqNvi">
                        <ref role="37wK5l" node="7Zr9caIDL3D" resolve="getNode" />
                        <node concept="2GrUjf" id="4TPMxteuTzn" role="37wK5m">
                          <ref role="2Gs0qQ" node="4TPMxteuFAJ" resolve="expectedId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4TPMxtevMNy" role="3cqZAp">
                  <node concept="3cpWsn" id="4TPMxtevMNz" role="3cpWs9">
                    <property role="TrG5h" value="actualNode" />
                    <node concept="3Tqbb2" id="4TPMxtevMNx" role="1tU5fm" />
                    <node concept="1y4W85" id="4TPMxtevMN$" role="33vP2m">
                      <node concept="37vLTw" id="4TPMxtevMN_" role="1y58nS">
                        <ref role="3cqZAo" node="4TPMxteuHx1" resolve="index" />
                      </node>
                      <node concept="2OqwBi" id="4TPMxtevMNA" role="1y566C">
                        <node concept="37vLTw" id="4TPMxtevMNB" role="2Oq$k0">
                          <ref role="3cqZAo" node="4TPMxteuYYS" resolve="parentNode" />
                        </node>
                        <node concept="32TBzR" id="4TPMxtevMNC" role="2OqNvi">
                          <node concept="1aIX9F" id="4TPMxtevMND" role="1xVPHs">
                            <node concept="25Kdxt" id="4TPMxtevMNE" role="1aIX9E">
                              <node concept="37vLTw" id="4TPMxtevMNF" role="25KhWn">
                                <ref role="3cqZAo" node="4TPMxtevnlV" resolve="link" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4TPMxtevPpb" role="3cqZAp">
                  <node concept="3clFbS" id="4TPMxtevPpd" role="3clFbx">
                    <node concept="3clFbF" id="4TPMxtevUnQ" role="3cqZAp">
                      <node concept="2OqwBi" id="4TPMxtevUHY" role="3clFbG">
                        <node concept="37vLTw" id="4TPMxtevUnO" role="2Oq$k0">
                          <ref role="3cqZAo" node="4TPMxteuTzj" resolve="expectedNode" />
                        </node>
                        <node concept="3YRAZt" id="4TPMxtewmWa" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="4TPMxtewnj3" role="3cqZAp">
                      <node concept="2OqwBi" id="4TPMxtewvYu" role="3clFbG">
                        <node concept="2OqwBi" id="4TPMxtewn_3" role="2Oq$k0">
                          <node concept="37vLTw" id="4TPMxtewnj1" role="2Oq$k0">
                            <ref role="3cqZAo" node="4TPMxteuYYS" resolve="parentNode" />
                          </node>
                          <node concept="32TBzR" id="4TPMxtewnGn" role="2OqNvi">
                            <node concept="1aIX9F" id="4TPMxtewuI6" role="1xVPHs">
                              <node concept="25Kdxt" id="4TPMxtewuIE" role="1aIX9E">
                                <node concept="37vLTw" id="4TPMxtewv6X" role="25KhWn">
                                  <ref role="3cqZAo" node="4TPMxtevnlV" resolve="link" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1sK_Qi" id="4TPMxtewwN2" role="2OqNvi">
                          <node concept="37vLTw" id="4TPMxtewx1k" role="1sKJu8">
                            <ref role="3cqZAo" node="4TPMxteuHx1" resolve="index" />
                          </node>
                          <node concept="37vLTw" id="4TPMxtewxr6" role="1sKFgg">
                            <ref role="3cqZAo" node="4TPMxteuTzj" resolve="expectedNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="17QLQc" id="4TPMxtevRau" role="3clFbw">
                    <node concept="37vLTw" id="4TPMxtevS2n" role="3uHU7w">
                      <ref role="3cqZAo" node="4TPMxteuTzj" resolve="expectedNode" />
                    </node>
                    <node concept="37vLTw" id="4TPMxtevQfP" role="3uHU7B">
                      <ref role="3cqZAo" node="4TPMxtevMNz" resolve="actualNode" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4TPMxteuIzZ" role="3cqZAp">
                  <node concept="3uNrnE" id="4TPMxteuJqp" role="3clFbG">
                    <node concept="37vLTw" id="4TPMxteuJqr" role="2$L3a6">
                      <ref role="3cqZAo" node="4TPMxteuHx1" resolve="index" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="1m9roGBFlOA" role="2GsD0m">
                <ref role="37wK5l" to="18ew:~IterableUtil.asIterable(java.util.Iterator)" resolve="asIterable" />
                <ref role="1Pybhc" to="18ew:~IterableUtil" resolve="IterableUtil" />
                <node concept="2OqwBi" id="1m9roGBFmG6" role="37wK5m">
                  <node concept="2OqwBi" id="4TPMxteuO_s" role="2Oq$k0">
                    <node concept="37vLTw" id="4TPMxteuO_t" role="2Oq$k0">
                      <ref role="3cqZAo" node="3l$kG67nE83" resolve="tree" />
                    </node>
                    <node concept="liA8E" id="4TPMxteuO_u" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~ITree.getChildren(long,java.lang.String)" resolve="getChildren" />
                      <node concept="37vLTw" id="4TPMxteuO_v" role="37wK5m">
                        <ref role="3cqZAo" node="3l$kG67nrtX" resolve="nodeId" />
                      </node>
                      <node concept="37vLTw" id="4TPMxteuO_w" role="37wK5m">
                        <ref role="3cqZAo" node="3l$kG67nukw" resolve="role" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1m9roGBFnx$" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Iterable.iterator()" resolve="iterator" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="4TPMxteuMbc" role="3clFbw">
            <node concept="37vLTw" id="4TPMxteuNfT" role="3fr31v">
              <ref role="3cqZAo" node="3l$kG67m5xi" resolve="isRootNodes" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4TPMxteuCv8" role="3cqZAp" />
        <node concept="3clFbJ" id="4TPMxtdVS6D" role="3cqZAp">
          <node concept="3clFbS" id="4TPMxtdVS6F" role="3clFbx">
            <node concept="2Gpval" id="4TPMxtdG$Ib" role="3cqZAp">
              <node concept="2GrKxI" id="4TPMxtdG$Id" role="2Gsz3X">
                <property role="TrG5h" value="childId" />
              </node>
              <node concept="37vLTw" id="4TPMxtdG_U5" role="2GsD0m">
                <ref role="3cqZAo" node="3l$kG67m3XA" resolve="expectedIds" />
              </node>
              <node concept="3clFbS" id="4TPMxtdG$Ih" role="2LFqv$">
                <node concept="3clFbF" id="4TPMxtdGOt9" role="3cqZAp">
                  <node concept="1rXfSq" id="4TPMxtdI9DY" role="3clFbG">
                    <ref role="37wK5l" node="4TPMxtdGRYz" resolve="syncNode" />
                    <node concept="2GrUjf" id="4TPMxtdI9Ya" role="37wK5m">
                      <ref role="2Gs0qQ" node="4TPMxtdG$Id" resolve="childId" />
                    </node>
                    <node concept="37vLTw" id="4TPMxtdIbQ0" role="37wK5m">
                      <ref role="3cqZAo" node="3l$kG67nE83" resolve="tree" />
                    </node>
                    <node concept="37vLTw" id="4TPMxtdIe0T" role="37wK5m">
                      <ref role="3cqZAo" node="4TPMxtdGvRL" resolve="includeDescendants" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="4TPMxtdVTf6" role="3clFbw">
            <ref role="3cqZAo" node="4TPMxtdGvRL" resolve="includeDescendants" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3l$kG67ngoZ" role="jymVt" />
    <node concept="3clFb_" id="4TPMxtdzYEb" role="jymVt">
      <property role="TrG5h" value="findContainmentLink" />
      <node concept="37vLTG" id="4TPMxtd$tzn" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="4TPMxtevilV" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="37vLTG" id="4TPMxtd$xNT" role="3clF46">
        <property role="TrG5h" value="linkName" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="4TPMxtd$_dX" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4TPMxtd$A2x" role="3clF45">
        <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
      </node>
      <node concept="3Tm1VV" id="4TPMxtdzYEe" role="1B3o_S" />
      <node concept="3clFbS" id="4TPMxtdzYEf" role="3clF47">
        <node concept="3cpWs8" id="4TPMxtd$D5Z" role="3cqZAp">
          <node concept="3cpWsn" id="4TPMxtd$D60" role="3cpWs9">
            <property role="TrG5h" value="links" />
            <node concept="A3Dl8" id="4TPMxtd$D61" role="1tU5fm">
              <node concept="3uibUv" id="4TPMxtd$D62" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
              </node>
            </node>
            <node concept="2OqwBi" id="4TPMxtd$D63" role="33vP2m">
              <node concept="37vLTw" id="4TPMxtd_fsr" role="2Oq$k0">
                <ref role="3cqZAo" node="4TPMxtd$tzn" resolve="concept" />
              </node>
              <node concept="liA8E" id="4TPMxtd$D67" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getContainmentLinks()" resolve="getContainmentLinks" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4TPMxtd$D68" role="3cqZAp">
          <node concept="3cpWsn" id="4TPMxtd$D69" role="3cpWs9">
            <property role="TrG5h" value="link" />
            <node concept="3uibUv" id="4TPMxtd$D6a" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
            </node>
            <node concept="2OqwBi" id="4TPMxtd$D6b" role="33vP2m">
              <node concept="37vLTw" id="4TPMxtd$D6c" role="2Oq$k0">
                <ref role="3cqZAo" node="4TPMxtd$D60" resolve="links" />
              </node>
              <node concept="1z4cxt" id="4TPMxtd$D6d" role="2OqNvi">
                <node concept="1bVj0M" id="4TPMxtd$D6e" role="23t8la">
                  <node concept="3clFbS" id="4TPMxtd$D6f" role="1bW5cS">
                    <node concept="3clFbF" id="4TPMxtd$D6g" role="3cqZAp">
                      <node concept="17R0WA" id="4TPMxtd$D6h" role="3clFbG">
                        <node concept="37vLTw" id="4TPMxtd_jtY" role="3uHU7w">
                          <ref role="3cqZAo" node="4TPMxtd$xNT" resolve="linkName" />
                        </node>
                        <node concept="2OqwBi" id="4TPMxtd$D6j" role="3uHU7B">
                          <node concept="37vLTw" id="4TPMxtd$D6k" role="2Oq$k0">
                            <ref role="3cqZAo" node="4TPMxtd$D6m" resolve="it" />
                          </node>
                          <node concept="liA8E" id="4TPMxtd$D6l" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="4TPMxtd$D6m" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="4TPMxtd$D6n" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4TPMxtd$OeI" role="3cqZAp">
          <node concept="3clFbS" id="4TPMxtd$OeK" role="3clFbx">
            <node concept="YS8fn" id="4TPMxtd$YyA" role="3cqZAp">
              <node concept="2ShNRf" id="4TPMxtd$Zeq" role="YScLw">
                <node concept="1pGfFk" id="4TPMxtd_1OQ" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="3cpWs3" id="4TPMxtd_9cj" role="37wK5m">
                    <node concept="Xl_RD" id="4TPMxtd_9S4" role="3uHU7w">
                      <property role="Xl_RC" value=" not found" />
                    </node>
                    <node concept="3cpWs3" id="4TPMxtd_5VD" role="3uHU7B">
                      <node concept="3cpWs3" id="4TPMxtd_2K3" role="3uHU7B">
                        <node concept="37vLTw" id="4TPMxtd_49z" role="3uHU7B">
                          <ref role="3cqZAo" node="4TPMxtd$tzn" resolve="concept" />
                        </node>
                        <node concept="Xl_RD" id="4TPMxtd_2B8" role="3uHU7w">
                          <property role="Xl_RC" value="." />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4TPMxtd_7GU" role="3uHU7w">
                        <ref role="3cqZAo" node="4TPMxtd$xNT" resolve="linkName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4TPMxtd$U3G" role="3clFbw">
            <node concept="10Nm6u" id="4TPMxtd$UJx" role="3uHU7w" />
            <node concept="37vLTw" id="4TPMxtd$S5G" role="3uHU7B">
              <ref role="3cqZAo" node="4TPMxtd$D69" resolve="link" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4TPMxtd$FgF" role="3cqZAp">
          <node concept="37vLTw" id="4TPMxtd$FgH" role="3cqZAk">
            <ref role="3cqZAo" node="4TPMxtd$D69" resolve="link" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4TPMxtedAHY" role="jymVt">
      <property role="TrG5h" value="findReferenceLink" />
      <node concept="37vLTG" id="4TPMxtedAHZ" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="4TPMxtedAI0" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
        </node>
      </node>
      <node concept="37vLTG" id="4TPMxtedAI1" role="3clF46">
        <property role="TrG5h" value="linkName" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="4TPMxtedAI2" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4TPMxtedQn0" role="3clF45">
        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
      </node>
      <node concept="3Tm1VV" id="4TPMxtedAI4" role="1B3o_S" />
      <node concept="3clFbS" id="4TPMxtedAI5" role="3clF47">
        <node concept="3cpWs8" id="4TPMxtedAI6" role="3cqZAp">
          <node concept="3cpWsn" id="4TPMxtedAI7" role="3cpWs9">
            <property role="TrG5h" value="links" />
            <node concept="A3Dl8" id="4TPMxtedAI8" role="1tU5fm">
              <node concept="3uibUv" id="4TPMxtee0CN" role="A3Ik2">
                <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
              </node>
            </node>
            <node concept="2OqwBi" id="4TPMxtedAIa" role="33vP2m">
              <node concept="37vLTw" id="4TPMxtedAIb" role="2Oq$k0">
                <ref role="3cqZAo" node="4TPMxtedAHZ" resolve="concept" />
              </node>
              <node concept="liA8E" id="4TPMxtedVGL" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.getReferenceLinks()" resolve="getReferenceLinks" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4TPMxtedAId" role="3cqZAp">
          <node concept="3cpWsn" id="4TPMxtedAIe" role="3cpWs9">
            <property role="TrG5h" value="link" />
            <node concept="3uibUv" id="4TPMxtee5jm" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
            </node>
            <node concept="2OqwBi" id="4TPMxtedAIg" role="33vP2m">
              <node concept="37vLTw" id="4TPMxtedAIh" role="2Oq$k0">
                <ref role="3cqZAo" node="4TPMxtedAI7" resolve="links" />
              </node>
              <node concept="1z4cxt" id="4TPMxtedAIi" role="2OqNvi">
                <node concept="1bVj0M" id="4TPMxtedAIj" role="23t8la">
                  <node concept="3clFbS" id="4TPMxtedAIk" role="1bW5cS">
                    <node concept="3clFbF" id="4TPMxtedAIl" role="3cqZAp">
                      <node concept="17R0WA" id="4TPMxtedAIm" role="3clFbG">
                        <node concept="37vLTw" id="4TPMxtedAIn" role="3uHU7w">
                          <ref role="3cqZAo" node="4TPMxtedAI1" resolve="linkName" />
                        </node>
                        <node concept="2OqwBi" id="4TPMxtedAIo" role="3uHU7B">
                          <node concept="37vLTw" id="4TPMxtedAIp" role="2Oq$k0">
                            <ref role="3cqZAo" node="4TPMxtedAIr" resolve="it" />
                          </node>
                          <node concept="liA8E" id="4TPMxtedAIq" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="4TPMxtedAIr" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="4TPMxtedAIs" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4TPMxtedAIt" role="3cqZAp">
          <node concept="3clFbS" id="4TPMxtedAIu" role="3clFbx">
            <node concept="YS8fn" id="4TPMxtedAIv" role="3cqZAp">
              <node concept="2ShNRf" id="4TPMxtedAIw" role="YScLw">
                <node concept="1pGfFk" id="4TPMxtedAIx" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="3cpWs3" id="4TPMxtedAIy" role="37wK5m">
                    <node concept="Xl_RD" id="4TPMxtedAIz" role="3uHU7w">
                      <property role="Xl_RC" value=" not found" />
                    </node>
                    <node concept="3cpWs3" id="4TPMxtedAI$" role="3uHU7B">
                      <node concept="3cpWs3" id="4TPMxtedAI_" role="3uHU7B">
                        <node concept="37vLTw" id="4TPMxtedAIA" role="3uHU7B">
                          <ref role="3cqZAo" node="4TPMxtedAHZ" resolve="concept" />
                        </node>
                        <node concept="Xl_RD" id="4TPMxtedAIB" role="3uHU7w">
                          <property role="Xl_RC" value="." />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4TPMxtedAIC" role="3uHU7w">
                        <ref role="3cqZAo" node="4TPMxtedAI1" resolve="linkName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4TPMxtedAID" role="3clFbw">
            <node concept="10Nm6u" id="4TPMxtedAIE" role="3uHU7w" />
            <node concept="37vLTw" id="4TPMxtedAIF" role="3uHU7B">
              <ref role="3cqZAo" node="4TPMxtedAIe" resolve="link" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4TPMxtedAIG" role="3cqZAp">
          <node concept="37vLTw" id="4TPMxtedAIH" role="3cqZAk">
            <ref role="3cqZAo" node="4TPMxtedAIe" resolve="link" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TPMxtdzV3D" role="jymVt" />
    <node concept="3clFb_" id="7Zr9caIF7Ck" role="jymVt">
      <property role="TrG5h" value="syncNode" />
      <node concept="37vLTG" id="7Zr9caIF7Cn" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <node concept="3uibUv" id="7Zr9caIF7Co" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="4TPMxtdJuIZ" role="3clF46">
        <property role="TrG5h" value="includeDescendants" />
        <node concept="10P_77" id="4TPMxtdJxoB" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7Zr9caIF7Cp" role="3clF45" />
      <node concept="3Tm1VV" id="7Zr9caIF7Cq" role="1B3o_S" />
      <node concept="3clFbS" id="7Zr9caIF7Cr" role="3clF47">
        <node concept="3clFbJ" id="4TPMxtdJ_hd" role="3cqZAp">
          <node concept="3clFbS" id="4TPMxtdJ_hf" role="3clFbx">
            <node concept="YS8fn" id="4TPMxtdJCCZ" role="3cqZAp">
              <node concept="2ShNRf" id="4TPMxtdJCOo" role="YScLw">
                <node concept="1pGfFk" id="4TPMxtdJE3m" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="3cpWs3" id="4TPMxtdJF8B" role="37wK5m">
                    <node concept="37vLTw" id="4TPMxtdJFlI" role="3uHU7w">
                      <ref role="3cqZAo" node="7Zr9caIF7Cn" resolve="parentNode" />
                    </node>
                    <node concept="Xl_RD" id="4TPMxtdJEwi" role="3uHU7B">
                      <property role="Xl_RC" value="Not part of this model: " />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4TPMxtdJBr$" role="3clFbw">
            <node concept="37vLTw" id="4TPMxtdJCmu" role="3uHU7w">
              <ref role="3cqZAo" node="4TPMxtdDg7r" resolve="model" />
            </node>
            <node concept="2OqwBi" id="4TPMxtdJApy" role="3uHU7B">
              <node concept="37vLTw" id="4TPMxtdJ_Sz" role="2Oq$k0">
                <ref role="3cqZAo" node="7Zr9caIF7Cn" resolve="parentNode" />
              </node>
              <node concept="liA8E" id="4TPMxtdJBck" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1VtHttxWu1a" role="3cqZAp">
          <node concept="3cpWsn" id="1VtHttxWu1b" role="3cpWs9">
            <property role="TrG5h" value="branch" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="1VtHttxWu1c" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
            </node>
            <node concept="2OqwBi" id="1VtHttxWu1d" role="33vP2m">
              <node concept="37vLTw" id="1VtHttxWu1e" role="2Oq$k0">
                <ref role="3cqZAo" node="4TPMxtdD8F5" resolve="activeBranch" />
              </node>
              <node concept="liA8E" id="1VtHttxWu1f" role="2OqNvi">
                <ref role="37wK5l" to="5440:~IIndirectBranch.getBranch()" resolve="getBranch" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4TPMxtdJxLm" role="3cqZAp">
          <node concept="3cpWsn" id="4TPMxtdJxLn" role="3cpWs9">
            <property role="TrG5h" value="t" />
            <node concept="3uibUv" id="4TPMxtdJxLo" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~IWriteTransaction" resolve="IWriteTransaction" />
            </node>
            <node concept="2OqwBi" id="4TPMxtdJxLp" role="33vP2m">
              <node concept="37vLTw" id="1VtHttxWwWB" role="2Oq$k0">
                <ref role="3cqZAo" node="1VtHttxWu1b" resolve="branch" />
              </node>
              <node concept="liA8E" id="4TPMxtdJxLr" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~IBranch.getWriteTransaction()" resolve="getWriteTransaction" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4TPMxtdJYMQ" role="3cqZAp">
          <node concept="3cpWsn" id="4TPMxtdJYMR" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="4TPMxtdJYMP" role="1tU5fm">
              <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
            </node>
            <node concept="2OqwBi" id="4TPMxtdJYMS" role="33vP2m">
              <node concept="37vLTw" id="4TPMxtdJYMT" role="2Oq$k0">
                <ref role="3cqZAo" node="7Zr9caIF7Cn" resolve="parentNode" />
              </node>
              <node concept="liA8E" id="4TPMxtdJYMU" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4TPMxtdJzai" role="3cqZAp" />
        <node concept="3cpWs8" id="4TPMxtdK5De" role="3cqZAp">
          <node concept="3cpWsn" id="4TPMxtdK5Df" role="3cpWs9">
            <property role="TrG5h" value="parentNodeId" />
            <node concept="3cpWsb" id="4TPMxtdK5Da" role="1tU5fm" />
            <node concept="1rXfSq" id="4TPMxtdLgQD" role="33vP2m">
              <ref role="37wK5l" node="4TPMxtdKBae" resolve="getOrCreateNode" />
              <node concept="37vLTw" id="4TPMxtdLh8N" role="37wK5m">
                <ref role="3cqZAo" node="7Zr9caIF7Cn" resolve="parentNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4TPMxtdJTNB" role="3cqZAp" />
        <node concept="2Gpval" id="4TPMxtdJMwS" role="3cqZAp">
          <node concept="2GrKxI" id="4TPMxtdJMwU" role="2Gsz3X">
            <property role="TrG5h" value="property" />
          </node>
          <node concept="2OqwBi" id="4TPMxtdJPlL" role="2GsD0m">
            <node concept="37vLTw" id="4TPMxtdJYMV" role="2Oq$k0">
              <ref role="3cqZAo" node="4TPMxtdJYMR" resolve="concept" />
            </node>
            <node concept="liA8E" id="4TPMxtdJQtV" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.getProperties()" resolve="getProperties" />
            </node>
          </node>
          <node concept="3clFbS" id="4TPMxtdJMwY" role="2LFqv$">
            <node concept="3cpWs8" id="plPun89Euk" role="3cqZAp">
              <node concept="3cpWsn" id="plPun89Eul" role="3cpWs9">
                <property role="TrG5h" value="oldValue" />
                <node concept="17QB3L" id="plPun89Eud" role="1tU5fm" />
                <node concept="2OqwBi" id="plPun89Eum" role="33vP2m">
                  <node concept="37vLTw" id="plPun89Eun" role="2Oq$k0">
                    <ref role="3cqZAo" node="4TPMxtdJxLn" resolve="t" />
                  </node>
                  <node concept="liA8E" id="plPun89Euo" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~ITransaction.getProperty(long,java.lang.String)" resolve="getProperty" />
                    <node concept="37vLTw" id="plPun89Eup" role="37wK5m">
                      <ref role="3cqZAo" node="4TPMxtdK5Df" resolve="parentNodeId" />
                    </node>
                    <node concept="2OqwBi" id="plPun89Euq" role="37wK5m">
                      <node concept="2GrUjf" id="plPun89Eur" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4TPMxtdJMwU" resolve="property" />
                      </node>
                      <node concept="liA8E" id="plPun89Eus" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="plPun89xG$" role="3cqZAp">
              <node concept="3cpWsn" id="plPun89xG_" role="3cpWs9">
                <property role="TrG5h" value="newValue" />
                <node concept="17QB3L" id="plPun89AvK" role="1tU5fm" />
                <node concept="2OqwBi" id="plPun89xGA" role="33vP2m">
                  <node concept="37vLTw" id="plPun89xGB" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Zr9caIF7Cn" resolve="parentNode" />
                  </node>
                  <node concept="liA8E" id="plPun89xGC" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getProperty(org.jetbrains.mps.openapi.language.SProperty)" resolve="getProperty" />
                    <node concept="2GrUjf" id="plPun89xGD" role="37wK5m">
                      <ref role="2Gs0qQ" node="4TPMxtdJMwU" resolve="property" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="plPun88Y6c" role="3cqZAp">
              <node concept="3clFbS" id="plPun88Y6e" role="3clFbx">
                <node concept="3clFbF" id="4TPMxtdJRdD" role="3cqZAp">
                  <node concept="2OqwBi" id="4TPMxtdJRlG" role="3clFbG">
                    <node concept="37vLTw" id="4TPMxtdJRdC" role="2Oq$k0">
                      <ref role="3cqZAo" node="4TPMxtdJxLn" resolve="t" />
                    </node>
                    <node concept="liA8E" id="4TPMxtdJTKZ" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~IWriteTransaction.setProperty(long,java.lang.String,java.lang.String)" resolve="setProperty" />
                      <node concept="37vLTw" id="4TPMxtdLi8K" role="37wK5m">
                        <ref role="3cqZAo" node="4TPMxtdK5Df" resolve="parentNodeId" />
                      </node>
                      <node concept="2OqwBi" id="4TPMxtdLj39" role="37wK5m">
                        <node concept="2GrUjf" id="4TPMxtdLi_Z" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4TPMxtdJMwU" resolve="property" />
                        </node>
                        <node concept="liA8E" id="4TPMxtdLxYU" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="plPun89xGE" role="37wK5m">
                        <ref role="3cqZAo" node="plPun89xG_" resolve="newValue" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17QLQc" id="plPun89wd9" role="3clFbw">
                <node concept="37vLTw" id="plPun89KoS" role="3uHU7w">
                  <ref role="3cqZAo" node="plPun89Eul" resolve="oldValue" />
                </node>
                <node concept="37vLTw" id="plPun89IMy" role="3uHU7B">
                  <ref role="3cqZAo" node="plPun89xG_" resolve="newValue" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4TPMxte9E$_" role="3cqZAp" />
        <node concept="2Gpval" id="4TPMxte9GF3" role="3cqZAp">
          <node concept="2GrKxI" id="4TPMxte9GF5" role="2Gsz3X">
            <property role="TrG5h" value="link" />
          </node>
          <node concept="2OqwBi" id="4TPMxte9LGk" role="2GsD0m">
            <node concept="37vLTw" id="4TPMxte9KbC" role="2Oq$k0">
              <ref role="3cqZAo" node="4TPMxtdJYMR" resolve="concept" />
            </node>
            <node concept="liA8E" id="4TPMxte9NP2" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.getReferenceLinks()" resolve="getReferenceLinks" />
            </node>
          </node>
          <node concept="3clFbS" id="4TPMxte9GF9" role="2LFqv$">
            <node concept="3clFbF" id="4TPMxteyjg8" role="3cqZAp">
              <node concept="2OqwBi" id="4TPMxteykSr" role="3clFbG">
                <node concept="37vLTw" id="4TPMxteyjg6" role="2Oq$k0">
                  <ref role="3cqZAo" node="4TPMxte8CKo" resolve="pendingReferences" />
                </node>
                <node concept="TSZUe" id="4TPMxteyBua" role="2OqNvi">
                  <node concept="1bVj0M" id="4TPMxteyBWa" role="25WWJ7">
                    <node concept="3clFbS" id="4TPMxteyBWc" role="1bW5cS">
                      <node concept="3cpWs8" id="4TPMxteavtg" role="3cqZAp">
                        <node concept="3cpWsn" id="4TPMxteavth" role="3cpWs9">
                          <property role="TrG5h" value="targetSNode" />
                          <node concept="3uibUv" id="4TPMxteavtf" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                          <node concept="2OqwBi" id="4TPMxteavti" role="33vP2m">
                            <node concept="37vLTw" id="4TPMxteavtj" role="2Oq$k0">
                              <ref role="3cqZAo" node="7Zr9caIF7Cn" resolve="parentNode" />
                            </node>
                            <node concept="liA8E" id="4TPMxteavtk" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                              <node concept="2GrUjf" id="4TPMxteavtl" role="37wK5m">
                                <ref role="2Gs0qQ" node="4TPMxte9GF5" resolve="link" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="3WN29VkspjX" role="3cqZAp">
                        <node concept="3cpWsn" id="3WN29VkspjY" role="3cpWs9">
                          <property role="TrG5h" value="currentTarget" />
                          <node concept="3uibUv" id="3WN29Vkspj_" role="1tU5fm">
                            <ref role="3uigEE" to="jks5:~INodeReference" resolve="INodeReference" />
                          </node>
                          <node concept="2OqwBi" id="3WN29VkspjZ" role="33vP2m">
                            <node concept="37vLTw" id="3WN29Vkspk0" role="2Oq$k0">
                              <ref role="3cqZAo" node="4TPMxtdJxLn" resolve="t" />
                            </node>
                            <node concept="liA8E" id="3WN29Vkspk1" role="2OqNvi">
                              <ref role="37wK5l" to="jks5:~ITransaction.getReferenceTarget(long,java.lang.String)" resolve="getReferenceTarget" />
                              <node concept="37vLTw" id="3WN29Vkspk2" role="37wK5m">
                                <ref role="3cqZAo" node="4TPMxtdK5Df" resolve="parentNodeId" />
                              </node>
                              <node concept="2OqwBi" id="3WN29Vkspk3" role="37wK5m">
                                <node concept="2GrUjf" id="3WN29Vkspk4" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="4TPMxte9GF5" resolve="link" />
                                </node>
                                <node concept="liA8E" id="3WN29Vkspk5" role="2OqNvi">
                                  <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="4TPMxte_BTX" role="3cqZAp">
                        <node concept="3clFbS" id="4TPMxte_BTZ" role="3clFbx">
                          <node concept="3clFbJ" id="3WN29VksyZN" role="3cqZAp">
                            <node concept="3clFbS" id="3WN29VksyZP" role="3clFbx">
                              <node concept="3clFbF" id="4TPMxteAAQ5" role="3cqZAp">
                                <node concept="2OqwBi" id="4TPMxteAAQ6" role="3clFbG">
                                  <node concept="37vLTw" id="4TPMxteAAQ7" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4TPMxtdJxLn" resolve="t" />
                                  </node>
                                  <node concept="liA8E" id="4TPMxteAAQ8" role="2OqNvi">
                                    <ref role="37wK5l" to="jks5:~IWriteTransaction.setReferenceTarget(long,java.lang.String,org.modelix.model.api.INodeReference)" resolve="setReferenceTarget" />
                                    <node concept="37vLTw" id="4TPMxteAAQ9" role="37wK5m">
                                      <ref role="3cqZAo" node="4TPMxtdK5Df" resolve="parentNodeId" />
                                    </node>
                                    <node concept="2OqwBi" id="4TPMxteAAQa" role="37wK5m">
                                      <node concept="2GrUjf" id="4TPMxteAAQb" role="2Oq$k0">
                                        <ref role="2Gs0qQ" node="4TPMxte9GF5" resolve="link" />
                                      </node>
                                      <node concept="liA8E" id="4TPMxteAAQc" role="2OqNvi">
                                        <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                    <node concept="10Nm6u" id="4TPMxteACF$" role="37wK5m" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3y3z36" id="3WN29VksAsb" role="3clFbw">
                              <node concept="10Nm6u" id="3WN29VksABT" role="3uHU7w" />
                              <node concept="37vLTw" id="3WN29Vks$xq" role="3uHU7B">
                                <ref role="3cqZAo" node="3WN29VkspjY" resolve="currentTarget" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="4TPMxte_Fry" role="3clFbw">
                          <node concept="10Nm6u" id="4TPMxte_FAM" role="3uHU7w" />
                          <node concept="37vLTw" id="4TPMxte_DFq" role="3uHU7B">
                            <ref role="3cqZAo" node="4TPMxteavth" resolve="targetSNode" />
                          </node>
                        </node>
                        <node concept="9aQIb" id="4TPMxteAzIe" role="9aQIa">
                          <node concept="3clFbS" id="4TPMxteAzIf" role="9aQI4">
                            <node concept="3cpWs8" id="4TPMxteaAVx" role="3cqZAp">
                              <node concept="3cpWsn" id="4TPMxteaAVy" role="3cpWs9">
                                <property role="TrG5h" value="targetId" />
                                <node concept="3cpWsb" id="4TPMxteaAV1" role="1tU5fm" />
                                <node concept="2OqwBi" id="4TPMxteALsl" role="33vP2m">
                                  <node concept="37vLTw" id="4TPMxteAJv7" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7Zr9caIEQRr" resolve="nodeMap" />
                                  </node>
                                  <node concept="liA8E" id="4TPMxteANbT" role="2OqNvi">
                                    <ref role="37wK5l" node="7Zr9caIDNwM" resolve="getId" />
                                    <node concept="37vLTw" id="4TPMxteAPg8" role="37wK5m">
                                      <ref role="3cqZAo" node="4TPMxteavth" resolve="targetSNode" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="4TPMxte_ILR" role="3cqZAp">
                              <node concept="3cpWsn" id="4TPMxte_ILS" role="3cpWs9">
                                <property role="TrG5h" value="targetNode" />
                                <node concept="3uibUv" id="4TPMxte_M0C" role="1tU5fm">
                                  <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="4TPMxteASy4" role="3cqZAp">
                              <node concept="3clFbS" id="4TPMxteASy6" role="3clFbx">
                                <node concept="3clFbF" id="4TPMxteB63H" role="3cqZAp">
                                  <node concept="37vLTI" id="4TPMxteB7K7" role="3clFbG">
                                    <node concept="2YIFZM" id="4TPMxteBb0Y" role="37vLTx">
                                      <ref role="1Pybhc" to="xxte:5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                                      <ref role="37wK5l" to="xxte:5gTrVpGyMwR" resolve="wrap" />
                                      <node concept="37vLTw" id="4TPMxteBcP6" role="37wK5m">
                                        <ref role="3cqZAo" node="4TPMxteavth" resolve="targetSNode" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="4TPMxteB63G" role="37vLTJ">
                                      <ref role="3cqZAo" node="4TPMxte_ILS" resolve="targetNode" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbC" id="4TPMxteAWA4" role="3clFbw">
                                <node concept="1adDum" id="4TPMxteAWLk" role="3uHU7w">
                                  <property role="1adDun" value="0L" />
                                </node>
                                <node concept="37vLTw" id="4TPMxteAUkD" role="3uHU7B">
                                  <ref role="3cqZAo" node="4TPMxteaAVy" resolve="targetId" />
                                </node>
                              </node>
                              <node concept="9aQIb" id="4TPMxteB2nW" role="9aQIa">
                                <node concept="3clFbS" id="4TPMxteB2nX" role="9aQI4">
                                  <node concept="3clFbF" id="4TPMxteA_8R" role="3cqZAp">
                                    <node concept="37vLTI" id="4TPMxteA_8T" role="3clFbG">
                                      <node concept="2ShNRf" id="4TPMxte_ILT" role="37vLTx">
                                        <node concept="1pGfFk" id="4TPMxte_ILU" role="2ShVmc">
                                          <ref role="37wK5l" to="jks5:~PNodeAdapter.&lt;init&gt;(long,org.modelix.model.api.IBranch)" resolve="PNodeAdapter" />
                                          <node concept="37vLTw" id="4TPMxte_ILV" role="37wK5m">
                                            <ref role="3cqZAo" node="4TPMxteaAVy" resolve="targetId" />
                                          </node>
                                          <node concept="37vLTw" id="1VtHttxWz9B" role="37wK5m">
                                            <ref role="3cqZAo" node="1VtHttxWu1b" resolve="branch" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="4TPMxteA_8X" role="37vLTJ">
                                        <ref role="3cqZAo" node="4TPMxte_ILS" resolve="targetNode" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="3WN29VksIvu" role="3cqZAp">
                              <node concept="3clFbS" id="3WN29VksIvw" role="3clFbx">
                                <node concept="3clFbF" id="4TPMxte9P9I" role="3cqZAp">
                                  <node concept="2OqwBi" id="4TPMxte9PhL" role="3clFbG">
                                    <node concept="37vLTw" id="4TPMxte9P9H" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4TPMxtdJxLn" resolve="t" />
                                    </node>
                                    <node concept="liA8E" id="4TPMxte9RHx" role="2OqNvi">
                                      <ref role="37wK5l" to="jks5:~IWriteTransaction.setReferenceTarget(long,java.lang.String,org.modelix.model.api.INodeReference)" resolve="setReferenceTarget" />
                                      <node concept="37vLTw" id="4TPMxte9Xnt" role="37wK5m">
                                        <ref role="3cqZAo" node="4TPMxtdK5Df" resolve="parentNodeId" />
                                      </node>
                                      <node concept="2OqwBi" id="4TPMxte9XZq" role="37wK5m">
                                        <node concept="2GrUjf" id="4TPMxte9XF8" role="2Oq$k0">
                                          <ref role="2Gs0qQ" node="4TPMxte9GF5" resolve="link" />
                                        </node>
                                        <node concept="liA8E" id="4TPMxtead_g" role="2OqNvi">
                                          <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="4TPMxteBeim" role="37wK5m">
                                        <node concept="37vLTw" id="4TPMxteBein" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4TPMxte_ILS" resolve="targetNode" />
                                        </node>
                                        <node concept="liA8E" id="4TPMxteBeio" role="2OqNvi">
                                          <ref role="37wK5l" to="jks5:~INode.getReference()" resolve="getReference" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="17QLQc" id="3WN29VksMr1" role="3clFbw">
                                <node concept="2OqwBi" id="3WN29VksPO_" role="3uHU7w">
                                  <node concept="37vLTw" id="3WN29VksOoR" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4TPMxte_ILS" resolve="targetNode" />
                                  </node>
                                  <node concept="liA8E" id="3WN29VksRJe" role="2OqNvi">
                                    <ref role="37wK5l" to="jks5:~INode.getReference()" resolve="getReference" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="3WN29VksKtV" role="3uHU7B">
                                  <ref role="3cqZAo" node="3WN29VkspjY" resolve="currentTarget" />
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
        <node concept="3clFbH" id="4TPMxtdJLAk" role="3cqZAp" />
        <node concept="2Gpval" id="4TPMxtdM0QE" role="3cqZAp">
          <node concept="2GrKxI" id="4TPMxtdM0QG" role="2Gsz3X">
            <property role="TrG5h" value="link" />
          </node>
          <node concept="2OqwBi" id="4TPMxtdM5tI" role="2GsD0m">
            <node concept="37vLTw" id="4TPMxtdM3Lg" role="2Oq$k0">
              <ref role="3cqZAo" node="4TPMxtdJYMR" resolve="concept" />
            </node>
            <node concept="liA8E" id="4TPMxtdM6QE" role="2OqNvi">
              <ref role="37wK5l" to="c17a:~SAbstractConcept.getContainmentLinks()" resolve="getContainmentLinks" />
            </node>
          </node>
          <node concept="3clFbS" id="4TPMxtdM0QK" role="2LFqv$">
            <node concept="3clFbF" id="3WN29VkugTl" role="3cqZAp">
              <node concept="1rXfSq" id="3WN29VkugTk" role="3clFbG">
                <ref role="37wK5l" node="3WN29VkugTc" resolve="syncChildren" />
                <node concept="2GrUjf" id="3WN29VkugTf" role="37wK5m">
                  <ref role="2Gs0qQ" node="4TPMxtdM0QG" resolve="link" />
                </node>
                <node concept="37vLTw" id="3WN29VkugTg" role="37wK5m">
                  <ref role="3cqZAo" node="4TPMxtdJxLn" resolve="t" />
                </node>
                <node concept="37vLTw" id="3WN29VkugTh" role="37wK5m">
                  <ref role="3cqZAo" node="4TPMxtdK5Df" resolve="parentNodeId" />
                </node>
                <node concept="37vLTw" id="3WN29VkugTi" role="37wK5m">
                  <ref role="3cqZAo" node="7Zr9caIF7Cn" resolve="parentNode" />
                </node>
                <node concept="37vLTw" id="3WN29VkugTj" role="37wK5m">
                  <ref role="3cqZAo" node="4TPMxtdJuIZ" resolve="includeDescendants" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3WN29Vkun8g" role="jymVt" />
    <node concept="3clFb_" id="3WN29VkugTc" role="jymVt">
      <property role="TrG5h" value="syncChildren" />
      <node concept="3Tmbuc" id="3WN29VkusYN" role="1B3o_S" />
      <node concept="3cqZAl" id="3WN29VkugTe" role="3clF45" />
      <node concept="37vLTG" id="3WN29VkugSK" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="3WN29VkugSL" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="37vLTG" id="3WN29VkugSM" role="3clF46">
        <property role="TrG5h" value="t" />
        <node concept="3uibUv" id="3WN29VkugSN" role="1tU5fm">
          <ref role="3uigEE" to="jks5:~IWriteTransaction" resolve="IWriteTransaction" />
        </node>
      </node>
      <node concept="37vLTG" id="3WN29VkugSO" role="3clF46">
        <property role="TrG5h" value="parentNodeId" />
        <node concept="3cpWsb" id="3WN29VkugSP" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3WN29VkugSQ" role="3clF46">
        <property role="TrG5h" value="parentNode" />
        <node concept="3uibUv" id="3WN29VkugSR" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="3WN29VkugSS" role="3clF46">
        <property role="TrG5h" value="includeDescendants" />
        <node concept="10P_77" id="3WN29VkugST" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3WN29VkugPp" role="3clF47">
        <node concept="3cpWs8" id="3WN29VkugPq" role="3cqZAp">
          <node concept="3cpWsn" id="3WN29VkugPr" role="3cpWs9">
            <property role="TrG5h" value="role" />
            <node concept="17QB3L" id="3WN29VkugPs" role="1tU5fm" />
            <node concept="2OqwBi" id="3WN29VkugPt" role="33vP2m">
              <node concept="37vLTw" id="3WN29VkugT2" role="2Oq$k0">
                <ref role="3cqZAo" node="3WN29VkugSK" resolve="link" />
              </node>
              <node concept="liA8E" id="3WN29VkugPv" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3WN29VkugPw" role="3cqZAp">
          <node concept="3cpWsn" id="3WN29VkugPx" role="3cpWs9">
            <property role="TrG5h" value="existingIds" />
            <node concept="2hMVRd" id="3WN29VkugPy" role="1tU5fm">
              <node concept="3uibUv" id="1m9roGBF_B7" role="2hN53Y">
                <ref role="3uigEE" to="wyt6:~Long" resolve="Long" />
              </node>
            </node>
            <node concept="2ShNRf" id="1yReInO0QT" role="33vP2m">
              <node concept="2i4dXS" id="1yReInNYZf" role="2ShVmc">
                <node concept="3uibUv" id="1yReInNYZg" role="HW$YZ">
                  <ref role="3uigEE" to="wyt6:~Long" resolve="Long" />
                </node>
                <node concept="2OqwBi" id="3WN29VkugPB" role="I$8f6">
                  <node concept="37vLTw" id="3WN29VkugT8" role="2Oq$k0">
                    <ref role="3cqZAo" node="3WN29VkugSM" resolve="t" />
                  </node>
                  <node concept="liA8E" id="3WN29VkugPD" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~ITransaction.getChildren(long,java.lang.String)" resolve="getChildren" />
                    <node concept="37vLTw" id="3WN29VkugSV" role="37wK5m">
                      <ref role="3cqZAo" node="3WN29VkugSO" resolve="parentNodeId" />
                    </node>
                    <node concept="37vLTw" id="3WN29VkugPF" role="37wK5m">
                      <ref role="3cqZAo" node="3WN29VkugPr" resolve="role" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3WN29VkugPG" role="3cqZAp">
          <node concept="3cpWsn" id="3WN29VkugPH" role="3cpWs9">
            <property role="TrG5h" value="existingNodes" />
            <node concept="2hMVRd" id="3WN29VkugPI" role="1tU5fm">
              <node concept="3uibUv" id="3WN29VkugPJ" role="2hN53Y">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="3WN29VkugPK" role="33vP2m">
              <node concept="2i4dXS" id="3WN29VkugPL" role="2ShVmc">
                <node concept="3uibUv" id="3WN29VkugPM" role="HW$YZ">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="2OqwBi" id="3WN29VkugPN" role="I$8f6">
                  <node concept="2OqwBi" id="3WN29VkugPO" role="2Oq$k0">
                    <node concept="37vLTw" id="3WN29VkugPP" role="2Oq$k0">
                      <ref role="3cqZAo" node="3WN29VkugPx" resolve="existingIds" />
                    </node>
                    <node concept="3$u5V9" id="3WN29VkugPQ" role="2OqNvi">
                      <node concept="1bVj0M" id="3WN29VkugPR" role="23t8la">
                        <node concept="3clFbS" id="3WN29VkugPS" role="1bW5cS">
                          <node concept="3clFbF" id="3WN29VkugPT" role="3cqZAp">
                            <node concept="2OqwBi" id="3WN29VkugPU" role="3clFbG">
                              <node concept="37vLTw" id="3WN29VkugPV" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Zr9caIEQRr" resolve="nodeMap" />
                              </node>
                              <node concept="liA8E" id="3WN29VkugPW" role="2OqNvi">
                                <ref role="37wK5l" node="7Zr9caIDL3D" resolve="getNode" />
                                <node concept="37vLTw" id="3WN29VkugPX" role="37wK5m">
                                  <ref role="3cqZAo" node="3WN29VkugPY" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="3WN29VkugPY" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="3WN29VkugPZ" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1KnU$U" id="3WN29VkugQ0" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3WN29VkugQ1" role="3cqZAp">
          <node concept="3cpWsn" id="3WN29VkugQ2" role="3cpWs9">
            <property role="TrG5h" value="expectedNodes" />
            <node concept="2hMVRd" id="3WN29VkugQ3" role="1tU5fm">
              <node concept="3uibUv" id="3WN29VkugQ4" role="2hN53Y">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2ShNRf" id="3WN29VkugQ5" role="33vP2m">
              <node concept="32HrFt" id="3WN29VkugQ6" role="2ShVmc">
                <node concept="3uibUv" id="3WN29VkugQ7" role="HW$YZ">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="10QFUN" id="3WN29VkugQ8" role="I$8f6">
                  <node concept="2OqwBi" id="3WN29VkugQ9" role="10QFUP">
                    <node concept="37vLTw" id="3WN29VkugT3" role="2Oq$k0">
                      <ref role="3cqZAo" node="3WN29VkugSQ" resolve="parentNode" />
                    </node>
                    <node concept="liA8E" id="3WN29VkugQb" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getChildren(org.jetbrains.mps.openapi.language.SContainmentLink)" resolve="getChildren" />
                      <node concept="37vLTw" id="3WN29VkugT7" role="37wK5m">
                        <ref role="3cqZAo" node="3WN29VkugSK" resolve="link" />
                      </node>
                    </node>
                  </node>
                  <node concept="A3Dl8" id="3WN29VkugQd" role="10QFUM">
                    <node concept="3uibUv" id="3WN29VkugQe" role="A3Ik2">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3WN29VkugQf" role="3cqZAp">
          <node concept="3cpWsn" id="3WN29VkugQg" role="3cpWs9">
            <property role="TrG5h" value="missingNodes" />
            <node concept="A3Dl8" id="3WN29VkugQh" role="1tU5fm">
              <node concept="3uibUv" id="3WN29VkugQi" role="A3Ik2">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="3WN29VkugQj" role="33vP2m">
              <node concept="37vLTw" id="3WN29VkugQk" role="2Oq$k0">
                <ref role="3cqZAo" node="3WN29VkugQ2" resolve="expectedNodes" />
              </node>
              <node concept="66VNe" id="3WN29VkugQl" role="2OqNvi">
                <node concept="37vLTw" id="3WN29VkugQm" role="576Qk">
                  <ref role="3cqZAo" node="3WN29VkugPH" resolve="existingNodes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3WN29VkugQn" role="3cqZAp">
          <node concept="3cpWsn" id="3WN29VkugQo" role="3cpWs9">
            <property role="TrG5h" value="unexpectedIds" />
            <node concept="A3Dl8" id="3WN29VkugQp" role="1tU5fm">
              <node concept="3cpWsb" id="3WN29VkugQq" role="A3Ik2" />
            </node>
            <node concept="2OqwBi" id="3WN29VkugQr" role="33vP2m">
              <node concept="37vLTw" id="3WN29VkugQs" role="2Oq$k0">
                <ref role="3cqZAo" node="3WN29VkugPx" resolve="existingIds" />
              </node>
              <node concept="3zZkjj" id="3WN29VkugQt" role="2OqNvi">
                <node concept="1bVj0M" id="3WN29VkugQu" role="23t8la">
                  <node concept="3clFbS" id="3WN29VkugQv" role="1bW5cS">
                    <node concept="3cpWs8" id="3WN29VkugQw" role="3cqZAp">
                      <node concept="3cpWsn" id="3WN29VkugQx" role="3cpWs9">
                        <property role="TrG5h" value="n" />
                        <node concept="3uibUv" id="3WN29VkugQy" role="1tU5fm">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                        <node concept="2OqwBi" id="3WN29VkugQz" role="33vP2m">
                          <node concept="37vLTw" id="3WN29VkugQ$" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Zr9caIEQRr" resolve="nodeMap" />
                          </node>
                          <node concept="liA8E" id="3WN29VkugQ_" role="2OqNvi">
                            <ref role="37wK5l" node="7Zr9caIDL3D" resolve="getNode" />
                            <node concept="37vLTw" id="3WN29VkugQA" role="37wK5m">
                              <ref role="3cqZAo" node="3WN29VkugQL" resolve="id" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3WN29VkugQB" role="3cqZAp">
                      <node concept="22lmx$" id="3WN29VkugQC" role="3clFbG">
                        <node concept="3fqX7Q" id="3WN29VkugQD" role="3uHU7w">
                          <node concept="2OqwBi" id="3WN29VkugQE" role="3fr31v">
                            <node concept="37vLTw" id="3WN29VkugQF" role="2Oq$k0">
                              <ref role="3cqZAo" node="3WN29VkugQ2" resolve="expectedNodes" />
                            </node>
                            <node concept="3JPx81" id="3WN29VkugQG" role="2OqNvi">
                              <node concept="37vLTw" id="3WN29VkugQH" role="25WWJ7">
                                <ref role="3cqZAo" node="3WN29VkugQx" resolve="n" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="3WN29VkugQI" role="3uHU7B">
                          <node concept="37vLTw" id="3WN29VkugQJ" role="3uHU7B">
                            <ref role="3cqZAo" node="3WN29VkugQx" resolve="n" />
                          </node>
                          <node concept="10Nm6u" id="3WN29VkugQK" role="3uHU7w" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3WN29VkugQL" role="1bW2Oz">
                    <property role="TrG5h" value="id" />
                    <node concept="2jxLKc" id="3WN29VkugQM" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3WN29VkugQN" role="3cqZAp" />
        <node concept="2Gpval" id="3WN29VkugQO" role="3cqZAp">
          <node concept="2GrKxI" id="3WN29VkugQP" role="2Gsz3X">
            <property role="TrG5h" value="missingNode" />
          </node>
          <node concept="2OqwBi" id="3WN29VkugQQ" role="2GsD0m">
            <node concept="37vLTw" id="3WN29VkugQR" role="2Oq$k0">
              <ref role="3cqZAo" node="3WN29VkugQg" resolve="missingNodes" />
            </node>
            <node concept="UnYns" id="3WN29VkugQS" role="2OqNvi">
              <node concept="3Tqbb2" id="3WN29VkugQT" role="UnYnz" />
            </node>
          </node>
          <node concept="3clFbS" id="3WN29VkugQU" role="2LFqv$">
            <node concept="3cpWs8" id="3WN29VkugQV" role="3cqZAp">
              <node concept="3cpWsn" id="3WN29VkugQW" role="3cpWs9">
                <property role="TrG5h" value="id" />
                <node concept="3cpWsb" id="3WN29VkugQX" role="1tU5fm" />
                <node concept="2OqwBi" id="3WN29VkugQY" role="33vP2m">
                  <node concept="37vLTw" id="3WN29VkugQZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Zr9caIEQRr" resolve="nodeMap" />
                  </node>
                  <node concept="liA8E" id="3WN29VkugR0" role="2OqNvi">
                    <ref role="37wK5l" node="7Zr9caIDNwM" resolve="getId" />
                    <node concept="2GrUjf" id="3WN29VkugR1" role="37wK5m">
                      <ref role="2Gs0qQ" node="3WN29VkugQP" resolve="missingNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3WN29VkugR2" role="3cqZAp">
              <node concept="3clFbS" id="3WN29VkugR3" role="3clFbx">
                <node concept="3clFbF" id="3WN29VkugR4" role="3cqZAp">
                  <node concept="37vLTI" id="3WN29VkugR5" role="3clFbG">
                    <node concept="37vLTw" id="3WN29VkugR6" role="37vLTJ">
                      <ref role="3cqZAo" node="3WN29VkugQW" resolve="id" />
                    </node>
                    <node concept="2OqwBi" id="3WN29VkugR7" role="37vLTx">
                      <node concept="37vLTw" id="3WN29VkugSX" role="2Oq$k0">
                        <ref role="3cqZAo" node="3WN29VkugSM" resolve="t" />
                      </node>
                      <node concept="liA8E" id="3WN29VkugR9" role="2OqNvi">
                        <ref role="37wK5l" to="jks5:~IWriteTransaction.addNewChild(long,java.lang.String,int,org.modelix.model.api.IConcept)" resolve="addNewChild" />
                        <node concept="37vLTw" id="3WN29VkugSY" role="37wK5m">
                          <ref role="3cqZAo" node="3WN29VkugSO" resolve="parentNodeId" />
                        </node>
                        <node concept="37vLTw" id="3WN29VkugRb" role="37wK5m">
                          <ref role="3cqZAo" node="3WN29VkugPr" resolve="role" />
                        </node>
                        <node concept="2OqwBi" id="3WN29VkugRc" role="37wK5m">
                          <node concept="2GrUjf" id="3WN29VkugRd" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="3WN29VkugQP" resolve="missingNode" />
                          </node>
                          <node concept="2bSWHS" id="3WN29VkugRe" role="2OqNvi" />
                        </node>
                        <node concept="2YIFZM" id="3WN29VkugRf" role="37wK5m">
                          <ref role="1Pybhc" to="xxte:5gTrVpGjuL2" resolve="SConceptAdapter" />
                          <ref role="37wK5l" to="xxte:3ECE8iPOmg5" resolve="wrap" />
                          <node concept="2OqwBi" id="3WN29VkugRg" role="37wK5m">
                            <node concept="2GrUjf" id="3WN29VkugRh" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="3WN29VkugQP" resolve="missingNode" />
                            </node>
                            <node concept="2yIwOk" id="3WN29VkugRi" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3WN29VkugRj" role="3cqZAp">
                  <node concept="2OqwBi" id="3WN29VkugRk" role="3clFbG">
                    <node concept="37vLTw" id="3WN29VkugRl" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Zr9caIEQRr" resolve="nodeMap" />
                    </node>
                    <node concept="liA8E" id="3WN29VkugRm" role="2OqNvi">
                      <ref role="37wK5l" node="7Zr9caIDItk" resolve="put" />
                      <node concept="37vLTw" id="3WN29VkugRn" role="37wK5m">
                        <ref role="3cqZAo" node="3WN29VkugQW" resolve="id" />
                      </node>
                      <node concept="2GrUjf" id="3WN29VkugRo" role="37wK5m">
                        <ref role="2Gs0qQ" node="3WN29VkugQP" resolve="missingNode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="3WN29VkugRp" role="3clFbw">
                <node concept="1adDum" id="3WN29VkugRq" role="3uHU7w">
                  <property role="1adDun" value="0L" />
                </node>
                <node concept="37vLTw" id="3WN29VkugRr" role="3uHU7B">
                  <ref role="3cqZAo" node="3WN29VkugQW" resolve="id" />
                </node>
              </node>
              <node concept="9aQIb" id="3WN29VkugRs" role="9aQIa">
                <node concept="3clFbS" id="3WN29VkugRt" role="9aQI4">
                  <node concept="3clFbF" id="3WN29VkugRu" role="3cqZAp">
                    <node concept="2OqwBi" id="3WN29VkugRv" role="3clFbG">
                      <node concept="37vLTw" id="3WN29VkugSU" role="2Oq$k0">
                        <ref role="3cqZAo" node="3WN29VkugSM" resolve="t" />
                      </node>
                      <node concept="liA8E" id="3WN29VkugRx" role="2OqNvi">
                        <ref role="37wK5l" to="jks5:~IWriteTransaction.moveChild(long,java.lang.String,int,long)" resolve="moveChild" />
                        <node concept="37vLTw" id="3WN29VkugSW" role="37wK5m">
                          <ref role="3cqZAo" node="3WN29VkugSO" resolve="parentNodeId" />
                        </node>
                        <node concept="37vLTw" id="3WN29VkugRz" role="37wK5m">
                          <ref role="3cqZAo" node="3WN29VkugPr" resolve="role" />
                        </node>
                        <node concept="2OqwBi" id="3WN29VkugR$" role="37wK5m">
                          <node concept="2GrUjf" id="3WN29VkugR_" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="3WN29VkugQP" resolve="missingNode" />
                          </node>
                          <node concept="2bSWHS" id="3WN29VkugRA" role="2OqNvi" />
                        </node>
                        <node concept="37vLTw" id="3WN29VkugRB" role="37wK5m">
                          <ref role="3cqZAo" node="3WN29VkugQW" resolve="id" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3WN29VkugRC" role="3cqZAp" />
        <node concept="2Gpval" id="3WN29VkugRD" role="3cqZAp">
          <node concept="2GrKxI" id="3WN29VkugRE" role="2Gsz3X">
            <property role="TrG5h" value="unexpected" />
          </node>
          <node concept="37vLTw" id="3WN29VkugRF" role="2GsD0m">
            <ref role="3cqZAo" node="3WN29VkugQo" resolve="unexpectedIds" />
          </node>
          <node concept="3clFbS" id="3WN29VkugRG" role="2LFqv$">
            <node concept="3clFbF" id="3WN29VkugRH" role="3cqZAp">
              <node concept="2OqwBi" id="3WN29VkugRI" role="3clFbG">
                <node concept="37vLTw" id="3WN29VkugT1" role="2Oq$k0">
                  <ref role="3cqZAo" node="3WN29VkugSM" resolve="t" />
                </node>
                <node concept="liA8E" id="3WN29VkugRK" role="2OqNvi">
                  <ref role="37wK5l" to="jks5:~IWriteTransaction.moveChild(long,java.lang.String,int,long)" resolve="moveChild" />
                  <node concept="10M0yZ" id="1m9roGBFCC6" role="37wK5m">
                    <ref role="3cqZAo" to="jks5:~ITree.ROOT_ID" resolve="ROOT_ID" />
                    <ref role="1PxDUh" to="jks5:~ITree" resolve="ITree" />
                  </node>
                  <node concept="37vLTw" id="3WN29VkugRM" role="37wK5m">
                    <ref role="3cqZAo" node="4TPMxtdwm8M" resolve="DETACHED_NODES_ROLE" />
                  </node>
                  <node concept="3cmrfG" id="3WN29VkugRN" role="37wK5m">
                    <property role="3cmrfH" value="-1" />
                  </node>
                  <node concept="2GrUjf" id="3WN29VkugRO" role="37wK5m">
                    <ref role="2Gs0qQ" node="3WN29VkugRE" resolve="unexpected" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3WN29VkugRP" role="3cqZAp" />
        <node concept="3SKdUt" id="3WN29VkugRQ" role="3cqZAp">
          <node concept="1PaTwC" id="xL$$tDozst" role="1aUNEU">
            <node concept="3oM_SD" id="xL$$tDozsu" role="1PaTwD">
              <property role="3oM_SC" value="order" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3WN29VkugRS" role="3cqZAp">
          <node concept="3cpWsn" id="3WN29VkugRT" role="3cpWs9">
            <property role="TrG5h" value="index" />
            <node concept="10Oyi0" id="3WN29VkugRU" role="1tU5fm" />
            <node concept="3cmrfG" id="3WN29VkugRV" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="3WN29VkugRW" role="3cqZAp">
          <node concept="2GrKxI" id="3WN29VkugRX" role="2Gsz3X">
            <property role="TrG5h" value="expectedNode" />
          </node>
          <node concept="37vLTw" id="3WN29VkugRY" role="2GsD0m">
            <ref role="3cqZAo" node="3WN29VkugQ2" resolve="expectedNodes" />
          </node>
          <node concept="3clFbS" id="3WN29VkugRZ" role="2LFqv$">
            <node concept="3cpWs8" id="3WN29VkugS0" role="3cqZAp">
              <node concept="3cpWsn" id="3WN29VkugS1" role="3cpWs9">
                <property role="TrG5h" value="expectedId" />
                <node concept="3cpWsb" id="3WN29VkugS2" role="1tU5fm" />
                <node concept="2OqwBi" id="3WN29VkugS3" role="33vP2m">
                  <node concept="37vLTw" id="3WN29VkugS4" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Zr9caIEQRr" resolve="nodeMap" />
                  </node>
                  <node concept="liA8E" id="3WN29VkugS5" role="2OqNvi">
                    <ref role="37wK5l" node="7Zr9caIDNwM" resolve="getId" />
                    <node concept="2GrUjf" id="3WN29VkugS6" role="37wK5m">
                      <ref role="2Gs0qQ" node="3WN29VkugRX" resolve="expectedNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1yReInO447" role="3cqZAp">
              <node concept="3cpWsn" id="1yReInO448" role="3cpWs9">
                <property role="TrG5h" value="children" />
                <node concept="A3Dl8" id="1yReInO7NN" role="1tU5fm">
                  <node concept="3uibUv" id="1yReInO7NP" role="A3Ik2">
                    <ref role="3uigEE" to="wyt6:~Long" resolve="Long" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1yReInO449" role="33vP2m">
                  <node concept="37vLTw" id="1yReInO44a" role="2Oq$k0">
                    <ref role="3cqZAo" node="3WN29VkugSM" resolve="t" />
                  </node>
                  <node concept="liA8E" id="1yReInO44b" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~ITransaction.getChildren(long,java.lang.String)" resolve="getChildren" />
                    <node concept="37vLTw" id="1yReInO44c" role="37wK5m">
                      <ref role="3cqZAo" node="3WN29VkugSO" resolve="parentNodeId" />
                    </node>
                    <node concept="37vLTw" id="1yReInO44d" role="37wK5m">
                      <ref role="3cqZAo" node="3WN29VkugPr" resolve="role" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3WN29VkugS7" role="3cqZAp">
              <node concept="3cpWsn" id="3WN29VkugS8" role="3cpWs9">
                <property role="TrG5h" value="actualId" />
                <node concept="3cpWsb" id="1yReInObNW" role="1tU5fm" />
                <node concept="2OqwBi" id="1yReInOesR" role="33vP2m">
                  <node concept="2YIFZM" id="1yReInOdtm" role="2Oq$k0">
                    <ref role="37wK5l" to="33ny:~Optional.ofNullable(java.lang.Object)" resolve="ofNullable" />
                    <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                    <node concept="2OqwBi" id="1m9roGBFGKi" role="37wK5m">
                      <node concept="2OqwBi" id="1m9roGBFEuU" role="2Oq$k0">
                        <node concept="37vLTw" id="1yReInO44e" role="2Oq$k0">
                          <ref role="3cqZAo" node="1yReInO448" resolve="children" />
                        </node>
                        <node concept="7r0gD" id="1yReInO8kQ" role="2OqNvi">
                          <node concept="3cmrfG" id="1yReInO95T" role="7T0AP">
                            <property role="3cmrfH" value="1" />
                          </node>
                        </node>
                      </node>
                      <node concept="1uHKPH" id="1yReInOaIp" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1yReInOflG" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Optional.orElse(java.lang.Object)" resolve="orElse" />
                    <node concept="1adDum" id="1yReInOgLr" role="37wK5m">
                      <property role="1adDun" value="0L" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3WN29VkugSk" role="3cqZAp">
              <node concept="3clFbS" id="3WN29VkugSl" role="3clFbx">
                <node concept="3clFbF" id="3WN29VkugSm" role="3cqZAp">
                  <node concept="2OqwBi" id="3WN29VkugSn" role="3clFbG">
                    <node concept="37vLTw" id="3WN29VkugT0" role="2Oq$k0">
                      <ref role="3cqZAo" node="3WN29VkugSM" resolve="t" />
                    </node>
                    <node concept="liA8E" id="3WN29VkugSp" role="2OqNvi">
                      <ref role="37wK5l" to="jks5:~IWriteTransaction.moveChild(long,java.lang.String,int,long)" resolve="moveChild" />
                      <node concept="37vLTw" id="3WN29VkugT5" role="37wK5m">
                        <ref role="3cqZAo" node="3WN29VkugSO" resolve="parentNodeId" />
                      </node>
                      <node concept="37vLTw" id="3WN29VkugSr" role="37wK5m">
                        <ref role="3cqZAo" node="3WN29VkugPr" resolve="role" />
                      </node>
                      <node concept="37vLTw" id="3WN29VkugSs" role="37wK5m">
                        <ref role="3cqZAo" node="3WN29VkugRT" resolve="index" />
                      </node>
                      <node concept="37vLTw" id="3WN29VkugSt" role="37wK5m">
                        <ref role="3cqZAo" node="3WN29VkugS1" resolve="expectedId" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="3WN29VkugSu" role="3clFbw">
                <node concept="37vLTw" id="3WN29VkugSv" role="3uHU7w">
                  <ref role="3cqZAo" node="3WN29VkugS1" resolve="expectedId" />
                </node>
                <node concept="37vLTw" id="3WN29VkugSw" role="3uHU7B">
                  <ref role="3cqZAo" node="3WN29VkugS8" resolve="actualId" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3WN29VkugSx" role="3cqZAp">
              <node concept="3uNrnE" id="3WN29VkugSy" role="3clFbG">
                <node concept="37vLTw" id="3WN29VkugSz" role="2$L3a6">
                  <ref role="3cqZAo" node="3WN29VkugRT" resolve="index" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3WN29VkugS$" role="3cqZAp" />
        <node concept="3clFbJ" id="3WN29VkugS_" role="3cqZAp">
          <node concept="3clFbS" id="3WN29VkugSA" role="3clFbx">
            <node concept="2Gpval" id="3WN29VkugSB" role="3cqZAp">
              <node concept="2GrKxI" id="3WN29VkugSC" role="2Gsz3X">
                <property role="TrG5h" value="childNode" />
              </node>
              <node concept="37vLTw" id="3WN29VkugSD" role="2GsD0m">
                <ref role="3cqZAo" node="3WN29VkugQ2" resolve="expectedNodes" />
              </node>
              <node concept="3clFbS" id="3WN29VkugSE" role="2LFqv$">
                <node concept="3clFbF" id="3WN29VkugSF" role="3cqZAp">
                  <node concept="1rXfSq" id="3WN29VkugSG" role="3clFbG">
                    <ref role="37wK5l" node="7Zr9caIF7Ck" resolve="syncNode" />
                    <node concept="2GrUjf" id="3WN29VkugSH" role="37wK5m">
                      <ref role="2Gs0qQ" node="3WN29VkugSC" resolve="childNode" />
                    </node>
                    <node concept="37vLTw" id="3WN29VkugT6" role="37wK5m">
                      <ref role="3cqZAo" node="3WN29VkugSS" resolve="includeDescendants" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="3WN29VkugT4" role="3clFbw">
            <ref role="3cqZAo" node="3WN29VkugSS" resolve="includeDescendants" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TPMxtdCRzV" role="jymVt" />
    <node concept="3clFb_" id="4TPMxtdKBae" role="jymVt">
      <property role="TrG5h" value="getOrCreateNode" />
      <node concept="37vLTG" id="4TPMxtdKLtO" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="4TPMxtdKRDf" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3cpWsb" id="4TPMxtdKS7n" role="3clF45" />
      <node concept="3Tmbuc" id="4TPMxtdKOMo" role="1B3o_S" />
      <node concept="3clFbS" id="4TPMxtdKBai" role="3clF47">
        <node concept="3cpWs8" id="4TPMxtdKUR0" role="3cqZAp">
          <node concept="3cpWsn" id="4TPMxtdKUR1" role="3cpWs9">
            <property role="TrG5h" value="nodeId" />
            <node concept="3cpWsb" id="4TPMxtdKUR2" role="1tU5fm" />
            <node concept="2OqwBi" id="4TPMxtdKUR3" role="33vP2m">
              <node concept="37vLTw" id="4TPMxtdKUR4" role="2Oq$k0">
                <ref role="3cqZAo" node="7Zr9caIEQRr" resolve="nodeMap" />
              </node>
              <node concept="liA8E" id="4TPMxtdKUR5" role="2OqNvi">
                <ref role="37wK5l" node="7Zr9caIDNwM" resolve="getId" />
                <node concept="37vLTw" id="4TPMxtdKW6O" role="37wK5m">
                  <ref role="3cqZAo" node="4TPMxtdKLtO" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4TPMxtdKUR9" role="3cqZAp">
          <node concept="3clFbS" id="4TPMxtdKURa" role="3clFbx">
            <node concept="3cpWs8" id="4TPMxtdKYTU" role="3cqZAp">
              <node concept="3cpWsn" id="4TPMxtdKYTV" role="3cpWs9">
                <property role="TrG5h" value="t" />
                <node concept="3uibUv" id="4TPMxtdKYTR" role="1tU5fm">
                  <ref role="3uigEE" to="jks5:~IWriteTransaction" resolve="IWriteTransaction" />
                </node>
                <node concept="2OqwBi" id="4TPMxtdKYTW" role="33vP2m">
                  <node concept="2OqwBi" id="1VtHttxW$IR" role="2Oq$k0">
                    <node concept="37vLTw" id="4TPMxtdKYTX" role="2Oq$k0">
                      <ref role="3cqZAo" node="4TPMxtdD8F5" resolve="activeBranch" />
                    </node>
                    <node concept="liA8E" id="1VtHttxW_aB" role="2OqNvi">
                      <ref role="37wK5l" to="5440:~IIndirectBranch.getBranch()" resolve="getBranch" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4TPMxtdKYTY" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~IBranch.getWriteTransaction()" resolve="getWriteTransaction" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4TPMxtdKURb" role="3cqZAp">
              <node concept="37vLTI" id="4TPMxtdKURc" role="3clFbG">
                <node concept="2OqwBi" id="4TPMxtdKURd" role="37vLTx">
                  <node concept="37vLTw" id="4TPMxtdKZwe" role="2Oq$k0">
                    <ref role="3cqZAo" node="4TPMxtdKYTV" resolve="t" />
                  </node>
                  <node concept="liA8E" id="4TPMxtdKURf" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~IWriteTransaction.addNewChild(long,java.lang.String,int,org.modelix.model.api.IConcept)" resolve="addNewChild" />
                    <node concept="10M0yZ" id="4TPMxtdL1bn" role="37wK5m">
                      <ref role="1PxDUh" to="jks5:~ITree" resolve="ITree" />
                      <ref role="3cqZAo" to="jks5:~ITree.ROOT_ID" resolve="ROOT_ID" />
                    </node>
                    <node concept="37vLTw" id="4TPMxtdLacW" role="37wK5m">
                      <ref role="3cqZAo" node="4TPMxtdwm8M" resolve="DETACHED_NODES_ROLE" />
                    </node>
                    <node concept="3cmrfG" id="4TPMxtdKURi" role="37wK5m">
                      <property role="3cmrfH" value="-1" />
                    </node>
                    <node concept="2YIFZM" id="4TPMxtdKURj" role="37wK5m">
                      <ref role="1Pybhc" to="xxte:5gTrVpGjuL2" resolve="SConceptAdapter" />
                      <ref role="37wK5l" to="xxte:3ECE8iPOmg5" resolve="wrap" />
                      <node concept="2OqwBi" id="4TPMxtdLb1S" role="37wK5m">
                        <node concept="37vLTw" id="4TPMxtdLaSd" role="2Oq$k0">
                          <ref role="3cqZAo" node="4TPMxtdKLtO" resolve="node" />
                        </node>
                        <node concept="liA8E" id="4TPMxtdLb_D" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getConcept()" resolve="getConcept" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4TPMxtdKURp" role="37vLTJ">
                  <ref role="3cqZAo" node="4TPMxtdKUR1" resolve="nodeId" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4TPMxtdKURq" role="3cqZAp">
              <node concept="2OqwBi" id="4TPMxtdKURr" role="3clFbG">
                <node concept="37vLTw" id="4TPMxtdKURs" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Zr9caIEQRr" resolve="nodeMap" />
                </node>
                <node concept="liA8E" id="4TPMxtdKURt" role="2OqNvi">
                  <ref role="37wK5l" node="7Zr9caIDItk" resolve="put" />
                  <node concept="37vLTw" id="4TPMxtdKURu" role="37wK5m">
                    <ref role="3cqZAo" node="4TPMxtdKUR1" resolve="nodeId" />
                  </node>
                  <node concept="37vLTw" id="4TPMxtdLbWQ" role="37wK5m">
                    <ref role="3cqZAo" node="4TPMxtdKLtO" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="4TPMxtdKURy" role="3clFbw">
            <node concept="1adDum" id="4TPMxtdKURz" role="3uHU7w">
              <property role="1adDun" value="0L" />
            </node>
            <node concept="37vLTw" id="4TPMxtdKUR$" role="3uHU7B">
              <ref role="3cqZAo" node="4TPMxtdKUR1" resolve="nodeId" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4TPMxtdLcZy" role="3cqZAp">
          <node concept="37vLTw" id="4TPMxtdLduC" role="3cqZAk">
            <ref role="3cqZAo" node="4TPMxtdKUR1" resolve="nodeId" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TPMxte8HWa" role="jymVt" />
    <node concept="3clFb_" id="4TPMxte8IF0" role="jymVt">
      <property role="TrG5h" value="processPendingReferences" />
      <node concept="3cqZAl" id="4TPMxte8IF2" role="3clF45" />
      <node concept="3Tmbuc" id="4TPMxte9_Qn" role="1B3o_S" />
      <node concept="3clFbS" id="4TPMxte8IF4" role="3clF47">
        <node concept="2Gpval" id="4TPMxte93fv" role="3cqZAp">
          <node concept="2GrKxI" id="4TPMxte93fw" role="2Gsz3X">
            <property role="TrG5h" value="r" />
          </node>
          <node concept="37vLTw" id="4TPMxte93Af" role="2GsD0m">
            <ref role="3cqZAo" node="4TPMxte8CKo" resolve="pendingReferences" />
          </node>
          <node concept="3clFbS" id="4TPMxte93fy" role="2LFqv$">
            <node concept="3clFbF" id="4TPMxte93ZA" role="3cqZAp">
              <node concept="2OqwBi" id="4TPMxte93ZO" role="3clFbG">
                <node concept="2GrUjf" id="4TPMxte93Z_" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4TPMxte93fw" resolve="r" />
                </node>
                <node concept="1Bd96e" id="4TPMxte9i9Z" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4TPMxte9iCl" role="3cqZAp">
          <node concept="2OqwBi" id="4TPMxte9jGB" role="3clFbG">
            <node concept="37vLTw" id="4TPMxte9iCj" role="2Oq$k0">
              <ref role="3cqZAo" node="4TPMxte8CKo" resolve="pendingReferences" />
            </node>
            <node concept="2Kehj3" id="4TPMxte9_aw" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4TPMxtdKzPU" role="jymVt" />
    <node concept="312cEu" id="7Zr9caIDEiL" role="jymVt">
      <property role="TrG5h" value="NodeMap" />
      <node concept="312cEg" id="7Zr9caID8Ep" role="jymVt">
        <property role="TrG5h" value="id2node" />
        <node concept="3Tm6S6" id="7Zr9caID8Eq" role="1B3o_S" />
        <node concept="3uibUv" id="7Zr9caIDoIK" role="1tU5fm">
          <ref role="3uigEE" to="oiz2:~TLongObjectMap" resolve="TLongObjectMap" />
          <node concept="3uibUv" id="7Zr9caIDpFO" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="2ShNRf" id="7Zr9caIDer5" role="33vP2m">
          <node concept="1pGfFk" id="7Zr9caIDvbz" role="2ShVmc">
            <ref role="37wK5l" to="5ka6:~TLongObjectHashMap.&lt;init&gt;()" resolve="TLongObjectHashMap" />
            <node concept="3uibUv" id="7Zr9caIDwIX" role="1pMfVU">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="312cEg" id="7Zr9caIDfIY" role="jymVt">
        <property role="TrG5h" value="node2id" />
        <node concept="3Tm6S6" id="7Zr9caIDfIZ" role="1B3o_S" />
        <node concept="3uibUv" id="7Zr9caIDy7C" role="1tU5fm">
          <ref role="3uigEE" to="oiz2:~TObjectLongMap" resolve="TObjectLongMap" />
          <node concept="3uibUv" id="7Zr9caIDzeO" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="2ShNRf" id="7Zr9caID$nq" role="33vP2m">
          <node concept="1pGfFk" id="7Zr9caIDBaF" role="2ShVmc">
            <ref role="37wK5l" to="5ka6:~TObjectLongHashMap.&lt;init&gt;()" resolve="TObjectLongHashMap" />
            <node concept="3uibUv" id="7Zr9caIDCHG" role="1pMfVU">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7Zr9caIDHIG" role="jymVt" />
      <node concept="3clFb_" id="7Zr9caIDItk" role="jymVt">
        <property role="TrG5h" value="put" />
        <node concept="37vLTG" id="7Zr9caIDJ28" role="3clF46">
          <property role="TrG5h" value="id" />
          <node concept="3cpWsb" id="7Zr9caIDJ_8" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7Zr9caIDJCb" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="7Zr9caIDKtg" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3cqZAl" id="7Zr9caIDItm" role="3clF45" />
        <node concept="3Tm1VV" id="7Zr9caIDItn" role="1B3o_S" />
        <node concept="3clFbS" id="7Zr9caIDIto" role="3clF47">
          <node concept="3clFbF" id="7Zr9caIDQPj" role="3cqZAp">
            <node concept="2OqwBi" id="7Zr9caIDROW" role="3clFbG">
              <node concept="37vLTw" id="7Zr9caIDQPi" role="2Oq$k0">
                <ref role="3cqZAo" node="7Zr9caID8Ep" resolve="id2node" />
              </node>
              <node concept="liA8E" id="7Zr9caIDS1e" role="2OqNvi">
                <ref role="37wK5l" to="oiz2:~TLongObjectMap.put(long,java.lang.Object)" resolve="put" />
                <node concept="37vLTw" id="7Zr9caIDTLC" role="37wK5m">
                  <ref role="3cqZAo" node="7Zr9caIDJ28" resolve="id" />
                </node>
                <node concept="37vLTw" id="7Zr9caIDUP2" role="37wK5m">
                  <ref role="3cqZAo" node="7Zr9caIDJCb" resolve="node" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7Zr9caIDVLE" role="3cqZAp">
            <node concept="2OqwBi" id="7Zr9caIDWNT" role="3clFbG">
              <node concept="37vLTw" id="7Zr9caIDVLC" role="2Oq$k0">
                <ref role="3cqZAo" node="7Zr9caIDfIY" resolve="node2id" />
              </node>
              <node concept="liA8E" id="7Zr9caIDZ9j" role="2OqNvi">
                <ref role="37wK5l" to="oiz2:~TObjectLongMap.put(java.lang.Object,long)" resolve="put" />
                <node concept="37vLTw" id="7Zr9caIE03U" role="37wK5m">
                  <ref role="3cqZAo" node="7Zr9caIDJCb" resolve="node" />
                </node>
                <node concept="37vLTw" id="7Zr9caIE1bu" role="37wK5m">
                  <ref role="3cqZAo" node="7Zr9caIDJ28" resolve="id" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7Zr9caIE9E5" role="jymVt" />
      <node concept="3clFb_" id="7Zr9caIEak8" role="jymVt">
        <property role="TrG5h" value="removeId" />
        <node concept="37vLTG" id="7Zr9caIEbYg" role="3clF46">
          <property role="TrG5h" value="id" />
          <node concept="3cpWsb" id="7Zr9caIEcDj" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="7Zr9caIEaka" role="3clF45" />
        <node concept="3Tm1VV" id="7Zr9caIEakb" role="1B3o_S" />
        <node concept="3clFbS" id="7Zr9caIEakc" role="3clF47">
          <node concept="3cpWs8" id="7Zr9caIEgFI" role="3cqZAp">
            <node concept="3cpWsn" id="7Zr9caIEgFJ" role="3cpWs9">
              <property role="TrG5h" value="node" />
              <node concept="3uibUv" id="7Zr9caIEgFH" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="2OqwBi" id="7Zr9caIE_z$" role="33vP2m">
                <node concept="37vLTw" id="7Zr9caIE_z_" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Zr9caID8Ep" resolve="id2node" />
                </node>
                <node concept="liA8E" id="7Zr9caIE_zA" role="2OqNvi">
                  <ref role="37wK5l" to="oiz2:~TLongObjectMap.remove(long)" resolve="remove" />
                  <node concept="37vLTw" id="7Zr9caIE_zB" role="37wK5m">
                    <ref role="3cqZAo" node="7Zr9caIEbYg" resolve="id" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7Zr9caIEqnB" role="3cqZAp">
            <node concept="3clFbS" id="7Zr9caIEqnD" role="3clFbx">
              <node concept="3clFbF" id="7Zr9caIEhNl" role="3cqZAp">
                <node concept="2OqwBi" id="7Zr9caIEiOw" role="3clFbG">
                  <node concept="37vLTw" id="7Zr9caIEhNj" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Zr9caIDfIY" resolve="node2id" />
                  </node>
                  <node concept="liA8E" id="7Zr9caIEl6k" role="2OqNvi">
                    <ref role="37wK5l" to="oiz2:~TObjectLongMap.remove(java.lang.Object)" resolve="remove" />
                    <node concept="37vLTw" id="7Zr9caIEm2Z" role="37wK5m">
                      <ref role="3cqZAo" node="7Zr9caIEgFJ" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="7Zr9caIEBfX" role="3clFbw">
              <node concept="10Nm6u" id="7Zr9caIEC6$" role="3uHU7w" />
              <node concept="37vLTw" id="7Zr9caIEB1S" role="3uHU7B">
                <ref role="3cqZAo" node="7Zr9caIEgFJ" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7Zr9caIECkL" role="jymVt" />
      <node concept="3clFb_" id="7Zr9caIED2H" role="jymVt">
        <property role="TrG5h" value="removeNode" />
        <node concept="37vLTG" id="7Zr9caIEDVR" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="7Zr9caIEEW6" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3cqZAl" id="7Zr9caIED2J" role="3clF45" />
        <node concept="3Tm1VV" id="7Zr9caIED2K" role="1B3o_S" />
        <node concept="3clFbS" id="7Zr9caIED2L" role="3clF47">
          <node concept="3cpWs8" id="7Zr9caIEFSq" role="3cqZAp">
            <node concept="3cpWsn" id="7Zr9caIEFSt" role="3cpWs9">
              <property role="TrG5h" value="id" />
              <node concept="3cpWsb" id="7Zr9caIEFSp" role="1tU5fm" />
              <node concept="2OqwBi" id="7Zr9caIEK6y" role="33vP2m">
                <node concept="37vLTw" id="7Zr9caIEJ3M" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Zr9caIDfIY" resolve="node2id" />
                </node>
                <node concept="liA8E" id="7Zr9caIEMpr" role="2OqNvi">
                  <ref role="37wK5l" to="oiz2:~TObjectLongMap.remove(java.lang.Object)" resolve="remove" />
                  <node concept="37vLTw" id="7Zr9caIENlF" role="37wK5m">
                    <ref role="3cqZAo" node="7Zr9caIEDVR" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7Zr9caIEOls" role="3cqZAp">
            <node concept="2OqwBi" id="7Zr9caIEPpf" role="3clFbG">
              <node concept="37vLTw" id="7Zr9caIEOlq" role="2Oq$k0">
                <ref role="3cqZAo" node="7Zr9caID8Ep" resolve="id2node" />
              </node>
              <node concept="liA8E" id="7Zr9caIEPAQ" role="2OqNvi">
                <ref role="37wK5l" to="oiz2:~TLongObjectMap.remove(long)" resolve="remove" />
                <node concept="37vLTw" id="7Zr9caIEQz5" role="37wK5m">
                  <ref role="3cqZAo" node="7Zr9caIEFSt" resolve="id" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7Zr9caIDKyL" role="jymVt" />
      <node concept="3clFb_" id="7Zr9caIDL3D" role="jymVt">
        <property role="TrG5h" value="getNode" />
        <node concept="37vLTG" id="7Zr9caIDL_T" role="3clF46">
          <property role="TrG5h" value="id" />
          <node concept="3cpWsb" id="7Zr9caIDM8T" role="1tU5fm" />
        </node>
        <node concept="3uibUv" id="7Zr9caIDMKy" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="3Tm1VV" id="7Zr9caIDL3G" role="1B3o_S" />
        <node concept="3clFbS" id="7Zr9caIDL3H" role="3clF47">
          <node concept="3clFbF" id="7Zr9caIE7qH" role="3cqZAp">
            <node concept="2OqwBi" id="7Zr9caIE8tL" role="3clFbG">
              <node concept="37vLTw" id="7Zr9caIE7qG" role="2Oq$k0">
                <ref role="3cqZAo" node="7Zr9caID8Ep" resolve="id2node" />
              </node>
              <node concept="liA8E" id="7Zr9caIE8Eb" role="2OqNvi">
                <ref role="37wK5l" to="oiz2:~TLongObjectMap.get(long)" resolve="get" />
                <node concept="37vLTw" id="7Zr9caIE9$Q" role="37wK5m">
                  <ref role="3cqZAo" node="7Zr9caIDL_T" resolve="id" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7Zr9caIDMZG" role="jymVt" />
      <node concept="3clFb_" id="7Zr9caIDNwM" role="jymVt">
        <property role="TrG5h" value="getId" />
        <node concept="37vLTG" id="7Zr9caIDOzY" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="7Zr9caIDPp1" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
        <node concept="3cpWsb" id="7Zr9caIDPK_" role="3clF45" />
        <node concept="3Tm1VV" id="7Zr9caIDNwP" role="1B3o_S" />
        <node concept="3clFbS" id="7Zr9caIDNwQ" role="3clF47">
          <node concept="3clFbF" id="7Zr9caIE25A" role="3cqZAp">
            <node concept="2OqwBi" id="7Zr9caIE35L" role="3clFbG">
              <node concept="37vLTw" id="7Zr9caIE25_" role="2Oq$k0">
                <ref role="3cqZAo" node="7Zr9caIDfIY" resolve="node2id" />
              </node>
              <node concept="liA8E" id="7Zr9caIE5o4" role="2OqNvi">
                <ref role="37wK5l" to="oiz2:~TObjectLongMap.get(java.lang.Object)" resolve="get" />
                <node concept="37vLTw" id="7Zr9caIE6ug" role="37wK5m">
                  <ref role="3cqZAo" node="7Zr9caIDOzY" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3l$kG67fCJH" role="jymVt" />
      <node concept="3clFb_" id="3l$kG67fE3M" role="jymVt">
        <property role="TrG5h" value="getOrCreateNode" />
        <node concept="37vLTG" id="3l$kG67fMAj" role="3clF46">
          <property role="TrG5h" value="id" />
          <node concept="3cpWsb" id="3l$kG67fNUy" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="3l$kG67fNZA" role="3clF46">
          <property role="TrG5h" value="concept" />
          <node concept="1ajhzC" id="3l$kG67gEn0" role="1tU5fm">
            <node concept="3bZ5Sz" id="3l$kG67gFgj" role="1ajl9A" />
          </node>
        </node>
        <node concept="3uibUv" id="3l$kG67fQh$" role="3clF45">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="3Tm1VV" id="3l$kG67fE3P" role="1B3o_S" />
        <node concept="3clFbS" id="3l$kG67fE3Q" role="3clF47">
          <node concept="3cpWs8" id="3l$kG67fV1J" role="3cqZAp">
            <node concept="3cpWsn" id="3l$kG67fV1K" role="3cpWs9">
              <property role="TrG5h" value="node" />
              <node concept="3uibUv" id="3l$kG67fV1I" role="1tU5fm">
                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
              </node>
              <node concept="1rXfSq" id="3l$kG67fV1L" role="33vP2m">
                <ref role="37wK5l" node="7Zr9caIDL3D" resolve="getNode" />
                <node concept="37vLTw" id="3l$kG67fV1M" role="37wK5m">
                  <ref role="3cqZAo" node="3l$kG67fMAj" resolve="id" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3l$kG67fRhU" role="3cqZAp">
            <node concept="3clFbS" id="3l$kG67fRhV" role="3clFbx">
              <node concept="3SKdUt" id="2TMlwYi3DYI" role="3cqZAp">
                <node concept="1PaTwC" id="2TMlwYi3DYJ" role="1aUNEU">
                  <node concept="3oM_SD" id="2TMlwYi3DYL" role="1PaTwD">
                    <property role="3oM_SC" value="The" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3E24" role="1PaTwD">
                    <property role="3oM_SC" value="id" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3E27" role="1PaTwD">
                    <property role="3oM_SC" value="parameters" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3E45" role="1PaTwD">
                    <property role="3oM_SC" value="is" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3E57" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3E6a" role="1PaTwD">
                    <property role="3oM_SC" value="ID" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3E7m" role="1PaTwD">
                    <property role="3oM_SC" value="of" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3E7u" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3E8s" role="1PaTwD">
                    <property role="3oM_SC" value="node" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3E9F" role="1PaTwD">
                    <property role="3oM_SC" value="in" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3E9Q" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3EaR" role="1PaTwD">
                    <property role="3oM_SC" value="replicated" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3Ec1" role="1PaTwD">
                    <property role="3oM_SC" value="data" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3NAE" role="1PaTwD">
                    <property role="3oM_SC" value="structure." />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="5kEoML8oY7h" role="3cqZAp">
                <node concept="1PaTwC" id="2TMlwYi3NB2" role="1aUNEU">
                  <node concept="3oM_SD" id="2TMlwYi3NB1" role="1PaTwD">
                    <property role="3oM_SC" value="We" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3NGm" role="1PaTwD">
                    <property role="3oM_SC" value="could" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3NIz" role="1PaTwD">
                    <property role="3oM_SC" value="use" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3NYp" role="1PaTwD">
                    <property role="3oM_SC" value="any" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3NZr" role="1PaTwD">
                    <property role="3oM_SC" value="ID" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3O0A" role="1PaTwD">
                    <property role="3oM_SC" value="for" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3O23" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3O2b" role="1PaTwD">
                    <property role="3oM_SC" value="MPS" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3O3h" role="1PaTwD">
                    <property role="3oM_SC" value="node," />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3O4o" role="1PaTwD">
                    <property role="3oM_SC" value="but" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3ObA" role="1PaTwD">
                    <property role="3oM_SC" value="for" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3OcJ" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3OgX" role="1PaTwD">
                    <property role="3oM_SC" value="load" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3Od4" role="1PaTwD">
                    <property role="3oM_SC" value="balancing" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3Oe7" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3Oia" role="1PaTwD">
                    <property role="3oM_SC" value="work" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3Ol2" role="1PaTwD">
                    <property role="3oM_SC" value="properly," />
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="5kEoML8oY7e" role="3cqZAp">
                <node concept="1PaTwC" id="2TMlwYi3Omq" role="1aUNEU">
                  <node concept="3oM_SD" id="2TMlwYi3Omp" role="1PaTwD">
                    <property role="3oM_SC" value="node" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3OoM" role="1PaTwD">
                    <property role="3oM_SC" value="references" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3OpU" role="1PaTwD">
                    <property role="3oM_SC" value="should" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3OqV" role="1PaTwD">
                    <property role="3oM_SC" value="be" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3Or0" role="1PaTwD">
                    <property role="3oM_SC" value="resolvable" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3OEc" role="1PaTwD">
                    <property role="3oM_SC" value="independent" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3OHi" role="1PaTwD">
                    <property role="3oM_SC" value="of" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3OIn" role="1PaTwD">
                    <property role="3oM_SC" value="the" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3OIw" role="1PaTwD">
                    <property role="3oM_SC" value="MPS" />
                  </node>
                  <node concept="3oM_SD" id="2TMlwYi3OIE" role="1PaTwD">
                    <property role="3oM_SC" value="instance." />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="2TMlwYi4aEW" role="3cqZAp">
                <node concept="3cpWsn" id="2TMlwYi4aEX" role="3cpWs9">
                  <property role="TrG5h" value="nodeId" />
                  <node concept="3uibUv" id="2TMlwYi4baG" role="1tU5fm">
                    <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
                  </node>
                  <node concept="2ShNRf" id="2TMlwYi4aEY" role="33vP2m">
                    <node concept="1pGfFk" id="2TMlwYi4aEZ" role="2ShVmc">
                      <ref role="37wK5l" to="w1kc:~SNodeId$Regular.&lt;init&gt;(long)" resolve="SNodeId.Regular" />
                      <node concept="37vLTw" id="2TMlwYi4aF0" role="37wK5m">
                        <ref role="3cqZAo" node="3l$kG67fMAj" resolve="id" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="2TMlwYi4wpz" role="3cqZAp">
                <node concept="3cpWsn" id="2TMlwYi4wp$" role="3cpWs9">
                  <property role="TrG5h" value="c" />
                  <node concept="3uibUv" id="2TMlwYi4bbX" role="1tU5fm">
                    <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                  </node>
                  <node concept="10QFUN" id="2TMlwYi4Hqb" role="33vP2m">
                    <node concept="2OqwBi" id="2TMlwYi4Hq8" role="10QFUP">
                      <node concept="37vLTw" id="2TMlwYi4Hq9" role="2Oq$k0">
                        <ref role="3cqZAo" node="3l$kG67fNZA" resolve="concept" />
                      </node>
                      <node concept="1Bd96e" id="2TMlwYi4Hqa" role="2OqNvi" />
                    </node>
                    <node concept="3uibUv" id="2TMlwYi4Hq7" role="10QFUM">
                      <ref role="3uigEE" to="c17a:~SConcept" resolve="SConcept" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3l$kG67fRi4" role="3cqZAp">
                <node concept="37vLTI" id="3l$kG67fRi5" role="3clFbG">
                  <node concept="37vLTw" id="3l$kG67fRi6" role="37vLTJ">
                    <ref role="3cqZAo" node="3l$kG67fV1K" resolve="node" />
                  </node>
                  <node concept="2ShNRf" id="2TMlwYi3lTF" role="37vLTx">
                    <node concept="1pGfFk" id="2TMlwYi3_mb" role="2ShVmc">
                      <ref role="37wK5l" to="w1kc:~SNode.&lt;init&gt;(org.jetbrains.mps.openapi.language.SConcept,org.jetbrains.mps.openapi.model.SNodeId)" resolve="SNode" />
                      <node concept="37vLTw" id="2TMlwYi4wpC" role="37wK5m">
                        <ref role="3cqZAo" node="2TMlwYi4wp$" resolve="c" />
                      </node>
                      <node concept="37vLTw" id="2TMlwYi4aF1" role="37wK5m">
                        <ref role="3cqZAo" node="2TMlwYi4aEX" resolve="nodeId" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3l$kG67gm_A" role="3cqZAp">
                <node concept="1rXfSq" id="3l$kG67gm_$" role="3clFbG">
                  <ref role="37wK5l" node="7Zr9caIDItk" resolve="put" />
                  <node concept="37vLTw" id="3l$kG67goBE" role="37wK5m">
                    <ref role="3cqZAo" node="3l$kG67fMAj" resolve="id" />
                  </node>
                  <node concept="37vLTw" id="3l$kG67gthk" role="37wK5m">
                    <ref role="3cqZAo" node="3l$kG67fV1K" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="3l$kG67fRig" role="3clFbw">
              <node concept="10Nm6u" id="3l$kG67fRih" role="3uHU7w" />
              <node concept="37vLTw" id="3l$kG67fRii" role="3uHU7B">
                <ref role="3cqZAo" node="3l$kG67fV1K" resolve="node" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="3l$kG67fWNC" role="3cqZAp">
            <node concept="37vLTw" id="3l$kG67fXEM" role="3cqZAk">
              <ref role="3cqZAo" node="3l$kG67fV1K" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Zr9caIDEiM" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4TPMxtdChW_" role="jymVt" />
    <node concept="3Tm1VV" id="4TPMxtdCfKA" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="7$AqCYouD$9">
    <property role="TrG5h" value="MessageHandler" />
    <node concept="3clFb_" id="7$AqCYouE3O" role="jymVt">
      <property role="TrG5h" value="handle" />
      <node concept="37vLTG" id="7$AqCYouE4w" role="3clF46">
        <property role="TrG5h" value="conn" />
        <node concept="3uibUv" id="7$AqCYouE4x" role="1tU5fm">
          <ref role="3uigEE" to="ffp0:~WebSocket" resolve="WebSocket" />
        </node>
      </node>
      <node concept="37vLTG" id="7$AqCYouE4y" role="3clF46">
        <property role="TrG5h" value="message" />
        <node concept="3uibUv" id="7$AqCYouE4z" role="1tU5fm">
          <ref role="3uigEE" to="mxf6:~JSONObject" resolve="JSONObject" />
        </node>
      </node>
      <node concept="3cqZAl" id="7$AqCYouE3Q" role="3clF45" />
      <node concept="3Tm1VV" id="7$AqCYouE3R" role="1B3o_S" />
      <node concept="3clFbS" id="7$AqCYouE3S" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="7$AqCYouD$a" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6aRQr1WMwO8">
    <property role="TrG5h" value="CloudIcons" />
    <node concept="Wx3nA" id="4NO8rntTnzD" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ROOT_ICON" />
      <node concept="3Tm1VV" id="1_qG3hO2Zlc" role="1B3o_S" />
      <node concept="3uibUv" id="4NO8rntTny3" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="2ShNRf" id="4NO8rntVj_a" role="33vP2m">
        <node concept="1pGfFk" id="4NO8rntVkUG" role="2ShVmc">
          <ref role="37wK5l" node="5wnrAmTLyBN" resolve="LetterInSquareIcon" />
          <node concept="Xl_RD" id="4NO8rntVld_" role="37wK5m">
            <property role="Xl_RC" value="C" />
          </node>
          <node concept="3cmrfG" id="4NO8rntVlvV" role="37wK5m">
            <property role="3cmrfH" value="14" />
          </node>
          <node concept="2$xPTn" id="4NO8rntVmFg" role="37wK5m">
            <property role="2$xPTl" value="3.0f" />
          </node>
          <node concept="2$xPTn" id="1LVcV5Kwpvh" role="37wK5m">
            <property role="2$xPTl" value="13.0f" />
          </node>
          <node concept="10M0yZ" id="26ispG7ZrYg" role="37wK5m">
            <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
            <ref role="3cqZAo" to="z60i:~Color.YELLOW" resolve="YELLOW" />
          </node>
          <node concept="10M0yZ" id="26ispG7Zt3n" role="37wK5m">
            <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
            <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="6aRQr1WUvo7" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="REPOSITORY_ICON" />
      <node concept="3Tm1VV" id="6aRQr1WUvo8" role="1B3o_S" />
      <node concept="3uibUv" id="6aRQr1WUvo9" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="2ShNRf" id="6aRQr1WUvoa" role="33vP2m">
        <node concept="1pGfFk" id="6aRQr1WUvob" role="2ShVmc">
          <ref role="37wK5l" node="5wnrAmTLyBN" resolve="LetterInSquareIcon" />
          <node concept="Xl_RD" id="6aRQr1WUvoc" role="37wK5m">
            <property role="Xl_RC" value="R" />
          </node>
          <node concept="3cmrfG" id="6aRQr1WUvod" role="37wK5m">
            <property role="3cmrfH" value="14" />
          </node>
          <node concept="2$xPTn" id="6aRQr1WUvoe" role="37wK5m">
            <property role="2$xPTl" value="3.0f" />
          </node>
          <node concept="2$xPTn" id="6aRQr1WUvof" role="37wK5m">
            <property role="2$xPTl" value="13.0f" />
          </node>
          <node concept="10M0yZ" id="6aRQr1WUvog" role="37wK5m">
            <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
            <ref role="3cqZAo" to="z60i:~Color.YELLOW" resolve="YELLOW" />
          </node>
          <node concept="10M0yZ" id="6aRQr1WUvoh" role="37wK5m">
            <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
            <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="6aRQr1WUw7m" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="TREE_ICON" />
      <node concept="3Tm1VV" id="6aRQr1WUw7n" role="1B3o_S" />
      <node concept="3uibUv" id="6aRQr1WUw7o" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="2ShNRf" id="6aRQr1WUw7p" role="33vP2m">
        <node concept="1pGfFk" id="6aRQr1WUw7q" role="2ShVmc">
          <ref role="37wK5l" node="5wnrAmTLyBN" resolve="LetterInSquareIcon" />
          <node concept="Xl_RD" id="6aRQr1WUw7r" role="37wK5m">
            <property role="Xl_RC" value="T" />
          </node>
          <node concept="3cmrfG" id="6aRQr1WUw7s" role="37wK5m">
            <property role="3cmrfH" value="14" />
          </node>
          <node concept="2$xPTn" id="6aRQr1WUw7t" role="37wK5m">
            <property role="2$xPTl" value="3.0f" />
          </node>
          <node concept="2$xPTn" id="6aRQr1WUw7u" role="37wK5m">
            <property role="2$xPTl" value="13.0f" />
          </node>
          <node concept="10M0yZ" id="6aRQr1WUw7v" role="37wK5m">
            <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
            <ref role="3cqZAo" to="z60i:~Color.YELLOW" resolve="YELLOW" />
          </node>
          <node concept="10M0yZ" id="6aRQr1WUw7w" role="37wK5m">
            <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
            <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="6aRQr1Xbz6l" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="BRANCH_ICON" />
      <node concept="3Tm1VV" id="6aRQr1Xbz6m" role="1B3o_S" />
      <node concept="3uibUv" id="6aRQr1Xbz6n" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="2ShNRf" id="6aRQr1Xbz6o" role="33vP2m">
        <node concept="1pGfFk" id="6aRQr1Xbz6p" role="2ShVmc">
          <ref role="37wK5l" node="5wnrAmTLyBN" resolve="LetterInSquareIcon" />
          <node concept="Xl_RD" id="6aRQr1Xbz6q" role="37wK5m">
            <property role="Xl_RC" value="B" />
          </node>
          <node concept="3cmrfG" id="6aRQr1Xbz6r" role="37wK5m">
            <property role="3cmrfH" value="14" />
          </node>
          <node concept="2$xPTn" id="6aRQr1Xbz6s" role="37wK5m">
            <property role="2$xPTl" value="3.0f" />
          </node>
          <node concept="2$xPTn" id="6aRQr1Xbz6t" role="37wK5m">
            <property role="2$xPTl" value="13.0f" />
          </node>
          <node concept="10M0yZ" id="6aRQr1Xbz6u" role="37wK5m">
            <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
            <ref role="3cqZAo" to="z60i:~Color.YELLOW" resolve="YELLOW" />
          </node>
          <node concept="10M0yZ" id="6aRQr1Xbz6v" role="37wK5m">
            <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
            <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="4NO8rntTrX3" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="MODULE_ICON" />
      <node concept="3Tm1VV" id="1_qG3hO2Zt8" role="1B3o_S" />
      <node concept="3uibUv" id="4NO8rntTrVz" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="2ShNRf" id="4NO8rntVqQV" role="33vP2m">
        <node concept="1pGfFk" id="4NO8rntVsct" role="2ShVmc">
          <ref role="37wK5l" node="5wnrAmTLyBN" resolve="LetterInSquareIcon" />
          <node concept="Xl_RD" id="4NO8rntVsvn" role="37wK5m">
            <property role="Xl_RC" value="M" />
          </node>
          <node concept="3cmrfG" id="4NO8rntVsJK" role="37wK5m">
            <property role="3cmrfH" value="14" />
          </node>
          <node concept="2$xPTn" id="4NO8rntVtJm" role="37wK5m">
            <property role="2$xPTl" value="2.0f" />
          </node>
          <node concept="2$xPTn" id="4NO8rntVuu6" role="37wK5m">
            <property role="2$xPTl" value="13.0f" />
          </node>
          <node concept="10M0yZ" id="26ispG7Ztv5" role="37wK5m">
            <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
            <ref role="3cqZAo" to="z60i:~Color.YELLOW" resolve="YELLOW" />
          </node>
          <node concept="10M0yZ" id="26ispG7Ztv8" role="37wK5m">
            <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
            <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="4NO8rntTytf" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="MODEL_ICON" />
      <node concept="3Tm1VV" id="1_qG3hO2Zxh" role="1B3o_S" />
      <node concept="3uibUv" id="4NO8rntTyth" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="2ShNRf" id="4NO8rntVwVw" role="33vP2m">
        <node concept="1pGfFk" id="4NO8rntVyh2" role="2ShVmc">
          <ref role="37wK5l" node="5wnrAmTLyBN" resolve="LetterInSquareIcon" />
          <node concept="Xl_RD" id="4NO8rntVyzX" role="37wK5m">
            <property role="Xl_RC" value="m" />
          </node>
          <node concept="3cmrfG" id="4NO8rntVyPG" role="37wK5m">
            <property role="3cmrfH" value="14" />
          </node>
          <node concept="2$xPTn" id="4NO8rntVzWt" role="37wK5m">
            <property role="2$xPTl" value="2.0f" />
          </node>
          <node concept="2$xPTn" id="4NO8rntV$IG" role="37wK5m">
            <property role="2$xPTl" value="12.0f" />
          </node>
          <node concept="10M0yZ" id="26ispG7ZtVJ" role="37wK5m">
            <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
            <ref role="3cqZAo" to="z60i:~Color.YELLOW" resolve="YELLOW" />
          </node>
          <node concept="10M0yZ" id="26ispG7ZtVM" role="37wK5m">
            <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
            <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6aRQr1WMwO9" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1LVcV5Kxxi$">
    <property role="TrG5h" value="CloudRepositories" />
    <node concept="Wx3nA" id="1JFLVobfPj6" role="jymVt">
      <property role="TrG5h" value="SETTINGS_KEY" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="1JFLVobfPiM" role="1tU5fm" />
      <node concept="3Tm6S6" id="1JFLVobfPcA" role="1B3o_S" />
      <node concept="3cpWs3" id="1JFLVobfPiS" role="33vP2m">
        <node concept="Xl_RD" id="1JFLVobfPiT" role="3uHU7w">
          <property role="Xl_RC" value=".URLs" />
        </node>
        <node concept="2OqwBi" id="1JFLVobfPiU" role="3uHU7B">
          <node concept="3VsKOn" id="1JFLVobfPiV" role="2Oq$k0">
            <ref role="3VsUkX" node="1LVcV5Kxxi$" resolve="CloudRepositories" />
          </node>
          <node concept="liA8E" id="1JFLVobfPiW" role="2OqNvi">
            <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="1LVcV5KxB5I" role="jymVt">
      <property role="TrG5h" value="ourInstance" />
      <node concept="3uibUv" id="1LVcV5KxxyY" role="1tU5fm">
        <ref role="3uigEE" node="1LVcV5Kxxi$" resolve="CloudRepositories" />
      </node>
      <node concept="3Tm6S6" id="1LVcV5Kxxvn" role="1B3o_S" />
      <node concept="2ShNRf" id="1LVcV5KxAMC" role="33vP2m">
        <node concept="1pGfFk" id="1LVcV5KxAHE" role="2ShVmc">
          <ref role="37wK5l" node="1LVcV5KxABO" resolve="CloudRepositories" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1LVcV5KxxqJ" role="jymVt" />
    <node concept="2YIFZL" id="1LVcV5Kxxmz" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="3clFbS" id="1LVcV5KxxlR" role="3clF47">
        <node concept="3clFbF" id="1LVcV5KxBc6" role="3cqZAp">
          <node concept="37vLTw" id="1LVcV5KxBc5" role="3clFbG">
            <ref role="3cqZAo" node="1LVcV5KxB5I" resolve="ourInstance" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1LVcV5Kxxq8" role="3clF45">
        <ref role="3uigEE" node="1LVcV5Kxxi$" resolve="CloudRepositories" />
      </node>
      <node concept="3Tm1VV" id="1LVcV5KxxlQ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1LVcV5KE$t3" role="jymVt" />
    <node concept="312cEg" id="1LVcV5KE$BQ" role="jymVt">
      <property role="TrG5h" value="repositories" />
      <node concept="3Tm6S6" id="1LVcV5KE$BR" role="1B3o_S" />
      <node concept="_YKpA" id="1LVcV5KE$E_" role="1tU5fm">
        <node concept="3uibUv" id="6aRQr1WPlVS" role="_ZDj9">
          <ref role="3uigEE" node="6aRQr1WOV$v" resolve="CloudRepository" />
        </node>
      </node>
      <node concept="2ShNRf" id="1LVcV5KE$UD" role="33vP2m">
        <node concept="Tc6Ow" id="1LVcV5KE$PC" role="2ShVmc">
          <node concept="3uibUv" id="6aRQr1WPm$n" role="HW$YZ">
            <ref role="3uigEE" node="6aRQr1WOV$v" resolve="CloudRepository" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6aRQr1WPPSS" role="jymVt">
      <property role="TrG5h" value="listeners" />
      <node concept="3Tm6S6" id="6aRQr1WPPST" role="1B3o_S" />
      <node concept="2hMVRd" id="6aRQr1WPS7l" role="1tU5fm">
        <node concept="3uibUv" id="6aRQr1WPS7m" role="2hN53Y">
          <ref role="3uigEE" node="6aRQr1WPO$S" resolve="CloudRepositories.IListener" />
        </node>
      </node>
      <node concept="2ShNRf" id="6aRQr1WPSu4" role="33vP2m">
        <node concept="2i4dXS" id="6aRQr1WPSiZ" role="2ShVmc">
          <node concept="3uibUv" id="6aRQr1WPSj0" role="HW$YZ">
            <ref role="3uigEE" node="6aRQr1WPO$S" resolve="CloudRepositories.IListener" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1LVcV5KxAzZ" role="jymVt" />
    <node concept="3clFbW" id="1LVcV5KxABO" role="jymVt">
      <node concept="3cqZAl" id="1LVcV5KxABQ" role="3clF45" />
      <node concept="3Tm1VV" id="1LVcV5KEB8Z" role="1B3o_S" />
      <node concept="3clFbS" id="1LVcV5KxABS" role="3clF47">
        <node concept="3cpWs8" id="1JFLVobfRbq" role="3cqZAp">
          <node concept="3cpWsn" id="1JFLVobfRbr" role="3cpWs9">
            <property role="TrG5h" value="urls" />
            <node concept="17QB3L" id="1JFLVobfRfy" role="1tU5fm" />
            <node concept="2OqwBi" id="1JFLVobfRbs" role="33vP2m">
              <node concept="2YIFZM" id="1JFLVobfRbt" role="2Oq$k0">
                <ref role="37wK5l" to="jmi8:~PropertiesComponent.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="jmi8:~PropertiesComponent" resolve="PropertiesComponent" />
              </node>
              <node concept="liA8E" id="1JFLVobfRbu" role="2OqNvi">
                <ref role="37wK5l" to="jmi8:~PropertiesComponent.getValue(java.lang.String)" resolve="getValue" />
                <node concept="37vLTw" id="1JFLVobfRbv" role="37wK5m">
                  <ref role="3cqZAo" node="1JFLVobfPj6" resolve="SETTINGS_KEY" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1JFLVobfRxd" role="3cqZAp">
          <node concept="3clFbS" id="1JFLVobfRxf" role="3clFbx">
            <node concept="3clFbF" id="6aRQr1WSCJb" role="3cqZAp">
              <node concept="1rXfSq" id="6aRQr1WSCJa" role="3clFbG">
                <ref role="37wK5l" node="6aRQr1WPk$8" resolve="addRepository" />
                <node concept="2OqwBi" id="7AhGRNQhDrI" role="37wK5m">
                  <node concept="10M0yZ" id="7AhGRNQhDlU" role="2Oq$k0">
                    <ref role="3cqZAo" to="5440:~RestWebModelClient.Companion" resolve="Companion" />
                    <ref role="1PxDUh" to="5440:~RestWebModelClient" resolve="RestWebModelClient" />
                  </node>
                  <node concept="liA8E" id="7AhGRNQhDyA" role="2OqNvi">
                    <ref role="37wK5l" to="5440:~RestWebModelClient$Companion.getDefaultUrl()" resolve="getDefaultUrl" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1JFLVobfSfS" role="3clFbw">
            <node concept="37vLTw" id="1JFLVobfRH3" role="2Oq$k0">
              <ref role="3cqZAo" node="1JFLVobfRbr" resolve="urls" />
            </node>
            <node concept="17RlXB" id="1JFLVobfSYM" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="1JFLVobfTbq" role="9aQIa">
            <node concept="3clFbS" id="1JFLVobfTbr" role="9aQI4">
              <node concept="2Gpval" id="1JFLVobfUMk" role="3cqZAp">
                <node concept="2GrKxI" id="1JFLVobfUMl" role="2Gsz3X">
                  <property role="TrG5h" value="url" />
                </node>
                <node concept="3clFbS" id="1JFLVobfUMn" role="2LFqv$">
                  <node concept="3clFbJ" id="1JFLVobg6wQ" role="3cqZAp">
                    <node concept="3clFbS" id="1JFLVobg6wS" role="3clFbx">
                      <node concept="3N13vt" id="1JFLVobg86i" role="3cqZAp" />
                    </node>
                    <node concept="2OqwBi" id="1JFLVobg784" role="3clFbw">
                      <node concept="2GrUjf" id="1JFLVobg6GA" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="1JFLVobfUMl" resolve="url" />
                      </node>
                      <node concept="17RlXB" id="1JFLVobg7J5" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="1JFLVobfYL3" role="3cqZAp">
                    <node concept="1rXfSq" id="1JFLVobfYL2" role="3clFbG">
                      <ref role="37wK5l" node="1JFLVobfVqL" resolve="doAddRepository" />
                      <node concept="2GrUjf" id="1JFLVobfYYV" role="37wK5m">
                        <ref role="2Gs0qQ" node="1JFLVobfUMl" resolve="url" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="1JFLVobfTPO" role="2GsD0m">
                  <node concept="37vLTw" id="1JFLVobfTn0" role="2Oq$k0">
                    <ref role="3cqZAo" node="1JFLVobfRbr" resolve="urls" />
                  </node>
                  <node concept="liA8E" id="1JFLVobfUf1" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.split(java.lang.String)" resolve="split" />
                    <node concept="Xl_RD" id="1JFLVobfUq_" role="37wK5m">
                      <property role="Xl_RC" value="\n" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6aRQr1WPkso" role="jymVt" />
    <node concept="3clFb_" id="6aRQr1WPTla" role="jymVt">
      <property role="TrG5h" value="addListener" />
      <node concept="37vLTG" id="6aRQr1WPVVD" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3uibUv" id="6aRQr1WPWmF" role="1tU5fm">
          <ref role="3uigEE" node="6aRQr1WPO$S" resolve="CloudRepositories.IListener" />
        </node>
      </node>
      <node concept="3cqZAl" id="6aRQr1WPTlc" role="3clF45" />
      <node concept="3Tm1VV" id="6aRQr1WPTld" role="1B3o_S" />
      <node concept="3clFbS" id="6aRQr1WPTle" role="3clF47">
        <node concept="3clFbF" id="6aRQr1WPWyF" role="3cqZAp">
          <node concept="2OqwBi" id="6aRQr1WPXnY" role="3clFbG">
            <node concept="37vLTw" id="6aRQr1WPWyE" role="2Oq$k0">
              <ref role="3cqZAo" node="6aRQr1WPPSS" resolve="listeners" />
            </node>
            <node concept="TSZUe" id="6aRQr1WPYt6" role="2OqNvi">
              <node concept="37vLTw" id="6aRQr1WPYJO" role="25WWJ7">
                <ref role="3cqZAo" node="6aRQr1WPVVD" resolve="l" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6aRQr1WPZ1o" role="jymVt" />
    <node concept="3clFb_" id="6aRQr1WPZML" role="jymVt">
      <property role="TrG5h" value="removeListener" />
      <node concept="37vLTG" id="6aRQr1WQ49c" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3uibUv" id="6aRQr1WQ4NW" role="1tU5fm">
          <ref role="3uigEE" node="6aRQr1WPO$S" resolve="CloudRepositories.IListener" />
        </node>
      </node>
      <node concept="3cqZAl" id="6aRQr1WPZMN" role="3clF45" />
      <node concept="3Tm1VV" id="6aRQr1WPZMO" role="1B3o_S" />
      <node concept="3clFbS" id="6aRQr1WPZMP" role="3clF47">
        <node concept="3clFbF" id="6aRQr1WQ5aX" role="3cqZAp">
          <node concept="2OqwBi" id="6aRQr1WQ5ZR" role="3clFbG">
            <node concept="37vLTw" id="6aRQr1WQ5aW" role="2Oq$k0">
              <ref role="3cqZAo" node="6aRQr1WPPSS" resolve="listeners" />
            </node>
            <node concept="3dhRuq" id="6aRQr1WQ759" role="2OqNvi">
              <node concept="37vLTw" id="6aRQr1WQ7BB" role="25WWJ7">
                <ref role="3cqZAo" node="6aRQr1WQ49c" resolve="l" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6aRQr1WPS$9" role="jymVt" />
    <node concept="3clFb_" id="6aRQr1WPk$8" role="jymVt">
      <property role="TrG5h" value="addRepository" />
      <node concept="37vLTG" id="6aRQr1WPkQB" role="3clF46">
        <property role="TrG5h" value="url" />
        <node concept="17QB3L" id="6aRQr1WPl3J" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="6aRQr1WPlbK" role="3clF45">
        <ref role="3uigEE" node="6aRQr1WOV$v" resolve="CloudRepository" />
      </node>
      <node concept="3Tm1VV" id="6aRQr1WPk$b" role="1B3o_S" />
      <node concept="3clFbS" id="6aRQr1WPk$c" role="3clF47">
        <node concept="3cpWs8" id="1JFLVobgxw2" role="3cqZAp">
          <node concept="3cpWsn" id="1JFLVobgxw3" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="1JFLVobg8x9" role="1tU5fm">
              <ref role="3uigEE" node="6aRQr1WOV$v" resolve="CloudRepository" />
            </node>
            <node concept="1rXfSq" id="1JFLVobgxw4" role="33vP2m">
              <ref role="37wK5l" node="1JFLVobfVqL" resolve="doAddRepository" />
              <node concept="37vLTw" id="1JFLVobgxw5" role="37wK5m">
                <ref role="3cqZAo" node="6aRQr1WPkQB" resolve="url" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1JFLVobg8t$" role="3cqZAp">
          <node concept="1rXfSq" id="1JFLVobg8ty" role="3clFbG">
            <ref role="37wK5l" node="1JFLVobfZbV" resolve="storeUrls" />
          </node>
        </node>
        <node concept="3clFbF" id="1JFLVobfWXO" role="3cqZAp">
          <node concept="37vLTw" id="1JFLVobgxw6" role="3clFbG">
            <ref role="3cqZAo" node="1JFLVobgxw3" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1JFLVobfVu9" role="jymVt" />
    <node concept="3clFb_" id="1JFLVobfZbV" role="jymVt">
      <property role="TrG5h" value="storeUrls" />
      <node concept="3cqZAl" id="1JFLVobfZbX" role="3clF45" />
      <node concept="3Tmbuc" id="1JFLVobfZeN" role="1B3o_S" />
      <node concept="3clFbS" id="1JFLVobfZbZ" role="3clF47">
        <node concept="3clFbF" id="1JFLVobfZeR" role="3cqZAp">
          <node concept="2OqwBi" id="1JFLVobfZeT" role="3clFbG">
            <node concept="2YIFZM" id="1JFLVobfZeU" role="2Oq$k0">
              <ref role="1Pybhc" to="jmi8:~PropertiesComponent" resolve="PropertiesComponent" />
              <ref role="37wK5l" to="jmi8:~PropertiesComponent.getInstance()" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="1JFLVobfZeV" role="2OqNvi">
              <ref role="37wK5l" to="jmi8:~PropertiesComponent.setValue(java.lang.String,java.lang.String)" resolve="setValue" />
              <node concept="37vLTw" id="1JFLVobfZf0" role="37wK5m">
                <ref role="3cqZAo" node="1JFLVobfPj6" resolve="SETTINGS_KEY" />
              </node>
              <node concept="2OqwBi" id="1JFLVobg5e6" role="37wK5m">
                <node concept="2OqwBi" id="1JFLVobg2iO" role="2Oq$k0">
                  <node concept="37vLTw" id="1JFLVobg1gI" role="2Oq$k0">
                    <ref role="3cqZAo" node="1LVcV5KE$BQ" resolve="repositories" />
                  </node>
                  <node concept="3$u5V9" id="1JFLVobg3yi" role="2OqNvi">
                    <node concept="1bVj0M" id="1JFLVobg3yk" role="23t8la">
                      <node concept="3clFbS" id="1JFLVobg3yl" role="1bW5cS">
                        <node concept="3clFbF" id="1JFLVobg3T4" role="3cqZAp">
                          <node concept="2OqwBi" id="1JFLVobg48u" role="3clFbG">
                            <node concept="37vLTw" id="1JFLVobg3T3" role="2Oq$k0">
                              <ref role="3cqZAo" node="1JFLVobg3ym" resolve="it" />
                            </node>
                            <node concept="liA8E" id="1JFLVobg4hc" role="2OqNvi">
                              <ref role="37wK5l" node="6aRQr1WQLS7" resolve="getBaseUrl" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="1JFLVobg3ym" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="1JFLVobg3yn" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uJxvA" id="1JFLVobg5zi" role="2OqNvi">
                  <node concept="Xl_RD" id="1JFLVobg6l9" role="3uJOhx">
                    <property role="Xl_RC" value="\n" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1JFLVobfZ5p" role="jymVt" />
    <node concept="3clFb_" id="1JFLVobfVqL" role="jymVt">
      <property role="TrG5h" value="doAddRepository" />
      <node concept="37vLTG" id="1JFLVobfVqM" role="3clF46">
        <property role="TrG5h" value="url" />
        <node concept="17QB3L" id="1JFLVobfVqN" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="1JFLVobfVqO" role="3clF45">
        <ref role="3uigEE" node="6aRQr1WOV$v" resolve="CloudRepository" />
      </node>
      <node concept="3Tmbuc" id="1JFLVobfVu6" role="1B3o_S" />
      <node concept="3clFbS" id="1JFLVobfVqQ" role="3clF47">
        <node concept="3cpWs8" id="1JFLVobfVqR" role="3cqZAp">
          <node concept="3cpWsn" id="1JFLVobfVqS" role="3cpWs9">
            <property role="TrG5h" value="newRepo" />
            <node concept="3uibUv" id="1JFLVobfVqT" role="1tU5fm">
              <ref role="3uigEE" node="6aRQr1WOV$v" resolve="CloudRepository" />
            </node>
            <node concept="2OqwBi" id="1JFLVobfVqU" role="33vP2m">
              <node concept="37vLTw" id="1JFLVobfVqV" role="2Oq$k0">
                <ref role="3cqZAo" node="1LVcV5KE$BQ" resolve="repositories" />
              </node>
              <node concept="TSZUe" id="1JFLVobfVqW" role="2OqNvi">
                <node concept="2ShNRf" id="1JFLVobfVqX" role="25WWJ7">
                  <node concept="1pGfFk" id="1JFLVobfVqY" role="2ShVmc">
                    <ref role="37wK5l" node="6aRQr1WPiWm" resolve="CloudRepository" />
                    <node concept="37vLTw" id="1JFLVobfVqZ" role="37wK5m">
                      <ref role="3cqZAo" node="1JFLVobfVqM" resolve="url" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1JFLVobfVr0" role="3cqZAp">
          <node concept="2GrKxI" id="1JFLVobfVr1" role="2Gsz3X">
            <property role="TrG5h" value="l" />
          </node>
          <node concept="37vLTw" id="1JFLVobfVr2" role="2GsD0m">
            <ref role="3cqZAo" node="6aRQr1WPPSS" resolve="listeners" />
          </node>
          <node concept="3clFbS" id="1JFLVobfVr3" role="2LFqv$">
            <node concept="3clFbF" id="1JFLVobfVr4" role="3cqZAp">
              <node concept="2OqwBi" id="1JFLVobfVr5" role="3clFbG">
                <node concept="2GrUjf" id="1JFLVobfVr6" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1JFLVobfVr1" resolve="l" />
                </node>
                <node concept="liA8E" id="1JFLVobfVr7" role="2OqNvi">
                  <ref role="37wK5l" node="6aRQr1WPPan" resolve="repositoriesChanged" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1JFLVobfVr8" role="3cqZAp">
          <node concept="37vLTw" id="1JFLVobfVr9" role="3cqZAk">
            <ref role="3cqZAo" node="1JFLVobfVqS" resolve="newRepo" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4yJY4bshti" role="jymVt" />
    <node concept="3clFb_" id="4yJY4bssA5" role="jymVt">
      <property role="TrG5h" value="removeRepository" />
      <node concept="37vLTG" id="4yJY4bsB_3" role="3clF46">
        <property role="TrG5h" value="repo" />
        <node concept="3uibUv" id="4yJY4bsDPU" role="1tU5fm">
          <ref role="3uigEE" node="6aRQr1WOV$v" resolve="CloudRepository" />
        </node>
      </node>
      <node concept="3cqZAl" id="4yJY4bssA7" role="3clF45" />
      <node concept="3Tm1VV" id="4yJY4bssA8" role="1B3o_S" />
      <node concept="3clFbS" id="4yJY4bssA9" role="3clF47">
        <node concept="3clFbF" id="4yJY4bs_RH" role="3cqZAp">
          <node concept="2OqwBi" id="4yJY4bsAO9" role="3clFbG">
            <node concept="37vLTw" id="4yJY4bs_RG" role="2Oq$k0">
              <ref role="3cqZAo" node="1LVcV5KE$BQ" resolve="repositories" />
            </node>
            <node concept="3dhRuq" id="4yJY4bsBqi" role="2OqNvi">
              <node concept="37vLTw" id="4yJY4bsE9a" role="25WWJ7">
                <ref role="3cqZAo" node="4yJY4bsB_3" resolve="repo" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4yJY4bsFQ1" role="3cqZAp">
          <node concept="1rXfSq" id="4yJY4bsFPZ" role="3clFbG">
            <ref role="37wK5l" node="1JFLVobfZbV" resolve="storeUrls" />
          </node>
        </node>
        <node concept="2Gpval" id="4yJY4bsFf3" role="3cqZAp">
          <node concept="2GrKxI" id="4yJY4bsFf5" role="2Gsz3X">
            <property role="TrG5h" value="l" />
          </node>
          <node concept="37vLTw" id="4yJY4bsGFA" role="2GsD0m">
            <ref role="3cqZAo" node="6aRQr1WPPSS" resolve="listeners" />
          </node>
          <node concept="3clFbS" id="4yJY4bsFf9" role="2LFqv$">
            <node concept="3clFbF" id="4yJY4bsH0M" role="3cqZAp">
              <node concept="2OqwBi" id="4yJY4bsH6x" role="3clFbG">
                <node concept="2GrUjf" id="4yJY4bsH0L" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4yJY4bsFf5" resolve="l" />
                </node>
                <node concept="liA8E" id="4yJY4bsHpU" role="2OqNvi">
                  <ref role="37wK5l" node="6aRQr1WPPan" resolve="repositoriesChanged" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1LVcV5KxBdS" role="jymVt" />
    <node concept="3clFb_" id="1LVcV5KxBgM" role="jymVt">
      <property role="TrG5h" value="getRepositories" />
      <node concept="A3Dl8" id="1LVcV5KEAKG" role="3clF45">
        <node concept="3uibUv" id="6aRQr1WPn4E" role="A3Ik2">
          <ref role="3uigEE" node="6aRQr1WOV$v" resolve="CloudRepository" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1LVcV5KxBgP" role="1B3o_S" />
      <node concept="3clFbS" id="1LVcV5KxBgQ" role="3clF47">
        <node concept="3clFbF" id="1LVcV5KEAAC" role="3cqZAp">
          <node concept="37vLTw" id="1LVcV5KEAAB" role="3clFbG">
            <ref role="3cqZAo" node="1LVcV5KE$BQ" resolve="repositories" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="694yVfgiPrQ" role="jymVt" />
    <node concept="3clFb_" id="694yVfgjeWj" role="jymVt">
      <property role="TrG5h" value="resolveCloudModel" />
      <node concept="37vLTG" id="694yVfgjtnG" role="3clF46">
        <property role="TrG5h" value="treeId" />
        <node concept="17QB3L" id="694yVfgjuHC" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="694yVfgjprd" role="3clF45">
        <ref role="ehGHo" to="dj5d:qmkA5fOskm" resolve="Repository" />
      </node>
      <node concept="3Tm1VV" id="694yVfgjeWm" role="1B3o_S" />
      <node concept="3clFbS" id="694yVfgjeWn" role="3clF47">
        <node concept="3cpWs8" id="694yVfgj$Yn" role="3cqZAp">
          <node concept="3cpWsn" id="694yVfgj$Yo" role="3cpWs9">
            <property role="TrG5h" value="repo" />
            <node concept="3uibUv" id="694yVfgj$Vy" role="1tU5fm">
              <ref role="3uigEE" node="6aRQr1WOV$v" resolve="CloudRepository" />
            </node>
            <node concept="2OqwBi" id="1BXGyXtAHuA" role="33vP2m">
              <node concept="2OqwBi" id="694yVfgj$Yq" role="2Oq$k0">
                <node concept="1rXfSq" id="694yVfgj$Yr" role="2Oq$k0">
                  <ref role="37wK5l" node="1LVcV5KxBgM" resolve="getRepositories" />
                </node>
                <node concept="3zZkjj" id="694yVfgj$Ys" role="2OqNvi">
                  <node concept="1bVj0M" id="694yVfgj$Yt" role="23t8la">
                    <node concept="3clFbS" id="694yVfgj$Yu" role="1bW5cS">
                      <node concept="3clFbF" id="694yVfgj$Yv" role="3cqZAp">
                        <node concept="2OqwBi" id="694yVfgj$Yw" role="3clFbG">
                          <node concept="37vLTw" id="694yVfgj$Yx" role="2Oq$k0">
                            <ref role="3cqZAo" node="694yVfgj$Yz" resolve="it" />
                          </node>
                          <node concept="liA8E" id="694yVfgj$Yy" role="2OqNvi">
                            <ref role="37wK5l" node="1JFLVobhm7T" resolve="isConnected" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="694yVfgj$Yz" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="694yVfgj$Y$" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1uHKPH" id="4Mx37FxvICO" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="694yVfgjAOJ" role="3cqZAp">
          <node concept="3cpWsn" id="694yVfgjAOK" role="3cpWs9">
            <property role="TrG5h" value="activeBranch" />
            <node concept="3uibUv" id="7AhGRNQhDBI" role="1tU5fm">
              <ref role="3uigEE" to="5440:~ActiveBranch" resolve="ActiveBranch" />
            </node>
            <node concept="2OqwBi" id="694yVfgjAOL" role="33vP2m">
              <node concept="37vLTw" id="694yVfgjAOM" role="2Oq$k0">
                <ref role="3cqZAo" node="694yVfgj$Yo" resolve="repo" />
              </node>
              <node concept="liA8E" id="694yVfgjAON" role="2OqNvi">
                <ref role="37wK5l" node="6aRQr1X24wJ" resolve="getActiveBranch" />
                <node concept="2ShNRf" id="694yVfgjAOO" role="37wK5m">
                  <node concept="1pGfFk" id="694yVfgjAOP" role="2ShVmc">
                    <ref role="37wK5l" to="xkhl:~TreeId.&lt;init&gt;(java.lang.String)" resolve="TreeId" />
                    <node concept="37vLTw" id="694yVfgjAOQ" role="37wK5m">
                      <ref role="3cqZAo" node="694yVfgjtnG" resolve="treeId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="694yVfgjAZp" role="3cqZAp" />
        <node concept="3clFbF" id="694yVfgjY$g" role="3cqZAp">
          <node concept="1PxgMI" id="694yVfgjZA2" role="3clFbG">
            <node concept="chp4Y" id="694yVfgjZKy" role="3oSUPX">
              <ref role="cht4Q" to="dj5d:qmkA5fOskm" resolve="Repository" />
            </node>
            <node concept="2YIFZM" id="694yVfgjYCE" role="1m5AlR">
              <ref role="1Pybhc" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
              <ref role="37wK5l" to="xxte:75046mm7IDU" resolve="wrap" />
              <node concept="2ShNRf" id="694yVfgjCBB" role="37wK5m">
                <node concept="YeOm9" id="694yVfgjZWm" role="2ShVmc">
                  <node concept="1Y3b0j" id="694yVfgjZWp" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                    <ref role="37wK5l" to="jks5:~PNodeAdapter.&lt;init&gt;(long,org.modelix.model.api.IBranch)" resolve="PNodeAdapter" />
                    <node concept="3Tm1VV" id="694yVfgjZWq" role="1B3o_S" />
                    <node concept="10M0yZ" id="1m9roGBT7py" role="37wK5m">
                      <ref role="3cqZAo" to="jks5:~ITree.ROOT_ID" resolve="ROOT_ID" />
                      <ref role="1PxDUh" to="jks5:~ITree" resolve="ITree" />
                    </node>
                    <node concept="2OqwBi" id="694yVfgjXUp" role="37wK5m">
                      <node concept="37vLTw" id="694yVfgjXUq" role="2Oq$k0">
                        <ref role="3cqZAo" node="694yVfgjAOK" resolve="activeBranch" />
                      </node>
                      <node concept="liA8E" id="7AhGRNQhRC$" role="2OqNvi">
                        <ref role="37wK5l" to="5440:~ActiveBranch.getBranch()" resolve="getBranch" />
                      </node>
                    </node>
                    <node concept="3clFb_" id="694yVfgk08l" role="jymVt">
                      <property role="TrG5h" value="getConcept" />
                      <node concept="3uibUv" id="1m9roGBT7DI" role="3clF45">
                        <ref role="3uigEE" to="jks5:~IConcept" resolve="IConcept" />
                      </node>
                      <node concept="3Tm1VV" id="694yVfgk08n" role="1B3o_S" />
                      <node concept="2AHcQZ" id="694yVfgk08C" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                      <node concept="3clFbS" id="694yVfgk08E" role="3clF47">
                        <node concept="3clFbF" id="694yVfgk1PW" role="3cqZAp">
                          <node concept="2YIFZM" id="694yVfgk1QO" role="3clFbG">
                            <ref role="1Pybhc" to="xxte:5gTrVpGjuL2" resolve="SConceptAdapter" />
                            <ref role="37wK5l" to="xxte:3ECE8iPOmg5" resolve="wrap" />
                            <node concept="35c_gC" id="694yVfgk3k_" role="37wK5m">
                              <ref role="35c_gD" to="dj5d:qmkA5fOskm" resolve="Repository" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="694yVfgjZo6" role="37wK5m">
                <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1LVcV5KxAN5" role="jymVt" />
    <node concept="3clFb_" id="1LVcV5KxAPz" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="1LVcV5KxAP_" role="3clF45" />
      <node concept="3Tm1VV" id="1LVcV5KxAPA" role="1B3o_S" />
      <node concept="3clFbS" id="1LVcV5KxAPB" role="3clF47">
        <node concept="2Gpval" id="6aRQr1WPyeL" role="3cqZAp">
          <node concept="2GrKxI" id="6aRQr1WPyeM" role="2Gsz3X">
            <property role="TrG5h" value="repo" />
          </node>
          <node concept="37vLTw" id="6aRQr1WPy_l" role="2GsD0m">
            <ref role="3cqZAo" node="1LVcV5KE$BQ" resolve="repositories" />
          </node>
          <node concept="3clFbS" id="6aRQr1WPyeO" role="2LFqv$">
            <node concept="3clFbF" id="6aRQr1WP_qt" role="3cqZAp">
              <node concept="2OqwBi" id="6aRQr1WP_w0" role="3clFbG">
                <node concept="2GrUjf" id="6aRQr1WP_qs" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="6aRQr1WPyeM" resolve="repo" />
                </node>
                <node concept="liA8E" id="6aRQr1WP_RH" role="2OqNvi">
                  <ref role="37wK5l" node="6aRQr1WPeeC" resolve="dispose" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6aRQr1WPAhF" role="3cqZAp">
          <node concept="2OqwBi" id="6aRQr1WPBdb" role="3clFbG">
            <node concept="37vLTw" id="6aRQr1WPAhD" role="2Oq$k0">
              <ref role="3cqZAo" node="1LVcV5KE$BQ" resolve="repositories" />
            </node>
            <node concept="2Kehj3" id="6aRQr1WPCrO" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6aRQr1WPNRn" role="jymVt" />
    <node concept="3HP615" id="6aRQr1WPO$S" role="jymVt">
      <property role="TrG5h" value="IListener" />
      <node concept="3clFb_" id="6aRQr1WPPan" role="jymVt">
        <property role="TrG5h" value="repositoriesChanged" />
        <node concept="3cqZAl" id="6aRQr1WPPap" role="3clF45" />
        <node concept="3Tm1VV" id="6aRQr1WPPaq" role="1B3o_S" />
        <node concept="3clFbS" id="6aRQr1WPPar" role="3clF47" />
      </node>
      <node concept="3Tm1VV" id="6aRQr1WPO$T" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="1LVcV5Kxxi_" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6aRQr1WOV$v">
    <property role="TrG5h" value="CloudRepository" />
    <node concept="Wx3nA" id="6aRQr1WVSv7" role="jymVt">
      <property role="TrG5h" value="INFO_TREE_ID" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7AhGRNQhRRn" role="1tU5fm">
        <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
      </node>
      <node concept="3Tm6S6" id="6aRQr1WVRUa" role="1B3o_S" />
      <node concept="2ShNRf" id="6aRQr1WVSts" role="33vP2m">
        <node concept="1pGfFk" id="6aRQr1WVStt" role="2ShVmc">
          <ref role="37wK5l" to="xkhl:~TreeId.&lt;init&gt;(java.lang.String)" resolve="TreeId" />
          <node concept="Xl_RD" id="6aRQr1WVStu" role="37wK5m">
            <property role="Xl_RC" value="info" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7NpT01XGApo" role="jymVt">
      <property role="TrG5h" value="SETTINGS_KEY_PREFIX" />
      <node concept="3Tm6S6" id="7NpT01XGApp" role="1B3o_S" />
      <node concept="17QB3L" id="7NpT01XGCdq" role="1tU5fm" />
      <node concept="3cpWs3" id="7NpT01XGFCk" role="33vP2m">
        <node concept="2OqwBi" id="7NpT01XGH1v" role="3uHU7B">
          <node concept="3VsKOn" id="7NpT01XGGkk" role="2Oq$k0">
            <ref role="3VsUkX" node="6aRQr1WOV$v" resolve="CloudRepository" />
          </node>
          <node concept="liA8E" id="7NpT01XGHBM" role="2OqNvi">
            <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
          </node>
        </node>
        <node concept="Xl_RD" id="7NpT01XGCKO" role="3uHU7w">
          <property role="Xl_RC" value=".token/" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6aRQr1WVRzr" role="jymVt" />
    <node concept="312cEg" id="6aRQr1WPbDO" role="jymVt">
      <property role="TrG5h" value="baseUrl" />
      <node concept="3Tm6S6" id="6aRQr1WPbDP" role="1B3o_S" />
      <node concept="17QB3L" id="6aRQr1WPbPw" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="6aRQr1WVnku" role="jymVt">
      <property role="TrG5h" value="client" />
      <node concept="3Tm6S6" id="6aRQr1WVnkv" role="1B3o_S" />
      <node concept="3uibUv" id="7AhGRNQhRNy" role="1tU5fm">
        <ref role="3uigEE" to="5440:~RestWebModelClient" resolve="RestWebModelClient" />
      </node>
    </node>
    <node concept="312cEg" id="6aRQr1WXcru" role="jymVt">
      <property role="TrG5h" value="infoTree" />
      <node concept="3Tm6S6" id="6aRQr1WXcrv" role="1B3o_S" />
      <node concept="3uibUv" id="6aRQr1X1HQz" role="1tU5fm">
        <ref role="3uigEE" node="6aRQr1WXt1Z" resolve="MpsReplicatedTree" />
      </node>
    </node>
    <node concept="312cEg" id="6aRQr1X1X4Z" role="jymVt">
      <property role="TrG5h" value="activeBranches" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6aRQr1X1X50" role="1B3o_S" />
      <node concept="3rvAFt" id="6aRQr1X1XvE" role="1tU5fm">
        <node concept="3uibUv" id="7AhGRNQhS6j" role="3rvQeY">
          <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
        </node>
        <node concept="3uibUv" id="7AhGRNQhSa8" role="3rvSg0">
          <ref role="3uigEE" to="5440:~ActiveBranch" resolve="ActiveBranch" />
        </node>
      </node>
      <node concept="2ShNRf" id="6aRQr1X1YxX" role="33vP2m">
        <node concept="3rGOSV" id="6aRQr1X1YmL" role="2ShVmc">
          <node concept="3uibUv" id="7AhGRNQhSdX" role="3rHrn6">
            <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
          </node>
          <node concept="3uibUv" id="7AhGRNQhShM" role="3rHtpV">
            <ref role="3uigEE" to="5440:~ActiveBranch" resolve="ActiveBranch" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="EMWAvBfzsh" role="jymVt">
      <property role="TrG5h" value="bindings" />
      <node concept="3Tm6S6" id="EMWAvBfzsi" role="1B3o_S" />
      <node concept="_YKpA" id="EMWAvBf$0u" role="1tU5fm">
        <node concept="3uibUv" id="EMWAvBf$9R" role="_ZDj9">
          <ref role="3uigEE" node="49CIzaqqe7c" resolve="ModelBinding" />
        </node>
      </node>
      <node concept="2ShNRf" id="EMWAvBf$J2" role="33vP2m">
        <node concept="Tc6Ow" id="EMWAvBf$zV" role="2ShVmc">
          <node concept="3uibUv" id="EMWAvBf$zW" role="HW$YZ">
            <ref role="3uigEE" node="49CIzaqqe7c" resolve="ModelBinding" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1JFLVobh1_5" role="jymVt">
      <property role="TrG5h" value="listeners" />
      <node concept="3Tm6S6" id="1JFLVobh1_6" role="1B3o_S" />
      <node concept="_YKpA" id="1JFLVobh1JJ" role="1tU5fm">
        <node concept="3uibUv" id="1JFLVobh22v" role="_ZDj9">
          <ref role="3uigEE" node="1JFLVobh0lR" resolve="CloudRepository.IListener" />
        </node>
      </node>
      <node concept="2ShNRf" id="1JFLVobh2Ll" role="33vP2m">
        <node concept="Tc6Ow" id="1JFLVobh2_H" role="2ShVmc">
          <node concept="3uibUv" id="1JFLVobh2_I" role="HW$YZ">
            <ref role="3uigEE" node="1JFLVobh0lR" resolve="CloudRepository.IListener" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1JFLVobhltu" role="jymVt">
      <property role="TrG5h" value="connected" />
      <node concept="3Tm6S6" id="1JFLVobhltv" role="1B3o_S" />
      <node concept="10P_77" id="1JFLVobhlCZ" role="1tU5fm" />
      <node concept="3clFbT" id="1JFLVobhlOE" role="33vP2m" />
    </node>
    <node concept="312cEg" id="4rrX99oe4RD" role="jymVt">
      <property role="TrG5h" value="id" />
      <node concept="3Tm6S6" id="4rrX99oe4RE" role="1B3o_S" />
      <node concept="17QB3L" id="4rrX99oe6MR" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="2EzI5qKmJsA" role="jymVt">
      <property role="TrG5h" value="authToken" />
      <node concept="3Tm6S6" id="2EzI5qKmJsB" role="1B3o_S" />
      <node concept="17QB3L" id="2EzI5qKmLKD" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="2EzI5qKoePt" role="jymVt">
      <property role="TrG5h" value="email" />
      <node concept="3Tm6S6" id="2EzI5qKoePu" role="1B3o_S" />
      <node concept="17QB3L" id="2EzI5qKogHN" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="1JFLVobhli3" role="jymVt" />
    <node concept="3clFbW" id="6aRQr1WPiWm" role="jymVt">
      <node concept="3cqZAl" id="6aRQr1WPiWn" role="3clF45" />
      <node concept="3Tm1VV" id="6aRQr1WPiWo" role="1B3o_S" />
      <node concept="3clFbS" id="6aRQr1WPiWq" role="3clF47">
        <node concept="3clFbF" id="6aRQr1WPiWu" role="3cqZAp">
          <node concept="37vLTI" id="6aRQr1WPiWw" role="3clFbG">
            <node concept="2OqwBi" id="6aRQr1WPiW$" role="37vLTJ">
              <node concept="Xjq3P" id="6aRQr1WPiW_" role="2Oq$k0" />
              <node concept="2OwXpG" id="6aRQr1WPiWA" role="2OqNvi">
                <ref role="2Oxat5" node="6aRQr1WPbDO" resolve="baseUrl" />
              </node>
            </node>
            <node concept="37vLTw" id="6aRQr1WPiWB" role="37vLTx">
              <ref role="3cqZAo" node="6aRQr1WPiWt" resolve="baseUrl" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7NpT01XGyxd" role="3cqZAp">
          <node concept="37vLTI" id="7NpT01XGzLA" role="3clFbG">
            <node concept="37vLTw" id="7NpT01XGyxb" role="37vLTJ">
              <ref role="3cqZAo" node="2EzI5qKmJsA" resolve="authToken" />
            </node>
            <node concept="2OqwBi" id="7NpT01XG$4y" role="37vLTx">
              <node concept="2YIFZM" id="7NpT01XG$4z" role="2Oq$k0">
                <ref role="37wK5l" to="jmi8:~PropertiesComponent.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="jmi8:~PropertiesComponent" resolve="PropertiesComponent" />
              </node>
              <node concept="liA8E" id="7NpT01XG$4$" role="2OqNvi">
                <ref role="37wK5l" to="jmi8:~PropertiesComponent.getValue(java.lang.String)" resolve="getValue" />
                <node concept="3cpWs3" id="7NpT01XGJ_h" role="37wK5m">
                  <node concept="37vLTw" id="7NpT01XGK8e" role="3uHU7w">
                    <ref role="3cqZAo" node="6aRQr1WPiWt" resolve="baseUrl" />
                  </node>
                  <node concept="37vLTw" id="7NpT01XGIWk" role="3uHU7B">
                    <ref role="3cqZAo" node="7NpT01XGApo" resolve="SETTINGS_KEY_PREFIX" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2EzI5qKmpcj" role="3cqZAp">
          <node concept="1rXfSq" id="2EzI5qKmpch" role="3clFbG">
            <ref role="37wK5l" node="2EzI5qKmj_D" resolve="reconnect" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6aRQr1WPiWt" role="3clF46">
        <property role="TrG5h" value="baseUrl" />
        <node concept="17QB3L" id="6aRQr1WPiWs" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6aRQr1WPjSu" role="jymVt" />
    <node concept="3clFb_" id="2EzI5qKmj_D" role="jymVt">
      <property role="TrG5h" value="reconnect" />
      <node concept="3cqZAl" id="2EzI5qKmj_F" role="3clF45" />
      <node concept="3Tm1VV" id="2EzI5qKmj_G" role="1B3o_S" />
      <node concept="3clFbS" id="2EzI5qKmj_H" role="3clF47">
        <node concept="3clFbF" id="Onv88ZP1Dg" role="3cqZAp">
          <node concept="2OqwBi" id="Onv88ZP2lD" role="3clFbG">
            <node concept="10M0yZ" id="Onv88ZP210" role="2Oq$k0">
              <ref role="3cqZAo" node="Onv88ZOFFp" resolve="FIXED" />
              <ref role="1PxDUh" node="Onv88ZNSEL" resolve="SharedExecutors" />
            </node>
            <node concept="liA8E" id="Onv88ZP2HL" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~Executor.execute(java.lang.Runnable)" resolve="execute" />
              <node concept="1bVj0M" id="1JFLVobhp3Y" role="37wK5m">
                <node concept="3clFbS" id="1JFLVobhp3Z" role="1bW5cS">
                  <node concept="3J1_TO" id="1JFLVobhAFc" role="3cqZAp">
                    <node concept="3clFbS" id="1JFLVobhAFe" role="1zxBo7">
                      <node concept="3clFbJ" id="2EzI5qKn79l" role="3cqZAp">
                        <node concept="3clFbS" id="2EzI5qKn79n" role="3clFbx">
                          <node concept="3clFbF" id="2EzI5qKrki6" role="3cqZAp">
                            <node concept="37vLTI" id="2EzI5qKrki7" role="3clFbG">
                              <node concept="2ShNRf" id="2EzI5qKrki8" role="37vLTx">
                                <node concept="1pGfFk" id="2EzI5qKrki9" role="2ShVmc">
                                  <ref role="37wK5l" to="5440:~RestWebModelClient.&lt;init&gt;(java.lang.String,java.lang.String)" resolve="RestWebModelClient" />
                                  <node concept="37vLTw" id="2EzI5qKrkia" role="37wK5m">
                                    <ref role="3cqZAo" node="6aRQr1WPbDO" resolve="baseUrl" />
                                  </node>
                                  <node concept="37vLTw" id="4DbirjtxD0V" role="37wK5m">
                                    <ref role="3cqZAo" node="2EzI5qKmJsA" resolve="authToken" />
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="2EzI5qKrkib" role="37vLTJ">
                                <ref role="3cqZAo" node="6aRQr1WVnku" resolve="client" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="2EzI5qKrj7G" role="3clFbw">
                          <node concept="37vLTw" id="2EzI5qKn7S6" role="3uHU7B">
                            <ref role="3cqZAo" node="6aRQr1WVnku" resolve="client" />
                          </node>
                          <node concept="10Nm6u" id="2EzI5qKn8DK" role="3uHU7w" />
                        </node>
                      </node>
                      <node concept="3clFbF" id="4rrX99oearq" role="3cqZAp">
                        <node concept="37vLTI" id="4rrX99oeb88" role="3clFbG">
                          <node concept="37vLTw" id="4rrX99oearo" role="37vLTJ">
                            <ref role="3cqZAo" node="4rrX99oe4RD" resolve="id" />
                          </node>
                          <node concept="2OqwBi" id="4rrX99oe8fK" role="37vLTx">
                            <node concept="37vLTw" id="4rrX99oe7oi" role="2Oq$k0">
                              <ref role="3cqZAo" node="6aRQr1WVnku" resolve="client" />
                            </node>
                            <node concept="liA8E" id="4rrX99oe8SP" role="2OqNvi">
                              <ref role="37wK5l" to="5440:~RestWebModelClient.get(java.lang.String)" resolve="get" />
                              <node concept="Xl_RD" id="4rrX99oe9b6" role="37wK5m">
                                <property role="Xl_RC" value="repositoryId" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="4rrX99oec0P" role="3cqZAp">
                        <node concept="3clFbS" id="4rrX99oec0R" role="3clFbx">
                          <node concept="YS8fn" id="4rrX99oeehO" role="3cqZAp">
                            <node concept="2ShNRf" id="4rrX99oeetw" role="YScLw">
                              <node concept="1pGfFk" id="4rrX99oeEiq" role="2ShVmc">
                                <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                                <node concept="3cpWs3" id="4rrX99oeF1U" role="37wK5m">
                                  <node concept="37vLTw" id="4rrX99oeFlm" role="3uHU7B">
                                    <ref role="3cqZAo" node="6aRQr1WPbDO" resolve="baseUrl" />
                                  </node>
                                  <node concept="Xl_RD" id="4rrX99oeELz" role="3uHU7w">
                                    <property role="Xl_RC" value=" doesn't provide an ID" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="4rrX99oed2y" role="3clFbw">
                          <node concept="37vLTw" id="4rrX99oecdE" role="2Oq$k0">
                            <ref role="3cqZAo" node="4rrX99oe4RD" resolve="id" />
                          </node>
                          <node concept="17RlXB" id="4rrX99oedPp" role="2OqNvi" />
                        </node>
                      </node>
                      <node concept="3clFbJ" id="2EzI5qKrmgP" role="3cqZAp">
                        <node concept="3clFbS" id="2EzI5qKrmgR" role="3clFbx">
                          <node concept="3clFbF" id="6aRQr1X1I$S" role="3cqZAp">
                            <node concept="37vLTI" id="6aRQr1X1IUT" role="3clFbG">
                              <node concept="2ShNRf" id="6aRQr1X1Jl4" role="37vLTx">
                                <node concept="1pGfFk" id="6aRQr1X1Ja6" role="2ShVmc">
                                  <ref role="37wK5l" node="6aRQr1WXtj7" resolve="MpsReplicatedTree" />
                                  <node concept="37vLTw" id="6aRQr1X1K06" role="37wK5m">
                                    <ref role="3cqZAo" node="6aRQr1WVnku" resolve="client" />
                                  </node>
                                  <node concept="37vLTw" id="Onv88ZP2QD" role="37wK5m">
                                    <ref role="3cqZAo" node="6aRQr1WVSv7" resolve="INFO_TREE_ID" />
                                  </node>
                                  <node concept="10M0yZ" id="7AhGRNQhWwl" role="37wK5m">
                                    <ref role="3cqZAo" to="5440:~ActiveBranch.DEFAULT_BRANCH_NAME" resolve="DEFAULT_BRANCH_NAME" />
                                    <ref role="1PxDUh" to="5440:~ActiveBranch" resolve="ActiveBranch" />
                                  </node>
                                  <node concept="1bVj0M" id="2EzI5qKswrH" role="37wK5m">
                                    <node concept="3clFbS" id="2EzI5qKswrJ" role="1bW5cS">
                                      <node concept="3clFbF" id="5MA9wbc620w" role="3cqZAp">
                                        <node concept="1rXfSq" id="5MA9wbc6dyz" role="3clFbG">
                                          <ref role="37wK5l" node="5MA9wbc62$n" resolve="getAuthor" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTw" id="6aRQr1X1I$Q" role="37vLTJ">
                                <ref role="3cqZAo" node="6aRQr1WXcru" resolve="infoTree" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="2EzI5qKrnKx" role="3clFbw">
                          <node concept="10Nm6u" id="2EzI5qKrnWf" role="3uHU7w" />
                          <node concept="37vLTw" id="2EzI5qKrn1o" role="3uHU7B">
                            <ref role="3cqZAo" node="6aRQr1WXcru" resolve="infoTree" />
                          </node>
                        </node>
                      </node>
                      <node concept="3J1_TO" id="2EzI5qKom0o" role="3cqZAp">
                        <node concept="3clFbS" id="2EzI5qKom0q" role="1zxBo7">
                          <node concept="3clFbF" id="2EzI5qKohOF" role="3cqZAp">
                            <node concept="37vLTI" id="2EzI5qKoj0Q" role="3clFbG">
                              <node concept="37vLTw" id="2EzI5qKohOD" role="37vLTJ">
                                <ref role="3cqZAo" node="2EzI5qKoePt" resolve="email" />
                              </node>
                              <node concept="2OqwBi" id="2EzI5qKotsn" role="37vLTx">
                                <node concept="37vLTw" id="2EzI5qKosHo" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6aRQr1WVnku" resolve="client" />
                                </node>
                                <node concept="liA8E" id="7AhGRNQhXhn" role="2OqNvi">
                                  <ref role="37wK5l" to="5440:~RestWebModelClient.getEmail()" resolve="getEmail" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3uVAMA" id="2EzI5qKom0r" role="1zxBo5">
                          <node concept="XOnhg" id="2EzI5qKom0t" role="1zc67B">
                            <property role="3TUv4t" value="false" />
                            <property role="TrG5h" value="ex" />
                            <node concept="nSUau" id="9bzWSd99opX" role="1tU5fm">
                              <node concept="3uibUv" id="2EzI5qKonqt" role="nSUat">
                                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="2EzI5qKom0x" role="1zc67A">
                            <node concept="RRSsy" id="2EzI5qKooy7" role="3cqZAp">
                              <property role="RRSoG" value="gZ5fh_4/error" />
                              <node concept="Xl_RD" id="2EzI5qKooy9" role="RRSoy">
                                <property role="Xl_RC" value="Failed to read the users e-mail address" />
                              </node>
                              <node concept="37vLTw" id="2EzI5qKooyb" role="RRSow">
                                <ref role="3cqZAo" node="2EzI5qKom0t" resolve="ex" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1JFLVobjn3O" role="3cqZAp">
                        <node concept="37vLTI" id="1JFLVobjnHJ" role="3clFbG">
                          <node concept="3clFbT" id="1JFLVobjnWr" role="37vLTx">
                            <property role="3clFbU" value="true" />
                          </node>
                          <node concept="37vLTw" id="1JFLVobjn3M" role="37vLTJ">
                            <ref role="3cqZAo" node="1JFLVobhltu" resolve="connected" />
                          </node>
                        </node>
                      </node>
                      <node concept="2Gpval" id="1JFLVobh$TN" role="3cqZAp">
                        <node concept="2GrKxI" id="1JFLVobh$TP" role="2Gsz3X">
                          <property role="TrG5h" value="l" />
                        </node>
                        <node concept="37vLTw" id="1JFLVobh_mv" role="2GsD0m">
                          <ref role="3cqZAo" node="1JFLVobh1_5" resolve="listeners" />
                        </node>
                        <node concept="3clFbS" id="1JFLVobh$TT" role="2LFqv$">
                          <node concept="3clFbF" id="1JFLVobh_y8" role="3cqZAp">
                            <node concept="2OqwBi" id="1JFLVobh_Iy" role="3clFbG">
                              <node concept="2GrUjf" id="1JFLVobh_y7" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="1JFLVobh$TP" resolve="l" />
                              </node>
                              <node concept="liA8E" id="1JFLVobh_RS" role="2OqNvi">
                                <ref role="37wK5l" node="1JFLVobh0$a" resolve="connectionStatusChanged" />
                                <node concept="3clFbT" id="1JFLVobhA3v" role="37wK5m">
                                  <property role="3clFbU" value="true" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3uVAMA" id="1JFLVobhAFf" role="1zxBo5">
                      <node concept="XOnhg" id="1JFLVobhAFh" role="1zc67B">
                        <property role="3TUv4t" value="false" />
                        <property role="TrG5h" value="ex" />
                        <node concept="nSUau" id="f1N348ZqTf_" role="1tU5fm">
                          <node concept="3uibUv" id="1JFLVobhAPI" role="nSUat">
                            <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="1JFLVobhAFl" role="1zc67A">
                        <node concept="RRSsy" id="1JFLVobhBcV" role="3cqZAp">
                          <property role="RRSoG" value="gZ5fh_4/error" />
                          <node concept="3cpWs3" id="1JFLVobhB_R" role="RRSoy">
                            <node concept="37vLTw" id="1JFLVobhBLy" role="3uHU7w">
                              <ref role="3cqZAo" node="6aRQr1WPbDO" resolve="baseUrl" />
                            </node>
                            <node concept="Xl_RD" id="1JFLVobhBcX" role="3uHU7B">
                              <property role="Xl_RC" value="Failed to connected to " />
                            </node>
                          </node>
                          <node concept="37vLTw" id="1JFLVobhBcZ" role="RRSow">
                            <ref role="3cqZAo" node="1JFLVobhAFh" resolve="ex" />
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
    <node concept="2tJIrI" id="2EzI5qKmhg$" role="jymVt" />
    <node concept="3clFb_" id="2EzI5qKmtmw" role="jymVt">
      <property role="TrG5h" value="setAuthToken" />
      <node concept="37vLTG" id="2EzI5qKmE_s" role="3clF46">
        <property role="TrG5h" value="token" />
        <node concept="17QB3L" id="2EzI5qKmGjv" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="2EzI5qKmtmy" role="3clF45" />
      <node concept="3Tm1VV" id="2EzI5qKmtmz" role="1B3o_S" />
      <node concept="3clFbS" id="2EzI5qKmtm$" role="3clF47">
        <node concept="3clFbF" id="2EzI5qKpQIc" role="3cqZAp">
          <node concept="37vLTI" id="2EzI5qKpRym" role="3clFbG">
            <node concept="37vLTw" id="2EzI5qKpRJi" role="37vLTx">
              <ref role="3cqZAo" node="2EzI5qKmE_s" resolve="token" />
            </node>
            <node concept="2OqwBi" id="2EzI5qKpQZx" role="37vLTJ">
              <node concept="Xjq3P" id="2EzI5qKpQIa" role="2Oq$k0" />
              <node concept="2OwXpG" id="2EzI5qKpR9R" role="2OqNvi">
                <ref role="2Oxat5" node="2EzI5qKmJsA" resolve="authToken" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7NpT01XGLuN" role="3cqZAp">
          <node concept="2OqwBi" id="7NpT01XGLuP" role="3clFbG">
            <node concept="2YIFZM" id="7NpT01XGLuQ" role="2Oq$k0">
              <ref role="1Pybhc" to="jmi8:~PropertiesComponent" resolve="PropertiesComponent" />
              <ref role="37wK5l" to="jmi8:~PropertiesComponent.getInstance()" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="7NpT01XGLuR" role="2OqNvi">
              <ref role="37wK5l" to="jmi8:~PropertiesComponent.setValue(java.lang.String,java.lang.String)" resolve="setValue" />
              <node concept="3cpWs3" id="7NpT01XGLuS" role="37wK5m">
                <node concept="37vLTw" id="7NpT01XGLuT" role="3uHU7w">
                  <ref role="3cqZAo" node="6aRQr1WPbDO" resolve="baseUrl" />
                </node>
                <node concept="37vLTw" id="7NpT01XGLuU" role="3uHU7B">
                  <ref role="3cqZAo" node="7NpT01XGApo" resolve="SETTINGS_KEY_PREFIX" />
                </node>
              </node>
              <node concept="37vLTw" id="7NpT01XGM6Q" role="37wK5m">
                <ref role="3cqZAo" node="2EzI5qKmE_s" resolve="token" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2EzI5qKn2m5" role="3cqZAp">
          <node concept="1rXfSq" id="2EzI5qKn2m3" role="3clFbG">
            <ref role="37wK5l" node="2EzI5qKmj_D" resolve="reconnect" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2EzI5qKouvK" role="jymVt" />
    <node concept="3clFb_" id="2EzI5qKowuu" role="jymVt">
      <property role="TrG5h" value="getEmail" />
      <node concept="17QB3L" id="2EzI5qKo_HR" role="3clF45" />
      <node concept="3Tm1VV" id="2EzI5qKowux" role="1B3o_S" />
      <node concept="3clFbS" id="2EzI5qKowuy" role="3clF47">
        <node concept="3clFbF" id="2EzI5qKo_zq" role="3cqZAp">
          <node concept="37vLTw" id="2EzI5qKo_zp" role="3clFbG">
            <ref role="3cqZAo" node="2EzI5qKoePt" resolve="email" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5MA9wbc68eo" role="jymVt" />
    <node concept="3clFb_" id="5MA9wbc62$n" role="jymVt">
      <property role="TrG5h" value="getAuthor" />
      <node concept="17QB3L" id="5MA9wbc62$o" role="3clF45" />
      <node concept="3Tm6S6" id="5MA9wbc6awW" role="1B3o_S" />
      <node concept="3clFbS" id="5MA9wbc62$q" role="3clF47">
        <node concept="3clFbF" id="5MA9wbc6czO" role="3cqZAp">
          <node concept="2YIFZM" id="5MA9wbc6D2Y" role="3clFbG">
            <ref role="37wK5l" to="ia5i:5MA9wbc5wh4" resolve="apply" />
            <ref role="1Pybhc" to="ia5i:5MA9wbc5skS" resolve="AuthorOverride" />
            <node concept="1rXfSq" id="5MA9wbc6cVQ" role="37wK5m">
              <ref role="37wK5l" node="2EzI5qKowuu" resolve="getEmail" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2EzI5qKmr51" role="jymVt" />
    <node concept="3clFb_" id="1JFLVobhm7T" role="jymVt">
      <property role="TrG5h" value="isConnected" />
      <node concept="10P_77" id="1JFLVobhmjx" role="3clF45" />
      <node concept="3Tm1VV" id="1JFLVobhm7W" role="1B3o_S" />
      <node concept="3clFbS" id="1JFLVobhm7X" role="3clF47">
        <node concept="3clFbF" id="1JFLVobhmEH" role="3cqZAp">
          <node concept="37vLTw" id="1JFLVobhmEG" role="3clFbG">
            <ref role="3cqZAo" node="1JFLVobhltu" resolve="connected" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1JFLVobhuPQ" role="jymVt" />
    <node concept="3clFb_" id="4rrX99oeH2E" role="jymVt">
      <property role="TrG5h" value="getId" />
      <node concept="17QB3L" id="4rrX99oeH2F" role="3clF45" />
      <node concept="3Tm1VV" id="4rrX99oeH2G" role="1B3o_S" />
      <node concept="3clFbS" id="4rrX99oeH2H" role="3clF47">
        <node concept="3clFbF" id="4rrX99oeH2I" role="3cqZAp">
          <node concept="2OqwBi" id="4rrX99oeH2B" role="3clFbG">
            <node concept="Xjq3P" id="4rrX99oeH2C" role="2Oq$k0" />
            <node concept="2OwXpG" id="4rrX99oeH2D" role="2OqNvi">
              <ref role="2Oxat5" node="4rrX99oe4RD" resolve="id" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4rrX99of6oS" role="jymVt" />
    <node concept="3clFb_" id="1JFLVobhv9H" role="jymVt">
      <property role="TrG5h" value="checkConnected" />
      <node concept="3cqZAl" id="1JFLVobhv9J" role="3clF45" />
      <node concept="3Tmbuc" id="1JFLVobhvhS" role="1B3o_S" />
      <node concept="3clFbS" id="1JFLVobhv9L" role="3clF47">
        <node concept="3clFbJ" id="1JFLVobhvhV" role="3cqZAp">
          <node concept="3clFbS" id="1JFLVobhvhW" role="3clFbx">
            <node concept="YS8fn" id="1JFLVobhvhX" role="3cqZAp">
              <node concept="2ShNRf" id="1JFLVobhvhY" role="YScLw">
                <node concept="1pGfFk" id="1JFLVobhvhZ" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="1JFLVobhvi0" role="37wK5m">
                    <property role="Xl_RC" value="Not connected." />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="1JFLVobhvi1" role="3clFbw">
            <node concept="37vLTw" id="1JFLVobhvi2" role="3fr31v">
              <ref role="3cqZAo" node="1JFLVobhltu" resolve="connected" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1JFLVobhlWp" role="jymVt" />
    <node concept="3clFb_" id="6aRQr1Xc8A_" role="jymVt">
      <property role="TrG5h" value="addTree" />
      <node concept="37vLTG" id="6aRQr1Xcb5B" role="3clF46">
        <property role="TrG5h" value="name" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="6aRQr1Xcb$A" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6aRQr1Xcb_E" role="3clF46">
        <property role="TrG5h" value="id" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="6aRQr1Xcce8" role="1tU5fm" />
      </node>
      <node concept="3Tqbb2" id="6aRQr1XccnL" role="3clF45">
        <ref role="ehGHo" to="w7di:6aRQr1WVbN0" resolve="TreeInfo" />
      </node>
      <node concept="3Tm1VV" id="6aRQr1Xc8AC" role="1B3o_S" />
      <node concept="3clFbS" id="6aRQr1Xc8AD" role="3clF47">
        <node concept="3clFbF" id="6aRQr1XcdRL" role="3cqZAp">
          <node concept="2OqwBi" id="6aRQr1Xce19" role="3clFbG">
            <node concept="1rXfSq" id="6aRQr1XcgzL" role="2Oq$k0">
              <ref role="37wK5l" node="6aRQr1X1RCt" resolve="getInfoBranch" />
            </node>
            <node concept="liA8E" id="6aRQr1XceeH" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~IBranch.computeWrite(kotlin.jvm.functions.Function0)" resolve="computeWrite" />
              <node concept="1bVj0M" id="6aRQr1XceA7" role="37wK5m">
                <node concept="3clFbS" id="6aRQr1XceA8" role="1bW5cS">
                  <node concept="3cpWs8" id="6aRQr1XcgL3" role="3cqZAp">
                    <node concept="3cpWsn" id="6aRQr1XcgL4" role="3cpWs9">
                      <property role="TrG5h" value="info" />
                      <node concept="3Tqbb2" id="6aRQr1XcgHf" role="1tU5fm">
                        <ref role="ehGHo" to="w7di:6aRQr1WVbMZ" resolve="RepositoryInfo" />
                      </node>
                      <node concept="1rXfSq" id="6aRQr1XcgL5" role="33vP2m">
                        <ref role="37wK5l" node="6aRQr1WVmiT" resolve="getInfo" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="6aRQr1XciGv" role="3cqZAp">
                    <node concept="3cpWsn" id="6aRQr1XciGw" role="3cpWs9">
                      <property role="TrG5h" value="treeInfo" />
                      <node concept="3Tqbb2" id="6aRQr1XciFz" role="1tU5fm">
                        <ref role="ehGHo" to="w7di:6aRQr1WVbN0" resolve="TreeInfo" />
                      </node>
                      <node concept="1PxgMI" id="6aRQr1XciGx" role="33vP2m">
                        <node concept="chp4Y" id="6aRQr1XciGy" role="3oSUPX">
                          <ref role="cht4Q" to="w7di:6aRQr1WVbN0" resolve="TreeInfo" />
                        </node>
                        <node concept="2YIFZM" id="6aRQr1XciGz" role="1m5AlR">
                          <ref role="1Pybhc" to="xxte:30TKBrMa5zj" resolve="SNodeAPI" />
                          <ref role="37wK5l" to="xxte:30TKBrMe2kz" resolve="addNewChild" />
                          <node concept="37vLTw" id="6aRQr1XciG$" role="37wK5m">
                            <ref role="3cqZAo" node="6aRQr1XcgL4" resolve="info" />
                          </node>
                          <node concept="359W_D" id="6aRQr1XciG_" role="37wK5m">
                            <ref role="359W_E" to="w7di:6aRQr1WVbMZ" resolve="RepositoryInfo" />
                            <ref role="359W_F" to="w7di:6aRQr1WVbN2" resolve="trees" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6aRQr1Xchmu" role="3cqZAp">
                    <node concept="37vLTI" id="6aRQr1Xck3y" role="3clFbG">
                      <node concept="37vLTw" id="6aRQr1Xcksa" role="37vLTx">
                        <ref role="3cqZAo" node="6aRQr1Xcb5B" resolve="name" />
                      </node>
                      <node concept="2OqwBi" id="6aRQr1XcjfH" role="37vLTJ">
                        <node concept="37vLTw" id="6aRQr1XciGA" role="2Oq$k0">
                          <ref role="3cqZAo" node="6aRQr1XciGw" resolve="treeInfo" />
                        </node>
                        <node concept="3TrcHB" id="6aRQr1XcjsJ" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6aRQr1XclOO" role="3cqZAp">
                    <node concept="37vLTI" id="6aRQr1Xcn0d" role="3clFbG">
                      <node concept="37vLTw" id="6aRQr1XcniX" role="37vLTx">
                        <ref role="3cqZAo" node="6aRQr1Xcb_E" resolve="id" />
                      </node>
                      <node concept="2OqwBi" id="6aRQr1XcmeI" role="37vLTJ">
                        <node concept="37vLTw" id="6aRQr1XclOM" role="2Oq$k0">
                          <ref role="3cqZAo" node="6aRQr1XciGw" resolve="treeInfo" />
                        </node>
                        <node concept="3TrcHB" id="6aRQr1Xcmsa" role="2OqNvi">
                          <ref role="3TsBF5" to="w7di:6aRQr1WVbN6" resolve="id" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="6aRQr1Xevk9" role="3cqZAp">
                    <node concept="3cpWsn" id="6aRQr1Xevka" role="3cpWs9">
                      <property role="TrG5h" value="branchInfo" />
                      <node concept="3Tqbb2" id="6aRQr1Xevjf" role="1tU5fm">
                        <ref role="ehGHo" to="w7di:6aRQr1WVbN1" resolve="BranchInfo" />
                      </node>
                      <node concept="1PxgMI" id="6aRQr1Xevkb" role="33vP2m">
                        <node concept="chp4Y" id="6aRQr1Xevkc" role="3oSUPX">
                          <ref role="cht4Q" to="w7di:6aRQr1WVbN1" resolve="BranchInfo" />
                        </node>
                        <node concept="2YIFZM" id="6aRQr1Xevkd" role="1m5AlR">
                          <ref role="1Pybhc" to="xxte:30TKBrMa5zj" resolve="SNodeAPI" />
                          <ref role="37wK5l" to="xxte:30TKBrMe2kz" resolve="addNewChild" />
                          <node concept="37vLTw" id="6aRQr1Xevke" role="37wK5m">
                            <ref role="3cqZAo" node="6aRQr1XciGw" resolve="treeInfo" />
                          </node>
                          <node concept="359W_D" id="6aRQr1Xevkf" role="37wK5m">
                            <ref role="359W_E" to="w7di:6aRQr1WVbN0" resolve="TreeInfo" />
                            <ref role="359W_F" to="w7di:6aRQr1WVbN4" resolve="branches" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6aRQr1XetRo" role="3cqZAp">
                    <node concept="37vLTI" id="6aRQr1Xewug" role="3clFbG">
                      <node concept="10M0yZ" id="7AhGRNQhYba" role="37vLTx">
                        <ref role="3cqZAo" to="5440:~ActiveBranch.DEFAULT_BRANCH_NAME" resolve="DEFAULT_BRANCH_NAME" />
                        <ref role="1PxDUh" to="5440:~ActiveBranch" resolve="ActiveBranch" />
                      </node>
                      <node concept="2OqwBi" id="6aRQr1XevX4" role="37vLTJ">
                        <node concept="37vLTw" id="6aRQr1Xevkg" role="2Oq$k0">
                          <ref role="3cqZAo" node="6aRQr1Xevka" resolve="branchInfo" />
                        </node>
                        <node concept="3TrcHB" id="6aRQr1Xewc5" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="6aRQr1XcozN" role="3cqZAp">
                    <node concept="37vLTw" id="6aRQr1XcoZT" role="3cqZAk">
                      <ref role="3cqZAo" node="6aRQr1XciGw" resolve="treeInfo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ardNfhNE9Y" role="jymVt" />
    <node concept="3clFb_" id="7ardNfhNg14" role="jymVt">
      <property role="TrG5h" value="removeTree" />
      <node concept="37vLTG" id="7ardNfhNg17" role="3clF46">
        <property role="TrG5h" value="id" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="7ardNfhNg18" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="7ardNfhNC0p" role="3clF45" />
      <node concept="3Tm1VV" id="7ardNfhNg1a" role="1B3o_S" />
      <node concept="3clFbS" id="7ardNfhNg1b" role="3clF47">
        <node concept="3clFbF" id="7ardNfhNg1c" role="3cqZAp">
          <node concept="2OqwBi" id="7ardNfhNg1d" role="3clFbG">
            <node concept="1rXfSq" id="7ardNfhNg1e" role="2Oq$k0">
              <ref role="37wK5l" node="6aRQr1X1RCt" resolve="getInfoBranch" />
            </node>
            <node concept="liA8E" id="7ardNfhNg1f" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~IBranch.computeWrite(kotlin.jvm.functions.Function0)" resolve="computeWrite" />
              <node concept="1bVj0M" id="7ardNfhNg1g" role="37wK5m">
                <node concept="3clFbS" id="7ardNfhNg1h" role="1bW5cS">
                  <node concept="3cpWs8" id="7ardNfhNg1i" role="3cqZAp">
                    <node concept="3cpWsn" id="7ardNfhNg1j" role="3cpWs9">
                      <property role="TrG5h" value="info" />
                      <node concept="3Tqbb2" id="7ardNfhNg1k" role="1tU5fm">
                        <ref role="ehGHo" to="w7di:6aRQr1WVbMZ" resolve="RepositoryInfo" />
                      </node>
                      <node concept="1rXfSq" id="7ardNfhNg1l" role="33vP2m">
                        <ref role="37wK5l" node="6aRQr1WVmiT" resolve="getInfo" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7ardNfhNrj2" role="3cqZAp">
                    <node concept="2OqwBi" id="7ardNfhNB2d" role="3clFbG">
                      <node concept="2OqwBi" id="7ardNfhNtDR" role="2Oq$k0">
                        <node concept="2OqwBi" id="7ardNfhNruB" role="2Oq$k0">
                          <node concept="37vLTw" id="7ardNfhNrj0" role="2Oq$k0">
                            <ref role="3cqZAo" node="7ardNfhNg1j" resolve="info" />
                          </node>
                          <node concept="3Tsc0h" id="7ardNfhNrHJ" role="2OqNvi">
                            <ref role="3TtcxE" to="w7di:6aRQr1WVbN2" resolve="trees" />
                          </node>
                        </node>
                        <node concept="1z4cxt" id="7ardNfhNAyE" role="2OqNvi">
                          <node concept="1bVj0M" id="7ardNfhNAyG" role="23t8la">
                            <node concept="3clFbS" id="7ardNfhNAyH" role="1bW5cS">
                              <node concept="3clFbF" id="7ardNfhNAyI" role="3cqZAp">
                                <node concept="17R0WA" id="7ardNfhNAyJ" role="3clFbG">
                                  <node concept="37vLTw" id="7ardNfhNAyK" role="3uHU7w">
                                    <ref role="3cqZAo" node="7ardNfhNg17" resolve="id" />
                                  </node>
                                  <node concept="2OqwBi" id="7ardNfhNAyL" role="3uHU7B">
                                    <node concept="37vLTw" id="7ardNfhNAyM" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7ardNfhNAyO" resolve="it" />
                                    </node>
                                    <node concept="3TrcHB" id="7ardNfhNAyN" role="2OqNvi">
                                      <ref role="3TsBF5" to="w7di:6aRQr1WVbN6" resolve="id" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="7ardNfhNAyO" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="7ardNfhNAyP" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3YRAZt" id="7ardNfhNBv8" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6aRQr1Xc7Tk" role="jymVt" />
    <node concept="3clFb_" id="EMWAvBf_zL" role="jymVt">
      <property role="TrG5h" value="addBinding" />
      <node concept="37vLTG" id="EMWAvBfBs7" role="3clF46">
        <property role="TrG5h" value="binding" />
        <node concept="3uibUv" id="EMWAvBfC7s" role="1tU5fm">
          <ref role="3uigEE" node="49CIzaqqe7c" resolve="ModelBinding" />
        </node>
      </node>
      <node concept="3cqZAl" id="EMWAvBf_zN" role="3clF45" />
      <node concept="3Tm1VV" id="EMWAvBf_zO" role="1B3o_S" />
      <node concept="3clFbS" id="EMWAvBf_zP" role="3clF47">
        <node concept="3clFbF" id="EMWAvBfI1B" role="3cqZAp">
          <node concept="2OqwBi" id="EMWAvBfIXE" role="3clFbG">
            <node concept="37vLTw" id="EMWAvBfI1A" role="2Oq$k0">
              <ref role="3cqZAo" node="EMWAvBfzsh" resolve="bindings" />
            </node>
            <node concept="TSZUe" id="EMWAvBfKfY" role="2OqNvi">
              <node concept="37vLTw" id="EMWAvBfKMk" role="25WWJ7">
                <ref role="3cqZAo" node="EMWAvBfBs7" resolve="binding" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5JOZTo7A6BA" role="3cqZAp">
          <node concept="2OqwBi" id="5JOZTo7A6SK" role="3clFbG">
            <node concept="10M0yZ" id="5JOZTo7A6JA" role="2Oq$k0">
              <ref role="3cqZAo" node="Onv88ZOFFp" resolve="FIXED" />
              <ref role="1PxDUh" node="Onv88ZNSEL" resolve="SharedExecutors" />
            </node>
            <node concept="liA8E" id="5JOZTo7A703" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~Executor.execute(java.lang.Runnable)" resolve="execute" />
              <node concept="1bVj0M" id="5JOZTo7A7on" role="37wK5m">
                <node concept="3clFbS" id="5JOZTo7A7oo" role="1bW5cS">
                  <node concept="3clFbF" id="EMWAvBfNu3" role="3cqZAp">
                    <node concept="2OqwBi" id="EMWAvBfNPB" role="3clFbG">
                      <node concept="37vLTw" id="EMWAvBfNu1" role="2Oq$k0">
                        <ref role="3cqZAo" node="EMWAvBfBs7" resolve="binding" />
                      </node>
                      <node concept="liA8E" id="EMWAvBfO2u" role="2OqNvi">
                        <ref role="37wK5l" node="49CIzaqqjWT" resolve="activate" />
                        <node concept="Xjq3P" id="EMWAvBfOea" role="37wK5m" />
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
    <node concept="2tJIrI" id="5D5xac1qphd" role="jymVt" />
    <node concept="3clFb_" id="5D5xac1qIoP" role="jymVt">
      <property role="TrG5h" value="hasBinding" />
      <node concept="37vLTG" id="5D5xac1qM6P" role="3clF46">
        <property role="TrG5h" value="treeId" />
        <node concept="3uibUv" id="7AhGRNQhYeY" role="1tU5fm">
          <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
        </node>
      </node>
      <node concept="37vLTG" id="5D5xac1qMX6" role="3clF46">
        <property role="TrG5h" value="moduleNodeId" />
        <node concept="3cpWsb" id="5D5xac1qNIy" role="1tU5fm" />
      </node>
      <node concept="10P_77" id="5D5xac1qNRR" role="3clF45" />
      <node concept="3Tm1VV" id="5D5xac1qIoS" role="1B3o_S" />
      <node concept="3clFbS" id="5D5xac1qIoT" role="3clF47">
        <node concept="3clFbF" id="5D5xac1qP1j" role="3cqZAp">
          <node concept="2OqwBi" id="5D5xac1qQ2o" role="3clFbG">
            <node concept="37vLTw" id="5D5xac1qP1i" role="2Oq$k0">
              <ref role="3cqZAo" node="EMWAvBfzsh" resolve="bindings" />
            </node>
            <node concept="2HwmR7" id="5D5xac1qQJ8" role="2OqNvi">
              <node concept="1bVj0M" id="5D5xac1qQJa" role="23t8la">
                <node concept="3clFbS" id="5D5xac1qQJb" role="1bW5cS">
                  <node concept="3clFbF" id="5D5xac1qR6t" role="3cqZAp">
                    <node concept="1Wc70l" id="5D5xac1qTEs" role="3clFbG">
                      <node concept="17R0WA" id="5D5xac1qVvW" role="3uHU7w">
                        <node concept="37vLTw" id="5D5xac1qVXw" role="3uHU7w">
                          <ref role="3cqZAo" node="5D5xac1qMX6" resolve="moduleNodeId" />
                        </node>
                        <node concept="2OqwBi" id="5D5xac1qUoE" role="3uHU7B">
                          <node concept="37vLTw" id="5D5xac1qTZo" role="2Oq$k0">
                            <ref role="3cqZAo" node="5D5xac1qQJc" resolve="it" />
                          </node>
                          <node concept="liA8E" id="5D5xac1qUFD" role="2OqNvi">
                            <ref role="37wK5l" node="5D5xac1qR_e" resolve="getNodeId" />
                          </node>
                        </node>
                      </node>
                      <node concept="17R0WA" id="5D5xac1qSVs" role="3uHU7B">
                        <node concept="2OqwBi" id="5D5xac1qRl$" role="3uHU7B">
                          <node concept="37vLTw" id="5D5xac1qR6s" role="2Oq$k0">
                            <ref role="3cqZAo" node="5D5xac1qQJc" resolve="it" />
                          </node>
                          <node concept="liA8E" id="5D5xac1qSEx" role="2OqNvi">
                            <ref role="37wK5l" node="5D5xac1qR_m" resolve="getTreeId" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="5D5xac1qTds" role="3uHU7w">
                          <ref role="3cqZAo" node="5D5xac1qM6P" resolve="treeId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="5D5xac1qQJc" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5D5xac1qQJd" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2n9WvfbjHiP" role="jymVt" />
    <node concept="3clFb_" id="2n9WvfbjIh4" role="jymVt">
      <property role="TrG5h" value="getBindings" />
      <node concept="A3Dl8" id="2n9WvfbjM4c" role="3clF45">
        <node concept="3uibUv" id="2n9WvfbjN7D" role="A3Ik2">
          <ref role="3uigEE" node="49CIzaqqe7c" resolve="ModelBinding" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2n9WvfbjIh7" role="1B3o_S" />
      <node concept="3clFbS" id="2n9WvfbjIh8" role="3clF47">
        <node concept="3clFbF" id="2n9WvfbjNvm" role="3cqZAp">
          <node concept="37vLTw" id="2n9WvfbjNvl" role="3clFbG">
            <ref role="3cqZAo" node="EMWAvBfzsh" resolve="bindings" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="EMWAvBf$QY" role="jymVt" />
    <node concept="3clFb_" id="6aRQr1X1RCt" role="jymVt">
      <property role="TrG5h" value="getInfoBranch" />
      <node concept="3uibUv" id="1m9roGBTATe" role="3clF45">
        <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
      </node>
      <node concept="3Tm1VV" id="6aRQr1X1RCw" role="1B3o_S" />
      <node concept="3clFbS" id="6aRQr1X1RCx" role="3clF47">
        <node concept="3clFbF" id="1JFLVobhvDz" role="3cqZAp">
          <node concept="1rXfSq" id="1JFLVobhvDx" role="3clFbG">
            <ref role="37wK5l" node="1JFLVobhv9H" resolve="checkConnected" />
          </node>
        </node>
        <node concept="3clFbF" id="6aRQr1X1TG$" role="3cqZAp">
          <node concept="2OqwBi" id="6aRQr1X1TZL" role="3clFbG">
            <node concept="37vLTw" id="6aRQr1X1TGz" role="2Oq$k0">
              <ref role="3cqZAo" node="6aRQr1WXcru" resolve="infoTree" />
            </node>
            <node concept="liA8E" id="6aRQr1X1Ud5" role="2OqNvi">
              <ref role="37wK5l" to="5440:~ReplicatedTree.getBranch()" resolve="getBranch" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6aRQr1X1ReA" role="jymVt" />
    <node concept="3clFb_" id="6aRQr1WVmiT" role="jymVt">
      <property role="TrG5h" value="getInfo" />
      <node concept="3Tqbb2" id="6aRQr1WVmKR" role="3clF45">
        <ref role="ehGHo" to="w7di:6aRQr1WVbMZ" resolve="RepositoryInfo" />
      </node>
      <node concept="3Tm1VV" id="6aRQr1WVmiW" role="1B3o_S" />
      <node concept="3clFbS" id="6aRQr1WVmiX" role="3clF47">
        <node concept="3clFbF" id="1JFLVobhxlT" role="3cqZAp">
          <node concept="1rXfSq" id="1JFLVobhxlU" role="3clFbG">
            <ref role="37wK5l" node="1JFLVobhv9H" resolve="checkConnected" />
          </node>
        </node>
        <node concept="3cpWs8" id="6aRQr1WWMAx" role="3cqZAp">
          <node concept="3cpWsn" id="6aRQr1WWMAy" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3Tqbb2" id="6aRQr1WWM$A" role="1tU5fm">
              <ref role="ehGHo" to="w7di:6aRQr1WVbMZ" resolve="RepositoryInfo" />
            </node>
            <node concept="2OqwBi" id="6aRQr1WWMAz" role="33vP2m">
              <node concept="2OqwBi" id="6aRQr1X1Mqh" role="2Oq$k0">
                <node concept="37vLTw" id="6aRQr1WWMA$" role="2Oq$k0">
                  <ref role="3cqZAo" node="6aRQr1WXcru" resolve="infoTree" />
                </node>
                <node concept="liA8E" id="6aRQr1X1MSY" role="2OqNvi">
                  <ref role="37wK5l" to="5440:~ReplicatedTree.getBranch()" resolve="getBranch" />
                </node>
              </node>
              <node concept="liA8E" id="6aRQr1WWMA_" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~IBranch.computeRead(kotlin.jvm.functions.Function0)" resolve="computeRead" />
                <node concept="1bVj0M" id="6aRQr1WWMAA" role="37wK5m">
                  <node concept="3clFbS" id="6aRQr1WWMAB" role="1bW5cS">
                    <node concept="3cpWs8" id="6aRQr1WWMAC" role="3cqZAp">
                      <node concept="3cpWsn" id="6aRQr1WWMAD" role="3cpWs9">
                        <property role="TrG5h" value="t" />
                        <node concept="3uibUv" id="6aRQr1WXj6H" role="1tU5fm">
                          <ref role="3uigEE" to="jks5:~ITransaction" resolve="ITransaction" />
                        </node>
                        <node concept="2OqwBi" id="6aRQr1WWMAF" role="33vP2m">
                          <node concept="2OqwBi" id="6aRQr1X1Nj6" role="2Oq$k0">
                            <node concept="37vLTw" id="6aRQr1WWMAG" role="2Oq$k0">
                              <ref role="3cqZAo" node="6aRQr1WXcru" resolve="infoTree" />
                            </node>
                            <node concept="liA8E" id="6aRQr1X1NOo" role="2OqNvi">
                              <ref role="37wK5l" to="5440:~ReplicatedTree.getBranch()" resolve="getBranch" />
                            </node>
                          </node>
                          <node concept="liA8E" id="6aRQr1WWMAH" role="2OqNvi">
                            <ref role="37wK5l" to="jks5:~IBranch.getTransaction()" resolve="getTransaction" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="1yReInRcfV" role="3cqZAp">
                      <node concept="3cpWsn" id="1yReInRcfW" role="3cpWs9">
                        <property role="TrG5h" value="allChildren_" />
                        <node concept="A3Dl8" id="1yReInRhvB" role="1tU5fm">
                          <node concept="3uibUv" id="1yReInRhvD" role="A3Ik2">
                            <ref role="3uigEE" to="wyt6:~Long" resolve="Long" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1yReInRcfX" role="33vP2m">
                          <node concept="37vLTw" id="1yReInRcfY" role="2Oq$k0">
                            <ref role="3cqZAo" node="6aRQr1WWMAD" resolve="t" />
                          </node>
                          <node concept="liA8E" id="1yReInRcfZ" role="2OqNvi">
                            <ref role="37wK5l" to="jks5:~ITransaction.getAllChildren(long)" resolve="getAllChildren" />
                            <node concept="10M0yZ" id="1yReInRcg0" role="37wK5m">
                              <ref role="1PxDUh" to="jks5:~ITree" resolve="ITree" />
                              <ref role="3cqZAo" to="jks5:~ITree.ROOT_ID" resolve="ROOT_ID" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="1m9roGBB$m5" role="3cqZAp">
                      <node concept="3cpWsn" id="1m9roGBB$m6" role="3cpWs9">
                        <property role="TrG5h" value="allChildren" />
                        <node concept="A3Dl8" id="1m9roGBC8Oo" role="1tU5fm">
                          <node concept="3Tqbb2" id="1m9roGBCdVd" role="A3Ik2" />
                        </node>
                        <node concept="2OqwBi" id="1yReInRkiR" role="33vP2m">
                          <node concept="37vLTw" id="1yReInRcg1" role="2Oq$k0">
                            <ref role="3cqZAo" node="1yReInRcfW" resolve="allChildren_" />
                          </node>
                          <node concept="3$u5V9" id="1yReInRnoc" role="2OqNvi">
                            <node concept="1bVj0M" id="1yReInRnoe" role="23t8la">
                              <node concept="3clFbS" id="1yReInRnof" role="1bW5cS">
                                <node concept="3clFbF" id="1yReInRppk" role="3cqZAp">
                                  <node concept="10QFUN" id="1yReInRppm" role="3clFbG">
                                    <node concept="2YIFZM" id="1yReInRppn" role="10QFUP">
                                      <ref role="37wK5l" to="xxte:4EhVFrZ6z9$" resolve="wrap" />
                                      <ref role="1Pybhc" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                                      <node concept="2ShNRf" id="1yReInRppo" role="37wK5m">
                                        <node concept="1pGfFk" id="1yReInRppp" role="2ShVmc">
                                          <ref role="37wK5l" to="jks5:~PNodeAdapter.&lt;init&gt;(long,org.modelix.model.api.IBranch)" resolve="PNodeAdapter" />
                                          <node concept="37vLTw" id="1yReInRppq" role="37wK5m">
                                            <ref role="3cqZAo" node="1yReInRnog" resolve="it" />
                                          </node>
                                          <node concept="2OqwBi" id="1yReInRppr" role="37wK5m">
                                            <node concept="37vLTw" id="1yReInRpps" role="2Oq$k0">
                                              <ref role="3cqZAo" node="6aRQr1WXcru" resolve="infoTree" />
                                            </node>
                                            <node concept="liA8E" id="1yReInRppt" role="2OqNvi">
                                              <ref role="37wK5l" to="5440:~ReplicatedTree.getBranch()" resolve="getBranch" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3Tqbb2" id="1yReInRppu" role="10QFUM" />
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="1yReInRnog" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="1yReInRnoh" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="6aRQr1WWMAI" role="3cqZAp">
                      <node concept="2OqwBi" id="6aRQr1WWMAJ" role="3cqZAk">
                        <node concept="2OqwBi" id="6aRQr1WWMAK" role="2Oq$k0">
                          <node concept="37vLTw" id="1m9roGBCoe5" role="2Oq$k0">
                            <ref role="3cqZAo" node="1m9roGBB$m6" resolve="allChildren" />
                          </node>
                          <node concept="v3k3i" id="6aRQr1WWMB3" role="2OqNvi">
                            <node concept="chp4Y" id="6aRQr1WWMB4" role="v3oSu">
                              <ref role="cht4Q" to="w7di:6aRQr1WVbMZ" resolve="RepositoryInfo" />
                            </node>
                          </node>
                        </node>
                        <node concept="1uHKPH" id="6aRQr1WWMB5" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6aRQr1WWWV3" role="3cqZAp">
          <node concept="3clFbS" id="6aRQr1WWWV5" role="3clFbx">
            <node concept="3clFbF" id="6aRQr1WX9LL" role="3cqZAp">
              <node concept="37vLTI" id="6aRQr1WXa5y" role="3clFbG">
                <node concept="37vLTw" id="6aRQr1WX9LK" role="37vLTJ">
                  <ref role="3cqZAo" node="6aRQr1WWMAy" resolve="result" />
                </node>
                <node concept="2OqwBi" id="6aRQr1WX0eX" role="37vLTx">
                  <node concept="2OqwBi" id="6aRQr1X1PxN" role="2Oq$k0">
                    <node concept="37vLTw" id="6aRQr1WWZnP" role="2Oq$k0">
                      <ref role="3cqZAo" node="6aRQr1WXcru" resolve="infoTree" />
                    </node>
                    <node concept="liA8E" id="6aRQr1X1POp" role="2OqNvi">
                      <ref role="37wK5l" to="5440:~ReplicatedTree.getBranch()" resolve="getBranch" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6aRQr1WX0vJ" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~IBranch.computeWrite(kotlin.jvm.functions.Function0)" resolve="computeWrite" />
                    <node concept="1bVj0M" id="6aRQr1WX0Rg" role="37wK5m">
                      <node concept="3clFbS" id="6aRQr1WX0Rh" role="1bW5cS">
                        <node concept="3cpWs8" id="6aRQr1WX1LU" role="3cqZAp">
                          <node concept="3cpWsn" id="6aRQr1WX1LV" role="3cpWs9">
                            <property role="TrG5h" value="t" />
                            <node concept="3uibUv" id="6aRQr1WXkcL" role="1tU5fm">
                              <ref role="3uigEE" to="jks5:~IWriteTransaction" resolve="IWriteTransaction" />
                            </node>
                            <node concept="2OqwBi" id="6aRQr1WX1LW" role="33vP2m">
                              <node concept="2OqwBi" id="6aRQr1X1QbK" role="2Oq$k0">
                                <node concept="37vLTw" id="6aRQr1WX1LX" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6aRQr1WXcru" resolve="infoTree" />
                                </node>
                                <node concept="liA8E" id="6aRQr1X1Qv7" role="2OqNvi">
                                  <ref role="37wK5l" to="5440:~ReplicatedTree.getBranch()" resolve="getBranch" />
                                </node>
                              </node>
                              <node concept="liA8E" id="6aRQr1WX1LY" role="2OqNvi">
                                <ref role="37wK5l" to="jks5:~IBranch.getWriteTransaction()" resolve="getWriteTransaction" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="6aRQr1WX6nG" role="3cqZAp">
                          <node concept="3cpWsn" id="6aRQr1WX6nH" role="3cpWs9">
                            <property role="TrG5h" value="id" />
                            <node concept="3cpWsb" id="6aRQr1WX6fe" role="1tU5fm" />
                            <node concept="2OqwBi" id="6aRQr1WX6nI" role="33vP2m">
                              <node concept="37vLTw" id="6aRQr1WX6nJ" role="2Oq$k0">
                                <ref role="3cqZAo" node="6aRQr1WX1LV" resolve="t" />
                              </node>
                              <node concept="liA8E" id="6aRQr1WX6nK" role="2OqNvi">
                                <ref role="37wK5l" to="jks5:~IWriteTransaction.addNewChild(long,java.lang.String,int,org.modelix.model.api.IConcept)" resolve="addNewChild" />
                                <node concept="10M0yZ" id="6aRQr1WX6nL" role="37wK5m">
                                  <ref role="1PxDUh" to="jks5:~ITree" resolve="ITree" />
                                  <ref role="3cqZAo" to="jks5:~ITree.ROOT_ID" resolve="ROOT_ID" />
                                </node>
                                <node concept="Xl_RD" id="6aRQr1WX6nM" role="37wK5m">
                                  <property role="Xl_RC" value="info" />
                                </node>
                                <node concept="3cmrfG" id="6aRQr1WX6nN" role="37wK5m">
                                  <property role="3cmrfH" value="-1" />
                                </node>
                                <node concept="2YIFZM" id="6aRQr1WX6nO" role="37wK5m">
                                  <ref role="1Pybhc" to="xxte:5gTrVpGjuL2" resolve="SConceptAdapter" />
                                  <ref role="37wK5l" to="xxte:3ECE8iPOmg5" resolve="wrap" />
                                  <node concept="35c_gC" id="6aRQr1WX6nP" role="37wK5m">
                                    <ref role="35c_gD" to="w7di:6aRQr1WVbMZ" resolve="RepositoryInfo" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="6aRQr1XaFFg" role="3cqZAp">
                          <node concept="3cpWsn" id="6aRQr1XaFFh" role="3cpWs9">
                            <property role="TrG5h" value="repoInfo" />
                            <node concept="3Tqbb2" id="6aRQr1XaF$k" role="1tU5fm">
                              <ref role="ehGHo" to="w7di:6aRQr1WVbMZ" resolve="RepositoryInfo" />
                            </node>
                            <node concept="1PxgMI" id="6aRQr1XaFFi" role="33vP2m">
                              <node concept="chp4Y" id="6aRQr1XaFFj" role="3oSUPX">
                                <ref role="cht4Q" to="w7di:6aRQr1WVbMZ" resolve="RepositoryInfo" />
                              </node>
                              <node concept="2YIFZM" id="6aRQr1XaFFk" role="1m5AlR">
                                <ref role="1Pybhc" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                                <ref role="37wK5l" to="xxte:4EhVFrZ6z9$" resolve="wrap" />
                                <node concept="2ShNRf" id="6aRQr1XaFFl" role="37wK5m">
                                  <node concept="1pGfFk" id="6aRQr1XaFFm" role="2ShVmc">
                                    <ref role="37wK5l" to="jks5:~PNodeAdapter.&lt;init&gt;(long,org.modelix.model.api.IBranch)" resolve="PNodeAdapter" />
                                    <node concept="37vLTw" id="6aRQr1XaFFn" role="37wK5m">
                                      <ref role="3cqZAo" node="6aRQr1WX6nH" resolve="id" />
                                    </node>
                                    <node concept="2OqwBi" id="6aRQr1XaFFo" role="37wK5m">
                                      <node concept="37vLTw" id="6aRQr1XaFFp" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6aRQr1WXcru" resolve="infoTree" />
                                      </node>
                                      <node concept="liA8E" id="6aRQr1XaFFq" role="2OqNvi">
                                        <ref role="37wK5l" to="5440:~ReplicatedTree.getBranch()" resolve="getBranch" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="6aRQr1XaSDx" role="3cqZAp" />
                        <node concept="3clFbF" id="3OcvCejdFKt" role="3cqZAp">
                          <node concept="1rXfSq" id="3OcvCejdFKr" role="3clFbG">
                            <ref role="37wK5l" node="6aRQr1Xc8A_" resolve="addTree" />
                            <node concept="Xl_RD" id="3OcvCejdG9q" role="37wK5m">
                              <property role="Xl_RC" value="default tree" />
                            </node>
                            <node concept="Xl_RD" id="3OcvCejdGX$" role="37wK5m">
                              <property role="Xl_RC" value="default" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="6aRQr1XaSKz" role="3cqZAp" />
                        <node concept="3cpWs6" id="6aRQr1WX6Zk" role="3cqZAp">
                          <node concept="37vLTw" id="6aRQr1XaGng" role="3cqZAk">
                            <ref role="3cqZAo" node="6aRQr1XaFFh" resolve="repoInfo" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6aRQr1WWYub" role="3clFbw">
            <node concept="10Nm6u" id="6aRQr1WWZ4x" role="3uHU7w" />
            <node concept="37vLTw" id="6aRQr1WWXPC" role="3uHU7B">
              <ref role="3cqZAo" node="6aRQr1WWMAy" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6aRQr1WWVF8" role="3cqZAp">
          <node concept="37vLTw" id="6aRQr1WWVRy" role="3cqZAk">
            <ref role="3cqZAo" node="6aRQr1WWMAy" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6aRQr1WWonN" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="6aRQr1WPdSj" role="jymVt" />
    <node concept="3clFb_" id="6aRQr1X24wJ" role="jymVt">
      <property role="TrG5h" value="getActiveBranch" />
      <node concept="37vLTG" id="6aRQr1X26PL" role="3clF46">
        <property role="TrG5h" value="treeId" />
        <node concept="3uibUv" id="4HpUuL0wEIe" role="1tU5fm">
          <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
        </node>
      </node>
      <node concept="3uibUv" id="7AhGRNQhYiN" role="3clF45">
        <ref role="3uigEE" to="5440:~ActiveBranch" resolve="ActiveBranch" />
      </node>
      <node concept="3Tm1VV" id="6aRQr1X24wM" role="1B3o_S" />
      <node concept="3clFbS" id="6aRQr1X24wN" role="3clF47">
        <node concept="3clFbF" id="1JFLVobhxEV" role="3cqZAp">
          <node concept="1rXfSq" id="1JFLVobhxEW" role="3clFbG">
            <ref role="37wK5l" node="1JFLVobhv9H" resolve="checkConnected" />
          </node>
        </node>
        <node concept="1HWtB8" id="6aRQr1X285Y" role="3cqZAp">
          <node concept="37vLTw" id="6aRQr1X28si" role="1HWFw0">
            <ref role="3cqZAo" node="6aRQr1X1X4Z" resolve="activeBranches" />
          </node>
          <node concept="3clFbS" id="6aRQr1X2860" role="1HWHxc">
            <node concept="3cpWs8" id="6aRQr1X2b66" role="3cqZAp">
              <node concept="3cpWsn" id="6aRQr1X2b67" role="3cpWs9">
                <property role="TrG5h" value="ab" />
                <node concept="3uibUv" id="4HpUuL0wHuq" role="1tU5fm">
                  <ref role="3uigEE" to="5440:~ActiveBranch" resolve="ActiveBranch" />
                </node>
                <node concept="3EllGN" id="6aRQr1X2b68" role="33vP2m">
                  <node concept="37vLTw" id="49CIzaqejhF" role="3ElVtu">
                    <ref role="3cqZAo" node="6aRQr1X26PL" resolve="treeId" />
                  </node>
                  <node concept="37vLTw" id="6aRQr1X2b6c" role="3ElQJh">
                    <ref role="3cqZAo" node="6aRQr1X1X4Z" resolve="activeBranches" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6aRQr1X2bqc" role="3cqZAp">
              <node concept="3clFbS" id="6aRQr1X2bqe" role="3clFbx">
                <node concept="3clFbF" id="6aRQr1X2cnS" role="3cqZAp">
                  <node concept="37vLTI" id="6aRQr1X2cuN" role="3clFbG">
                    <node concept="2ShNRf" id="6aRQr1X2cQB" role="37vLTx">
                      <node concept="1pGfFk" id="6aRQr1X2cEg" role="2ShVmc">
                        <ref role="37wK5l" to="5440:~ActiveBranch.&lt;init&gt;(org.modelix.model.client.IModelClient,org.modelix.model.lazy.TreeId,java.lang.String,kotlin.jvm.functions.Function0)" resolve="ActiveBranch" />
                        <node concept="37vLTw" id="6aRQr1X2d2U" role="37wK5m">
                          <ref role="3cqZAo" node="6aRQr1WVnku" resolve="client" />
                        </node>
                        <node concept="37vLTw" id="6aRQr1X2dkY" role="37wK5m">
                          <ref role="3cqZAo" node="6aRQr1X26PL" resolve="treeId" />
                        </node>
                        <node concept="10Nm6u" id="49CIzaqemKJ" role="37wK5m" />
                        <node concept="1bVj0M" id="2EzI5qKsy4Q" role="37wK5m">
                          <node concept="3clFbS" id="2EzI5qKsy4S" role="1bW5cS">
                            <node concept="3clFbF" id="5MA9wbc60L1" role="3cqZAp">
                              <node concept="1rXfSq" id="5MA9wbc6eJO" role="3clFbG">
                                <ref role="37wK5l" node="5MA9wbc62$n" resolve="getAuthor" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="6aRQr1X2cnQ" role="37vLTJ">
                      <ref role="3cqZAo" node="6aRQr1X2b67" resolve="ab" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6aRQr1X2e0m" role="3cqZAp">
                  <node concept="37vLTI" id="6aRQr1X2fc7" role="3clFbG">
                    <node concept="37vLTw" id="6aRQr1X2ft6" role="37vLTx">
                      <ref role="3cqZAo" node="6aRQr1X2b67" resolve="ab" />
                    </node>
                    <node concept="3EllGN" id="6aRQr1X2eDd" role="37vLTJ">
                      <node concept="37vLTw" id="6aRQr1X2e0k" role="3ElQJh">
                        <ref role="3cqZAo" node="6aRQr1X1X4Z" resolve="activeBranches" />
                      </node>
                      <node concept="37vLTw" id="49CIzaqendv" role="3ElVtu">
                        <ref role="3cqZAo" node="6aRQr1X26PL" resolve="treeId" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="6aRQr1X2bYk" role="3clFbw">
                <node concept="10Nm6u" id="6aRQr1X2ccu" role="3uHU7w" />
                <node concept="37vLTw" id="6aRQr1X2bBv" role="3uHU7B">
                  <ref role="3cqZAo" node="6aRQr1X2b67" resolve="ab" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6aRQr1X2fGR" role="3cqZAp">
              <node concept="37vLTw" id="6aRQr1X2fGT" role="3cqZAk">
                <ref role="3cqZAo" node="6aRQr1X2b67" resolve="ab" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6aRQr1X23XL" role="jymVt" />
    <node concept="3clFb_" id="6aRQr1WPeeC" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <property role="od$2w" value="true" />
      <node concept="3cqZAl" id="6aRQr1WPeeE" role="3clF45" />
      <node concept="3Tm1VV" id="6aRQr1WPeeF" role="1B3o_S" />
      <node concept="3clFbS" id="6aRQr1WPeeG" role="3clF47">
        <node concept="3J1_TO" id="1JFLVobhy$E" role="3cqZAp">
          <node concept="3clFbS" id="1JFLVobhy$G" role="1zxBo7">
            <node concept="3clFbF" id="6aRQr1X1VjH" role="3cqZAp">
              <node concept="2EnYce" id="1JFLVobhxZx" role="3clFbG">
                <node concept="37vLTw" id="6aRQr1X1VjF" role="2Oq$k0">
                  <ref role="3cqZAo" node="6aRQr1WVnku" resolve="client" />
                </node>
                <node concept="liA8E" id="6aRQr1X1VUk" role="2OqNvi">
                  <ref role="37wK5l" to="5440:~RestWebModelClient.dispose()" resolve="dispose" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="1JFLVobhy$H" role="1zxBo5">
            <node concept="XOnhg" id="1JFLVobhy$J" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="f1N348ZqLgp" role="1tU5fm">
                <node concept="3uibUv" id="1JFLVobhyH9" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1JFLVobhy$N" role="1zc67A">
              <node concept="RRSsy" id="1JFLVobhz4k" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="1JFLVobhz4m" role="RRSoy" />
                <node concept="37vLTw" id="1JFLVobhz4o" role="RRSow">
                  <ref role="3cqZAo" node="1JFLVobhy$J" resolve="ex" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="1JFLVobhz7u" role="3cqZAp">
          <node concept="3clFbS" id="1JFLVobhz7v" role="1zxBo7">
            <node concept="3clFbF" id="6aRQr1X1U_A" role="3cqZAp">
              <node concept="2EnYce" id="1JFLVobhycD" role="3clFbG">
                <node concept="37vLTw" id="6aRQr1X1U__" role="2Oq$k0">
                  <ref role="3cqZAo" node="6aRQr1WXcru" resolve="infoTree" />
                </node>
                <node concept="liA8E" id="6aRQr1X1V6O" role="2OqNvi">
                  <ref role="37wK5l" node="6aRQr1WXw$t" resolve="dispose" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="1JFLVobhz7w" role="1zxBo5">
            <node concept="XOnhg" id="1JFLVobhz7x" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="f1N348ZqMm5" role="1tU5fm">
                <node concept="3uibUv" id="1JFLVobhz7y" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1JFLVobhz7z" role="1zc67A">
              <node concept="RRSsy" id="1JFLVobhz7$" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="1JFLVobhz7_" role="RRSoy" />
                <node concept="37vLTw" id="1JFLVobhz7A" role="RRSow">
                  <ref role="3cqZAo" node="1JFLVobhz7x" resolve="ex" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1HWtB8" id="6aRQr1X2gt5" role="3cqZAp">
          <node concept="37vLTw" id="6aRQr1X2gWS" role="1HWFw0">
            <ref role="3cqZAo" node="6aRQr1X1X4Z" resolve="activeBranches" />
          </node>
          <node concept="3clFbS" id="6aRQr1X2gt9" role="1HWHxc">
            <node concept="2Gpval" id="6aRQr1X1YZs" role="3cqZAp">
              <node concept="2GrKxI" id="6aRQr1X1YZu" role="2Gsz3X">
                <property role="TrG5h" value="ab" />
              </node>
              <node concept="2OqwBi" id="6aRQr1X205y" role="2GsD0m">
                <node concept="37vLTw" id="6aRQr1X1Zrr" role="2Oq$k0">
                  <ref role="3cqZAo" node="6aRQr1X1X4Z" resolve="activeBranches" />
                </node>
                <node concept="T8wYR" id="6aRQr1X2131" role="2OqNvi" />
              </node>
              <node concept="3clFbS" id="6aRQr1X1YZy" role="2LFqv$">
                <node concept="3J1_TO" id="1JFLVobhzRn" role="3cqZAp">
                  <node concept="3clFbS" id="1JFLVobhzRo" role="1zxBo7">
                    <node concept="3clFbF" id="6aRQr1X21lH" role="3cqZAp">
                      <node concept="2OqwBi" id="6aRQr1X21Af" role="3clFbG">
                        <node concept="2GrUjf" id="6aRQr1X21lG" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="6aRQr1X1YZu" resolve="ab" />
                        </node>
                        <node concept="liA8E" id="6aRQr1X21Xa" role="2OqNvi">
                          <ref role="37wK5l" to="5440:~ActiveBranch.dispose()" resolve="dispose" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3uVAMA" id="1JFLVobhzRp" role="1zxBo5">
                    <node concept="XOnhg" id="1JFLVobhzRq" role="1zc67B">
                      <property role="3TUv4t" value="false" />
                      <property role="TrG5h" value="ex" />
                      <node concept="nSUau" id="f1N348ZqNRN" role="1tU5fm">
                        <node concept="3uibUv" id="1JFLVobhzRr" role="nSUat">
                          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="1JFLVobhzRs" role="1zc67A">
                      <node concept="RRSsy" id="1JFLVobhzRt" role="3cqZAp">
                        <property role="RRSoG" value="gZ5fh_4/error" />
                        <node concept="Xl_RD" id="1JFLVobhzRu" role="RRSoy" />
                        <node concept="37vLTw" id="1JFLVobhzRv" role="RRSow">
                          <ref role="3cqZAo" node="1JFLVobhzRq" resolve="ex" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6aRQr1X22oM" role="3cqZAp">
              <node concept="2OqwBi" id="6aRQr1X233R" role="3clFbG">
                <node concept="37vLTw" id="6aRQr1X22oK" role="2Oq$k0">
                  <ref role="3cqZAo" node="6aRQr1X1X4Z" resolve="activeBranches" />
                </node>
                <node concept="1yHZxX" id="6aRQr1X23Pr" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2a45eKoq$Ok" role="3cqZAp">
          <node concept="3cpWsn" id="2a45eKoq$On" role="3cpWs9">
            <property role="TrG5h" value="bindingsToDeacvtivate" />
            <node concept="_YKpA" id="2a45eKoq$Og" role="1tU5fm">
              <node concept="3uibUv" id="2a45eKoq_Gl" role="_ZDj9">
                <ref role="3uigEE" node="49CIzaqqe7c" resolve="ModelBinding" />
              </node>
            </node>
            <node concept="2ShNRf" id="2a45eKoqAb5" role="33vP2m">
              <node concept="Tc6Ow" id="2a45eKoq_YF" role="2ShVmc">
                <node concept="3uibUv" id="2a45eKoq_YG" role="HW$YZ">
                  <ref role="3uigEE" node="49CIzaqqe7c" resolve="ModelBinding" />
                </node>
                <node concept="37vLTw" id="2a45eKoqOZI" role="I$8f6">
                  <ref role="3cqZAo" node="EMWAvBfzsh" resolve="bindings" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="EMWAvBfELB" role="3cqZAp">
          <node concept="2OqwBi" id="EMWAvBfFPn" role="3clFbG">
            <node concept="37vLTw" id="EMWAvBfEL_" role="2Oq$k0">
              <ref role="3cqZAo" node="EMWAvBfzsh" resolve="bindings" />
            </node>
            <node concept="2Kehj3" id="EMWAvBfH7c" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="2a45eKoqQB3" role="3cqZAp" />
        <node concept="3clFbF" id="2a45eKor6rc" role="3cqZAp">
          <node concept="2YIFZM" id="2a45eKor75h" role="3clFbG">
            <ref role="37wK5l" node="2a45eKor3F7" resolve="runWrite" />
            <ref role="1Pybhc" node="2a45eKor38C" resolve="WriteAccessUtil" />
            <node concept="2YIFZM" id="2a45eKor7b$" role="37wK5m">
              <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
            </node>
            <node concept="1bVj0M" id="2a45eKor7Ed" role="37wK5m">
              <node concept="3clFbS" id="2a45eKor7Ef" role="1bW5cS">
                <node concept="2Gpval" id="EMWAvBfCBK" role="3cqZAp">
                  <node concept="2GrKxI" id="EMWAvBfCBM" role="2Gsz3X">
                    <property role="TrG5h" value="binding" />
                  </node>
                  <node concept="37vLTw" id="EMWAvBfCVw" role="2GsD0m">
                    <ref role="3cqZAo" node="EMWAvBfzsh" resolve="bindings" />
                  </node>
                  <node concept="3clFbS" id="EMWAvBfCBQ" role="2LFqv$">
                    <node concept="3J1_TO" id="1JFLVobhzXQ" role="3cqZAp">
                      <node concept="3clFbS" id="1JFLVobhzXR" role="1zxBo7">
                        <node concept="3clFbF" id="EMWAvBfDuC" role="3cqZAp">
                          <node concept="2OqwBi" id="EMWAvBfDJo" role="3clFbG">
                            <node concept="2GrUjf" id="EMWAvBfDuB" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="EMWAvBfCBM" resolve="binding" />
                            </node>
                            <node concept="liA8E" id="EMWAvBfEaw" role="2OqNvi">
                              <ref role="37wK5l" node="49CIzaqqkaP" resolve="deactivate" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3uVAMA" id="1JFLVobhzXS" role="1zxBo5">
                        <node concept="XOnhg" id="1JFLVobhzXT" role="1zc67B">
                          <property role="3TUv4t" value="false" />
                          <property role="TrG5h" value="ex" />
                          <node concept="nSUau" id="f1N348ZqNyP" role="1tU5fm">
                            <node concept="3uibUv" id="1JFLVobhzXU" role="nSUat">
                              <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="1JFLVobhzXV" role="1zc67A">
                          <node concept="RRSsy" id="1JFLVobhzXW" role="3cqZAp">
                            <property role="RRSoG" value="gZ5fh_4/error" />
                            <node concept="Xl_RD" id="1JFLVobhzXX" role="RRSoy" />
                            <node concept="37vLTw" id="1JFLVobhzXY" role="RRSow">
                              <ref role="3cqZAo" node="1JFLVobhzXT" resolve="ex" />
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
    <node concept="2tJIrI" id="6aRQr1WQHyd" role="jymVt" />
    <node concept="3Tm1VV" id="6aRQr1WOV$w" role="1B3o_S" />
    <node concept="3clFb_" id="6aRQr1WQLS7" role="jymVt">
      <property role="TrG5h" value="getBaseUrl" />
      <node concept="17QB3L" id="6aRQr1WQLS8" role="3clF45" />
      <node concept="3Tm1VV" id="6aRQr1WQLS9" role="1B3o_S" />
      <node concept="3clFbS" id="6aRQr1WQLSa" role="3clF47">
        <node concept="3clFbF" id="6aRQr1WVpDF" role="3cqZAp">
          <node concept="37vLTw" id="1JFLVobi1_D" role="3clFbG">
            <ref role="3cqZAo" node="6aRQr1WPbDO" resolve="baseUrl" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6aRQr1WQMum" role="jymVt" />
    <node concept="3clFb_" id="2n9Wvfbnqym" role="jymVt">
      <property role="TrG5h" value="getClient" />
      <node concept="3uibUv" id="4HpUuL0xc3B" role="3clF45">
        <ref role="3uigEE" to="5440:~IModelClient" resolve="IModelClient" />
      </node>
      <node concept="3Tm1VV" id="2n9Wvfbnqyo" role="1B3o_S" />
      <node concept="3clFbS" id="2n9Wvfbnqyp" role="3clF47">
        <node concept="3clFbF" id="1JFLVobh$mC" role="3cqZAp">
          <node concept="1rXfSq" id="1JFLVobh$mA" role="3clFbG">
            <ref role="37wK5l" node="1JFLVobhv9H" resolve="checkConnected" />
          </node>
        </node>
        <node concept="3clFbF" id="2n9Wvfbnqyq" role="3cqZAp">
          <node concept="2OqwBi" id="2n9Wvfbnqyj" role="3clFbG">
            <node concept="Xjq3P" id="2n9Wvfbnqyk" role="2Oq$k0" />
            <node concept="2OwXpG" id="2n9Wvfbnqyl" role="2OqNvi">
              <ref role="2Oxat5" node="6aRQr1WVnku" resolve="client" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2n9WvfbnskH" role="jymVt" />
    <node concept="3clFb_" id="6aRQr1WQHIx" role="jymVt">
      <property role="TrG5h" value="toString" />
      <node concept="3Tm1VV" id="6aRQr1WQHIy" role="1B3o_S" />
      <node concept="17QB3L" id="6aRQr1WQIxt" role="3clF45" />
      <node concept="3clFbS" id="6aRQr1WQHI_" role="3clF47">
        <node concept="3clFbF" id="6aRQr1WQJfK" role="3cqZAp">
          <node concept="37vLTw" id="6aRQr1WQJfJ" role="3clFbG">
            <ref role="3cqZAo" node="6aRQr1WPbDO" resolve="baseUrl" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6aRQr1WQHIA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1JFLVobgYvb" role="jymVt" />
    <node concept="3clFb_" id="1JFLVobh32Z" role="jymVt">
      <property role="TrG5h" value="addListener" />
      <node concept="37vLTG" id="1JFLVobh3a1" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3uibUv" id="1JFLVobh3hD" role="1tU5fm">
          <ref role="3uigEE" node="1JFLVobh0lR" resolve="CloudRepository.IListener" />
        </node>
      </node>
      <node concept="3cqZAl" id="1JFLVobh331" role="3clF45" />
      <node concept="3Tm1VV" id="1JFLVobh332" role="1B3o_S" />
      <node concept="3clFbS" id="1JFLVobh333" role="3clF47">
        <node concept="3cpWs8" id="1JFLVobhdo0" role="3cqZAp">
          <node concept="3cpWsn" id="1JFLVobhdo1" role="3cpWs9">
            <property role="TrG5h" value="newListeners" />
            <node concept="_YKpA" id="1JFLVobhdnS" role="1tU5fm">
              <node concept="3uibUv" id="1JFLVobhdnV" role="_ZDj9">
                <ref role="3uigEE" node="1JFLVobh0lR" resolve="CloudRepository.IListener" />
              </node>
            </node>
            <node concept="2ShNRf" id="1JFLVobhdo2" role="33vP2m">
              <node concept="Tc6Ow" id="1JFLVobhdo3" role="2ShVmc">
                <node concept="3uibUv" id="1JFLVobhdo4" role="HW$YZ">
                  <ref role="3uigEE" node="1JFLVobh0lR" resolve="CloudRepository.IListener" />
                </node>
                <node concept="37vLTw" id="1JFLVobhdo5" role="I$8f6">
                  <ref role="3cqZAo" node="1JFLVobh1_5" resolve="listeners" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1JFLVobh3ti" role="3cqZAp">
          <node concept="2OqwBi" id="1JFLVobher1" role="3clFbG">
            <node concept="37vLTw" id="1JFLVobhdo6" role="2Oq$k0">
              <ref role="3cqZAo" node="1JFLVobhdo1" resolve="newListeners" />
            </node>
            <node concept="TSZUe" id="1JFLVobhf_z" role="2OqNvi">
              <node concept="37vLTw" id="1JFLVobhfLd" role="25WWJ7">
                <ref role="3cqZAo" node="1JFLVobh3a1" resolve="l" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1JFLVobhgwl" role="3cqZAp">
          <node concept="37vLTI" id="1JFLVobhh$D" role="3clFbG">
            <node concept="37vLTw" id="1JFLVobhiet" role="37vLTx">
              <ref role="3cqZAo" node="1JFLVobhdo1" resolve="newListeners" />
            </node>
            <node concept="37vLTw" id="1JFLVobhgwj" role="37vLTJ">
              <ref role="3cqZAo" node="1JFLVobh1_5" resolve="listeners" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1JFLVobhitn" role="jymVt" />
    <node concept="3clFb_" id="1JFLVobhilq" role="jymVt">
      <property role="TrG5h" value="removeListener" />
      <node concept="37vLTG" id="1JFLVobhilr" role="3clF46">
        <property role="TrG5h" value="l" />
        <node concept="3uibUv" id="1JFLVobhils" role="1tU5fm">
          <ref role="3uigEE" node="1JFLVobh0lR" resolve="CloudRepository.IListener" />
        </node>
      </node>
      <node concept="3cqZAl" id="1JFLVobhilt" role="3clF45" />
      <node concept="3Tm1VV" id="1JFLVobhilu" role="1B3o_S" />
      <node concept="3clFbS" id="1JFLVobhilv" role="3clF47">
        <node concept="3cpWs8" id="1JFLVobhilw" role="3cqZAp">
          <node concept="3cpWsn" id="1JFLVobhilx" role="3cpWs9">
            <property role="TrG5h" value="newListeners" />
            <node concept="_YKpA" id="1JFLVobhily" role="1tU5fm">
              <node concept="3uibUv" id="1JFLVobhilz" role="_ZDj9">
                <ref role="3uigEE" node="1JFLVobh0lR" resolve="CloudRepository.IListener" />
              </node>
            </node>
            <node concept="2ShNRf" id="1JFLVobhil$" role="33vP2m">
              <node concept="Tc6Ow" id="1JFLVobhil_" role="2ShVmc">
                <node concept="3uibUv" id="1JFLVobhilA" role="HW$YZ">
                  <ref role="3uigEE" node="1JFLVobh0lR" resolve="CloudRepository.IListener" />
                </node>
                <node concept="37vLTw" id="1JFLVobhilB" role="I$8f6">
                  <ref role="3cqZAo" node="1JFLVobh1_5" resolve="listeners" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1JFLVobhilC" role="3cqZAp">
          <node concept="2OqwBi" id="1JFLVobhilD" role="3clFbG">
            <node concept="37vLTw" id="1JFLVobhilE" role="2Oq$k0">
              <ref role="3cqZAo" node="1JFLVobhilx" resolve="newListeners" />
            </node>
            <node concept="3dhRuq" id="1JFLVobhkEG" role="2OqNvi">
              <node concept="37vLTw" id="1JFLVobhkEI" role="25WWJ7">
                <ref role="3cqZAo" node="1JFLVobhilr" resolve="l" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1JFLVobhilH" role="3cqZAp">
          <node concept="37vLTI" id="1JFLVobhilI" role="3clFbG">
            <node concept="37vLTw" id="1JFLVobhilJ" role="37vLTx">
              <ref role="3cqZAo" node="1JFLVobhilx" resolve="newListeners" />
            </node>
            <node concept="37vLTw" id="1JFLVobhilK" role="37vLTJ">
              <ref role="3cqZAo" node="1JFLVobh1_5" resolve="listeners" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1JFLVobh2Sj" role="jymVt" />
    <node concept="3HP615" id="1JFLVobh0lR" role="jymVt">
      <property role="TrG5h" value="IListener" />
      <node concept="3clFb_" id="1JFLVobh0$a" role="jymVt">
        <property role="TrG5h" value="connectionStatusChanged" />
        <node concept="37vLTG" id="1JFLVobh0$k" role="3clF46">
          <property role="TrG5h" value="connected" />
          <node concept="10P_77" id="1JFLVobh0FW" role="1tU5fm" />
        </node>
        <node concept="3cqZAl" id="1JFLVobh0$c" role="3clF45" />
        <node concept="3Tm1VV" id="1JFLVobh0$d" role="1B3o_S" />
        <node concept="3clFbS" id="1JFLVobh0$e" role="3clF47" />
      </node>
      <node concept="3Tm1VV" id="1JFLVobh0lS" role="1B3o_S" />
    </node>
  </node>
  <node concept="312cEu" id="6aRQr1WXt1Z">
    <property role="TrG5h" value="MpsReplicatedTree" />
    <node concept="2tJIrI" id="6aRQr1WXt2X" role="jymVt" />
    <node concept="312cEg" id="2lKlK7f4xlJ" role="jymVt">
      <property role="TrG5h" value="commandListener" />
      <node concept="3Tm6S6" id="2lKlK7f4xlK" role="1B3o_S" />
      <node concept="3uibUv" id="2lKlK7f4xlL" role="1tU5fm">
        <ref role="3uigEE" to="nvd4:~CommandListener" resolve="CommandListener" />
      </node>
      <node concept="2ShNRf" id="2lKlK7f4xlM" role="33vP2m">
        <node concept="YeOm9" id="2lKlK7f4xlN" role="2ShVmc">
          <node concept="1Y3b0j" id="2lKlK7f4xlO" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="nvd4:~CommandListener" resolve="CommandListener" />
            <node concept="3Tm1VV" id="2lKlK7f4xlP" role="1B3o_S" />
            <node concept="3clFb_" id="2lKlK7f4xlQ" role="jymVt">
              <property role="TrG5h" value="commandStarted" />
              <node concept="3Tm1VV" id="2lKlK7f4xlR" role="1B3o_S" />
              <node concept="3cqZAl" id="2lKlK7f4xlS" role="3clF45" />
              <node concept="3clFbS" id="2lKlK7f4xlT" role="3clF47">
                <node concept="3clFbF" id="47nE3z_w5o7" role="3cqZAp">
                  <node concept="1rXfSq" id="47nE3z_w5o2" role="3clFbG">
                    <ref role="37wK5l" to="5440:~ReplicatedTree.startEdit()" resolve="startEdit" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="2lKlK7f4xlU" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="2lKlK7f4xlV" role="jymVt" />
            <node concept="3clFb_" id="2lKlK7f4xlW" role="jymVt">
              <property role="TrG5h" value="commandFinished" />
              <node concept="3Tm1VV" id="2lKlK7f4xlX" role="1B3o_S" />
              <node concept="3cqZAl" id="2lKlK7f4xlY" role="3clF45" />
              <node concept="3clFbS" id="2lKlK7f4xlZ" role="3clF47">
                <node concept="3clFbF" id="47nE3z_w6c6" role="3cqZAp">
                  <node concept="1rXfSq" id="47nE3z_w6c1" role="3clFbG">
                    <ref role="37wK5l" to="5440:~ReplicatedTree.endEdit()" resolve="endEdit" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="2lKlK7f4xoz" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2lKlK7f4wvb" role="jymVt" />
    <node concept="3clFbW" id="6aRQr1WXtj7" role="jymVt">
      <node concept="37vLTG" id="6aRQr1WXtjz" role="3clF46">
        <property role="TrG5h" value="client" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7AhGRNQhzI2" role="1tU5fm">
          <ref role="3uigEE" to="5440:~IModelClient" resolve="IModelClient" />
        </node>
      </node>
      <node concept="37vLTG" id="6aRQr1WXvP4" role="3clF46">
        <property role="TrG5h" value="treeId" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7AhGRNQhzPD" role="1tU5fm">
          <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
        </node>
      </node>
      <node concept="37vLTG" id="6aRQr1WXvTI" role="3clF46">
        <property role="TrG5h" value="branchName" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="6aRQr1WXvXI" role="1tU5fm" />
        <node concept="2AHcQZ" id="6aRQr1WXww3" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2EzI5qKsi96" role="3clF46">
        <property role="TrG5h" value="user" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="47nE3z_w6A0" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Supplier" resolve="Supplier" />
          <node concept="17QB3L" id="47nE3z_w6SI" role="11_B2D" />
        </node>
      </node>
      <node concept="3cqZAl" id="6aRQr1WXtj9" role="3clF45" />
      <node concept="3Tm1VV" id="6aRQr1WXtja" role="1B3o_S" />
      <node concept="3clFbS" id="6aRQr1WXtjb" role="3clF47">
        <node concept="XkiVB" id="47nE3z_w6la" role="3cqZAp">
          <ref role="37wK5l" to="5440:~ReplicatedTree.&lt;init&gt;(org.modelix.model.client.IModelClient,org.modelix.model.lazy.TreeId,java.lang.String,kotlin.jvm.functions.Function0)" resolve="ReplicatedTree" />
          <node concept="37vLTw" id="47nE3z_w6t2" role="37wK5m">
            <ref role="3cqZAo" node="6aRQr1WXtjz" resolve="client" />
          </node>
          <node concept="37vLTw" id="47nE3z_w6t3" role="37wK5m">
            <ref role="3cqZAo" node="6aRQr1WXvP4" resolve="treeId" />
          </node>
          <node concept="37vLTw" id="47nE3z_w6t4" role="37wK5m">
            <ref role="3cqZAo" node="6aRQr1WXvTI" resolve="branchName" />
          </node>
          <node concept="2ShNRf" id="1ZljNrEtb1h" role="37wK5m">
            <node concept="YeOm9" id="1ZljNrEtiYs" role="2ShVmc">
              <node concept="1Y3b0j" id="1ZljNrEtiYv" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="ouht:~Function0" resolve="Function0" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <node concept="3Tm1VV" id="1ZljNrEtiYw" role="1B3o_S" />
                <node concept="3clFb_" id="1ZljNrEtiYA" role="jymVt">
                  <property role="TrG5h" value="invoke" />
                  <node concept="3Tm1VV" id="1ZljNrEtiYB" role="1B3o_S" />
                  <node concept="17QB3L" id="1ZljNrEtjkR" role="3clF45" />
                  <node concept="3clFbS" id="1ZljNrEtiYE" role="3clF47">
                    <node concept="3clFbF" id="1ZljNrEtj7V" role="3cqZAp">
                      <node concept="2OqwBi" id="1ZljNrEqcZa" role="3clFbG">
                        <node concept="37vLTw" id="1ZljNrEqcNx" role="2Oq$k0">
                          <ref role="3cqZAo" node="2EzI5qKsi96" resolve="user" />
                        </node>
                        <node concept="liA8E" id="1ZljNrEqdfw" role="2OqNvi">
                          <ref role="37wK5l" to="82uw:~Supplier.get()" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="1ZljNrEtiYG" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="17QB3L" id="1ZljNrEtjIg" role="2Ghqu4" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2lKlK7f4DzC" role="3cqZAp">
          <node concept="2OqwBi" id="2lKlK7f4HMy" role="3clFbG">
            <node concept="2OqwBi" id="2lKlK7f4Ger" role="2Oq$k0">
              <node concept="2YIFZM" id="2lKlK7f4EUs" role="2Oq$k0">
                <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
              </node>
              <node concept="liA8E" id="2lKlK7f4HGH" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="2lKlK7f4Jar" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.addCommandListener(org.jetbrains.mps.openapi.repository.CommandListener)" resolve="addCommandListener" />
              <node concept="37vLTw" id="2lKlK7f4JxG" role="37wK5m">
                <ref role="3cqZAo" node="2lKlK7f4xlJ" resolve="commandListener" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6aRQr1WZ0Hp" role="jymVt" />
    <node concept="3clFb_" id="6aRQr1WXw$t" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="6aRQr1WXw$v" role="3clF45" />
      <node concept="3Tm1VV" id="6aRQr1WXw$w" role="1B3o_S" />
      <node concept="3clFbS" id="6aRQr1WXw$x" role="3clF47">
        <node concept="3clFbF" id="2lKlK7f4JHO" role="3cqZAp">
          <node concept="2OqwBi" id="2lKlK7f4JHP" role="3clFbG">
            <node concept="2OqwBi" id="2lKlK7f4JHQ" role="2Oq$k0">
              <node concept="2YIFZM" id="2lKlK7f4JHR" role="2Oq$k0">
                <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
              </node>
              <node concept="liA8E" id="2lKlK7f4JHS" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="2lKlK7f4JHT" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.removeCommandListener(org.jetbrains.mps.openapi.repository.CommandListener)" resolve="removeCommandListener" />
              <node concept="37vLTw" id="2lKlK7f4JHU" role="37wK5m">
                <ref role="3cqZAo" node="2lKlK7f4xlJ" resolve="commandListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="47nE3z_w7i3" role="3cqZAp">
          <node concept="3nyPlj" id="47nE3z_w7i1" role="3clFbG">
            <ref role="37wK5l" to="5440:~ReplicatedTree.dispose()" resolve="dispose" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6aRQr1WXt20" role="1B3o_S" />
    <node concept="3uibUv" id="47nE3z_w2JU" role="1zkMxy">
      <ref role="3uigEE" to="5440:~ReplicatedTree" resolve="ReplicatedTree" />
    </node>
  </node>
  <node concept="312cEu" id="49CIzaqqe6y">
    <property role="TrG5h" value="TransientModuleBinding" />
    <node concept="Wx3nA" id="49CIzaqqxEV" role="jymVt">
      <property role="TrG5h" value="NAME_SEQUENCE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="49CIzaqqwPN" role="1tU5fm">
        <ref role="3uigEE" to="i5cy:~AtomicInteger" resolve="AtomicInteger" />
      </node>
      <node concept="3Tm6S6" id="49CIzaqqwEY" role="1B3o_S" />
      <node concept="2ShNRf" id="49CIzaqqxpm" role="33vP2m">
        <node concept="1pGfFk" id="49CIzaqqxeo" role="2ShVmc">
          <ref role="37wK5l" to="i5cy:~AtomicInteger.&lt;init&gt;(int)" resolve="AtomicInteger" />
          <node concept="3cmrfG" id="49CIzaqqxCt" role="37wK5m">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="EMWAvBfvmX" role="jymVt" />
    <node concept="312cEg" id="49CIzaqqeCV" role="jymVt">
      <property role="TrG5h" value="moduleName" />
      <node concept="3Tm6S6" id="49CIzaqqeCW" role="1B3o_S" />
      <node concept="17QB3L" id="49CIzaqqeGP" role="1tU5fm" />
      <node concept="10Nm6u" id="EMWAvBjgZ8" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="4rrX99ogFha" role="jymVt" />
    <node concept="2tJIrI" id="49CIzaqqfOB" role="jymVt" />
    <node concept="312cEg" id="49CIzaqqkuA" role="jymVt">
      <property role="TrG5h" value="cloudRepository" />
      <node concept="3Tm6S6" id="49CIzaqqkuB" role="1B3o_S" />
      <node concept="3uibUv" id="49CIzaqqkI4" role="1tU5fm">
        <ref role="3uigEE" node="6aRQr1WOV$v" resolve="CloudRepository" />
      </node>
    </node>
    <node concept="312cEg" id="EMWAvBdTmO" role="jymVt">
      <property role="TrG5h" value="transientModule" />
      <node concept="3Tm6S6" id="EMWAvBdTmP" role="1B3o_S" />
      <node concept="3uibUv" id="EMWAvBdTNK" role="1tU5fm">
        <ref role="3uigEE" node="115Xaa43tZI" resolve="CloudTransientModule" />
      </node>
    </node>
    <node concept="312cEg" id="EMWAvBiNCd" role="jymVt">
      <property role="TrG5h" value="activeBranch" />
      <node concept="3Tm6S6" id="EMWAvBiNCe" role="1B3o_S" />
      <node concept="3uibUv" id="EMWAvBiNXZ" role="1tU5fm">
        <ref role="3uigEE" to="5440:~ActiveBranch" resolve="ActiveBranch" />
      </node>
    </node>
    <node concept="312cEg" id="EMWAvBiTR0" role="jymVt">
      <property role="TrG5h" value="models" />
      <node concept="3Tm6S6" id="EMWAvBiTR1" role="1B3o_S" />
      <node concept="3rvAFt" id="EMWAvBiU7w" role="1tU5fm">
        <node concept="3uibUv" id="EMWAvBiUdl" role="3rvQeY">
          <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
        </node>
        <node concept="3uibUv" id="EMWAvBiUyt" role="3rvSg0">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="2ShNRf" id="EMWAvBiV1d" role="33vP2m">
        <node concept="3rGOSV" id="EMWAvBiUQ7" role="2ShVmc">
          <node concept="3uibUv" id="EMWAvBiUQ8" role="3rHrn6">
            <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
          </node>
          <node concept="3uibUv" id="EMWAvBiUQ9" role="3rHtpV">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="49CIzaqqmhc" role="jymVt" />
    <node concept="3Tm1VV" id="49CIzaqqe6z" role="1B3o_S" />
    <node concept="3uibUv" id="49CIzaqqe$3" role="1zkMxy">
      <ref role="3uigEE" node="49CIzaqqe7c" resolve="ModelBinding" />
    </node>
    <node concept="3clFbW" id="EMWAvBfuHL" role="jymVt">
      <node concept="3cqZAl" id="EMWAvBfuHM" role="3clF45" />
      <node concept="3Tm1VV" id="EMWAvBfuHN" role="1B3o_S" />
      <node concept="3clFbS" id="EMWAvBfuHP" role="3clF47">
        <node concept="XkiVB" id="EMWAvBfuHR" role="3cqZAp">
          <ref role="37wK5l" node="EMWAvBfuhs" resolve="ModelBinding" />
          <node concept="37vLTw" id="EMWAvBfuHV" role="37wK5m">
            <ref role="3cqZAo" node="EMWAvBfuHS" resolve="treeId" />
          </node>
          <node concept="37vLTw" id="EMWAvBfuHZ" role="37wK5m">
            <ref role="3cqZAo" node="EMWAvBfuHW" resolve="nodeId" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="EMWAvBfuHS" role="3clF46">
        <property role="TrG5h" value="treeId" />
        <node concept="3uibUv" id="EMWAvBfuHU" role="1tU5fm">
          <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
        </node>
      </node>
      <node concept="37vLTG" id="EMWAvBfuHW" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3cpWsb" id="EMWAvBfuHY" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="EMWAvBfvgj" role="jymVt" />
    <node concept="3clFb_" id="49CIzaqqk71" role="jymVt">
      <property role="TrG5h" value="activate" />
      <node concept="37vLTG" id="49CIzaqqk72" role="3clF46">
        <property role="TrG5h" value="cloudRepository" />
        <node concept="3uibUv" id="49CIzaqqk73" role="1tU5fm">
          <ref role="3uigEE" node="6aRQr1WOV$v" resolve="CloudRepository" />
        </node>
      </node>
      <node concept="3cqZAl" id="49CIzaqqk74" role="3clF45" />
      <node concept="3Tm1VV" id="49CIzaqqk75" role="1B3o_S" />
      <node concept="3clFbS" id="49CIzaqqk77" role="3clF47">
        <node concept="3clFbF" id="49CIzaqqkYZ" role="3cqZAp">
          <node concept="37vLTI" id="49CIzaqqlMO" role="3clFbG">
            <node concept="37vLTw" id="49CIzaqqmdp" role="37vLTx">
              <ref role="3cqZAo" node="49CIzaqqk72" resolve="cloudRepository" />
            </node>
            <node concept="2OqwBi" id="49CIzaqqlie" role="37vLTJ">
              <node concept="Xjq3P" id="49CIzaqqkYY" role="2Oq$k0" />
              <node concept="2OwXpG" id="49CIzaqqlyj" role="2OqNvi">
                <ref role="2Oxat5" node="49CIzaqqkuA" resolve="cloudRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="EMWAvBiOLl" role="3cqZAp">
          <node concept="37vLTI" id="EMWAvBiPci" role="3clFbG">
            <node concept="37vLTw" id="EMWAvBiOLj" role="37vLTJ">
              <ref role="3cqZAo" node="EMWAvBiNCd" resolve="activeBranch" />
            </node>
            <node concept="2OqwBi" id="EMWAvBdUOG" role="37vLTx">
              <node concept="37vLTw" id="EMWAvBdUuw" role="2Oq$k0">
                <ref role="3cqZAo" node="49CIzaqqk72" resolve="cloudRepository" />
              </node>
              <node concept="liA8E" id="EMWAvBdUYO" role="2OqNvi">
                <ref role="37wK5l" node="6aRQr1X24wJ" resolve="getActiveBranch" />
                <node concept="37vLTw" id="EMWAvBdVlo" role="37wK5m">
                  <ref role="3cqZAo" node="49CIzaqqebX" resolve="treeId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="EMWAvBj8wz" role="3cqZAp">
          <node concept="3cpWsn" id="EMWAvBj8w$" role="3cpWs9">
            <property role="TrG5h" value="branch" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="EMWAvBj8w_" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
            </node>
            <node concept="2OqwBi" id="EMWAvBj8wA" role="33vP2m">
              <node concept="37vLTw" id="EMWAvBj8wB" role="2Oq$k0">
                <ref role="3cqZAo" node="EMWAvBiNCd" resolve="activeBranch" />
              </node>
              <node concept="liA8E" id="EMWAvBj8wC" role="2OqNvi">
                <ref role="37wK5l" to="5440:~ActiveBranch.getBranch()" resolve="getBranch" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="EMWAvBj7vR" role="3cqZAp">
          <node concept="37vLTI" id="EMWAvBj88r" role="3clFbG">
            <node concept="2OqwBi" id="EMWAvBj9fv" role="37vLTx">
              <node concept="37vLTw" id="EMWAvBj8Xf" role="2Oq$k0">
                <ref role="3cqZAo" node="EMWAvBj8w$" resolve="branch" />
              </node>
              <node concept="liA8E" id="EMWAvBj9rF" role="2OqNvi">
                <ref role="37wK5l" to="jks5:~IBranch.computeRead(kotlin.jvm.functions.Function0)" resolve="computeRead" />
                <node concept="1bVj0M" id="EMWAvBj9MC" role="37wK5m">
                  <node concept="3clFbS" id="EMWAvBj9MD" role="1bW5cS">
                    <node concept="3clFbF" id="EMWAvBj9W5" role="3cqZAp">
                      <node concept="2OqwBi" id="EMWAvBjafQ" role="3clFbG">
                        <node concept="2ShNRf" id="EMWAvBj9W7" role="2Oq$k0">
                          <node concept="1pGfFk" id="EMWAvBj9W8" role="2ShVmc">
                            <ref role="37wK5l" to="jks5:~PNodeAdapter.&lt;init&gt;(long,org.modelix.model.api.IBranch)" resolve="PNodeAdapter" />
                            <node concept="37vLTw" id="2bznelVkXOQ" role="37wK5m">
                              <ref role="3cqZAo" node="49CIzaqqeo5" resolve="nodeId" />
                            </node>
                            <node concept="37vLTw" id="EMWAvBj9Wa" role="37wK5m">
                              <ref role="3cqZAo" node="EMWAvBj8w$" resolve="branch" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="EMWAvBjaAa" role="2OqNvi">
                          <ref role="37wK5l" to="jks5:~PNodeAdapter.getPropertyValue(java.lang.String)" resolve="getPropertyValue" />
                          <node concept="2OqwBi" id="EMWAvBjbNz" role="37wK5m">
                            <node concept="355D3s" id="EMWAvBjb3Y" role="2Oq$k0">
                              <ref role="355D3t" to="dj5d:qmkA5fOskf" resolve="Module" />
                              <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                            </node>
                            <node concept="liA8E" id="EMWAvBjckT" role="2OqNvi">
                              <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="EMWAvBj7vP" role="37vLTJ">
              <ref role="3cqZAo" node="49CIzaqqeCV" resolve="moduleName" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="EMWAvBjcUf" role="3cqZAp">
          <node concept="3clFbS" id="EMWAvBjcUh" role="3clFbx">
            <node concept="3clFbF" id="EMWAvBjfOv" role="3cqZAp">
              <node concept="37vLTI" id="EMWAvBjgke" role="3clFbG">
                <node concept="37vLTw" id="EMWAvBjfOt" role="37vLTJ">
                  <ref role="3cqZAo" node="49CIzaqqeCV" resolve="moduleName" />
                </node>
                <node concept="3cpWs3" id="EMWAvBjgyv" role="37vLTx">
                  <node concept="2OqwBi" id="EMWAvBjgyw" role="3uHU7w">
                    <node concept="37vLTw" id="EMWAvBjgy_" role="2Oq$k0">
                      <ref role="3cqZAo" node="49CIzaqqxEV" resolve="NAME_SEQUENCE" />
                    </node>
                    <node concept="liA8E" id="EMWAvBjgyx" role="2OqNvi">
                      <ref role="37wK5l" to="i5cy:~AtomicInteger.incrementAndGet()" resolve="incrementAndGet" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="EMWAvBjgyy" role="3uHU7B">
                    <property role="Xl_RC" value="cloud.module" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="EMWAvBjdZK" role="3clFbw">
            <node concept="37vLTw" id="EMWAvBjf82" role="2Oq$k0">
              <ref role="3cqZAo" node="49CIzaqqeCV" resolve="moduleName" />
            </node>
            <node concept="17RlXB" id="EMWAvBje_V" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="4rrX99ogH4Y" role="3cqZAp">
          <node concept="3cpWsn" id="4rrX99ogH4Z" role="3cpWs9">
            <property role="TrG5h" value="moduleId" />
            <node concept="3uibUv" id="4rrX99ogGlN" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~ModuleId" resolve="ModuleId" />
            </node>
            <node concept="2YIFZM" id="4rrX99ogH50" role="33vP2m">
              <ref role="37wK5l" to="z1c3:~ModuleId.foreign(java.lang.String)" resolve="foreign" />
              <ref role="1Pybhc" to="z1c3:~ModuleId" resolve="ModuleId" />
              <node concept="3cpWs3" id="4rrX99ogH51" role="37wK5m">
                <node concept="2YIFZM" id="4rrX99ogH52" role="3uHU7w">
                  <ref role="37wK5l" to="wyt6:~Long.toHexString(long)" resolve="toHexString" />
                  <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
                  <node concept="37vLTw" id="4rrX99ogH53" role="37wK5m">
                    <ref role="3cqZAo" node="49CIzaqqeo5" resolve="nodeId" />
                  </node>
                </node>
                <node concept="3cpWs3" id="4rrX99ogH54" role="3uHU7B">
                  <node concept="3cpWs3" id="4rrX99ogH55" role="3uHU7B">
                    <node concept="3cpWs3" id="4rrX99ogH56" role="3uHU7B">
                      <node concept="2OqwBi" id="4rrX99ogH57" role="3uHU7B">
                        <node concept="37vLTw" id="4rrX99ogH58" role="2Oq$k0">
                          <ref role="3cqZAo" node="49CIzaqqk72" resolve="cloudRepository" />
                        </node>
                        <node concept="liA8E" id="4rrX99ogH59" role="2OqNvi">
                          <ref role="37wK5l" node="4rrX99oeH2E" resolve="getId" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="4rrX99ogH5a" role="3uHU7w">
                        <property role="Xl_RC" value="-" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4rrX99ogH5b" role="3uHU7w">
                      <ref role="3cqZAo" node="49CIzaqqebX" resolve="treeId" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="4rrX99ogH5c" role="3uHU7w">
                    <property role="Xl_RC" value="-" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="EMWAvBheTg" role="3cqZAp">
          <node concept="37vLTI" id="EMWAvBhf_i" role="3clFbG">
            <node concept="37vLTw" id="EMWAvBheTe" role="37vLTJ">
              <ref role="3cqZAo" node="EMWAvBdTmO" resolve="transientModule" />
            </node>
            <node concept="2OqwBi" id="EMWAvBhfU2" role="37vLTx">
              <node concept="2YIFZM" id="EMWAvBhfU3" role="2Oq$k0">
                <ref role="1Pybhc" node="26ispG7Y1u2" resolve="CloudTransientModules" />
                <ref role="37wK5l" node="49CIzaqqD1y" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="EMWAvBhfU4" role="2OqNvi">
                <ref role="37wK5l" node="26ispG7YsJH" resolve="createModule" />
                <node concept="37vLTw" id="EMWAvBhfU5" role="37wK5m">
                  <ref role="3cqZAo" node="49CIzaqqeCV" resolve="moduleName" />
                </node>
                <node concept="37vLTw" id="EMWAvBhfU6" role="37wK5m">
                  <ref role="3cqZAo" node="4rrX99ogH4Z" resolve="moduleId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="EMWAvBkzKd" role="3cqZAp">
          <node concept="2OqwBi" id="EMWAvBk$lX" role="3clFbG">
            <node concept="37vLTw" id="EMWAvBkzKb" role="2Oq$k0">
              <ref role="3cqZAo" node="EMWAvBiNCd" resolve="activeBranch" />
            </node>
            <node concept="liA8E" id="EMWAvBk$Do" role="2OqNvi">
              <ref role="37wK5l" to="5440:~ActiveBranch.addListener(org.modelix.model.api.IBranchListener)" resolve="addListener" />
              <node concept="2ShNRf" id="EMWAvBk$Pc" role="37wK5m">
                <node concept="YeOm9" id="EMWAvBk_Ca" role="2ShVmc">
                  <node concept="1Y3b0j" id="EMWAvBk_Cd" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="jks5:~IBranchListener" resolve="IBranchListener" />
                    <node concept="3Tm1VV" id="EMWAvBk_Ce" role="1B3o_S" />
                    <node concept="3clFb_" id="EMWAvBk_Cj" role="jymVt">
                      <property role="TrG5h" value="treeChanged" />
                      <node concept="37vLTG" id="EMWAvBk_Ck" role="3clF46">
                        <property role="TrG5h" value="oldTree" />
                        <node concept="3uibUv" id="EMWAvBk_Cl" role="1tU5fm">
                          <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="EMWAvBk_Cm" role="3clF46">
                        <property role="TrG5h" value="newTree" />
                        <node concept="3uibUv" id="EMWAvBk_Cn" role="1tU5fm">
                          <ref role="3uigEE" to="jks5:~ITree" resolve="ITree" />
                        </node>
                      </node>
                      <node concept="3cqZAl" id="EMWAvBk_Co" role="3clF45" />
                      <node concept="3Tm1VV" id="EMWAvBk_Cp" role="1B3o_S" />
                      <node concept="3clFbS" id="EMWAvBk_Cr" role="3clF47">
                        <node concept="3cpWs8" id="EMWAvBl22x" role="3cqZAp">
                          <node concept="3cpWsn" id="EMWAvBl22$" role="3cpWs9">
                            <property role="TrG5h" value="syncRequired" />
                            <property role="3TUv4t" value="true" />
                            <node concept="10Q1$e" id="EMWAvBl2sa" role="1tU5fm">
                              <node concept="10P_77" id="EMWAvBl22v" role="10Q1$1" />
                            </node>
                            <node concept="2ShNRf" id="EMWAvBl3x8" role="33vP2m">
                              <node concept="3$_iS1" id="EMWAvBl30l" role="2ShVmc">
                                <node concept="10P_77" id="EMWAvBl30m" role="3$_nBY" />
                                <node concept="3$GHV9" id="EMWAvBl3_p" role="3$GQph">
                                  <node concept="3cmrfG" id="EMWAvBl472" role="3$I4v7">
                                    <property role="3cmrfH" value="1" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="EMWAvBl5AK" role="3cqZAp">
                          <node concept="37vLTI" id="EMWAvBl8WW" role="3clFbG">
                            <node concept="3clFbT" id="EMWAvBl9vw" role="37vLTx" />
                            <node concept="AH0OO" id="EMWAvBl7Tz" role="37vLTJ">
                              <node concept="3cmrfG" id="EMWAvBl8Ep" role="AHEQo">
                                <property role="3cmrfH" value="0" />
                              </node>
                              <node concept="37vLTw" id="EMWAvBl5AI" role="AHHXb">
                                <ref role="3cqZAo" node="EMWAvBl22$" resolve="syncRequired" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="EMWAvBkAjF" role="3cqZAp">
                          <node concept="2OqwBi" id="EMWAvBkAU1" role="3clFbG">
                            <node concept="37vLTw" id="EMWAvBkAjE" role="2Oq$k0">
                              <ref role="3cqZAo" node="EMWAvBk_Cm" resolve="newTree" />
                            </node>
                            <node concept="liA8E" id="EMWAvBkB1G" role="2OqNvi">
                              <ref role="37wK5l" to="jks5:~ITree.visitChanges(org.modelix.model.api.ITree,org.modelix.model.api.ITreeChangeVisitor)" resolve="visitChanges" />
                              <node concept="37vLTw" id="EMWAvBkBzN" role="37wK5m">
                                <ref role="3cqZAo" node="EMWAvBk_Ck" resolve="oldTree" />
                              </node>
                              <node concept="2ShNRf" id="EMWAvBkCFg" role="37wK5m">
                                <node concept="YeOm9" id="EMWAvBkFcT" role="2ShVmc">
                                  <node concept="1Y3b0j" id="EMWAvBkFcW" role="YeSDq">
                                    <property role="2bfB8j" value="true" />
                                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                    <ref role="1Y3XeK" to="jks5:~ITreeChangeVisitor" resolve="ITreeChangeVisitor" />
                                    <node concept="3Tm1VV" id="EMWAvBkFcX" role="1B3o_S" />
                                    <node concept="3clFb_" id="EMWAvBkFd5" role="jymVt">
                                      <property role="TrG5h" value="containmentChanged" />
                                      <node concept="37vLTG" id="EMWAvBkFd6" role="3clF46">
                                        <property role="TrG5h" value="nodeId" />
                                        <node concept="3cpWsb" id="EMWAvBkFd7" role="1tU5fm" />
                                      </node>
                                      <node concept="3cqZAl" id="EMWAvBkFd8" role="3clF45" />
                                      <node concept="3Tm1VV" id="EMWAvBkFd9" role="1B3o_S" />
                                      <node concept="3clFbS" id="EMWAvBkFdb" role="3clF47" />
                                      <node concept="2AHcQZ" id="EMWAvBkFdd" role="2AJF6D">
                                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                      </node>
                                    </node>
                                    <node concept="2tJIrI" id="EMWAvBkFde" role="jymVt" />
                                    <node concept="3clFb_" id="EMWAvBkFdf" role="jymVt">
                                      <property role="TrG5h" value="childrenChanged" />
                                      <node concept="37vLTG" id="EMWAvBkFdg" role="3clF46">
                                        <property role="TrG5h" value="nodeId" />
                                        <node concept="3cpWsb" id="EMWAvBkFdh" role="1tU5fm" />
                                      </node>
                                      <node concept="37vLTG" id="EMWAvBkFdi" role="3clF46">
                                        <property role="TrG5h" value="role" />
                                        <node concept="17QB3L" id="EMWAvBkFdj" role="1tU5fm" />
                                      </node>
                                      <node concept="3cqZAl" id="EMWAvBkFdk" role="3clF45" />
                                      <node concept="3Tm1VV" id="EMWAvBkFdl" role="1B3o_S" />
                                      <node concept="3clFbS" id="EMWAvBkFdn" role="3clF47">
                                        <node concept="3clFbJ" id="EMWAvBkI28" role="3cqZAp">
                                          <node concept="3clFbC" id="EMWAvBkLzX" role="3clFbw">
                                            <node concept="2OqwBi" id="EMWAvBkQPJ" role="3uHU7w">
                                              <node concept="Xjq3P" id="EMWAvBkQpl" role="2Oq$k0">
                                                <ref role="1HBi2w" node="49CIzaqqe6y" resolve="TransientModuleBinding" />
                                              </node>
                                              <node concept="2OwXpG" id="EMWAvBkRmI" role="2OqNvi">
                                                <ref role="2Oxat5" node="49CIzaqqeo5" resolve="nodeId" />
                                              </node>
                                            </node>
                                            <node concept="37vLTw" id="EMWAvBkITa" role="3uHU7B">
                                              <ref role="3cqZAo" node="EMWAvBkFdg" resolve="nodeId" />
                                            </node>
                                          </node>
                                          <node concept="3clFbS" id="EMWAvBkI2a" role="3clFbx">
                                            <node concept="3clFbF" id="EMWAvBlbtg" role="3cqZAp">
                                              <node concept="37vLTI" id="EMWAvBldzJ" role="3clFbG">
                                                <node concept="3clFbT" id="EMWAvBlere" role="37vLTx">
                                                  <property role="3clFbU" value="true" />
                                                </node>
                                                <node concept="AH0OO" id="EMWAvBlcp9" role="37vLTJ">
                                                  <node concept="3cmrfG" id="EMWAvBldh4" role="AHEQo">
                                                    <property role="3cmrfH" value="0" />
                                                  </node>
                                                  <node concept="37vLTw" id="EMWAvBlbtf" role="AHHXb">
                                                    <ref role="3cqZAo" node="EMWAvBl22$" resolve="syncRequired" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2AHcQZ" id="EMWAvBkFdp" role="2AJF6D">
                                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                      </node>
                                    </node>
                                    <node concept="2tJIrI" id="EMWAvBkFdq" role="jymVt" />
                                    <node concept="3clFb_" id="EMWAvBkFdr" role="jymVt">
                                      <property role="TrG5h" value="referenceChanged" />
                                      <node concept="37vLTG" id="EMWAvBkFds" role="3clF46">
                                        <property role="TrG5h" value="nodeId" />
                                        <node concept="3cpWsb" id="EMWAvBkFdt" role="1tU5fm" />
                                      </node>
                                      <node concept="37vLTG" id="EMWAvBkFdu" role="3clF46">
                                        <property role="TrG5h" value="role" />
                                        <node concept="17QB3L" id="EMWAvBkFdv" role="1tU5fm" />
                                      </node>
                                      <node concept="3cqZAl" id="EMWAvBkFdw" role="3clF45" />
                                      <node concept="3Tm1VV" id="EMWAvBkFdx" role="1B3o_S" />
                                      <node concept="3clFbS" id="EMWAvBkFdz" role="3clF47" />
                                      <node concept="2AHcQZ" id="EMWAvBkFd_" role="2AJF6D">
                                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                      </node>
                                    </node>
                                    <node concept="2tJIrI" id="EMWAvBkFdA" role="jymVt" />
                                    <node concept="3clFb_" id="EMWAvBkFdB" role="jymVt">
                                      <property role="TrG5h" value="propertyChanged" />
                                      <node concept="37vLTG" id="EMWAvBkFdC" role="3clF46">
                                        <property role="TrG5h" value="nodeId" />
                                        <node concept="3cpWsb" id="EMWAvBkFdD" role="1tU5fm" />
                                      </node>
                                      <node concept="37vLTG" id="EMWAvBkFdE" role="3clF46">
                                        <property role="TrG5h" value="role" />
                                        <node concept="17QB3L" id="EMWAvBkFdF" role="1tU5fm" />
                                      </node>
                                      <node concept="3cqZAl" id="EMWAvBkFdG" role="3clF45" />
                                      <node concept="3Tm1VV" id="EMWAvBkFdH" role="1B3o_S" />
                                      <node concept="3clFbS" id="EMWAvBkFdJ" role="3clF47" />
                                      <node concept="2AHcQZ" id="EMWAvBkFdL" role="2AJF6D">
                                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                      </node>
                                    </node>
                                    <node concept="2tJIrI" id="EMWAvBkFdY" role="jymVt" />
                                    <node concept="3clFb_" id="EMWAvBkFdZ" role="jymVt">
                                      <property role="TrG5h" value="nodeRemoved" />
                                      <node concept="37vLTG" id="EMWAvBkFe0" role="3clF46">
                                        <property role="TrG5h" value="nodeId" />
                                        <node concept="3cpWsb" id="EMWAvBkFe1" role="1tU5fm" />
                                      </node>
                                      <node concept="3cqZAl" id="EMWAvBkFe2" role="3clF45" />
                                      <node concept="3Tm1VV" id="EMWAvBkFe3" role="1B3o_S" />
                                      <node concept="3clFbS" id="EMWAvBkFe5" role="3clF47" />
                                      <node concept="2AHcQZ" id="EMWAvBkFe7" role="2AJF6D">
                                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                      </node>
                                    </node>
                                    <node concept="2tJIrI" id="EMWAvBkFe8" role="jymVt" />
                                    <node concept="3clFb_" id="EMWAvBkFe9" role="jymVt">
                                      <property role="TrG5h" value="nodeAdded" />
                                      <node concept="37vLTG" id="EMWAvBkFea" role="3clF46">
                                        <property role="TrG5h" value="nodeId" />
                                        <node concept="3cpWsb" id="EMWAvBkFeb" role="1tU5fm" />
                                      </node>
                                      <node concept="3cqZAl" id="EMWAvBkFec" role="3clF45" />
                                      <node concept="3Tm1VV" id="EMWAvBkFed" role="1B3o_S" />
                                      <node concept="3clFbS" id="EMWAvBkFef" role="3clF47" />
                                      <node concept="2AHcQZ" id="EMWAvBkFeh" role="2AJF6D">
                                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="EMWAvBlfsT" role="3cqZAp">
                          <node concept="3clFbS" id="EMWAvBlfsV" role="3clFbx">
                            <node concept="3clFbF" id="EMWAvBljeH" role="3cqZAp">
                              <node concept="1rXfSq" id="EMWAvBljeF" role="3clFbG">
                                <ref role="37wK5l" node="EMWAvBiQy3" resolve="syncModels" />
                              </node>
                            </node>
                          </node>
                          <node concept="AH0OO" id="EMWAvBlhut" role="3clFbw">
                            <node concept="3cmrfG" id="EMWAvBlics" role="AHEQo">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="37vLTw" id="EMWAvBlgGw" role="AHHXb">
                              <ref role="3cqZAo" node="EMWAvBl22$" resolve="syncRequired" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="EMWAvBk_Ct" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="EMWAvBkyTN" role="3cqZAp">
          <node concept="1rXfSq" id="EMWAvBkyTL" role="3clFbG">
            <ref role="37wK5l" node="EMWAvBiQy3" resolve="syncModels" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="49CIzaqqk78" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="EMWAvBiQeP" role="jymVt" />
    <node concept="3clFb_" id="EMWAvBiQy3" role="jymVt">
      <property role="TrG5h" value="syncModels" />
      <node concept="3cqZAl" id="EMWAvBiQy5" role="3clF45" />
      <node concept="3Tmbuc" id="EMWAvBljkG" role="1B3o_S" />
      <node concept="3clFbS" id="EMWAvBiQy7" role="3clF47">
        <node concept="3cpWs8" id="EMWAvBj2rk" role="3cqZAp">
          <node concept="3cpWsn" id="EMWAvBj2rl" role="3cpWs9">
            <property role="TrG5h" value="branch" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="EMWAvBj2qw" role="1tU5fm">
              <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
            </node>
            <node concept="2OqwBi" id="EMWAvBj2rm" role="33vP2m">
              <node concept="37vLTw" id="EMWAvBj2rn" role="2Oq$k0">
                <ref role="3cqZAo" node="EMWAvBiNCd" resolve="activeBranch" />
              </node>
              <node concept="liA8E" id="EMWAvBj2ro" role="2OqNvi">
                <ref role="37wK5l" to="5440:~ActiveBranch.getBranch()" resolve="getBranch" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="EMWAvBjiuP" role="3cqZAp">
          <node concept="2OqwBi" id="EMWAvBj5g6" role="3clFbG">
            <node concept="37vLTw" id="EMWAvBj5g7" role="2Oq$k0">
              <ref role="3cqZAo" node="EMWAvBj2rl" resolve="branch" />
            </node>
            <node concept="liA8E" id="EMWAvBj5g8" role="2OqNvi">
              <ref role="37wK5l" to="jks5:~IBranch.runRead(kotlin.jvm.functions.Function0)" resolve="runRead" />
              <node concept="1bVj0M" id="EMWAvBj5g9" role="37wK5m">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="EMWAvBj5ga" role="1bW5cS">
                  <node concept="1QHqEM" id="EMWAvBkvdr" role="3cqZAp">
                    <node concept="1QHqEC" id="EMWAvBkvdt" role="1QHqEI">
                      <node concept="3clFbS" id="EMWAvBkvdv" role="1bW5cS">
                        <node concept="3cpWs8" id="1yReInOIeo" role="3cqZAp">
                          <node concept="3cpWsn" id="1yReInOIep" role="3cpWs9">
                            <property role="TrG5h" value="expectedModels" />
                            <node concept="A3Dl8" id="1yReInOL7s" role="1tU5fm">
                              <node concept="3uibUv" id="1yReInOL7u" role="A3Ik2">
                                <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="1yReInOIeq" role="33vP2m">
                              <node concept="2ShNRf" id="1yReInOIer" role="2Oq$k0">
                                <node concept="1pGfFk" id="1yReInOIes" role="2ShVmc">
                                  <ref role="37wK5l" to="jks5:~PNodeAdapter.&lt;init&gt;(long,org.modelix.model.api.IBranch)" resolve="PNodeAdapter" />
                                  <node concept="37vLTw" id="1yReInOIet" role="37wK5m">
                                    <ref role="3cqZAo" node="49CIzaqqeo5" resolve="nodeId" />
                                  </node>
                                  <node concept="37vLTw" id="1yReInOIeu" role="37wK5m">
                                    <ref role="3cqZAo" node="EMWAvBj2rl" resolve="branch" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="1yReInOIev" role="2OqNvi">
                                <ref role="37wK5l" to="jks5:~PNodeAdapter.getChildren(java.lang.String)" resolve="getChildren" />
                                <node concept="2OqwBi" id="1yReInOIew" role="37wK5m">
                                  <node concept="359W_D" id="1yReInOIex" role="2Oq$k0">
                                    <ref role="359W_E" to="dj5d:qmkA5fOskf" resolve="Module" />
                                    <ref role="359W_F" to="dj5d:qmkA5fOski" resolve="models" />
                                  </node>
                                  <node concept="liA8E" id="1yReInOIey" role="2OqNvi">
                                    <ref role="37wK5l" to="c17a:~SNamedElement.getName()" resolve="getName" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="EMWAvBjnGU" role="3cqZAp">
                          <node concept="3cpWsn" id="EMWAvBjnGV" role="3cpWs9">
                            <property role="TrG5h" value="modelsToRemove" />
                            <node concept="3rvAFt" id="EMWAvBjnCD" role="1tU5fm">
                              <node concept="3uibUv" id="EMWAvBjnCI" role="3rvQeY">
                                <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                              </node>
                              <node concept="3uibUv" id="EMWAvBjnCJ" role="3rvSg0">
                                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                              </node>
                            </node>
                            <node concept="2ShNRf" id="EMWAvBjoRE" role="33vP2m">
                              <node concept="1pGfFk" id="EMWAvBjuVV" role="2ShVmc">
                                <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;(java.util.Map)" resolve="HashMap" />
                                <node concept="37vLTw" id="EMWAvBjvph" role="37wK5m">
                                  <ref role="3cqZAo" node="EMWAvBiTR0" resolve="models" />
                                </node>
                                <node concept="3uibUv" id="EMWAvBjwCM" role="1pMfVU">
                                  <ref role="3uigEE" to="jks5:~INode" resolve="INode" />
                                </node>
                                <node concept="3uibUv" id="EMWAvBjxJE" role="1pMfVU">
                                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="EMWAvBjiZf" role="3cqZAp" />
                        <node concept="2Gpval" id="EMWAvBjyRt" role="3cqZAp">
                          <node concept="2GrKxI" id="EMWAvBjyRv" role="2Gsz3X">
                            <property role="TrG5h" value="modelNode" />
                          </node>
                          <node concept="37vLTw" id="EMWAvBj$$6" role="2GsD0m">
                            <ref role="3cqZAo" node="1yReInOIep" resolve="expectedModels" />
                          </node>
                          <node concept="3clFbS" id="EMWAvBjyRz" role="2LFqv$">
                            <node concept="3clFbF" id="EMWAvBj_fP" role="3cqZAp">
                              <node concept="2OqwBi" id="EMWAvBjA4z" role="3clFbG">
                                <node concept="37vLTw" id="EMWAvBj_fO" role="2Oq$k0">
                                  <ref role="3cqZAo" node="EMWAvBjnGV" resolve="modelsToRemove" />
                                </node>
                                <node concept="kI3uX" id="EMWAvBjAYx" role="2OqNvi">
                                  <node concept="2GrUjf" id="EMWAvBjBuX" role="kIiFs">
                                    <ref role="2Gs0qQ" node="EMWAvBjyRv" resolve="modelNode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="EMWAvBjEpw" role="3cqZAp">
                              <node concept="3cpWsn" id="EMWAvBjEpx" role="3cpWs9">
                                <property role="TrG5h" value="model" />
                                <node concept="3uibUv" id="EMWAvBjElb" role="1tU5fm">
                                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                </node>
                                <node concept="3EllGN" id="EMWAvBjEpy" role="33vP2m">
                                  <node concept="2GrUjf" id="EMWAvBjEpz" role="3ElVtu">
                                    <ref role="2Gs0qQ" node="EMWAvBjyRv" resolve="modelNode" />
                                  </node>
                                  <node concept="37vLTw" id="EMWAvBjEp$" role="3ElQJh">
                                    <ref role="3cqZAo" node="EMWAvBiTR0" resolve="models" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="EMWAvBjFHy" role="3cqZAp">
                              <node concept="3clFbS" id="EMWAvBjFH$" role="3clFbx">
                                <node concept="3cpWs8" id="EMWAvBjYJU" role="3cqZAp">
                                  <node concept="3cpWsn" id="EMWAvBjYJV" role="3cpWs9">
                                    <property role="TrG5h" value="name" />
                                    <node concept="17QB3L" id="EMWAvBjYFo" role="1tU5fm" />
                                    <node concept="2OqwBi" id="EMWAvBjYJW" role="33vP2m">
                                      <node concept="2GrUjf" id="EMWAvBjYJX" role="2Oq$k0">
                                        <ref role="2Gs0qQ" node="EMWAvBjyRv" resolve="modelNode" />
                                      </node>
                                      <node concept="liA8E" id="EMWAvBjYJY" role="2OqNvi">
                                        <ref role="37wK5l" to="jks5:~INode.getPropertyValue(java.lang.String)" resolve="getPropertyValue" />
                                        <node concept="2OqwBi" id="EMWAvBk2Mp" role="37wK5m">
                                          <node concept="355D3s" id="EMWAvBjYJZ" role="2Oq$k0">
                                            <ref role="355D3t" to="dj5d:qmkA5fOskc" resolve="Model" />
                                            <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                                          </node>
                                          <node concept="liA8E" id="EMWAvBk3IG" role="2OqNvi">
                                            <ref role="37wK5l" to="c17a:~SProperty.getName()" resolve="getName" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs8" id="5D5xac1weRC" role="3cqZAp">
                                  <node concept="3cpWsn" id="5D5xac1weRD" role="3cpWs9">
                                    <property role="TrG5h" value="modelNodeId" />
                                    <node concept="3cpWsb" id="5D5xac1weMN" role="1tU5fm" />
                                    <node concept="2OqwBi" id="5D5xac1weRE" role="33vP2m">
                                      <node concept="1eOMI4" id="5D5xac1weRF" role="2Oq$k0">
                                        <node concept="10QFUN" id="5D5xac1weRG" role="1eOMHV">
                                          <node concept="3uibUv" id="5D5xac1weRH" role="10QFUM">
                                            <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                                          </node>
                                          <node concept="2GrUjf" id="5D5xac1weRI" role="10QFUP">
                                            <ref role="2Gs0qQ" node="EMWAvBjyRv" resolve="modelNode" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="5D5xac1weRJ" role="2OqNvi">
                                        <ref role="37wK5l" to="jks5:~PNodeAdapter.getNodeId()" resolve="getNodeId" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="EMWAvBjHKY" role="3cqZAp">
                                  <node concept="37vLTI" id="EMWAvBjKqV" role="3clFbG">
                                    <node concept="2ShNRf" id="EMWAvBjKYM" role="37vLTx">
                                      <node concept="1pGfFk" id="EMWAvBjMSH" role="2ShVmc">
                                        <ref role="37wK5l" node="4QZGLsLEOdX" resolve="CloudTransientModel" />
                                        <node concept="37vLTw" id="EMWAvBjUpZ" role="37wK5m">
                                          <ref role="3cqZAo" node="EMWAvBdTmO" resolve="transientModule" />
                                        </node>
                                        <node concept="37vLTw" id="EMWAvBjYK0" role="37wK5m">
                                          <ref role="3cqZAo" node="EMWAvBjYJV" resolve="name" />
                                        </node>
                                        <node concept="2YIFZM" id="4rrX99ofnSa" role="37wK5m">
                                          <ref role="1Pybhc" to="w1kc:~SModelId" resolve="SModelId" />
                                          <ref role="37wK5l" to="w1kc:~SModelId.foreign(java.lang.String)" resolve="foreign" />
                                          <node concept="3cpWs3" id="4rrX99ofrOC" role="37wK5m">
                                            <node concept="2YIFZM" id="4rrX99ogJvm" role="3uHU7w">
                                              <ref role="37wK5l" to="wyt6:~Long.toHexString(long)" resolve="toHexString" />
                                              <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
                                              <node concept="37vLTw" id="4rrX99ogK8k" role="37wK5m">
                                                <ref role="3cqZAo" node="5D5xac1weRD" resolve="modelNodeId" />
                                              </node>
                                            </node>
                                            <node concept="3cpWs3" id="4rrX99ofrOE" role="3uHU7B">
                                              <node concept="3cpWs3" id="4rrX99ofrOF" role="3uHU7B">
                                                <node concept="3cpWs3" id="4rrX99ofrOG" role="3uHU7B">
                                                  <node concept="2OqwBi" id="4rrX99ofrOH" role="3uHU7B">
                                                    <node concept="37vLTw" id="4rrX99ofrOI" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="49CIzaqqkuA" resolve="cloudRepository" />
                                                    </node>
                                                    <node concept="liA8E" id="4rrX99ofrOJ" role="2OqNvi">
                                                      <ref role="37wK5l" node="4rrX99oeH2E" resolve="getId" />
                                                    </node>
                                                  </node>
                                                  <node concept="Xl_RD" id="4rrX99ofrOK" role="3uHU7w">
                                                    <property role="Xl_RC" value="-" />
                                                  </node>
                                                </node>
                                                <node concept="37vLTw" id="4rrX99ofrOL" role="3uHU7w">
                                                  <ref role="3cqZAo" node="49CIzaqqebX" resolve="treeId" />
                                                </node>
                                              </node>
                                              <node concept="Xl_RD" id="4rrX99ofrOM" role="3uHU7w">
                                                <property role="Xl_RC" value="-" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="37vLTw" id="1VtHttxVQ2a" role="37wK5m">
                                          <ref role="3cqZAo" node="EMWAvBiNCd" resolve="activeBranch" />
                                        </node>
                                        <node concept="37vLTw" id="5D5xac1whYC" role="37wK5m">
                                          <ref role="3cqZAo" node="5D5xac1weRD" resolve="modelNodeId" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="EMWAvBjJYc" role="37vLTJ">
                                      <ref role="3cqZAo" node="EMWAvBjEpx" resolve="model" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="EMWAvBkafS" role="3cqZAp">
                                  <node concept="2OqwBi" id="EMWAvBkblu" role="3clFbG">
                                    <node concept="37vLTw" id="EMWAvBkafQ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="EMWAvBdTmO" resolve="transientModule" />
                                    </node>
                                    <node concept="liA8E" id="EMWAvBkchh" role="2OqNvi">
                                      <ref role="37wK5l" to="31cb:~SModuleBase.registerModel(jetbrains.mps.extapi.model.SModelBase)" resolve="registerModel" />
                                      <node concept="10QFUN" id="EMWAvBket$" role="37wK5m">
                                        <node concept="37vLTw" id="EMWAvBketz" role="10QFUP">
                                          <ref role="3cqZAo" node="EMWAvBjEpx" resolve="model" />
                                        </node>
                                        <node concept="3uibUv" id="EMWAvBkeqN" role="10QFUM">
                                          <ref role="3uigEE" to="g3l6:~SModelBase" resolve="SModelBase" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="EMWAvBk4DS" role="3cqZAp">
                                  <node concept="37vLTI" id="EMWAvBk8fe" role="3clFbG">
                                    <node concept="37vLTw" id="EMWAvBk9a5" role="37vLTx">
                                      <ref role="3cqZAo" node="EMWAvBjEpx" resolve="model" />
                                    </node>
                                    <node concept="3EllGN" id="EMWAvBk6GW" role="37vLTJ">
                                      <node concept="2GrUjf" id="EMWAvBk7BY" role="3ElVtu">
                                        <ref role="2Gs0qQ" node="EMWAvBjyRv" resolve="modelNode" />
                                      </node>
                                      <node concept="37vLTw" id="EMWAvBk4DQ" role="3ElQJh">
                                        <ref role="3cqZAo" node="EMWAvBiTR0" resolve="models" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbC" id="EMWAvBjGQO" role="3clFbw">
                                <node concept="10Nm6u" id="EMWAvBjHrS" role="3uHU7w" />
                                <node concept="37vLTw" id="EMWAvBjGdH" role="3uHU7B">
                                  <ref role="3cqZAo" node="EMWAvBjEpx" resolve="model" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="EMWAvBkf1k" role="3cqZAp" />
                        <node concept="2Gpval" id="EMWAvBkg7v" role="3cqZAp">
                          <node concept="2GrKxI" id="EMWAvBkg7x" role="2Gsz3X">
                            <property role="TrG5h" value="modelToRemove" />
                          </node>
                          <node concept="37vLTw" id="EMWAvBkgF1" role="2GsD0m">
                            <ref role="3cqZAo" node="EMWAvBjnGV" resolve="modelsToRemove" />
                          </node>
                          <node concept="3clFbS" id="EMWAvBkg7_" role="2LFqv$">
                            <node concept="3clFbF" id="EMWAvBkib0" role="3cqZAp">
                              <node concept="2OqwBi" id="EMWAvBkjhM" role="3clFbG">
                                <node concept="37vLTw" id="EMWAvBkiaZ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="EMWAvBdTmO" resolve="transientModule" />
                                </node>
                                <node concept="liA8E" id="EMWAvBkkzN" role="2OqNvi">
                                  <ref role="37wK5l" to="31cb:~SModuleBase.unregisterModel(jetbrains.mps.extapi.model.SModelBase)" resolve="unregisterModel" />
                                  <node concept="10QFUN" id="EMWAvBknnC" role="37wK5m">
                                    <node concept="2OqwBi" id="EMWAvBknn_" role="10QFUP">
                                      <node concept="2GrUjf" id="EMWAvBknnA" role="2Oq$k0">
                                        <ref role="2Gs0qQ" node="EMWAvBkg7x" resolve="modelToRemove" />
                                      </node>
                                      <node concept="3AV6Ez" id="EMWAvBknnB" role="2OqNvi" />
                                    </node>
                                    <node concept="3uibUv" id="EMWAvBknkP" role="10QFUM">
                                      <ref role="3uigEE" to="g3l6:~SModelBase" resolve="SModelBase" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="EMWAvBkoGi" role="3cqZAp">
                              <node concept="2OqwBi" id="EMWAvBkp_M" role="3clFbG">
                                <node concept="37vLTw" id="EMWAvBkoGg" role="2Oq$k0">
                                  <ref role="3cqZAo" node="EMWAvBiTR0" resolve="models" />
                                </node>
                                <node concept="kI3uX" id="EMWAvBkqLf" role="2OqNvi">
                                  <node concept="2OqwBi" id="EMWAvBksld" role="kIiFs">
                                    <node concept="2GrUjf" id="EMWAvBkroa" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="EMWAvBkg7x" resolve="modelToRemove" />
                                    </node>
                                    <node concept="3AY5_j" id="EMWAvBksJz" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2YIFZM" id="EMWAvBkwrj" role="ukAjM">
                      <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
                      <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                    </node>
                  </node>
                  <node concept="3cpWs6" id="1yReInOE0l" role="3cqZAp">
                    <node concept="10M0yZ" id="1yReInOE0m" role="3cqZAk">
                      <ref role="1PxDUh" to="v18h:~Unit" resolve="Unit" />
                      <ref role="3cqZAo" to="v18h:~Unit.INSTANCE" resolve="INSTANCE" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="49CIzaqqklE" role="jymVt" />
    <node concept="3clFb_" id="49CIzaqqkfD" role="jymVt">
      <property role="TrG5h" value="deactivate" />
      <node concept="3cqZAl" id="49CIzaqqkfE" role="3clF45" />
      <node concept="3Tm1VV" id="49CIzaqqkfF" role="1B3o_S" />
      <node concept="3clFbS" id="49CIzaqqkfH" role="3clF47">
        <node concept="1QHqEM" id="5D5xac1rFB0" role="3cqZAp">
          <node concept="1QHqEC" id="5D5xac1rFB2" role="1QHqEI">
            <node concept="3clFbS" id="5D5xac1rFB4" role="1bW5cS">
              <node concept="3clFbF" id="3$AzfXQaBob" role="3cqZAp">
                <node concept="2OqwBi" id="3$AzfXQaBP2" role="3clFbG">
                  <node concept="2YIFZM" id="3$AzfXQaBEF" role="2Oq$k0">
                    <ref role="37wK5l" node="49CIzaqqD1y" resolve="getInstance" />
                    <ref role="1Pybhc" node="26ispG7Y1u2" resolve="CloudTransientModules" />
                  </node>
                  <node concept="liA8E" id="3$AzfXQaC0c" role="2OqNvi">
                    <ref role="37wK5l" node="EMWAvBhRKM" resolve="disposeModule" />
                    <node concept="37vLTw" id="3$AzfXQaCoT" role="37wK5m">
                      <ref role="3cqZAo" node="EMWAvBdTmO" resolve="transientModule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2YIFZM" id="5D5xac1rG7F" role="ukAjM">
            <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
            <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="49CIzaqqkfI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1BXGyXtB1wg" role="jymVt" />
    <node concept="3clFb_" id="1BXGyXtAZB6" role="jymVt">
      <property role="TrG5h" value="getModule" />
      <node concept="3uibUv" id="1BXGyXtAZB7" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
      <node concept="3Tm1VV" id="1BXGyXtAZB8" role="1B3o_S" />
      <node concept="3clFbS" id="1BXGyXtAZBa" role="3clF47">
        <node concept="3clFbF" id="1BXGyXtB34a" role="3cqZAp">
          <node concept="37vLTw" id="1BXGyXtB349" role="3clFbG">
            <ref role="3cqZAo" node="EMWAvBdTmO" resolve="transientModule" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1BXGyXtAZBb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2n9Wvfbk_sx" role="jymVt" />
    <node concept="3clFb_" id="2n9WvfbkCFr" role="jymVt">
      <property role="TrG5h" value="toString" />
      <node concept="3Tm1VV" id="2n9WvfbkCFs" role="1B3o_S" />
      <node concept="17QB3L" id="2n9WvfbkFi5" role="3clF45" />
      <node concept="3clFbS" id="2n9WvfbkCFv" role="3clF47">
        <node concept="3clFbF" id="2n9WvfbkHzP" role="3cqZAp">
          <node concept="3cpWs3" id="2n9WvfbkKiP" role="3clFbG">
            <node concept="37vLTw" id="2n9WvfbkKJ8" role="3uHU7w">
              <ref role="3cqZAo" node="49CIzaqqeCV" resolve="moduleName" />
            </node>
            <node concept="3cpWs3" id="2n9WvfbkJNq" role="3uHU7B">
              <node concept="3cpWs3" id="2n9WvfbkIx4" role="3uHU7B">
                <node concept="3cpWs3" id="2n9WvfbkHWi" role="3uHU7B">
                  <node concept="37vLTw" id="2n9WvfbkHzO" role="3uHU7B">
                    <ref role="3cqZAo" node="49CIzaqqebX" resolve="treeId" />
                  </node>
                  <node concept="Xl_RD" id="2n9WvfbkI7i" role="3uHU7w">
                    <property role="Xl_RC" value="/" />
                  </node>
                </node>
                <node concept="2YIFZM" id="2n9WvfblpGB" role="3uHU7w">
                  <ref role="37wK5l" to="wyt6:~Long.toHexString(long)" resolve="toHexString" />
                  <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
                  <node concept="37vLTw" id="2n9WvfblpWE" role="37wK5m">
                    <ref role="3cqZAo" node="49CIzaqqeo5" resolve="nodeId" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="2n9WvfbkJYq" role="3uHU7w">
                <property role="Xl_RC" value=" -&gt; " />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2n9WvfbkCFw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="49CIzaqqe7c">
    <property role="TrG5h" value="ModelBinding" />
    <property role="1sVAO0" value="true" />
    <node concept="312cEg" id="49CIzaqqebX" role="jymVt">
      <property role="TrG5h" value="treeId" />
      <node concept="3Tmbuc" id="49CIzaqqe$$" role="1B3o_S" />
      <node concept="3uibUv" id="4HpUuL0xb5V" role="1tU5fm">
        <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
      </node>
    </node>
    <node concept="312cEg" id="49CIzaqqeo5" role="jymVt">
      <property role="TrG5h" value="nodeId" />
      <node concept="3Tmbuc" id="49CIzaqqe$M" role="1B3o_S" />
      <node concept="3cpWsb" id="49CIzaqqes3" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="49CIzaqqjSR" role="jymVt" />
    <node concept="3clFbW" id="EMWAvBfuhs" role="jymVt">
      <node concept="3cqZAl" id="EMWAvBfuht" role="3clF45" />
      <node concept="3Tm1VV" id="EMWAvBfuhu" role="1B3o_S" />
      <node concept="3clFbS" id="EMWAvBfuhw" role="3clF47">
        <node concept="3clFbF" id="EMWAvBfuhK" role="3cqZAp">
          <node concept="37vLTI" id="EMWAvBfuhM" role="3clFbG">
            <node concept="2OqwBi" id="EMWAvBfuhQ" role="37vLTJ">
              <node concept="Xjq3P" id="EMWAvBfuhR" role="2Oq$k0" />
              <node concept="2OwXpG" id="EMWAvBfuhS" role="2OqNvi">
                <ref role="2Oxat5" node="49CIzaqqebX" resolve="treeId" />
              </node>
            </node>
            <node concept="37vLTw" id="EMWAvBfuhT" role="37vLTx">
              <ref role="3cqZAo" node="EMWAvBfuhJ" resolve="treeId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="EMWAvBfuh$" role="3cqZAp">
          <node concept="37vLTI" id="EMWAvBfuhA" role="3clFbG">
            <node concept="2OqwBi" id="EMWAvBfuhE" role="37vLTJ">
              <node concept="Xjq3P" id="EMWAvBfuhF" role="2Oq$k0" />
              <node concept="2OwXpG" id="EMWAvBfuhG" role="2OqNvi">
                <ref role="2Oxat5" node="49CIzaqqeo5" resolve="nodeId" />
              </node>
            </node>
            <node concept="37vLTw" id="EMWAvBfuhH" role="37vLTx">
              <ref role="3cqZAo" node="EMWAvBfuhz" resolve="nodeId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="EMWAvBfuhJ" role="3clF46">
        <property role="TrG5h" value="treeId" />
        <node concept="3uibUv" id="4HpUuL0xbbB" role="1tU5fm">
          <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
        </node>
      </node>
      <node concept="37vLTG" id="EMWAvBfuhz" role="3clF46">
        <property role="TrG5h" value="nodeId" />
        <node concept="3cpWsb" id="EMWAvBfuhy" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="EMWAvBfugT" role="jymVt" />
    <node concept="3clFb_" id="49CIzaqqjWT" role="jymVt">
      <property role="TrG5h" value="activate" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="49CIzaqqjYi" role="3clF46">
        <property role="TrG5h" value="cloudRepository" />
        <node concept="3uibUv" id="49CIzaqqk5S" role="1tU5fm">
          <ref role="3uigEE" node="6aRQr1WOV$v" resolve="CloudRepository" />
        </node>
      </node>
      <node concept="3cqZAl" id="49CIzaqqjWV" role="3clF45" />
      <node concept="3Tm1VV" id="49CIzaqqjWW" role="1B3o_S" />
      <node concept="3clFbS" id="49CIzaqqjWX" role="3clF47" />
    </node>
    <node concept="3clFb_" id="49CIzaqqkaP" role="jymVt">
      <property role="TrG5h" value="deactivate" />
      <property role="1EzhhJ" value="true" />
      <node concept="3cqZAl" id="49CIzaqqkaS" role="3clF45" />
      <node concept="3Tm1VV" id="49CIzaqqkaT" role="1B3o_S" />
      <node concept="3clFbS" id="49CIzaqqkaU" role="3clF47" />
    </node>
    <node concept="3clFb_" id="1BXGyXtAXkl" role="jymVt">
      <property role="TrG5h" value="getModule" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="1BXGyXtAX$U" role="3clF45">
        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
      </node>
      <node concept="3Tm1VV" id="1BXGyXtAXko" role="1B3o_S" />
      <node concept="3clFbS" id="1BXGyXtAXkp" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5D5xac1qRIb" role="jymVt" />
    <node concept="3Tm1VV" id="49CIzaqqe7d" role="1B3o_S" />
    <node concept="3clFb_" id="5D5xac1qR_e" role="jymVt">
      <property role="TrG5h" value="getNodeId" />
      <node concept="3cpWsb" id="5D5xac1qR_f" role="3clF45" />
      <node concept="3Tm1VV" id="5D5xac1qR_g" role="1B3o_S" />
      <node concept="3clFbS" id="5D5xac1qR_h" role="3clF47">
        <node concept="3clFbF" id="5D5xac1qR_i" role="3cqZAp">
          <node concept="2OqwBi" id="5D5xac1qR_b" role="3clFbG">
            <node concept="Xjq3P" id="5D5xac1qR_c" role="2Oq$k0" />
            <node concept="2OwXpG" id="5D5xac1qR_d" role="2OqNvi">
              <ref role="2Oxat5" node="49CIzaqqeo5" resolve="nodeId" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1BXGyXtAUUy" role="jymVt" />
    <node concept="3clFb_" id="5D5xac1qR_m" role="jymVt">
      <property role="TrG5h" value="getTreeId" />
      <node concept="3uibUv" id="4HpUuL0xbg8" role="3clF45">
        <ref role="3uigEE" to="xkhl:~TreeId" resolve="TreeId" />
      </node>
      <node concept="3Tm1VV" id="5D5xac1qR_o" role="1B3o_S" />
      <node concept="3clFbS" id="5D5xac1qR_p" role="3clF47">
        <node concept="3clFbF" id="5D5xac1qR_q" role="3cqZAp">
          <node concept="2OqwBi" id="5D5xac1qR_j" role="3clFbG">
            <node concept="Xjq3P" id="5D5xac1qR_k" role="2Oq$k0" />
            <node concept="2OwXpG" id="5D5xac1qR_l" role="2OqNvi">
              <ref role="2Oxat5" node="49CIzaqqebX" resolve="treeId" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="Onv88ZNSEL">
    <property role="TrG5h" value="SharedExecutors" />
    <node concept="Wx3nA" id="Onv88ZOFFp" role="jymVt">
      <property role="TrG5h" value="FIXED" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="Onv88ZOFFq" role="1tU5fm">
        <ref role="3uigEE" to="5zyv:~ExecutorService" resolve="ExecutorService" />
      </node>
      <node concept="3Tm1VV" id="Onv88ZOFFr" role="1B3o_S" />
      <node concept="2YIFZM" id="Onv88ZOGOJ" role="33vP2m">
        <ref role="37wK5l" to="5zyv:~Executors.newFixedThreadPool(int)" resolve="newFixedThreadPool" />
        <ref role="1Pybhc" to="5zyv:~Executors" resolve="Executors" />
        <node concept="3cpWs3" id="Onv88ZOHy7" role="37wK5m">
          <node concept="2OqwBi" id="Onv88ZOGIu" role="3uHU7B">
            <node concept="2YIFZM" id="Onv88ZOGBy" role="2Oq$k0">
              <ref role="1Pybhc" to="wyt6:~Runtime" resolve="Runtime" />
              <ref role="37wK5l" to="wyt6:~Runtime.getRuntime()" resolve="getRuntime" />
            </node>
            <node concept="liA8E" id="Onv88ZOGO4" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Runtime.availableProcessors()" resolve="availableProcessors" />
            </node>
          </node>
          <node concept="3cmrfG" id="Onv88ZOHUo" role="3uHU7w">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="Onv88ZOBOY" role="jymVt">
      <property role="TrG5h" value="SCHEDULED" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="Onv88ZOBzS" role="1tU5fm">
        <ref role="3uigEE" to="5zyv:~ScheduledExecutorService" resolve="ScheduledExecutorService" />
      </node>
      <node concept="3Tm1VV" id="Onv88ZOCRG" role="1B3o_S" />
      <node concept="2YIFZM" id="Onv88ZOYb1" role="33vP2m">
        <ref role="37wK5l" to="5zyv:~Executors.newScheduledThreadPool(int)" resolve="newScheduledThreadPool" />
        <ref role="1Pybhc" to="5zyv:~Executors" resolve="Executors" />
        <node concept="3cpWs3" id="Onv88ZOYc1" role="37wK5m">
          <node concept="2OqwBi" id="Onv88ZOYc2" role="3uHU7B">
            <node concept="2YIFZM" id="Onv88ZOYc3" role="2Oq$k0">
              <ref role="37wK5l" to="wyt6:~Runtime.getRuntime()" resolve="getRuntime" />
              <ref role="1Pybhc" to="wyt6:~Runtime" resolve="Runtime" />
            </node>
            <node concept="liA8E" id="Onv88ZOYc4" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Runtime.availableProcessors()" resolve="availableProcessors" />
            </node>
          </node>
          <node concept="3cmrfG" id="Onv88ZOYc5" role="3uHU7w">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Onv88ZOFHQ" role="jymVt" />
    <node concept="2YIFZL" id="Onv88ZOBPX" role="jymVt">
      <property role="TrG5h" value="shutdownAll" />
      <node concept="3clFbS" id="Onv88ZOACR" role="3clF47">
        <node concept="3clFbF" id="Onv88ZOB2a" role="3cqZAp">
          <node concept="2OqwBi" id="Onv88ZOBke" role="3clFbG">
            <node concept="37vLTw" id="Onv88ZOB29" role="2Oq$k0">
              <ref role="3cqZAo" node="Onv88ZOBOY" resolve="SCHEDULED" />
            </node>
            <node concept="liA8E" id="Onv88ZOBM9" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~ExecutorService.shutdown()" resolve="shutdown" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Onv88ZOIcq" role="3cqZAp">
          <node concept="2OqwBi" id="Onv88ZOIxs" role="3clFbG">
            <node concept="37vLTw" id="Onv88ZOIco" role="2Oq$k0">
              <ref role="3cqZAo" node="Onv88ZOFFp" resolve="FIXED" />
            </node>
            <node concept="liA8E" id="Onv88ZOIKI" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~ExecutorService.shutdown()" resolve="shutdown" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="Onv88ZOACP" role="3clF45" />
      <node concept="3Tm1VV" id="Onv88ZOACQ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4qNw5QU$dNy" role="jymVt" />
    <node concept="2YIFZL" id="4qNw5QU$ess" role="jymVt">
      <property role="TrG5h" value="fixDelay" />
      <node concept="3clFbS" id="4qNw5QU$dU_" role="3clF47">
        <node concept="3cpWs6" id="4qNw5QU$h21" role="3cqZAp">
          <node concept="2OqwBi" id="4qNw5QU$h23" role="3cqZAk">
            <node concept="37vLTw" id="4qNw5QU$h24" role="2Oq$k0">
              <ref role="3cqZAo" node="Onv88ZOBOY" resolve="SCHEDULED" />
            </node>
            <node concept="liA8E" id="4qNw5QU$h25" role="2OqNvi">
              <ref role="37wK5l" to="5zyv:~ScheduledExecutorService.scheduleWithFixedDelay(java.lang.Runnable,long,long,java.util.concurrent.TimeUnit)" resolve="scheduleWithFixedDelay" />
              <node concept="1bVj0M" id="4qNw5QU$h26" role="37wK5m">
                <node concept="3clFbS" id="4qNw5QU$h27" role="1bW5cS">
                  <node concept="3J1_TO" id="4qNw5QU$h28" role="3cqZAp">
                    <node concept="3clFbS" id="4qNw5QU$h29" role="1zxBo7">
                      <node concept="3clFbF" id="4qNw5QU$hhd" role="3cqZAp">
                        <node concept="2OqwBi" id="4qNw5QU$hnT" role="3clFbG">
                          <node concept="37vLTw" id="4qNw5QU$hhc" role="2Oq$k0">
                            <ref role="3cqZAo" node="4qNw5QU$eh$" resolve="r" />
                          </node>
                          <node concept="liA8E" id="4qNw5QU$hvv" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3uVAMA" id="4qNw5QU$h2a" role="1zxBo5">
                      <node concept="XOnhg" id="4qNw5QU$h2b" role="1zc67B">
                        <property role="3TUv4t" value="false" />
                        <property role="TrG5h" value="ex" />
                        <node concept="nSUau" id="4F3wTlsLmtg" role="1tU5fm">
                          <node concept="3uibUv" id="4qNw5QU$h2c" role="nSUat">
                            <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="4qNw5QU$h2d" role="1zc67A">
                        <node concept="RRSsy" id="4qNw5QU$h2e" role="3cqZAp">
                          <property role="RRSoG" value="gZ5fh_4/error" />
                          <node concept="Xl_RD" id="4qNw5QU$h2f" role="RRSoy" />
                          <node concept="37vLTw" id="4qNw5QU$h2g" role="RRSow">
                            <ref role="3cqZAo" node="4qNw5QU$h2b" resolve="ex" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="4qNw5QU$hJB" role="37wK5m">
                <ref role="3cqZAo" node="4qNw5QU$e6e" resolve="milliSeconds" />
              </node>
              <node concept="37vLTw" id="4qNw5QU$i1A" role="37wK5m">
                <ref role="3cqZAo" node="4qNw5QU$e6e" resolve="milliSeconds" />
              </node>
              <node concept="Rm8GO" id="4qNw5QU$iFn" role="37wK5m">
                <ref role="Rm8GQ" to="5zyv:~TimeUnit.MILLISECONDS" resolve="MILLISECONDS" />
                <ref role="1Px2BO" to="5zyv:~TimeUnit" resolve="TimeUnit" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4qNw5QU$e6e" role="3clF46">
        <property role="TrG5h" value="milliSeconds" />
        <node concept="10Oyi0" id="4qNw5QU$egy" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4qNw5QU$eh$" role="3clF46">
        <property role="TrG5h" value="r" />
        <node concept="3uibUv" id="4qNw5QU$erw" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="3uibUv" id="4qNw5QU$iRZ" role="3clF45">
        <ref role="3uigEE" to="5zyv:~ScheduledFuture" resolve="ScheduledFuture" />
        <node concept="3qTvmN" id="4qNw5QU$je_" role="11_B2D" />
      </node>
      <node concept="3Tm1VV" id="4qNw5QU$dU$" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="Onv88ZNSEM" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="694yVfgo$uu">
    <property role="TrG5h" value="TransactionUtil" />
    <node concept="2YIFZL" id="694yVfgo$XZ" role="jymVt">
      <property role="TrG5h" value="extractBranch" />
      <node concept="3clFbS" id="694yVfgo$IC" role="3clF47">
        <node concept="3clFbJ" id="694yVfgo_lY" role="3cqZAp">
          <node concept="2ZW3vV" id="694yVfgo_Mo" role="3clFbw">
            <node concept="3uibUv" id="694yVfgo_V6" role="2ZW6by">
              <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
            </node>
            <node concept="37vLTw" id="694yVfgo_xK" role="2ZW6bz">
              <ref role="3cqZAo" node="694yVfgo$Kq" resolve="obj" />
            </node>
          </node>
          <node concept="3clFbS" id="694yVfgo_m0" role="3clFbx">
            <node concept="3cpWs6" id="694yVfgoA6U" role="3cqZAp">
              <node concept="2OqwBi" id="694yVfgoABI" role="3cqZAk">
                <node concept="1eOMI4" id="694yVfgoAuS" role="2Oq$k0">
                  <node concept="10QFUN" id="694yVfgoAka" role="1eOMHV">
                    <node concept="37vLTw" id="694yVfgoAk9" role="10QFUP">
                      <ref role="3cqZAo" node="694yVfgo$Kq" resolve="obj" />
                    </node>
                    <node concept="3uibUv" id="694yVfgoAsi" role="10QFUM">
                      <ref role="3uigEE" to="jks5:~PNodeAdapter" resolve="PNodeAdapter" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="694yVfgoALp" role="2OqNvi">
                  <ref role="37wK5l" to="jks5:~PNodeAdapter.getBranch()" resolve="getBranch" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="694yVfgoAYw" role="3eNLev">
            <node concept="2ZW3vV" id="694yVfgoBrj" role="3eO9$A">
              <node concept="3uibUv" id="694yVfgoB$3" role="2ZW6by">
                <ref role="3uigEE" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
              </node>
              <node concept="37vLTw" id="694yVfgoBbm" role="2ZW6bz">
                <ref role="3cqZAo" node="694yVfgo$Kq" resolve="obj" />
              </node>
            </node>
            <node concept="3clFbS" id="694yVfgoAYy" role="3eOfB_">
              <node concept="3cpWs6" id="694yVfgoBJT" role="3cqZAp">
                <node concept="1rXfSq" id="694yVfgoC8d" role="3cqZAk">
                  <ref role="37wK5l" node="694yVfgo$XZ" resolve="extractBranch" />
                  <node concept="2YIFZM" id="694yVfgoCU0" role="37wK5m">
                    <ref role="1Pybhc" to="xxte:5gTrVpGjuLg" resolve="SNodeToNodeAdapter" />
                    <ref role="37wK5l" to="xxte:5gTrVpGyMwR" resolve="wrap" />
                    <node concept="1eOMI4" id="694yVfgoDb6" role="37wK5m">
                      <node concept="10QFUN" id="694yVfgoDb5" role="1eOMHV">
                        <node concept="37vLTw" id="694yVfgoDb4" role="10QFUP">
                          <ref role="3cqZAo" node="694yVfgo$Kq" resolve="obj" />
                        </node>
                        <node concept="3uibUv" id="694yVfgoDl6" role="10QFUM">
                          <ref role="3uigEE" to="xxte:4EhVFrZ3AjR" resolve="NodeToSNodeAdapter" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="694yVfgoHjm" role="3eNLev">
            <node concept="2ZW3vV" id="694yVfgoHTT" role="3eO9$A">
              <node concept="3uibUv" id="694yVfgoI5F" role="2ZW6by">
                <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
              </node>
              <node concept="37vLTw" id="694yVfgoHCl" role="2ZW6bz">
                <ref role="3cqZAo" node="694yVfgo$Kq" resolve="obj" />
              </node>
            </node>
            <node concept="3clFbS" id="694yVfgoHjo" role="3eOfB_">
              <node concept="3cpWs6" id="694yVfgoIhY" role="3cqZAp">
                <node concept="10QFUN" id="694yVfgoIM9" role="3cqZAk">
                  <node concept="3uibUv" id="694yVfgoIMe" role="10QFUM">
                    <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
                  </node>
                  <node concept="37vLTw" id="694yVfgoIMf" role="10QFUP">
                    <ref role="3cqZAo" node="694yVfgo$Kq" resolve="obj" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="694yVfgoDtD" role="9aQIa">
            <node concept="3clFbS" id="694yVfgoDtE" role="9aQI4">
              <node concept="3cpWs6" id="694yVfgoDFn" role="3cqZAp">
                <node concept="10Nm6u" id="694yVfgoDRc" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="694yVfgo$Kq" role="3clF46">
        <property role="TrG5h" value="obj" />
        <node concept="3uibUv" id="694yVfgo$Td" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3uibUv" id="694yVfgo$XB" role="3clF45">
        <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
      </node>
      <node concept="3Tm1VV" id="694yVfgo$IB" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="694yVfgp2w7" role="jymVt" />
    <node concept="2YIFZL" id="694yVfgp24a" role="jymVt">
      <property role="TrG5h" value="runReadOnNodes" />
      <node concept="3clFbS" id="694yVfgp24b" role="3clF47">
        <node concept="3clFbF" id="694yVfgp24c" role="3cqZAp">
          <node concept="1rXfSq" id="694yVfgp24d" role="3clFbG">
            <ref role="37wK5l" node="694yVfgoNEv" resolve="runReadOnBranches" />
            <node concept="2OqwBi" id="694yVfgp24f" role="37wK5m">
              <node concept="2OqwBi" id="694yVfgp24g" role="2Oq$k0">
                <node concept="37vLTw" id="694yVfgp24i" role="2Oq$k0">
                  <ref role="3cqZAo" node="694yVfgp24v" resolve="nodesToRead" />
                </node>
                <node concept="3$u5V9" id="694yVfgp24k" role="2OqNvi">
                  <node concept="1bVj0M" id="694yVfgp24l" role="23t8la">
                    <node concept="3clFbS" id="694yVfgp24m" role="1bW5cS">
                      <node concept="3clFbF" id="694yVfgp24n" role="3cqZAp">
                        <node concept="1rXfSq" id="694yVfgp24o" role="3clFbG">
                          <ref role="37wK5l" node="694yVfgo$XZ" resolve="extractBranch" />
                          <node concept="37vLTw" id="694yVfgp24p" role="37wK5m">
                            <ref role="3cqZAo" node="694yVfgp24q" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="694yVfgp24q" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="694yVfgp24r" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1KnU$U" id="694yVfgp24s" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="694yVfgp24e" role="37wK5m">
              <ref role="3cqZAo" node="694yVfgp24t" resolve="r" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="694yVfgp24v" role="3clF46">
        <property role="TrG5h" value="nodesToRead" />
        <node concept="A3Dl8" id="694yVfgp3wm" role="1tU5fm">
          <node concept="3uibUv" id="694yVfgpIp9" role="A3Ik2">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="694yVfgp24t" role="3clF46">
        <property role="TrG5h" value="r" />
        <node concept="3uibUv" id="694yVfgp24u" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="3cqZAl" id="694yVfgp24y" role="3clF45" />
      <node concept="3Tm1VV" id="694yVfgp24z" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="694yVfgoN2q" role="jymVt" />
    <node concept="2YIFZL" id="694yVfgoNEv" role="jymVt">
      <property role="TrG5h" value="runReadOnBranches" />
      <node concept="3clFbS" id="694yVfgoN8Z" role="3clF47">
        <node concept="3clFbJ" id="694yVfgoNSJ" role="3cqZAp">
          <node concept="2OqwBi" id="694yVfgoOEt" role="3clFbw">
            <node concept="37vLTw" id="694yVfgoOgn" role="2Oq$k0">
              <ref role="3cqZAo" node="694yVfgoNnj" resolve="branchesToRead" />
            </node>
            <node concept="1v1jN8" id="694yVfgoOS9" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="694yVfgoNSL" role="3clFbx">
            <node concept="3clFbF" id="694yVfgoPgc" role="3cqZAp">
              <node concept="2OqwBi" id="694yVfgoPlR" role="3clFbG">
                <node concept="37vLTw" id="694yVfgoPgb" role="2Oq$k0">
                  <ref role="3cqZAo" node="694yVfgoNe0" resolve="r" />
                </node>
                <node concept="liA8E" id="694yVfgoPr_" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="694yVfgoP48" role="9aQIa">
            <node concept="3clFbS" id="694yVfgoP49" role="9aQI4">
              <node concept="3clFbF" id="694yVfgoPOb" role="3cqZAp">
                <node concept="2OqwBi" id="694yVfgoQiK" role="3clFbG">
                  <node concept="2OqwBi" id="694yVfgoQ2j" role="2Oq$k0">
                    <node concept="37vLTw" id="694yVfgoPOa" role="2Oq$k0">
                      <ref role="3cqZAo" node="694yVfgoNnj" resolve="branchesToRead" />
                    </node>
                    <node concept="1uHKPH" id="694yVfgoQ8A" role="2OqNvi" />
                  </node>
                  <node concept="liA8E" id="694yVfgoQpZ" role="2OqNvi">
                    <ref role="37wK5l" to="jks5:~IBranch.runRead(kotlin.jvm.functions.Function0)" resolve="runRead" />
                    <node concept="1bVj0M" id="694yVfgoQM6" role="37wK5m">
                      <node concept="3clFbS" id="694yVfgoQM7" role="1bW5cS">
                        <node concept="3clFbF" id="694yVfgoRdv" role="3cqZAp">
                          <node concept="1rXfSq" id="694yVfgoRdt" role="3clFbG">
                            <ref role="37wK5l" node="694yVfgoNEv" resolve="runReadOnBranches" />
                            <node concept="2OqwBi" id="694yVfgoSQy" role="37wK5m">
                              <node concept="37vLTw" id="694yVfgoSh5" role="2Oq$k0">
                                <ref role="3cqZAo" node="694yVfgoNnj" resolve="branchesToRead" />
                              </node>
                              <node concept="7r0gD" id="694yVfgoSYM" role="2OqNvi">
                                <node concept="3cmrfG" id="694yVfgoTfS" role="7T0AP">
                                  <property role="3cmrfH" value="1" />
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="694yVfgoRNb" role="37wK5m">
                              <ref role="3cqZAo" node="694yVfgoNe0" resolve="r" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="1yReInOASO" role="3cqZAp">
                          <node concept="10M0yZ" id="1yReInOASP" role="3cqZAk">
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
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="694yVfgoNnj" role="3clF46">
        <property role="TrG5h" value="branchesToRead" />
        <property role="3TUv4t" value="true" />
        <node concept="A3Dl8" id="694yVfgoNvL" role="1tU5fm">
          <node concept="3uibUv" id="694yVfgoN$G" role="A3Ik2">
            <ref role="3uigEE" to="jks5:~IBranch" resolve="IBranch" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="694yVfgoNe0" role="3clF46">
        <property role="TrG5h" value="r" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="694yVfgoNms" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="3cqZAl" id="694yVfgoN8X" role="3clF45" />
      <node concept="3Tm1VV" id="694yVfgoN8Y" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="694yVfgo$uv" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="2a45eKor38C">
    <property role="TrG5h" value="WriteAccessUtil" />
    <node concept="2YIFZL" id="2a45eKor3F7" role="jymVt">
      <property role="TrG5h" value="runWrite" />
      <node concept="37vLTG" id="2a45eKor3Fu" role="3clF46">
        <property role="TrG5h" value="repo" />
        <node concept="3uibUv" id="2a45eKor3Rb" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="2a45eKor3RB" role="3clF46">
        <property role="TrG5h" value="body" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="2a45eKor3Z$" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
      <node concept="3clFbS" id="2a45eKor3Er" role="3clF47">
        <node concept="3cpWs8" id="2a45eKor400" role="3cqZAp">
          <node concept="3cpWsn" id="2a45eKor401" role="3cpWs9">
            <property role="TrG5h" value="modelAccess" />
            <node concept="3uibUv" id="2a45eKor402" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~ModelAccess" resolve="ModelAccess" />
            </node>
            <node concept="2OqwBi" id="2a45eKor403" role="33vP2m">
              <node concept="liA8E" id="2a45eKor404" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
              <node concept="37vLTw" id="2a45eKor4k2" role="2Oq$k0">
                <ref role="3cqZAo" node="2a45eKor3Fu" resolve="repo" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2a45eKor406" role="3cqZAp">
          <node concept="3clFbS" id="2a45eKor407" role="3clFbx">
            <node concept="3clFbF" id="2a45eKor408" role="3cqZAp">
              <node concept="2OqwBi" id="2a45eKor409" role="3clFbG">
                <node concept="37vLTw" id="2a45eKor40a" role="2Oq$k0">
                  <ref role="3cqZAo" node="2a45eKor3RB" resolve="body" />
                </node>
                <node concept="liA8E" id="2a45eKor40b" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2a45eKor40c" role="3clFbw">
            <node concept="37vLTw" id="2a45eKor40d" role="2Oq$k0">
              <ref role="3cqZAo" node="2a45eKor401" resolve="modelAccess" />
            </node>
            <node concept="liA8E" id="2a45eKor40e" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.canWrite()" resolve="canWrite" />
            </node>
          </node>
          <node concept="9aQIb" id="2a45eKor40f" role="9aQIa">
            <node concept="3clFbS" id="2a45eKor40g" role="9aQI4">
              <node concept="3clFbJ" id="2a45eKor40h" role="3cqZAp">
                <node concept="2OqwBi" id="2a45eKor40i" role="3clFbw">
                  <node concept="37vLTw" id="2a45eKor40j" role="2Oq$k0">
                    <ref role="3cqZAo" node="2a45eKor401" resolve="modelAccess" />
                  </node>
                  <node concept="liA8E" id="2a45eKor40k" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~ModelAccess.canRead()" resolve="canRead" />
                  </node>
                </node>
                <node concept="3clFbS" id="2a45eKor40l" role="3clFbx">
                  <node concept="3clFbF" id="2a45eKor40m" role="3cqZAp">
                    <node concept="2OqwBi" id="2a45eKor40n" role="3clFbG">
                      <node concept="2YIFZM" id="2a45eKor40o" role="2Oq$k0">
                        <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                        <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                      </node>
                      <node concept="liA8E" id="2a45eKor40p" role="2OqNvi">
                        <ref role="37wK5l" to="bd8o:~Application.executeOnPooledThread(java.lang.Runnable)" resolve="executeOnPooledThread" />
                        <node concept="1bVj0M" id="2a45eKor40q" role="37wK5m">
                          <node concept="3clFbS" id="2a45eKor40r" role="1bW5cS">
                            <node concept="3clFbF" id="2a45eKor40s" role="3cqZAp">
                              <node concept="2OqwBi" id="2a45eKor40t" role="3clFbG">
                                <node concept="37vLTw" id="2a45eKor40u" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2a45eKor3RB" resolve="body" />
                                </node>
                                <node concept="liA8E" id="2a45eKor40v" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="2a45eKor40w" role="9aQIa">
                  <node concept="3clFbS" id="2a45eKor40x" role="9aQI4">
                    <node concept="3clFbF" id="2a45eKor40y" role="3cqZAp">
                      <node concept="2OqwBi" id="2a45eKor40z" role="3clFbG">
                        <node concept="37vLTw" id="2a45eKor40$" role="2Oq$k0">
                          <ref role="3cqZAo" node="2a45eKor401" resolve="modelAccess" />
                        </node>
                        <node concept="liA8E" id="2a45eKor40_" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~ModelAccess.runWriteAction(java.lang.Runnable)" resolve="runWriteAction" />
                          <node concept="37vLTw" id="2a45eKor40A" role="37wK5m">
                            <ref role="3cqZAo" node="2a45eKor3RB" resolve="body" />
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
      <node concept="3cqZAl" id="2a45eKor3Ep" role="3clF45" />
      <node concept="3Tm1VV" id="2a45eKor3Eq" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="2a45eKor38D" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4NO8rntUJNs">
    <property role="TrG5h" value="LetterInSquareIcon" />
    <node concept="312cEg" id="4NO8rntUXoV" role="jymVt">
      <property role="TrG5h" value="letter" />
      <node concept="3Tm6S6" id="4NO8rntUXoW" role="1B3o_S" />
      <node concept="17QB3L" id="4NO8rntUYkH" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4NO8rntV1_Y" role="jymVt">
      <property role="TrG5h" value="fontSize" />
      <node concept="3Tm6S6" id="4NO8rntV1_Z" role="1B3o_S" />
      <node concept="10Oyi0" id="4NO8rntV2CP" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4NO8rntUZnr" role="jymVt">
      <property role="TrG5h" value="offsetX" />
      <node concept="3Tm6S6" id="4NO8rntUZns" role="1B3o_S" />
      <node concept="10OMs4" id="4NO8rntV0jg" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4NO8rntV0xd" role="jymVt">
      <property role="TrG5h" value="offsetY" />
      <node concept="3Tm6S6" id="4NO8rntV0xe" role="1B3o_S" />
      <node concept="10OMs4" id="4NO8rntV0xf" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="5wnrAmTLuRI" role="jymVt">
      <property role="TrG5h" value="backgroundColor" />
      <node concept="3Tm6S6" id="5wnrAmTLuRJ" role="1B3o_S" />
      <node concept="3uibUv" id="5wnrAmTLwln" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
    </node>
    <node concept="312cEg" id="5wnrAmTLx0I" role="jymVt">
      <property role="TrG5h" value="foregroundColor" />
      <node concept="3Tm6S6" id="5wnrAmTLx0J" role="1B3o_S" />
      <node concept="3uibUv" id="5wnrAmTLx0K" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
    </node>
    <node concept="3clFbW" id="4NO8rntV3xX" role="jymVt">
      <node concept="3cqZAl" id="4NO8rntV3xY" role="3clF45" />
      <node concept="3Tm1VV" id="4NO8rntV3xZ" role="1B3o_S" />
      <node concept="3clFbS" id="4NO8rntV3y1" role="3clF47">
        <node concept="1VxSAg" id="5wnrAmTLFnL" role="3cqZAp">
          <ref role="37wK5l" node="5wnrAmTLyBN" resolve="LetterInSquareIcon" />
          <node concept="37vLTw" id="5wnrAmTLF_l" role="37wK5m">
            <ref role="3cqZAo" node="4NO8rntV3y4" resolve="letter" />
          </node>
          <node concept="37vLTw" id="5wnrAmTLFU6" role="37wK5m">
            <ref role="3cqZAo" node="4NO8rntV3yg" resolve="fontSize" />
          </node>
          <node concept="37vLTw" id="5wnrAmTLGf2" role="37wK5m">
            <ref role="3cqZAo" node="4NO8rntV3ys" resolve="offsetX" />
          </node>
          <node concept="37vLTw" id="5wnrAmTLG$8" role="37wK5m">
            <ref role="3cqZAo" node="4NO8rntV3yC" resolve="offsetY" />
          </node>
          <node concept="10M0yZ" id="5wnrAmTLGD$" role="37wK5m">
            <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
            <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
          </node>
          <node concept="2ShNRf" id="5wnrAmTLG_g" role="37wK5m">
            <node concept="1pGfFk" id="5wnrAmTLG_h" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
              <node concept="3cmrfG" id="5wnrAmTLG_i" role="37wK5m">
                <property role="3cmrfH" value="200" />
              </node>
              <node concept="3cmrfG" id="5wnrAmTLG_j" role="37wK5m">
                <property role="3cmrfH" value="200" />
              </node>
              <node concept="3cmrfG" id="5wnrAmTLG_k" role="37wK5m">
                <property role="3cmrfH" value="200" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4NO8rntV3y4" role="3clF46">
        <property role="TrG5h" value="letter" />
        <node concept="17QB3L" id="4NO8rntV3y3" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4NO8rntV3yg" role="3clF46">
        <property role="TrG5h" value="fontSize" />
        <node concept="10Oyi0" id="4NO8rntV3yf" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4NO8rntV3ys" role="3clF46">
        <property role="TrG5h" value="offsetX" />
        <node concept="10OMs4" id="4NO8rntV3yr" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4NO8rntV3yC" role="3clF46">
        <property role="TrG5h" value="offsetY" />
        <node concept="10OMs4" id="4NO8rntV3yB" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFbW" id="5wnrAmTLyBN" role="jymVt">
      <node concept="3cqZAl" id="5wnrAmTLyBO" role="3clF45" />
      <node concept="3Tm1VV" id="5wnrAmTLyBP" role="1B3o_S" />
      <node concept="3clFbS" id="5wnrAmTLyBQ" role="3clF47">
        <node concept="3clFbF" id="5wnrAmTLyBR" role="3cqZAp">
          <node concept="37vLTI" id="5wnrAmTLyBS" role="3clFbG">
            <node concept="2OqwBi" id="5wnrAmTLyBT" role="37vLTJ">
              <node concept="Xjq3P" id="5wnrAmTLyBU" role="2Oq$k0" />
              <node concept="2OwXpG" id="5wnrAmTLyBV" role="2OqNvi">
                <ref role="2Oxat5" node="4NO8rntUXoV" resolve="letter" />
              </node>
            </node>
            <node concept="37vLTw" id="5wnrAmTLyBW" role="37vLTx">
              <ref role="3cqZAo" node="5wnrAmTLyCf" resolve="letter" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5wnrAmTLyBX" role="3cqZAp">
          <node concept="37vLTI" id="5wnrAmTLyBY" role="3clFbG">
            <node concept="2OqwBi" id="5wnrAmTLyBZ" role="37vLTJ">
              <node concept="Xjq3P" id="5wnrAmTLyC0" role="2Oq$k0" />
              <node concept="2OwXpG" id="5wnrAmTLyC1" role="2OqNvi">
                <ref role="2Oxat5" node="4NO8rntV1_Y" resolve="fontSize" />
              </node>
            </node>
            <node concept="37vLTw" id="5wnrAmTLyC2" role="37vLTx">
              <ref role="3cqZAo" node="5wnrAmTLyCh" resolve="fontSize" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5wnrAmTLyC3" role="3cqZAp">
          <node concept="37vLTI" id="5wnrAmTLyC4" role="3clFbG">
            <node concept="2OqwBi" id="5wnrAmTLyC5" role="37vLTJ">
              <node concept="Xjq3P" id="5wnrAmTLyC6" role="2Oq$k0" />
              <node concept="2OwXpG" id="5wnrAmTLyC7" role="2OqNvi">
                <ref role="2Oxat5" node="4NO8rntUZnr" resolve="offsetX" />
              </node>
            </node>
            <node concept="37vLTw" id="5wnrAmTLyC8" role="37vLTx">
              <ref role="3cqZAo" node="5wnrAmTLyCj" resolve="offsetX" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5wnrAmTLyC9" role="3cqZAp">
          <node concept="37vLTI" id="5wnrAmTLyCa" role="3clFbG">
            <node concept="2OqwBi" id="5wnrAmTLyCb" role="37vLTJ">
              <node concept="Xjq3P" id="5wnrAmTLyCc" role="2Oq$k0" />
              <node concept="2OwXpG" id="5wnrAmTLyCd" role="2OqNvi">
                <ref role="2Oxat5" node="4NO8rntV0xd" resolve="offsetY" />
              </node>
            </node>
            <node concept="37vLTw" id="5wnrAmTLyCe" role="37vLTx">
              <ref role="3cqZAo" node="5wnrAmTLyCl" resolve="offsetY" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5wnrAmTLAqu" role="3cqZAp">
          <node concept="37vLTI" id="5wnrAmTLBBe" role="3clFbG">
            <node concept="37vLTw" id="5wnrAmTLC3p" role="37vLTx">
              <ref role="3cqZAo" node="5wnrAmTL$23" resolve="backgroundColor" />
            </node>
            <node concept="2OqwBi" id="5wnrAmTLAHQ" role="37vLTJ">
              <node concept="Xjq3P" id="5wnrAmTLAqs" role="2Oq$k0" />
              <node concept="2OwXpG" id="5wnrAmTLB9r" role="2OqNvi">
                <ref role="2Oxat5" node="5wnrAmTLuRI" resolve="backgroundColor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5wnrAmTLCuJ" role="3cqZAp">
          <node concept="37vLTI" id="5wnrAmTLDIl" role="3clFbG">
            <node concept="37vLTw" id="5wnrAmTLEaw" role="37vLTx">
              <ref role="3cqZAo" node="5wnrAmTL$RR" resolve="foregroundColor" />
            </node>
            <node concept="2OqwBi" id="5wnrAmTLCP1" role="37vLTJ">
              <node concept="Xjq3P" id="5wnrAmTLCuH" role="2Oq$k0" />
              <node concept="2OwXpG" id="5wnrAmTLDgy" role="2OqNvi">
                <ref role="2Oxat5" node="5wnrAmTLx0I" resolve="foregroundColor" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5wnrAmTLyCf" role="3clF46">
        <property role="TrG5h" value="letter" />
        <node concept="17QB3L" id="5wnrAmTLyCg" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5wnrAmTLyCh" role="3clF46">
        <property role="TrG5h" value="fontSize" />
        <node concept="10Oyi0" id="5wnrAmTLyCi" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5wnrAmTLyCj" role="3clF46">
        <property role="TrG5h" value="offsetX" />
        <node concept="10OMs4" id="5wnrAmTLyCk" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5wnrAmTLyCl" role="3clF46">
        <property role="TrG5h" value="offsetY" />
        <node concept="10OMs4" id="5wnrAmTLyCm" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5wnrAmTL$23" role="3clF46">
        <property role="TrG5h" value="backgroundColor" />
        <node concept="3uibUv" id="5wnrAmTL$nR" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="37vLTG" id="5wnrAmTL$RR" role="3clF46">
        <property role="TrG5h" value="foregroundColor" />
        <node concept="3uibUv" id="5wnrAmTL_dH" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4NO8rntURWz" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="paintIcon" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4NO8rntURW$" role="1B3o_S" />
      <node concept="3cqZAl" id="4NO8rntURW_" role="3clF45" />
      <node concept="37vLTG" id="4NO8rntURWA" role="3clF46">
        <property role="TrG5h" value="p0" />
        <node concept="3uibUv" id="4NO8rntURWB" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="37vLTG" id="4NO8rntURWC" role="3clF46">
        <property role="TrG5h" value="g_" />
        <node concept="3uibUv" id="4NO8rntURWD" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="37vLTG" id="4NO8rntURWE" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="4NO8rntURWF" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4NO8rntURWG" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="4NO8rntURWH" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4NO8rntURWI" role="3clF47">
        <node concept="3cpWs8" id="4NO8rntURWJ" role="3cqZAp">
          <node concept="3cpWsn" id="4NO8rntURWK" role="3cpWs9">
            <property role="TrG5h" value="g" />
            <node concept="3uibUv" id="4NO8rntURWL" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
            </node>
            <node concept="10QFUN" id="4NO8rntURWM" role="33vP2m">
              <node concept="2OqwBi" id="4NO8rntURWN" role="10QFUP">
                <node concept="37vLTw" id="4NO8rntURWO" role="2Oq$k0">
                  <ref role="3cqZAo" node="4NO8rntURWC" resolve="g_" />
                </node>
                <node concept="liA8E" id="4NO8rntURWP" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.create()" resolve="create" />
                </node>
              </node>
              <node concept="3uibUv" id="4NO8rntURWQ" role="10QFUM">
                <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="4NO8rntURWR" role="3cqZAp">
          <node concept="3clFbS" id="4NO8rntURWS" role="1zxBo7">
            <node concept="3clFbF" id="4NO8rntURWT" role="3cqZAp">
              <node concept="2OqwBi" id="4NO8rntURWU" role="3clFbG">
                <node concept="37vLTw" id="4NO8rntURWV" role="2Oq$k0">
                  <ref role="3cqZAo" node="4NO8rntURWK" resolve="g" />
                </node>
                <node concept="liA8E" id="4NO8rntURWW" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics2D.setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)" resolve="setRenderingHint" />
                  <node concept="10M0yZ" id="4NO8rntURWX" role="37wK5m">
                    <ref role="3cqZAo" to="z60i:~RenderingHints.KEY_ANTIALIASING" resolve="KEY_ANTIALIASING" />
                    <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                  </node>
                  <node concept="10M0yZ" id="4NO8rntURWY" role="37wK5m">
                    <ref role="3cqZAo" to="z60i:~RenderingHints.VALUE_ANTIALIAS_ON" resolve="VALUE_ANTIALIAS_ON" />
                    <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4NO8rntURWZ" role="3cqZAp">
              <node concept="2OqwBi" id="4NO8rntURX0" role="3clFbG">
                <node concept="37vLTw" id="4NO8rntURX1" role="2Oq$k0">
                  <ref role="3cqZAo" node="4NO8rntURWK" resolve="g" />
                </node>
                <node concept="liA8E" id="4NO8rntURX2" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics2D.setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)" resolve="setRenderingHint" />
                  <node concept="10M0yZ" id="4NO8rntURX3" role="37wK5m">
                    <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                    <ref role="3cqZAo" to="z60i:~RenderingHints.KEY_TEXT_ANTIALIASING" resolve="KEY_TEXT_ANTIALIASING" />
                  </node>
                  <node concept="10M0yZ" id="4NO8rntURX4" role="37wK5m">
                    <ref role="3cqZAo" to="z60i:~RenderingHints.VALUE_TEXT_ANTIALIAS_ON" resolve="VALUE_TEXT_ANTIALIAS_ON" />
                    <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5wnrAmTRL8S" role="3cqZAp">
              <node concept="2OqwBi" id="5wnrAmTRL8T" role="3clFbG">
                <node concept="37vLTw" id="5wnrAmTRL8U" role="2Oq$k0">
                  <ref role="3cqZAo" node="4NO8rntURWK" resolve="g" />
                </node>
                <node concept="liA8E" id="5wnrAmTRL8V" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics2D.setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)" resolve="setRenderingHint" />
                  <node concept="10M0yZ" id="5wnrAmTRMIO" role="37wK5m">
                    <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                    <ref role="3cqZAo" to="z60i:~RenderingHints.KEY_FRACTIONALMETRICS" resolve="KEY_FRACTIONALMETRICS" />
                  </node>
                  <node concept="10M0yZ" id="5wnrAmTRNro" role="37wK5m">
                    <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                    <ref role="3cqZAo" to="z60i:~RenderingHints.VALUE_FRACTIONALMETRICS_ON" resolve="VALUE_FRACTIONALMETRICS_ON" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4NO8rntURX5" role="3cqZAp">
              <node concept="2OqwBi" id="4NO8rntURX6" role="3clFbG">
                <node concept="37vLTw" id="4NO8rntURX7" role="2Oq$k0">
                  <ref role="3cqZAo" node="4NO8rntURWK" resolve="g" />
                </node>
                <node concept="liA8E" id="4NO8rntURX8" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                  <node concept="37vLTw" id="5wnrAmTLIh5" role="37wK5m">
                    <ref role="3cqZAo" node="5wnrAmTLuRI" resolve="backgroundColor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4NO8rntURXa" role="3cqZAp">
              <node concept="2OqwBi" id="4NO8rntURXb" role="3clFbG">
                <node concept="37vLTw" id="4NO8rntURXc" role="2Oq$k0">
                  <ref role="3cqZAo" node="4NO8rntURWK" resolve="g" />
                </node>
                <node concept="liA8E" id="4NO8rntURXd" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape)" resolve="fill" />
                  <node concept="2ShNRf" id="4NO8rntURXe" role="37wK5m">
                    <node concept="1pGfFk" id="4NO8rntURXf" role="2ShVmc">
                      <ref role="37wK5l" to="fbzs:~RoundRectangle2D$Double.&lt;init&gt;(double,double,double,double,double,double)" resolve="RoundRectangle2D.Double" />
                      <node concept="37vLTw" id="4NO8rntURXg" role="37wK5m">
                        <ref role="3cqZAo" node="4NO8rntURWE" resolve="x" />
                      </node>
                      <node concept="37vLTw" id="4NO8rntURXh" role="37wK5m">
                        <ref role="3cqZAo" node="4NO8rntURWG" resolve="y" />
                      </node>
                      <node concept="1rXfSq" id="4NO8rntURXi" role="37wK5m">
                        <ref role="37wK5l" node="4NO8rntURXS" resolve="getIconWidth" />
                      </node>
                      <node concept="1rXfSq" id="4NO8rntURXj" role="37wK5m">
                        <ref role="37wK5l" node="4NO8rntURXY" resolve="getIconHeight" />
                      </node>
                      <node concept="3cmrfG" id="4NO8rntURXk" role="37wK5m">
                        <property role="3cmrfH" value="5" />
                      </node>
                      <node concept="3cmrfG" id="4NO8rntURXl" role="37wK5m">
                        <property role="3cmrfH" value="5" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4NO8rntURXm" role="3cqZAp">
              <node concept="2OqwBi" id="4NO8rntURXn" role="3clFbG">
                <node concept="37vLTw" id="4NO8rntURXo" role="2Oq$k0">
                  <ref role="3cqZAo" node="4NO8rntURWK" resolve="g" />
                </node>
                <node concept="liA8E" id="4NO8rntURXp" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.setFont(java.awt.Font)" resolve="setFont" />
                  <node concept="2ShNRf" id="4NO8rntURXq" role="37wK5m">
                    <node concept="1pGfFk" id="4NO8rntURXr" role="2ShVmc">
                      <ref role="37wK5l" to="z60i:~Font.&lt;init&gt;(java.lang.String,int,int)" resolve="Font" />
                      <node concept="Xl_RD" id="4NO8rntURXs" role="37wK5m">
                        <property role="Xl_RC" value="Arial" />
                      </node>
                      <node concept="10M0yZ" id="4NO8rntURXt" role="37wK5m">
                        <ref role="3cqZAo" to="z60i:~Font.BOLD" resolve="BOLD" />
                        <ref role="1PxDUh" to="z60i:~Font" resolve="Font" />
                      </node>
                      <node concept="37vLTw" id="4NO8rntVj7K" role="37wK5m">
                        <ref role="3cqZAo" node="4NO8rntV1_Y" resolve="fontSize" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4NO8rntURXv" role="3cqZAp">
              <node concept="2OqwBi" id="4NO8rntURXw" role="3clFbG">
                <node concept="37vLTw" id="4NO8rntURXx" role="2Oq$k0">
                  <ref role="3cqZAo" node="4NO8rntURWK" resolve="g" />
                </node>
                <node concept="liA8E" id="4NO8rntURXy" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                  <node concept="37vLTw" id="5wnrAmTLIIu" role="37wK5m">
                    <ref role="3cqZAo" node="5wnrAmTLx0I" resolve="foregroundColor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4NO8rntURXC" role="3cqZAp">
              <node concept="2OqwBi" id="4NO8rntURXD" role="3clFbG">
                <node concept="37vLTw" id="4NO8rntURXE" role="2Oq$k0">
                  <ref role="3cqZAo" node="4NO8rntURWK" resolve="g" />
                </node>
                <node concept="liA8E" id="4NO8rntURXF" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics2D.drawString(java.lang.String,float,float)" resolve="drawString" />
                  <node concept="37vLTw" id="4NO8rntVech" role="37wK5m">
                    <ref role="3cqZAo" node="4NO8rntUXoV" resolve="letter" />
                  </node>
                  <node concept="3cpWs3" id="4NO8rntURXH" role="37wK5m">
                    <node concept="37vLTw" id="4NO8rntVfMD" role="3uHU7w">
                      <ref role="3cqZAo" node="4NO8rntUZnr" resolve="offsetX" />
                    </node>
                    <node concept="37vLTw" id="4NO8rntURXJ" role="3uHU7B">
                      <ref role="3cqZAo" node="4NO8rntURWE" resolve="x" />
                    </node>
                  </node>
                  <node concept="3cpWs3" id="4NO8rntURXK" role="37wK5m">
                    <node concept="37vLTw" id="4NO8rntVhsy" role="3uHU7w">
                      <ref role="3cqZAo" node="4NO8rntV0xd" resolve="offsetY" />
                    </node>
                    <node concept="37vLTw" id="4NO8rntURXM" role="3uHU7B">
                      <ref role="3cqZAo" node="4NO8rntURWG" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="dK2I$ZnEIQz" role="1zxBo6">
            <node concept="3clFbS" id="4NO8rntURXN" role="1wplMD">
              <node concept="3clFbF" id="4NO8rntURXO" role="3cqZAp">
                <node concept="2OqwBi" id="4NO8rntURXP" role="3clFbG">
                  <node concept="37vLTw" id="4NO8rntURXQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="4NO8rntURWK" resolve="g" />
                  </node>
                  <node concept="liA8E" id="4NO8rntURXR" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.dispose()" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4NO8rntURXS" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getIconWidth" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4NO8rntURXT" role="1B3o_S" />
      <node concept="10Oyi0" id="4NO8rntURXU" role="3clF45" />
      <node concept="3clFbS" id="4NO8rntURXV" role="3clF47">
        <node concept="3clFbF" id="4NO8rntURXW" role="3cqZAp">
          <node concept="3cmrfG" id="4NO8rntURXX" role="3clFbG">
            <property role="3cmrfH" value="16" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="4NO8rntURXY" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getIconHeight" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="4NO8rntURXZ" role="1B3o_S" />
      <node concept="10Oyi0" id="4NO8rntURY0" role="3clF45" />
      <node concept="3clFbS" id="4NO8rntURY1" role="3clF47">
        <node concept="3clFbF" id="4NO8rntURY2" role="3cqZAp">
          <node concept="3cmrfG" id="4NO8rntURY3" role="3clFbG">
            <property role="3cmrfH" value="16" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4NO8rntUJNt" role="1B3o_S" />
    <node concept="3uibUv" id="4NO8rntUPV_" role="EKbjA">
      <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
    </node>
  </node>
  <node concept="3HP615" id="B8a55Urgn8">
    <property role="TrG5h" value="IUserObjectContainer" />
    <property role="3GE5qa" value="userobject" />
    <node concept="3clFb_" id="B8a55UrhHy" role="jymVt">
      <property role="TrG5h" value="putUserObject" />
      <node concept="37vLTG" id="B8a55UrhJ7" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="B8a55UrhJM" role="1tU5fm">
          <ref role="3uigEE" node="B8a55Urgo1" resolve="UserObjectKey" />
          <node concept="16syzq" id="B8a55UrhLr" role="11_B2D">
            <ref role="16sUi3" node="B8a55UrhKF" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="B8a55UrhLT" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="16syzq" id="B8a55UrhMA" role="1tU5fm">
          <ref role="16sUi3" node="B8a55UrhKF" resolve="T" />
        </node>
      </node>
      <node concept="3cqZAl" id="B8a55UrhH$" role="3clF45" />
      <node concept="3Tm1VV" id="B8a55UrhH_" role="1B3o_S" />
      <node concept="3clFbS" id="B8a55UrhHA" role="3clF47" />
      <node concept="16euLQ" id="B8a55UrhKF" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="3clFb_" id="B8a55UrhNn" role="jymVt">
      <property role="TrG5h" value="getUserObject" />
      <node concept="37vLTG" id="B8a55UrhNo" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="B8a55UrhNp" role="1tU5fm">
          <ref role="3uigEE" node="B8a55Urgo1" resolve="UserObjectKey" />
          <node concept="16syzq" id="B8a55UrhNq" role="11_B2D">
            <ref role="16sUi3" node="B8a55UrhNw" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="B8a55UrhPm" role="3clF45">
        <ref role="16sUi3" node="B8a55UrhNw" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="B8a55UrhNu" role="1B3o_S" />
      <node concept="3clFbS" id="B8a55UrhNv" role="3clF47" />
      <node concept="16euLQ" id="B8a55UrhNw" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="3Tm1VV" id="B8a55Urgn9" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="B8a55Urgo1">
    <property role="3GE5qa" value="userobject" />
    <property role="TrG5h" value="UserObjectKey" />
    <node concept="312cEg" id="B8a55Urgp4" role="jymVt">
      <property role="TrG5h" value="id" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="B8a55Urgp5" role="1B3o_S" />
      <node concept="17QB3L" id="B8a55Urgpw" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="B8a55UrgpP" role="jymVt" />
    <node concept="3Tm1VV" id="B8a55Urgo2" role="1B3o_S" />
    <node concept="16euLQ" id="B8a55Urgoy" role="16eVyc">
      <property role="TrG5h" value="E" />
    </node>
    <node concept="3clFbW" id="B8a55Urgqq" role="jymVt">
      <node concept="3cqZAl" id="B8a55Urgqr" role="3clF45" />
      <node concept="3Tm1VV" id="B8a55Urgqs" role="1B3o_S" />
      <node concept="3clFbS" id="B8a55Urgqu" role="3clF47">
        <node concept="3clFbF" id="B8a55Urgqy" role="3cqZAp">
          <node concept="37vLTI" id="B8a55Urgq$" role="3clFbG">
            <node concept="37vLTw" id="B8a55UrgqC" role="37vLTJ">
              <ref role="3cqZAo" node="B8a55Urgp4" resolve="id" />
            </node>
            <node concept="37vLTw" id="B8a55UrgqD" role="37vLTx">
              <ref role="3cqZAo" node="B8a55Urgqx" resolve="id1" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="B8a55Urgqx" role="3clF46">
        <property role="TrG5h" value="id1" />
        <node concept="17QB3L" id="B8a55Urgqw" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="B8a55UrgtR" role="jymVt" />
    <node concept="3clFb_" id="B8a55UrgvL" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="B8a55UrgvM" role="3clF45" />
      <node concept="3Tm1VV" id="B8a55UrgvN" role="1B3o_S" />
      <node concept="3clFbS" id="B8a55UrgvO" role="3clF47">
        <node concept="3clFbJ" id="B8a55UrgvP" role="3cqZAp">
          <node concept="3clFbS" id="B8a55UrgvQ" role="3clFbx">
            <node concept="3cpWs6" id="B8a55UrgvR" role="3cqZAp">
              <node concept="3clFbT" id="B8a55UrgvS" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="B8a55UrgvT" role="3clFbw">
            <node concept="Xjq3P" id="B8a55UrgvK" role="3uHU7B" />
            <node concept="37vLTw" id="B8a55UrgvU" role="3uHU7w">
              <ref role="3cqZAo" node="B8a55Urgwh" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="B8a55UrgvV" role="3cqZAp">
          <node concept="3clFbS" id="B8a55UrgvW" role="3clFbx">
            <node concept="3cpWs6" id="B8a55UrgvX" role="3cqZAp">
              <node concept="3clFbT" id="B8a55UrgvY" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="B8a55UrgvZ" role="3clFbw">
            <node concept="3clFbC" id="B8a55Urgw0" role="3uHU7B">
              <node concept="37vLTw" id="B8a55Urgw1" role="3uHU7B">
                <ref role="3cqZAo" node="B8a55Urgwh" resolve="o" />
              </node>
              <node concept="10Nm6u" id="B8a55Urgw2" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="B8a55Urgw3" role="3uHU7w">
              <node concept="2OqwBi" id="B8a55Urgw4" role="3uHU7B">
                <node concept="Xjq3P" id="B8a55Urgw5" role="2Oq$k0" />
                <node concept="liA8E" id="B8a55Urgw6" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="2OqwBi" id="B8a55Urgw7" role="3uHU7w">
                <node concept="37vLTw" id="B8a55Urgw8" role="2Oq$k0">
                  <ref role="3cqZAo" node="B8a55Urgwh" resolve="o" />
                </node>
                <node concept="liA8E" id="B8a55Urgw9" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="B8a55Urgwa" role="3cqZAp" />
        <node concept="3cpWs8" id="B8a55Urgwb" role="3cqZAp">
          <node concept="3cpWsn" id="B8a55Urgwc" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="B8a55Urgwd" role="1tU5fm">
              <ref role="3uigEE" node="B8a55Urgo1" resolve="UserObjectKey" />
            </node>
            <node concept="10QFUN" id="B8a55Urgwe" role="33vP2m">
              <node concept="3uibUv" id="B8a55Urgwf" role="10QFUM">
                <ref role="3uigEE" node="B8a55Urgo1" resolve="UserObjectKey" />
              </node>
              <node concept="37vLTw" id="B8a55Urgwg" role="10QFUP">
                <ref role="3cqZAo" node="B8a55Urgwh" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="B8a55Urgwr" role="3cqZAp">
          <node concept="3clFbS" id="B8a55Urgws" role="3clFbx">
            <node concept="3cpWs6" id="B8a55Urgwt" role="3cqZAp">
              <node concept="3clFbT" id="B8a55Urgwu" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3K4zz7" id="B8a55Urgwv" role="3clFbw">
            <node concept="3fqX7Q" id="B8a55Urgww" role="3K4E3e">
              <node concept="2OqwBi" id="B8a55Urgwx" role="3fr31v">
                <node concept="liA8E" id="B8a55Urgwy" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="B8a55Urgwz" role="37wK5m">
                    <node concept="37vLTw" id="B8a55Urgwk" role="2Oq$k0">
                      <ref role="3cqZAo" node="B8a55Urgwc" resolve="that" />
                    </node>
                    <node concept="2OwXpG" id="B8a55Urgwn" role="2OqNvi">
                      <ref role="2Oxat5" node="B8a55Urgp4" resolve="id" />
                    </node>
                  </node>
                </node>
                <node concept="1eOMI4" id="B8a55Urgw$" role="2Oq$k0">
                  <node concept="10QFUN" id="B8a55Urgw_" role="1eOMHV">
                    <node concept="3uibUv" id="B8a55UrgwA" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="37vLTw" id="B8a55Urgwo" role="10QFUP">
                      <ref role="3cqZAo" node="B8a55Urgp4" resolve="id" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="B8a55UrgwB" role="3K4Cdx">
              <node concept="10Nm6u" id="B8a55UrgwC" role="3uHU7w" />
              <node concept="37vLTw" id="B8a55Urgwp" role="3uHU7B">
                <ref role="3cqZAo" node="B8a55Urgp4" resolve="id" />
              </node>
            </node>
            <node concept="3y3z36" id="B8a55UrgwD" role="3K4GZi">
              <node concept="10Nm6u" id="B8a55UrgwE" role="3uHU7w" />
              <node concept="2OqwBi" id="B8a55UrgwF" role="3uHU7B">
                <node concept="37vLTw" id="B8a55UrgwG" role="2Oq$k0">
                  <ref role="3cqZAo" node="B8a55Urgwc" resolve="that" />
                </node>
                <node concept="2OwXpG" id="B8a55Urgwq" role="2OqNvi">
                  <ref role="2Oxat5" node="B8a55Urgp4" resolve="id" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="B8a55UrgwH" role="3cqZAp" />
        <node concept="3clFbF" id="B8a55UrgwI" role="3cqZAp">
          <node concept="3clFbT" id="B8a55UrgwJ" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="B8a55Urgwh" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="B8a55Urgwi" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="B8a55Urgwj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="B8a55Urhaa" role="jymVt" />
    <node concept="3clFb_" id="B8a55UrgwK" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="B8a55UrgwL" role="3clF45" />
      <node concept="3Tm1VV" id="B8a55UrgwM" role="1B3o_S" />
      <node concept="3clFbS" id="B8a55UrgwN" role="3clF47">
        <node concept="3cpWs8" id="B8a55UrgwP" role="3cqZAp">
          <node concept="3cpWsn" id="B8a55UrgwQ" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Oyi0" id="B8a55UrgwR" role="1tU5fm" />
            <node concept="3cmrfG" id="B8a55UrgwS" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="B8a55Urgx2" role="3cqZAp">
          <node concept="37vLTI" id="B8a55Urgx3" role="3clFbG">
            <node concept="37vLTw" id="B8a55Urgx4" role="37vLTJ">
              <ref role="3cqZAo" node="B8a55UrgwQ" resolve="result" />
            </node>
            <node concept="3cpWs3" id="B8a55Urgx5" role="37vLTx">
              <node concept="17qRlL" id="B8a55UrgwY" role="3uHU7B">
                <node concept="3cmrfG" id="B8a55UrgwZ" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="B8a55UrgwT" role="3uHU7w">
                  <ref role="3cqZAo" node="B8a55UrgwQ" resolve="result" />
                </node>
              </node>
              <node concept="1eOMI4" id="B8a55Urgx6" role="3uHU7w">
                <node concept="3K4zz7" id="B8a55Urgx7" role="1eOMHV">
                  <node concept="3cmrfG" id="B8a55Urgx8" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3y3z36" id="B8a55Urgx9" role="3K4Cdx">
                    <node concept="10Nm6u" id="B8a55Urgxa" role="3uHU7w" />
                    <node concept="37vLTw" id="B8a55Urgx0" role="3uHU7B">
                      <ref role="3cqZAo" node="B8a55Urgp4" resolve="id" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="B8a55Urgxb" role="3K4E3e">
                    <node concept="37vLTw" id="7zy9ho7BEy9" role="2Oq$k0">
                      <ref role="3cqZAo" node="B8a55Urgp4" resolve="id" />
                    </node>
                    <node concept="liA8E" id="B8a55Urgxd" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.hashCode()" resolve="hashCode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="B8a55Urgxe" role="3cqZAp">
          <node concept="37vLTw" id="B8a55Urgxf" role="3clFbG">
            <ref role="3cqZAo" node="B8a55UrgwQ" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="B8a55UrgwO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6FW8YbU5vOS">
    <property role="TrG5h" value="CommandHelper" />
    <node concept="2tJIrI" id="6FW8YbU5vPt" role="jymVt" />
    <node concept="Wx3nA" id="6HiBqPCq2iN" role="jymVt">
      <property role="TrG5h" value="timer" />
      <node concept="3uibUv" id="6HiBqPCq2iQ" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Timer" resolve="Timer" />
      </node>
      <node concept="2ShNRf" id="6HiBqPCq2iR" role="33vP2m">
        <node concept="1pGfFk" id="6HiBqPCq2iS" role="2ShVmc">
          <ref role="37wK5l" to="dxuu:~Timer.&lt;init&gt;(int,java.awt.event.ActionListener)" resolve="Timer" />
          <node concept="3cmrfG" id="6HiBqPCq2iT" role="37wK5m">
            <property role="3cmrfH" value="10" />
          </node>
          <node concept="1bVj0M" id="6HiBqPCq2iU" role="37wK5m">
            <node concept="3clFbS" id="6HiBqPCq2iV" role="1bW5cS">
              <node concept="3cpWs8" id="6HiBqPCq2iW" role="3cqZAp">
                <node concept="3cpWsn" id="6HiBqPCq2iX" role="3cpWs9">
                  <property role="TrG5h" value="project" />
                  <node concept="3uibUv" id="6HiBqPCq2iY" role="1tU5fm">
                    <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                  </node>
                  <node concept="1rXfSq" id="6HiBqPCq2iZ" role="33vP2m">
                    <ref role="37wK5l" node="6HiBqPCpI$v" resolve="getProject" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="6HiBqPCq2j0" role="3cqZAp">
                <node concept="3clFbS" id="6HiBqPCq2j1" role="3clFbx">
                  <node concept="3cpWs6" id="6HiBqPCq2j2" role="3cqZAp" />
                </node>
                <node concept="3clFbC" id="6HiBqPCq2j3" role="3clFbw">
                  <node concept="10Nm6u" id="6HiBqPCq2j4" role="3uHU7w" />
                  <node concept="37vLTw" id="6HiBqPCq2j5" role="3uHU7B">
                    <ref role="3cqZAo" node="6HiBqPCq2iX" resolve="project" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6HiBqPCq2j6" role="3cqZAp">
                <node concept="2OqwBi" id="6HiBqPCq2j7" role="3clFbG">
                  <node concept="37vLTw" id="6iwFuQBpRl3" role="2Oq$k0">
                    <ref role="3cqZAo" node="6HiBqPCq2iN" resolve="timer" />
                  </node>
                  <node concept="liA8E" id="6HiBqPCq2j9" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~Timer.stop()" resolve="stop" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="6HiBqPCq2ja" role="3cqZAp">
                <node concept="3cpWsn" id="6HiBqPCq2jb" role="3cpWs9">
                  <property role="TrG5h" value="queueCopy" />
                  <node concept="_YKpA" id="6HiBqPCq2jc" role="1tU5fm">
                    <node concept="1ajhzC" id="6HiBqPCq2jd" role="_ZDj9">
                      <node concept="3cqZAl" id="6HiBqPCq2je" role="1ajl9A" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="6HiBqPCq2jf" role="33vP2m">
                    <node concept="Tc6Ow" id="6HiBqPCq2jg" role="2ShVmc">
                      <node concept="1ajhzC" id="6HiBqPCq2jh" role="HW$YZ">
                        <node concept="3cqZAl" id="6HiBqPCq2ji" role="1ajl9A" />
                      </node>
                      <node concept="37vLTw" id="6iwFuQBpRl7" role="I$8f6">
                        <ref role="3cqZAo" node="6HiBqPCpWvQ" resolve="queue" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6HiBqPCq2jk" role="3cqZAp">
                <node concept="2OqwBi" id="6HiBqPCq2jl" role="3clFbG">
                  <node concept="37vLTw" id="6iwFuQBpRlb" role="2Oq$k0">
                    <ref role="3cqZAo" node="6HiBqPCpWvQ" resolve="queue" />
                  </node>
                  <node concept="2Kehj3" id="6HiBqPCq2jn" role="2OqNvi" />
                </node>
              </node>
              <node concept="1QHqEO" id="6HiBqPCq2jo" role="3cqZAp">
                <node concept="1QHqEC" id="6HiBqPCq2jp" role="1QHqEI">
                  <node concept="3clFbS" id="6HiBqPCq2jq" role="1bW5cS">
                    <node concept="2Gpval" id="6HiBqPCq2jr" role="3cqZAp">
                      <node concept="2GrKxI" id="6HiBqPCq2js" role="2Gsz3X">
                        <property role="TrG5h" value="r" />
                      </node>
                      <node concept="37vLTw" id="6HiBqPCq2jt" role="2GsD0m">
                        <ref role="3cqZAo" node="6HiBqPCq2jb" resolve="queueCopy" />
                      </node>
                      <node concept="3clFbS" id="6HiBqPCq2ju" role="2LFqv$">
                        <node concept="3J1_TO" id="21wzxVsXnbD" role="3cqZAp">
                          <node concept="3clFbS" id="21wzxVsXnbF" role="1zxBo7">
                            <node concept="3clFbF" id="6HiBqPCq2jv" role="3cqZAp">
                              <node concept="2OqwBi" id="6HiBqPCq2jw" role="3clFbG">
                                <node concept="2GrUjf" id="6HiBqPCq2jx" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="6HiBqPCq2js" resolve="r" />
                                </node>
                                <node concept="1Bd96e" id="6HiBqPCq2jy" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="3uVAMA" id="21wzxVsXnbG" role="1zxBo5">
                            <node concept="XOnhg" id="21wzxVsXnbI" role="1zc67B">
                              <property role="3TUv4t" value="false" />
                              <property role="TrG5h" value="ex" />
                              <node concept="nSUau" id="8t_BLeg3qer" role="1tU5fm">
                                <node concept="3uibUv" id="7WsYfpFnON1" role="nSUat">
                                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbS" id="21wzxVsXnbM" role="1zc67A">
                              <node concept="RRSsy" id="7WsYfpFnRSM" role="3cqZAp">
                                <property role="RRSoG" value="gZ5fh_4/error" />
                                <node concept="Xl_RD" id="7WsYfpFnRSO" role="RRSoy" />
                                <node concept="37vLTw" id="7WsYfpFnRSQ" role="RRSow">
                                  <ref role="3cqZAo" node="21wzxVsXnbI" resolve="ex" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6HiBqPCq2jz" role="ukAjM">
                  <node concept="37vLTw" id="6HiBqPCq2j$" role="2Oq$k0">
                    <ref role="3cqZAo" node="6HiBqPCq2iX" resolve="project" />
                  </node>
                  <node concept="liA8E" id="6HiBqPCq2j_" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="6HiBqPCq2jA" role="1bW2Oz">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="6HiBqPCq2jB" role="1tU5fm">
                <ref role="3uigEE" to="hyam:~ActionEvent" resolve="ActionEvent" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6HiBqPCq2iP" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="6HiBqPCpWvQ" role="jymVt">
      <property role="TrG5h" value="queue" />
      <node concept="_YKpA" id="6HiBqPCnRH4" role="1tU5fm">
        <node concept="1ajhzC" id="6HiBqPCnRIi" role="_ZDj9">
          <node concept="3cqZAl" id="6HiBqPCnRJb" role="1ajl9A" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6HiBqPCnREB" role="1B3o_S" />
      <node concept="2ShNRf" id="6HiBqPCnRNI" role="33vP2m">
        <node concept="Tc6Ow" id="6HiBqPCnRM6" role="2ShVmc">
          <node concept="1ajhzC" id="6HiBqPCnRM7" role="HW$YZ">
            <node concept="3cqZAl" id="6HiBqPCnRM8" role="1ajl9A" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6HiBqPCnMVd" role="jymVt" />
    <node concept="2YIFZL" id="6FW8YbU5wHo" role="jymVt">
      <property role="TrG5h" value="runInCommand" />
      <node concept="3clFbS" id="6FW8YbU5wyh" role="3clF47">
        <node concept="3cpWs8" id="6FW8YbU5wyp" role="3cqZAp">
          <node concept="3cpWsn" id="6FW8YbU5wyq" role="3cpWs9">
            <property role="TrG5h" value="project" />
            <node concept="3uibUv" id="6FW8YbU5wyr" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="1rXfSq" id="6HiBqPCpWfv" role="33vP2m">
              <ref role="37wK5l" node="6HiBqPCpI$v" resolve="getProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6FW8YbU5wyv" role="3cqZAp">
          <node concept="3clFbS" id="6FW8YbU5wyw" role="3clFbx">
            <node concept="3clFbF" id="6HiBqPCpWYo" role="3cqZAp">
              <node concept="2OqwBi" id="6HiBqPCpXLG" role="3clFbG">
                <node concept="37vLTw" id="6iwFuQBpRlf" role="2Oq$k0">
                  <ref role="3cqZAo" node="6HiBqPCpWvQ" resolve="queue" />
                </node>
                <node concept="TSZUe" id="6HiBqPCq1RJ" role="2OqNvi">
                  <node concept="37vLTw" id="6HiBqPCq23N" role="25WWJ7">
                    <ref role="3cqZAo" node="6FW8YbU5wyc" resolve="runnable" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6HiBqPCq47w" role="3cqZAp">
              <node concept="3clFbS" id="6HiBqPCq47y" role="3clFbx">
                <node concept="3clFbF" id="6HiBqPCq6_8" role="3cqZAp">
                  <node concept="2OqwBi" id="6HiBqPCq6Mn" role="3clFbG">
                    <node concept="37vLTw" id="6iwFuQBpRlj" role="2Oq$k0">
                      <ref role="3cqZAo" node="6HiBqPCq2iN" resolve="timer" />
                    </node>
                    <node concept="liA8E" id="6HiBqPCq6VL" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~Timer.start()" resolve="start" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="6HiBqPCq6uq" role="3clFbw">
                <node concept="2OqwBi" id="6HiBqPCq6us" role="3fr31v">
                  <node concept="37vLTw" id="6iwFuQBpRln" role="2Oq$k0">
                    <ref role="3cqZAo" node="6HiBqPCq2iN" resolve="timer" />
                  </node>
                  <node concept="liA8E" id="6HiBqPCq6uu" role="2OqNvi">
                    <ref role="37wK5l" to="dxuu:~Timer.isRunning()" resolve="isRunning" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6FW8YbU5wyD" role="3clFbw">
            <node concept="10Nm6u" id="6FW8YbU5wyE" role="3uHU7w" />
            <node concept="37vLTw" id="6FW8YbU5wyF" role="3uHU7B">
              <ref role="3cqZAo" node="6FW8YbU5wyq" resolve="project" />
            </node>
          </node>
          <node concept="9aQIb" id="6FW8YbU5wyG" role="9aQIa">
            <node concept="3clFbS" id="6FW8YbU5wyH" role="9aQI4">
              <node concept="3clFbJ" id="3zTK92L62TQ" role="3cqZAp">
                <node concept="3clFbS" id="3zTK92L62TS" role="3clFbx">
                  <node concept="1QHqEO" id="3zTK92L63xK" role="3cqZAp">
                    <node concept="1QHqEC" id="3zTK92L63xL" role="1QHqEI">
                      <node concept="3clFbS" id="3zTK92L63xM" role="1bW5cS">
                        <node concept="3clFbF" id="3zTK92L63xN" role="3cqZAp">
                          <node concept="2OqwBi" id="3zTK92L63xO" role="3clFbG">
                            <node concept="37vLTw" id="3zTK92L63xP" role="2Oq$k0">
                              <ref role="3cqZAo" node="6FW8YbU5wyc" resolve="runnable" />
                            </node>
                            <node concept="1Bd96e" id="3zTK92L63xQ" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3zTK92L63xR" role="ukAjM">
                      <node concept="37vLTw" id="3zTK92L63xS" role="2Oq$k0">
                        <ref role="3cqZAo" node="6FW8YbU5wyq" resolve="project" />
                      </node>
                      <node concept="liA8E" id="3zTK92L63xT" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="3zTK92L62Wi" role="3clFbw">
                  <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
                  <ref role="37wK5l" to="3a50:~ThreadUtils.isInEDT()" resolve="isInEDT" />
                </node>
                <node concept="9aQIb" id="3zTK92L630j" role="9aQIa">
                  <node concept="3clFbS" id="3zTK92L630k" role="9aQI4">
                    <node concept="3clFbF" id="3zTK92L632j" role="3cqZAp">
                      <node concept="2OqwBi" id="3zTK92L63gl" role="3clFbG">
                        <node concept="2YIFZM" id="3zTK92L632B" role="2Oq$k0">
                          <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                          <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                        </node>
                        <node concept="liA8E" id="3zTK92L63u4" role="2OqNvi">
                          <ref role="37wK5l" to="bd8o:~Application.invokeAndWait(java.lang.Runnable)" resolve="invokeAndWait" />
                          <node concept="1bVj0M" id="3zTK92L63wf" role="37wK5m">
                            <property role="3yWfEV" value="true" />
                            <node concept="3clFbS" id="3zTK92L63wg" role="1bW5cS">
                              <node concept="1QHqEO" id="6FW8YbU5wyI" role="3cqZAp">
                                <node concept="1QHqEC" id="6FW8YbU5wyJ" role="1QHqEI">
                                  <node concept="3clFbS" id="6FW8YbU5wyK" role="1bW5cS">
                                    <node concept="3clFbF" id="6FW8YbU5wyL" role="3cqZAp">
                                      <node concept="2OqwBi" id="6FW8YbU5wyM" role="3clFbG">
                                        <node concept="37vLTw" id="6FW8YbU5wyN" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6FW8YbU5wyc" resolve="runnable" />
                                        </node>
                                        <node concept="1Bd96e" id="6FW8YbU5wyO" role="2OqNvi" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="6FW8YbU5wyP" role="ukAjM">
                                  <node concept="37vLTw" id="6FW8YbU5wyQ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6FW8YbU5wyq" resolve="project" />
                                  </node>
                                  <node concept="liA8E" id="6FW8YbU5wyR" role="2OqNvi">
                                    <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
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
      <node concept="37vLTG" id="6FW8YbU5wyc" role="3clF46">
        <property role="TrG5h" value="runnable" />
        <node concept="1ajhzC" id="6FW8YbU5wyd" role="1tU5fm">
          <node concept="3cqZAl" id="6FW8YbU5wye" role="1ajl9A" />
        </node>
      </node>
      <node concept="3cqZAl" id="6FW8YbU5wyf" role="3clF45" />
      <node concept="3Tm1VV" id="6FW8YbU5wRP" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6HiBqPCpBVg" role="jymVt" />
    <node concept="2YIFZL" id="6HiBqPCpI$v" role="jymVt">
      <property role="TrG5h" value="getProject" />
      <node concept="3clFbS" id="6HiBqPCpCC9" role="3clF47">
        <node concept="3cpWs8" id="6HiBqPCpGBm" role="3cqZAp">
          <node concept="3cpWsn" id="6HiBqPCpGBn" role="3cpWs9">
            <property role="TrG5h" value="projects" />
            <node concept="_YKpA" id="6HiBqPCpGBo" role="1tU5fm">
              <node concept="3uibUv" id="6HiBqPCpGBp" role="_ZDj9">
                <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
              </node>
            </node>
            <node concept="2OqwBi" id="6HiBqPCpGBq" role="33vP2m">
              <node concept="2YIFZM" id="6HiBqPCpGBr" role="2Oq$k0">
                <ref role="37wK5l" to="z1c3:~ProjectManager.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="z1c3:~ProjectManager" resolve="ProjectManager" />
              </node>
              <node concept="liA8E" id="6HiBqPCpGBs" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~ProjectManager.getOpenedProjects()" resolve="getOpenedProjects" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6HiBqPCpHG4" role="3cqZAp">
          <node concept="2OqwBi" id="6HiBqPCpGBw" role="3clFbG">
            <node concept="37vLTw" id="6HiBqPCpGBx" role="2Oq$k0">
              <ref role="3cqZAo" node="6HiBqPCpGBn" resolve="projects" />
            </node>
            <node concept="1uHKPH" id="6HiBqPCpGBy" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6HiBqPCpGJS" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tmbuc" id="6HiBqPCpHS$" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6FW8YbU5vPy" role="jymVt" />
    <node concept="3Tm1VV" id="6FW8YbU5vOT" role="1B3o_S" />
  </node>
</model>

