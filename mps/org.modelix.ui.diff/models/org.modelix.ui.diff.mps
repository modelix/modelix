<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ab9ceea2-f32a-4ea6-be78-3e6c2d4ef84b(org.modelix.ui.diff)">
  <persistence version="9" />
  <languages>
    <use id="654422bf-e75f-44dc-936d-188890a746ce" name="de.slisson.mps.reflection" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="5dc5fc0d-37ef-4782-8192-8b5ce1f69f80" name="jetbrains.mps.baseLanguage.extensionMethods" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="jmi8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.util(MPS.IDEA/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="p37l" ref="r:df1b052a-af27-4b87-80fc-1492fa2192be(jetbrains.mps.vcs.diff.ui)" />
    <import index="jlff" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vfs(MPS.IDEA/)" />
    <import index="tkms" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.dvcs.repo(MPS.IDEA/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="e0ho" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.vcs.log.impl(MPS.IDEA/)" />
    <import index="yt4f" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff(MPS.IDEA/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="3tm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs.changes.actions.diff(MPS.IDEA/)" />
    <import index="phib" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff.requests(MPS.IDEA/)" />
    <import index="xygl" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.progress(MPS.IDEA/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="qyr2" ref="r:f7252e75-44f2-46f6-9600-c9b291e7dd5f(jetbrains.mps.vcs.platform.integration)" />
    <import index="1037" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs.changes(MPS.IDEA/)" />
    <import index="jlcu" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vcs(MPS.IDEA/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="bxo2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence.datasource(MPS.OpenAPI/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="hdhb" ref="r:07568eb8-30c0-4bb3-9dcb-50ee4b8de59a(jetbrains.mps.vcs.diff.ui.common)" />
    <import index="rgfa" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.tree(JDK/)" />
    <import index="jan3" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.image(JDK/)" />
    <import index="g1qu" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.ui(MPS.IDEA/)" />
    <import index="oqcp" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.imageio(JDK/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="iz75" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff.chains(MPS.IDEA/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="ixe9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.concurrency(MPS.IDEA/)" />
    <import index="nwfd" ref="fc3c2aa8-0d4b-463f-a774-40d450aa04a0/java:javax.servlet.http(org.modelix.jetty/)" />
    <import index="opgt" ref="fc3c2aa8-0d4b-463f-a774-40d450aa04a0/java:javax.servlet(org.modelix.jetty/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="7g4e" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.vcsUtil(MPS.IDEA/)" />
    <import index="fvx8" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:sun.awt(JDK/)" />
    <import index="l2n2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.peer(JDK/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="ksd0" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff.tools.util(MPS.IDEA/)" />
    <import index="xo69" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.diff.util(MPS.IDEA/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="mrnd" ref="f57286e3-4e19-4d8d-8045-3900761f6530/java:git4idea.history.browser(jetbrains.mps.git4idea.stubs/)" />
    <import index="oy9a" ref="f57286e3-4e19-4d8d-8045-3900761f6530/java:git4idea.changes(jetbrains.mps.git4idea.stubs/)" />
    <import index="5mlj" ref="f57286e3-4e19-4d8d-8045-3900761f6530/java:git4idea.repo(jetbrains.mps.git4idea.stubs/)" />
    <import index="hr4p" ref="f57286e3-4e19-4d8d-8045-3900761f6530/java:git4idea(jetbrains.mps.git4idea.stubs/)" />
    <import index="m8n3" ref="f57286e3-4e19-4d8d-8045-3900761f6530/java:git4idea.history(jetbrains.mps.git4idea.stubs/)" />
    <import index="fglx" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.fileTypes(MPS.IDEA/)" implicit="true" />
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
    <language id="654422bf-e75f-44dc-936d-188890a746ce" name="de.slisson.mps.reflection">
      <concept id="8473566765275063380" name="de.slisson.mps.reflection.structure.ReflectionFieldAccess" flags="ng" index="1PnCL0">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="8473566765277240526" name="de.slisson.mps.reflection.structure.ReflectionMethodCall" flags="ng" index="1PvZjq" />
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="5279705229678483897" name="jetbrains.mps.baseLanguage.structure.FloatingPointFloatConstant" flags="nn" index="2$xPTn">
        <property id="5279705229678483899" name="value" index="2$xPTl" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat6" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
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
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
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
      <concept id="1214918975462" name="jetbrains.mps.baseLanguage.structure.PostfixDecrementExpression" flags="nn" index="3uO5VW" />
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1170075670744" name="jetbrains.mps.baseLanguage.structure.SynchronizedStatement" flags="nn" index="1HWtB8">
        <child id="1170075728144" name="expression" index="1HWFw0" />
        <child id="1170075736412" name="block" index="1HWHxc" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367509" name="finallyClause" index="1zxBo6" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
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
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e" />
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
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
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
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
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
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
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="4611582986551314327" name="jetbrains.mps.baseLanguage.collections.structure.OfTypeOperation" flags="nn" index="UnYns">
        <child id="4611582986551314344" name="requestedType" index="UnYnz" />
      </concept>
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
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
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1208542034276" name="jetbrains.mps.baseLanguage.collections.structure.MapClearOperation" flags="nn" index="1yHZxX" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="31378964227347002" name="jetbrains.mps.baseLanguage.collections.structure.SelectNotNullOperation" flags="ng" index="1KnU$U" />
      <concept id="1522217801069359738" name="jetbrains.mps.baseLanguage.collections.structure.ReduceLeftOperation" flags="nn" index="1MCZdW" />
      <concept id="1522217801069396578" name="jetbrains.mps.baseLanguage.collections.structure.FoldLeftOperation" flags="nn" index="1MD8d$">
        <child id="1522217801069421796" name="seed" index="1MDeny" />
      </concept>
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
    </language>
  </registry>
  <node concept="312cEu" id="2QFzCYK30u2">
    <property role="TrG5h" value="DiffImages" />
    <node concept="312cEg" id="4kPMkltJPHc" role="jymVt">
      <property role="TrG5h" value="project" />
      <node concept="3Tm6S6" id="4kPMkltJPHd" role="1B3o_S" />
      <node concept="3uibUv" id="4kPMkltJQMi" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="2tJIrI" id="4kPMkltJRj1" role="jymVt" />
    <node concept="3clFbW" id="4kPMkltJUzr" role="jymVt">
      <node concept="3cqZAl" id="4kPMkltJUzs" role="3clF45" />
      <node concept="3Tm1VV" id="4kPMkltJUzt" role="1B3o_S" />
      <node concept="3clFbS" id="4kPMkltJUzv" role="3clF47">
        <node concept="1VxSAg" id="4kPMkltJVWo" role="3cqZAp">
          <ref role="37wK5l" node="4kPMkltJSq1" resolve="DiffImages" />
          <node concept="2OqwBi" id="27MnIra6JrX" role="37wK5m">
            <node concept="2OqwBi" id="27MnIra6ZKg" role="2Oq$k0">
              <node concept="2OqwBi" id="27MnIra6IYn" role="2Oq$k0">
                <node concept="2OqwBi" id="4kPMkltJWku" role="2Oq$k0">
                  <node concept="2YIFZM" id="4kPMkltJWkv" role="2Oq$k0">
                    <ref role="1Pybhc" to="4nm9:~ProjectManager" resolve="ProjectManager" />
                    <ref role="37wK5l" to="4nm9:~ProjectManager.getInstance()" resolve="getInstance" />
                  </node>
                  <node concept="liA8E" id="27MnIra6IS5" role="2OqNvi">
                    <ref role="37wK5l" to="4nm9:~ProjectManager.getOpenProjects()" resolve="getOpenProjects" />
                  </node>
                </node>
                <node concept="39bAoz" id="27MnIra6J97" role="2OqNvi" />
              </node>
              <node concept="3QWeyG" id="27MnIra705n" role="2OqNvi">
                <node concept="2ShNRf" id="27MnIra70eP" role="576Qk">
                  <node concept="2HTt$P" id="27MnIra71EE" role="2ShVmc">
                    <node concept="3uibUv" id="27MnIra72sU" role="2HTBi0">
                      <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
                    </node>
                    <node concept="2OqwBi" id="27MnIra737w" role="2HTEbv">
                      <node concept="2YIFZM" id="27MnIra72ZG" role="2Oq$k0">
                        <ref role="37wK5l" to="4nm9:~ProjectManager.getInstance()" resolve="getInstance" />
                        <ref role="1Pybhc" to="4nm9:~ProjectManager" resolve="ProjectManager" />
                      </node>
                      <node concept="liA8E" id="27MnIra73au" role="2OqNvi">
                        <ref role="37wK5l" to="4nm9:~ProjectManager.getDefaultProject()" resolve="getDefaultProject" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1uHKPH" id="27MnIra6JGC" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4kPMkltJXHI" role="jymVt" />
    <node concept="3clFbW" id="4kPMkltJSq1" role="jymVt">
      <node concept="3cqZAl" id="4kPMkltJSq2" role="3clF45" />
      <node concept="3Tm1VV" id="4kPMkltJSq3" role="1B3o_S" />
      <node concept="3clFbS" id="4kPMkltJSq5" role="3clF47">
        <node concept="3clFbF" id="4kPMkltJSq9" role="3cqZAp">
          <node concept="37vLTI" id="4kPMkltJSqb" role="3clFbG">
            <node concept="2OqwBi" id="4kPMkltJSqf" role="37vLTJ">
              <node concept="Xjq3P" id="4kPMkltJSqg" role="2Oq$k0" />
              <node concept="2OwXpG" id="4kPMkltJSqh" role="2OqNvi">
                <ref role="2Oxat6" node="4kPMkltJPHc" resolve="project" />
              </node>
            </node>
            <node concept="37vLTw" id="4kPMkltJSqi" role="37vLTx">
              <ref role="3cqZAo" node="4kPMkltJSq8" resolve="project" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1RZ$z1qe_5I" role="3cqZAp">
          <node concept="2OqwBi" id="1RZ$z1qe_5J" role="3clFbG">
            <node concept="2YIFZM" id="1RZ$z1qe_5K" role="2Oq$k0">
              <ref role="1Pybhc" to="jmi8:~PropertiesComponent" resolve="PropertiesComponent" />
              <ref role="37wK5l" to="jmi8:~PropertiesComponent.getInstance()" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="1RZ$z1qe_5L" role="2OqNvi">
              <ref role="37wK5l" to="jmi8:~PropertiesComponent.setValue(java.lang.String,boolean,boolean)" resolve="setValue" />
              <node concept="3cpWs3" id="1RZ$z1qe_5M" role="37wK5m">
                <node concept="2OqwBi" id="1RZ$z1qe_5N" role="3uHU7B">
                  <node concept="3VsKOn" id="1RZ$z1qe_5O" role="2Oq$k0">
                    <ref role="3VsUkX" to="p37l:7DvDtq9MCV9" resolve="RootDifferencePane" />
                  </node>
                  <node concept="liA8E" id="1RZ$z1qe_5P" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
                  </node>
                </node>
                <node concept="Xl_RD" id="1RZ$z1qe_5Q" role="3uHU7w">
                  <property role="Xl_RC" value="ShowInspector" />
                </node>
              </node>
              <node concept="3clFbT" id="1RZ$z1qe_5R" role="37wK5m" />
              <node concept="3clFbT" id="27MnIr9WVaa" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4kPMkltJSq8" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="4kPMkltJSq7" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="27MnIra6$qB" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4kPMkltJTxI" role="jymVt" />
    <node concept="2YIFZL" id="27MnIr9XMuR" role="jymVt">
      <property role="TrG5h" value="getPropertyOrEnv" />
      <node concept="37vLTG" id="27MnIr9XMuS" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="27MnIr9XX13" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="27MnIr9XMuU" role="3clF47">
        <node concept="3cpWs8" id="27MnIr9XMuW" role="3cqZAp">
          <node concept="3cpWsn" id="27MnIr9XMuV" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="17QB3L" id="27MnIr9XTyF" role="1tU5fm" />
            <node concept="2YIFZM" id="27MnIr9XP0X" role="33vP2m">
              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
              <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String)" resolve="getProperty" />
              <node concept="37vLTw" id="27MnIr9XP0Y" role="37wK5m">
                <ref role="3cqZAo" node="27MnIr9XMuS" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="27MnIr9XMv0" role="3cqZAp">
          <node concept="22lmx$" id="27MnIr9XMv1" role="3clFbw">
            <node concept="3clFbC" id="27MnIr9XMv2" role="3uHU7B">
              <node concept="37vLTw" id="27MnIr9XMv3" role="3uHU7B">
                <ref role="3cqZAo" node="27MnIr9XMuV" resolve="value" />
              </node>
              <node concept="10Nm6u" id="27MnIr9XMv4" role="3uHU7w" />
            </node>
            <node concept="3clFbC" id="27MnIr9XMv5" role="3uHU7w">
              <node concept="2OqwBi" id="27MnIr9XSOJ" role="3uHU7B">
                <node concept="37vLTw" id="27MnIr9XSOI" role="2Oq$k0">
                  <ref role="3cqZAo" node="27MnIr9XMuV" resolve="value" />
                </node>
                <node concept="liA8E" id="27MnIr9XSOK" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                </node>
              </node>
              <node concept="3cmrfG" id="27MnIr9XMv7" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="27MnIr9XMvd" role="3clFbx">
            <node concept="3clFbF" id="27MnIr9XMv8" role="3cqZAp">
              <node concept="37vLTI" id="27MnIr9XMv9" role="3clFbG">
                <node concept="37vLTw" id="27MnIr9XMva" role="37vLTJ">
                  <ref role="3cqZAo" node="27MnIr9XMuV" resolve="value" />
                </node>
                <node concept="2YIFZM" id="27MnIr9XP1i" role="37vLTx">
                  <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
                  <ref role="37wK5l" to="wyt6:~System.getenv(java.lang.String)" resolve="getenv" />
                  <node concept="37vLTw" id="27MnIr9XP1j" role="37wK5m">
                    <ref role="3cqZAo" node="27MnIr9XMuS" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="27MnIr9XMve" role="3cqZAp">
          <node concept="37vLTw" id="27MnIr9XMvf" role="3cqZAk">
            <ref role="3cqZAo" node="27MnIr9XMuV" resolve="value" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="27MnIr9XMvg" role="1B3o_S" />
      <node concept="17QB3L" id="27MnIr9XUXy" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="27MnIr9XQV_" role="jymVt" />
    <node concept="3clFb_" id="1RZ$z1qesJ4" role="jymVt">
      <property role="TrG5h" value="diff" />
      <node concept="3Tm1VV" id="1RZ$z1qesJ7" role="1B3o_S" />
      <node concept="3clFbS" id="1RZ$z1qesJ8" role="3clF47">
        <node concept="3cpWs6" id="27MnIra2$w0" role="3cqZAp">
          <node concept="1rXfSq" id="27MnIra2$w1" role="3cqZAk">
            <ref role="37wK5l" node="2QFzCYK30vi" resolve="diff" />
            <node concept="2OqwBi" id="7jrnksKyBiL" role="37wK5m">
              <node concept="1rXfSq" id="2XovqnGTtfg" role="2Oq$k0">
                <ref role="37wK5l" node="2XovqnGT0EG" resolve="getRepoRoots" />
              </node>
              <node concept="1uHKPH" id="7jrnksKyE9s" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="2_VYLT0m75a" role="3clF45">
        <node concept="1ajhzC" id="2_VYLT0m75b" role="_ZDj9">
          <node concept="_YKpA" id="2_VYLT0m75c" role="1ajl9A">
            <node concept="3uibUv" id="2_VYLT0m75d" role="_ZDj9">
              <ref role="3uigEE" node="27MnIr9Ypso" resolve="DiffImage" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2XovqnGSWEB" role="jymVt" />
    <node concept="3clFb_" id="2XovqnGT0EG" role="jymVt">
      <property role="TrG5h" value="getRepoRoots" />
      <node concept="_YKpA" id="7jrnksKvIDM" role="3clF45">
        <node concept="3uibUv" id="7jrnksKvIDN" role="_ZDj9">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2XovqnGT0EJ" role="1B3o_S" />
      <node concept="3clFbS" id="2XovqnGT0EK" role="3clF47">
        <node concept="3cpWs8" id="1RZ$z1qew1S" role="3cqZAp">
          <node concept="3cpWsn" id="1RZ$z1qew1T" role="3cpWs9">
            <property role="TrG5h" value="repoRoots" />
            <property role="3TUv4t" value="true" />
            <node concept="_YKpA" id="7jrnksKwGVV" role="1tU5fm">
              <node concept="3uibUv" id="7jrnksKwGVW" role="_ZDj9">
                <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
              </node>
            </node>
            <node concept="2ShNRf" id="7jrnksKvQnK" role="33vP2m">
              <node concept="Tc6Ow" id="7jrnksKwxWs" role="2ShVmc">
                <node concept="3uibUv" id="7jrnksKwDlb" role="HW$YZ">
                  <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1RZ$z1qg0sB" role="3cqZAp" />
        <node concept="3cpWs8" id="1RZ$z1qfBqz" role="3cqZAp">
          <node concept="3cpWsn" id="1RZ$z1qfBq$" role="3cpWs9">
            <property role="TrG5h" value="gitRepoDirPath" />
            <node concept="17QB3L" id="1RZ$z1qfCgb" role="1tU5fm" />
            <node concept="1rXfSq" id="27MnIr9XWE5" role="33vP2m">
              <ref role="37wK5l" node="27MnIr9XMuR" resolve="getPropertyOrEnv" />
              <node concept="Xl_RD" id="1RZ$z1qfBqA" role="37wK5m">
                <property role="Xl_RC" value="GIT_REPO_DIR" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1RZ$z1qfXxt" role="3cqZAp">
          <node concept="3clFbS" id="1RZ$z1qfXxv" role="3clFbx">
            <node concept="3cpWs8" id="7jrnksKwXMi" role="3cqZAp">
              <node concept="3cpWsn" id="7jrnksKwXMj" role="3cpWs9">
                <property role="TrG5h" value="repoRoot" />
                <node concept="3uibUv" id="7jrnksKwXMk" role="1tU5fm">
                  <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
                </node>
                <node concept="2OqwBi" id="1RZ$z1qew1V" role="33vP2m">
                  <node concept="2YIFZM" id="1RZ$z1qew1W" role="2Oq$k0">
                    <ref role="1Pybhc" to="jlff:~LocalFileSystem" resolve="LocalFileSystem" />
                    <ref role="37wK5l" to="jlff:~LocalFileSystem.getInstance()" resolve="getInstance" />
                  </node>
                  <node concept="liA8E" id="1RZ$z1qew1X" role="2OqNvi">
                    <ref role="37wK5l" to="jlff:~LocalFileSystem.findFileByIoFile(java.io.File)" resolve="findFileByIoFile" />
                    <node concept="2ShNRf" id="1RZ$z1qfWu4" role="37wK5m">
                      <node concept="1pGfFk" id="1RZ$z1qfWu5" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                        <node concept="37vLTw" id="1RZ$z1qfWu6" role="37wK5m">
                          <ref role="3cqZAo" node="1RZ$z1qfBq$" resolve="gitRepoDirPath" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7jrnksKxjnt" role="3cqZAp">
              <node concept="3clFbS" id="7jrnksKxjnv" role="3clFbx">
                <node concept="3clFbF" id="7jrnksKBD8W" role="3cqZAp">
                  <node concept="1rXfSq" id="7jrnksKBD8V" role="3clFbG">
                    <ref role="37wK5l" node="7jrnksKBD8R" resolve="ensureRepoLoaded" />
                    <node concept="37vLTw" id="7jrnksKBD8U" role="37wK5m">
                      <ref role="3cqZAo" node="7jrnksKwXMj" resolve="repoRoot" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7jrnksKxgS2" role="3cqZAp">
                  <node concept="2OqwBi" id="7jrnksKxhWX" role="3clFbG">
                    <node concept="37vLTw" id="7jrnksKxgS0" role="2Oq$k0">
                      <ref role="3cqZAo" node="1RZ$z1qew1T" resolve="repoRoots" />
                    </node>
                    <node concept="TSZUe" id="7jrnksKxiHb" role="2OqNvi">
                      <node concept="37vLTw" id="7jrnksKxiWO" role="25WWJ7">
                        <ref role="3cqZAo" node="7jrnksKwXMj" resolve="repoRoot" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="7jrnksKxk0I" role="3clFbw">
                <node concept="10Nm6u" id="7jrnksKxkif" role="3uHU7w" />
                <node concept="37vLTw" id="7jrnksKxjFT" role="3uHU7B">
                  <ref role="3cqZAo" node="7jrnksKwXMj" resolve="repoRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1RZ$z1qfYFV" role="3clFbw">
            <node concept="10Nm6u" id="1RZ$z1qfZ6z" role="3uHU7w" />
            <node concept="37vLTw" id="1RZ$z1qfY0I" role="3uHU7B">
              <ref role="3cqZAo" node="1RZ$z1qfBq$" resolve="gitRepoDirPath" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1RZ$z1qg0Z3" role="3cqZAp" />
        <node concept="3clFbJ" id="1RZ$z1qfGIy" role="3cqZAp">
          <node concept="3clFbS" id="1RZ$z1qfGI$" role="3clFbx">
            <node concept="2Gpval" id="1RZ$z1qfTih" role="3cqZAp">
              <node concept="2GrKxI" id="1RZ$z1qfTij" role="2Gsz3X">
                <property role="TrG5h" value="repo" />
              </node>
              <node concept="3clFbS" id="1RZ$z1qfTin" role="2LFqv$">
                <node concept="3clFbF" id="7jrnksKxlHl" role="3cqZAp">
                  <node concept="2OqwBi" id="7jrnksKxmCS" role="3clFbG">
                    <node concept="37vLTw" id="7jrnksKxlHj" role="2Oq$k0">
                      <ref role="3cqZAo" node="1RZ$z1qew1T" resolve="repoRoots" />
                    </node>
                    <node concept="TSZUe" id="7jrnksKxnp4" role="2OqNvi">
                      <node concept="2OqwBi" id="7jrnksKxDCO" role="25WWJ7">
                        <node concept="2GrUjf" id="7jrnksKxDCP" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="1RZ$z1qfTij" resolve="repo" />
                        </node>
                        <node concept="liA8E" id="7jrnksKxDCQ" role="2OqNvi">
                          <ref role="37wK5l" to="tkms:~Repository.getRoot()" resolve="getRoot" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1RZ$z1qfTn6" role="2GsD0m">
                <node concept="2YIFZM" id="1RZ$z1qfTn7" role="2Oq$k0">
                  <ref role="1Pybhc" to="tkms:~VcsRepositoryManager" resolve="VcsRepositoryManager" />
                  <ref role="37wK5l" to="tkms:~VcsRepositoryManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
                  <node concept="37vLTw" id="1RZ$z1qfTn8" role="37wK5m">
                    <ref role="3cqZAo" node="4kPMkltJPHc" resolve="project" />
                  </node>
                </node>
                <node concept="liA8E" id="1RZ$z1qfTn9" role="2OqNvi">
                  <ref role="37wK5l" to="tkms:~VcsRepositoryManager.getRepositories()" resolve="getRepositories" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1RZ$z1qfSb2" role="3clFbw">
            <node concept="10Nm6u" id="1RZ$z1qfSne" role="3uHU7w" />
            <node concept="37vLTw" id="1RZ$z1qg1HZ" role="3uHU7B">
              <ref role="3cqZAo" node="1RZ$z1qew1T" resolve="repoRoots" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jrnksK_bbT" role="3cqZAp" />
        <node concept="3clFbJ" id="7jrnksK_gjJ" role="3cqZAp">
          <node concept="3clFbS" id="7jrnksK_gjL" role="3clFbx">
            <node concept="3cpWs8" id="10Et9XvYd6w" role="3cqZAp">
              <node concept="3cpWsn" id="10Et9XvYd6x" role="3cpWs9">
                <property role="TrG5h" value="moduleRepo" />
                <node concept="3uibUv" id="10Et9XvYct5" role="1tU5fm">
                  <ref role="3uigEE" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                </node>
                <node concept="2YIFZM" id="10Et9XvYd6y" role="33vP2m">
                  <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
                  <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7jrnksKADME" role="3cqZAp">
              <node concept="3cpWsn" id="7jrnksKADMF" role="3cpWs9">
                <property role="TrG5h" value="moduleFiles" />
                <node concept="A3Dl8" id="7jrnksKADKn" role="1tU5fm">
                  <node concept="3uibUv" id="7jrnksKADKq" role="A3Ik2">
                    <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                  </node>
                </node>
                <node concept="10Nm6u" id="10Et9XvYlKX" role="33vP2m" />
              </node>
            </node>
            <node concept="1QHqEK" id="10Et9XvYbXS" role="3cqZAp">
              <node concept="1QHqEC" id="10Et9XvYbXU" role="1QHqEI">
                <node concept="3clFbS" id="10Et9XvYbXW" role="1bW5cS">
                  <node concept="3cpWs8" id="7jrnksK_yA2" role="3cqZAp">
                    <node concept="3cpWsn" id="7jrnksK_yA3" role="3cpWs9">
                      <property role="TrG5h" value="modules" />
                      <node concept="A3Dl8" id="7jrnksK_Gpf" role="1tU5fm">
                        <node concept="3uibUv" id="7jrnksK_Gph" role="A3Ik2">
                          <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7jrnksK_yA4" role="33vP2m">
                        <node concept="37vLTw" id="10Et9XvYd6z" role="2Oq$k0">
                          <ref role="3cqZAo" node="10Et9XvYd6x" resolve="moduleRepo" />
                        </node>
                        <node concept="liA8E" id="7jrnksK_yA6" role="2OqNvi">
                          <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getModules()" resolve="getModules" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="10Et9XvYjpX" role="3cqZAp">
                    <node concept="37vLTI" id="10Et9XvYjpZ" role="3clFbG">
                      <node concept="2OqwBi" id="7jrnksKADMG" role="37vLTx">
                        <node concept="2OqwBi" id="7jrnksKADMH" role="2Oq$k0">
                          <node concept="37vLTw" id="7jrnksKADMI" role="2Oq$k0">
                            <ref role="3cqZAo" node="7jrnksK_yA3" resolve="modules" />
                          </node>
                          <node concept="UnYns" id="7jrnksKADMJ" role="2OqNvi">
                            <node concept="3uibUv" id="7jrnksKADMK" role="UnYnz">
                              <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                            </node>
                          </node>
                        </node>
                        <node concept="3$u5V9" id="7jrnksKADML" role="2OqNvi">
                          <node concept="1bVj0M" id="7jrnksKADMM" role="23t8la">
                            <node concept="3clFbS" id="7jrnksKADMN" role="1bW5cS">
                              <node concept="3clFbF" id="7jrnksKADMO" role="3cqZAp">
                                <node concept="2OqwBi" id="7jrnksKADMP" role="3clFbG">
                                  <node concept="37vLTw" id="7jrnksKADMQ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7jrnksKADMS" resolve="it" />
                                  </node>
                                  <node concept="liA8E" id="7jrnksKADMR" role="2OqNvi">
                                    <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleSourceDir()" resolve="getModuleSourceDir" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="7jrnksKADMS" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="7jrnksKADMT" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="10Et9XvYjq3" role="37vLTJ">
                        <ref role="3cqZAo" node="7jrnksKADMF" resolve="moduleFiles" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="10Et9XvYgdE" role="ukAjM">
                <ref role="3cqZAo" node="10Et9XvYd6x" resolve="moduleRepo" />
              </node>
            </node>
            <node concept="3cpWs8" id="7jrnksKAGO_" role="3cqZAp">
              <node concept="3cpWsn" id="7jrnksKAGOA" role="3cpWs9">
                <property role="TrG5h" value="gitRootCandidates" />
                <node concept="A3Dl8" id="7jrnksKAGM6" role="1tU5fm">
                  <node concept="3uibUv" id="7jrnksKAGM9" role="A3Ik2">
                    <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                  </node>
                </node>
                <node concept="1rXfSq" id="7jrnksKAGOB" role="33vP2m">
                  <ref role="37wK5l" node="7jrnksK_Rdd" resolve="ancestorFiles" />
                  <node concept="37vLTw" id="7jrnksKAGOC" role="37wK5m">
                    <ref role="3cqZAo" node="7jrnksKADMF" resolve="moduleFiles" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7jrnksKAN65" role="3cqZAp">
              <node concept="2OqwBi" id="7jrnksKANz7" role="3clFbG">
                <node concept="37vLTw" id="7jrnksKAN63" role="2Oq$k0">
                  <ref role="3cqZAo" node="1RZ$z1qew1T" resolve="repoRoots" />
                </node>
                <node concept="X8dFx" id="7jrnksKAOu4" role="2OqNvi">
                  <node concept="2OqwBi" id="7jrnksKBx8G" role="25WWJ7">
                    <node concept="2OqwBi" id="7jrnksKAOu6" role="2Oq$k0">
                      <node concept="37vLTw" id="7jrnksKAOu7" role="2Oq$k0">
                        <ref role="3cqZAo" node="7jrnksKAGOA" resolve="gitRootCandidates" />
                      </node>
                      <node concept="3zZkjj" id="7jrnksKAOu8" role="2OqNvi">
                        <node concept="1bVj0M" id="7jrnksKAOu9" role="23t8la">
                          <node concept="3clFbS" id="7jrnksKAOua" role="1bW5cS">
                            <node concept="3clFbF" id="7jrnksKAOub" role="3cqZAp">
                              <node concept="2OqwBi" id="7jrnksKAOuc" role="3clFbG">
                                <node concept="2OqwBi" id="7jrnksKAOud" role="2Oq$k0">
                                  <node concept="37vLTw" id="7jrnksKAOue" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7jrnksKAOui" resolve="it" />
                                  </node>
                                  <node concept="liA8E" id="7jrnksKAOuf" role="2OqNvi">
                                    <ref role="37wK5l" to="3ju5:~IFile.findChild(java.lang.String)" resolve="findChild" />
                                    <node concept="Xl_RD" id="7jrnksKAOug" role="37wK5m">
                                      <property role="Xl_RC" value=".git" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="7jrnksKAOuh" role="2OqNvi">
                                  <ref role="37wK5l" to="3ju5:~IFile.exists()" resolve="exists" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="7jrnksKAOui" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="7jrnksKAOuj" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3$u5V9" id="7jrnksKBxBh" role="2OqNvi">
                      <node concept="1bVj0M" id="7jrnksKBxBj" role="23t8la">
                        <node concept="3clFbS" id="7jrnksKBxBk" role="1bW5cS">
                          <node concept="3clFbF" id="7jrnksKByce" role="3cqZAp">
                            <node concept="1rXfSq" id="7jrnksKBycd" role="3clFbG">
                              <ref role="37wK5l" node="7jrnksKB4Q2" resolve="toVirtualFile" />
                              <node concept="37vLTw" id="7jrnksKBzZo" role="37wK5m">
                                <ref role="3cqZAo" node="7jrnksKBxBl" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="7jrnksKBxBl" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="7jrnksKBxBm" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7jrnksKBN0S" role="3cqZAp">
              <node concept="2OqwBi" id="7jrnksKBNHl" role="3clFbG">
                <node concept="37vLTw" id="7jrnksKBN0Q" role="2Oq$k0">
                  <ref role="3cqZAo" node="1RZ$z1qew1T" resolve="repoRoots" />
                </node>
                <node concept="2es0OD" id="7jrnksKBO92" role="2OqNvi">
                  <node concept="1bVj0M" id="7jrnksKBO94" role="23t8la">
                    <node concept="3clFbS" id="7jrnksKBO95" role="1bW5cS">
                      <node concept="3clFbF" id="7jrnksKBOdj" role="3cqZAp">
                        <node concept="1rXfSq" id="7jrnksKBOdk" role="3clFbG">
                          <ref role="37wK5l" node="7jrnksKBD8R" resolve="ensureRepoLoaded" />
                          <node concept="37vLTw" id="7jrnksKBOdl" role="37wK5m">
                            <ref role="3cqZAo" node="7jrnksKBO96" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="7jrnksKBO96" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="7jrnksKBO97" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7jrnksK_kX$" role="3clFbw">
            <node concept="37vLTw" id="7jrnksK_j0B" role="2Oq$k0">
              <ref role="3cqZAo" node="1RZ$z1qew1T" resolve="repoRoots" />
            </node>
            <node concept="1v1jN8" id="7jrnksK_lxG" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="27MnIra1kUK" role="3cqZAp" />
        <node concept="3clFbJ" id="27MnIra1pjL" role="3cqZAp">
          <node concept="3clFbS" id="27MnIra1pjN" role="3clFbx">
            <node concept="YS8fn" id="27MnIra1xFt" role="3cqZAp">
              <node concept="2ShNRf" id="27MnIra1xNP" role="YScLw">
                <node concept="1pGfFk" id="27MnIra1zct" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String)" resolve="RuntimeException" />
                  <node concept="Xl_RD" id="27MnIra1zlF" role="37wK5m">
                    <property role="Xl_RC" value="No repository root found" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7jrnksKyjg0" role="3clFbw">
            <node concept="37vLTw" id="27MnIra1s32" role="2Oq$k0">
              <ref role="3cqZAo" node="1RZ$z1qew1T" resolve="repoRoots" />
            </node>
            <node concept="1v1jN8" id="7jrnksKykfS" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="2XovqnGTiBx" role="3cqZAp">
          <node concept="37vLTw" id="2XovqnGTlFQ" role="3cqZAk">
            <ref role="3cqZAo" node="1RZ$z1qew1T" resolve="repoRoots" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7jrnksKBIcG" role="jymVt" />
    <node concept="3clFb_" id="7jrnksKBD8R" role="jymVt">
      <property role="TrG5h" value="ensureRepoLoaded" />
      <node concept="3Tm6S6" id="7jrnksKBD8S" role="1B3o_S" />
      <node concept="3cqZAl" id="7jrnksKBD8T" role="3clF45" />
      <node concept="37vLTG" id="7jrnksKBD8K" role="3clF46">
        <property role="TrG5h" value="repoRoot" />
        <node concept="3uibUv" id="7jrnksKBD8L" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="3clFbS" id="7jrnksKBD8o" role="3clF47">
        <node concept="3cpWs8" id="7jrnksKBD8p" role="3cqZAp">
          <node concept="3cpWsn" id="7jrnksKBD8q" role="3cpWs9">
            <property role="TrG5h" value="vcsManager" />
            <node concept="3uibUv" id="7jrnksKBD8r" role="1tU5fm">
              <ref role="3uigEE" to="tkms:~VcsRepositoryManager" resolve="VcsRepositoryManager" />
            </node>
            <node concept="2YIFZM" id="7jrnksKBD8s" role="33vP2m">
              <ref role="37wK5l" to="tkms:~VcsRepositoryManager.getInstance(com.intellij.openapi.project.Project)" resolve="getInstance" />
              <ref role="1Pybhc" to="tkms:~VcsRepositoryManager" resolve="VcsRepositoryManager" />
              <node concept="37vLTw" id="7jrnksKBD8t" role="37wK5m">
                <ref role="3cqZAo" node="4kPMkltJPHc" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7jrnksKBD8u" role="3cqZAp">
          <node concept="3clFbS" id="7jrnksKBD8v" role="3clFbx">
            <node concept="3clFbF" id="7jrnksKBD8w" role="3cqZAp">
              <node concept="2OqwBi" id="7jrnksKBD8x" role="3clFbG">
                <node concept="37vLTw" id="7jrnksKBD8y" role="2Oq$k0">
                  <ref role="3cqZAo" node="7jrnksKBD8q" resolve="vcsManager" />
                </node>
                <node concept="liA8E" id="7jrnksKBD8z" role="2OqNvi">
                  <ref role="37wK5l" to="tkms:~VcsRepositoryManager.addExternalRepository(com.intellij.openapi.vfs.VirtualFile,com.intellij.dvcs.repo.Repository)" resolve="addExternalRepository" />
                  <node concept="37vLTw" id="7jrnksKBD8O" role="37wK5m">
                    <ref role="3cqZAo" node="7jrnksKBD8K" resolve="repoRoot" />
                  </node>
                  <node concept="2YIFZM" id="7jrnksKBD8_" role="37wK5m">
                    <ref role="1Pybhc" to="5mlj:~GitRepositoryImpl" resolve="GitRepositoryImpl" />
                    <ref role="37wK5l" to="5mlj:~GitRepositoryImpl.createInstance(com.intellij.openapi.vfs.VirtualFile,com.intellij.openapi.project.Project,com.intellij.openapi.Disposable,boolean)" resolve="createInstance" />
                    <node concept="37vLTw" id="7jrnksKBD8M" role="37wK5m">
                      <ref role="3cqZAo" node="7jrnksKBD8K" resolve="repoRoot" />
                    </node>
                    <node concept="37vLTw" id="7jrnksKBD8B" role="37wK5m">
                      <ref role="3cqZAo" node="4kPMkltJPHc" resolve="project" />
                    </node>
                    <node concept="37vLTw" id="7jrnksKBD8C" role="37wK5m">
                      <ref role="3cqZAo" node="7jrnksKBD8q" resolve="vcsManager" />
                    </node>
                    <node concept="3clFbT" id="7jrnksKBD8D" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7jrnksKBD8E" role="3clFbw">
            <node concept="10Nm6u" id="7jrnksKBD8F" role="3uHU7w" />
            <node concept="2OqwBi" id="7jrnksKBD8G" role="3uHU7B">
              <node concept="37vLTw" id="7jrnksKBD8H" role="2Oq$k0">
                <ref role="3cqZAo" node="7jrnksKBD8q" resolve="vcsManager" />
              </node>
              <node concept="liA8E" id="7jrnksKBD8I" role="2OqNvi">
                <ref role="37wK5l" to="tkms:~VcsRepositoryManager.getRepositoryForRoot(com.intellij.openapi.vfs.VirtualFile)" resolve="getRepositoryForRoot" />
                <node concept="37vLTw" id="7jrnksKBD8N" role="37wK5m">
                  <ref role="3cqZAo" node="7jrnksKBD8K" resolve="repoRoot" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7jrnksK_KL2" role="jymVt" />
    <node concept="3clFb_" id="7jrnksK_Rdd" role="jymVt">
      <property role="TrG5h" value="ancestorFiles" />
      <node concept="37vLTG" id="7jrnksKA8jY" role="3clF46">
        <property role="TrG5h" value="files" />
        <node concept="A3Dl8" id="7jrnksKAnOk" role="1tU5fm">
          <node concept="3uibUv" id="7jrnksKAnOl" role="A3Ik2">
            <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="7jrnksKAieX" role="3clF45">
        <node concept="3uibUv" id="7jrnksKACCA" role="A3Ik2">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7jrnksK_Vpk" role="1B3o_S" />
      <node concept="3clFbS" id="7jrnksK_Rdh" role="3clF47">
        <node concept="3clFbJ" id="6vH4Lndq1mG" role="3cqZAp">
          <node concept="3clFbS" id="6vH4Lndq1mI" role="3clFbx">
            <node concept="3cpWs6" id="6vH4Lndq4s5" role="3cqZAp">
              <node concept="2ShNRf" id="6vH4Lndq8Xl" role="3cqZAk">
                <node concept="kMnCb" id="6vH4Lndq4_n" role="2ShVmc">
                  <node concept="3uibUv" id="6vH4Lndq4_o" role="kMuH3">
                    <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6vH4Lndq2Y7" role="3clFbw">
            <node concept="37vLTw" id="6vH4Lndq1z0" role="2Oq$k0">
              <ref role="3cqZAo" node="7jrnksKA8jY" resolve="files" />
            </node>
            <node concept="1v1jN8" id="6vH4Lndq4ij" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="7jrnksKAs9t" role="3cqZAp">
          <node concept="3cpWsn" id="7jrnksKAs9u" role="3cpWs9">
            <property role="TrG5h" value="parentFiles" />
            <node concept="A3Dl8" id="7jrnksKAs8q" role="1tU5fm">
              <node concept="3uibUv" id="7jrnksKAs8t" role="A3Ik2">
                <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
              </node>
            </node>
            <node concept="2ShNRf" id="7jrnksKAvRU" role="33vP2m">
              <node concept="2i4dXS" id="7jrnksKAxE8" role="2ShVmc">
                <node concept="3uibUv" id="7jrnksKAyPF" role="HW$YZ">
                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                </node>
                <node concept="2OqwBi" id="6vH4Lndr7jJ" role="I$8f6">
                  <node concept="2OqwBi" id="10Et9XvZeBe" role="2Oq$k0">
                    <node concept="2OqwBi" id="7jrnksKAs9w" role="2Oq$k0">
                      <node concept="2OqwBi" id="10Et9XvZd55" role="2Oq$k0">
                        <node concept="37vLTw" id="7jrnksKAs9x" role="2Oq$k0">
                          <ref role="3cqZAo" node="7jrnksKA8jY" resolve="files" />
                        </node>
                        <node concept="1KnU$U" id="10Et9XvZeuq" role="2OqNvi" />
                      </node>
                      <node concept="3$u5V9" id="7jrnksKAs9y" role="2OqNvi">
                        <node concept="1bVj0M" id="7jrnksKAs9z" role="23t8la">
                          <node concept="3clFbS" id="7jrnksKAs9$" role="1bW5cS">
                            <node concept="3clFbF" id="7jrnksKAs9_" role="3cqZAp">
                              <node concept="2OqwBi" id="7jrnksKAs9A" role="3clFbG">
                                <node concept="37vLTw" id="7jrnksKAs9B" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7jrnksKAs9D" resolve="it" />
                                </node>
                                <node concept="liA8E" id="7jrnksKAs9C" role="2OqNvi">
                                  <ref role="37wK5l" to="3ju5:~IFile.getParent()" resolve="getParent" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="7jrnksKAs9D" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="7jrnksKAs9E" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1KnU$U" id="10Et9XvZgnQ" role="2OqNvi" />
                  </node>
                  <node concept="66VNe" id="6vH4Lndr7Qm" role="2OqNvi">
                    <node concept="37vLTw" id="6vH4Lndr91V" role="576Qk">
                      <ref role="3cqZAo" node="7jrnksKA8jY" resolve="files" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jrnksKAAfc" role="3cqZAp">
          <node concept="2OqwBi" id="7jrnksKAAA3" role="3clFbG">
            <node concept="37vLTw" id="7jrnksKAAfa" role="2Oq$k0">
              <ref role="3cqZAo" node="7jrnksKAs9u" resolve="parentFiles" />
            </node>
            <node concept="3QWeyG" id="7jrnksKAAOW" role="2OqNvi">
              <node concept="1rXfSq" id="7jrnksKAB8X" role="576Qk">
                <ref role="37wK5l" node="7jrnksK_Rdd" resolve="ancestorFiles" />
                <node concept="37vLTw" id="7jrnksKACxo" role="37wK5m">
                  <ref role="3cqZAo" node="7jrnksKAs9u" resolve="parentFiles" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7jrnksKAOMI" role="jymVt" />
    <node concept="3clFb_" id="7jrnksKB4Q2" role="jymVt">
      <property role="TrG5h" value="toVirtualFile" />
      <node concept="37vLTG" id="7jrnksKBn2j" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="7jrnksKBqmo" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="3uibUv" id="7jrnksKBsym" role="3clF45">
        <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
      </node>
      <node concept="3Tm6S6" id="7jrnksKBiRg" role="1B3o_S" />
      <node concept="3clFbS" id="7jrnksKB4Q6" role="3clF47">
        <node concept="3clFbF" id="7jrnksKBBet" role="3cqZAp">
          <node concept="2OqwBi" id="7jrnksKBBxe" role="3clFbG">
            <node concept="2YIFZM" id="7jrnksKBBfz" role="2Oq$k0">
              <ref role="37wK5l" to="jlff:~LocalFileSystem.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="jlff:~LocalFileSystem" resolve="LocalFileSystem" />
            </node>
            <node concept="liA8E" id="7jrnksKBBQB" role="2OqNvi">
              <ref role="37wK5l" to="jlff:~VirtualFileSystem.findFileByPath(java.lang.String)" resolve="findFileByPath" />
              <node concept="2OqwBi" id="7jrnksKB$Gg" role="37wK5m">
                <node concept="37vLTw" id="7jrnksKB$tP" role="2Oq$k0">
                  <ref role="3cqZAo" node="7jrnksKBn2j" resolve="file" />
                </node>
                <node concept="liA8E" id="7jrnksKB_O5" role="2OqNvi">
                  <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1RZ$z1qer3X" role="jymVt" />
    <node concept="3clFb_" id="2QFzCYK30vi" role="jymVt">
      <property role="TrG5h" value="diff" />
      <node concept="37vLTG" id="1RZ$z1qeo2A" role="3clF46">
        <property role="TrG5h" value="repoRoot" />
        <node concept="3uibUv" id="1RZ$z1qeq0E" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2QFzCYK30vl" role="1B3o_S" />
      <node concept="3clFbS" id="2QFzCYK30vm" role="3clF47">
        <node concept="RRSsy" id="1RZ$z1qge2V" role="3cqZAp">
          <property role="RRSoG" value="h1akgim/info" />
          <node concept="3cpWs3" id="1RZ$z1qgeIH" role="RRSoy">
            <node concept="37vLTw" id="1RZ$z1qgfbP" role="3uHU7w">
              <ref role="3cqZAo" node="1RZ$z1qeo2A" resolve="repoRoot" />
            </node>
            <node concept="Xl_RD" id="1RZ$z1qge2X" role="3uHU7B">
              <property role="Xl_RC" value="Repo root: " />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="27MnIra36vo" role="3cqZAp">
          <node concept="3uVAMA" id="27MnIra36vp" role="1zxBo5">
            <node concept="XOnhg" id="27MnIra36vq" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="27MnIra36vr" role="1tU5fm">
                <node concept="3uibUv" id="27MnIra36vs" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="27MnIra36vt" role="1zc67A">
              <node concept="RRSsy" id="27MnIra36vu" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="27MnIra36vv" role="RRSoy" />
                <node concept="37vLTw" id="27MnIra36vw" role="RRSow">
                  <ref role="3cqZAo" node="27MnIra36vq" resolve="ex" />
                </node>
              </node>
              <node concept="YS8fn" id="27MnIra36vx" role="3cqZAp">
                <node concept="2ShNRf" id="27MnIra36vy" role="YScLw">
                  <node concept="1pGfFk" id="27MnIra36vz" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="27MnIra36v$" role="37wK5m">
                      <ref role="3cqZAo" node="27MnIra36vq" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="27MnIra36v_" role="1zxBo7">
            <node concept="3cpWs8" id="27MnIra36vP" role="3cqZAp">
              <node concept="3cpWsn" id="27MnIra36vQ" role="3cpWs9">
                <property role="TrG5h" value="history" />
                <node concept="3uibUv" id="27MnIra36vR" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="b16MWbLCW$" role="11_B2D">
                    <ref role="3uigEE" to="hr4p:~GitCommit" resolve="GitCommit" />
                  </node>
                </node>
                <node concept="2YIFZM" id="b16MWbL_Pn" role="33vP2m">
                  <ref role="1Pybhc" to="m8n3:~GitHistoryUtils" resolve="GitHistoryUtils" />
                  <ref role="37wK5l" to="m8n3:~GitHistoryUtils.history(com.intellij.openapi.project.Project,com.intellij.openapi.vfs.VirtualFile,java.lang.String...)" resolve="history" />
                  <node concept="37vLTw" id="b16MWbL_Po" role="37wK5m">
                    <ref role="3cqZAo" node="4kPMkltJPHc" resolve="project" />
                  </node>
                  <node concept="37vLTw" id="b16MWbL_Pp" role="37wK5m">
                    <ref role="3cqZAo" node="1RZ$z1qeo2A" resolve="repoRoot" />
                  </node>
                  <node concept="Xl_RD" id="b16MWbL_Pq" role="37wK5m">
                    <property role="Xl_RC" value="-n1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="27MnIra36vX" role="3cqZAp">
              <node concept="3cpWsn" id="27MnIra36vY" role="3cpWs9">
                <property role="TrG5h" value="commit" />
                <node concept="3uibUv" id="27MnIra36vZ" role="1tU5fm">
                  <ref role="3uigEE" to="hr4p:~GitCommit" resolve="GitCommit" />
                </node>
                <node concept="2OqwBi" id="27MnIra36w0" role="33vP2m">
                  <node concept="37vLTw" id="27MnIra36w1" role="2Oq$k0">
                    <ref role="3cqZAo" node="27MnIra36vQ" resolve="history" />
                  </node>
                  <node concept="liA8E" id="27MnIra36w2" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                    <node concept="3cmrfG" id="27MnIra36w3" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="27MnIra36w4" role="3cqZAp">
              <node concept="1rXfSq" id="27MnIra36w5" role="3cqZAk">
                <ref role="37wK5l" node="4kPMkltJrRg" resolve="diffCommit" />
                <node concept="37vLTw" id="27MnIra36w6" role="37wK5m">
                  <ref role="3cqZAo" node="27MnIra36vY" resolve="commit" />
                </node>
                <node concept="37vLTw" id="2XovqnGUanz" role="37wK5m">
                  <ref role="3cqZAo" node="1RZ$z1qeo2A" resolve="repoRoot" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="2_VYLT0lXP1" role="3clF45">
        <node concept="1ajhzC" id="2_VYLT0lXP2" role="_ZDj9">
          <node concept="_YKpA" id="2_VYLT0lXP3" role="1ajl9A">
            <node concept="3uibUv" id="2_VYLT0lXP4" role="_ZDj9">
              <ref role="3uigEE" node="27MnIr9Ypso" resolve="DiffImage" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4kPMkltK3pj" role="jymVt" />
    <node concept="3clFb_" id="2XovqnGUhMw" role="jymVt">
      <property role="TrG5h" value="diffRevisions" />
      <node concept="37vLTG" id="2XovqnGUhMx" role="3clF46">
        <property role="TrG5h" value="leftRevision" />
        <node concept="17QB3L" id="2XovqnGUhMy" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2XovqnGUhMz" role="3clF46">
        <property role="TrG5h" value="rightRevision" />
        <node concept="17QB3L" id="2XovqnGUhM$" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="2XovqnGUhMB" role="1B3o_S" />
      <node concept="3clFbS" id="2XovqnGUhMC" role="3clF47">
        <node concept="3clFbF" id="2XovqnGUu5p" role="3cqZAp">
          <node concept="1rXfSq" id="2XovqnGUu5o" role="3clFbG">
            <ref role="37wK5l" node="2XovqnGRgS4" resolve="diffRevisions" />
            <node concept="37vLTw" id="2XovqnGUy_Z" role="37wK5m">
              <ref role="3cqZAo" node="2XovqnGUhMx" resolve="leftRevision" />
            </node>
            <node concept="37vLTw" id="2XovqnGUzzt" role="37wK5m">
              <ref role="3cqZAo" node="2XovqnGUhMz" resolve="rightRevision" />
            </node>
            <node concept="1rXfSq" id="2XovqnGU_ed" role="37wK5m">
              <ref role="37wK5l" node="2XovqnGT0EG" resolve="getRepoRoots" />
            </node>
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="2_VYLT0lTKV" role="3clF45">
        <node concept="1ajhzC" id="2_VYLT0lTKW" role="_ZDj9">
          <node concept="_YKpA" id="2_VYLT0lTKX" role="1ajl9A">
            <node concept="3uibUv" id="2_VYLT0lTKY" role="_ZDj9">
              <ref role="3uigEE" node="27MnIr9Ypso" resolve="DiffImage" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2XovqnGTx9e" role="jymVt" />
    <node concept="3clFb_" id="2XovqnGRgS4" role="jymVt">
      <property role="TrG5h" value="diffRevisions" />
      <node concept="37vLTG" id="2XovqnGRw1d" role="3clF46">
        <property role="TrG5h" value="leftRevision" />
        <node concept="17QB3L" id="2XovqnGRypR" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2XovqnGRzYc" role="3clF46">
        <property role="TrG5h" value="rightRevision" />
        <node concept="17QB3L" id="2XovqnGRBbw" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2XovqnGRs4g" role="3clF46">
        <property role="TrG5h" value="repoRoots" />
        <node concept="_YKpA" id="7jrnksKyM2A" role="1tU5fm">
          <node concept="3uibUv" id="7jrnksKyM2B" role="_ZDj9">
            <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2XovqnGRgS7" role="1B3o_S" />
      <node concept="3clFbS" id="2XovqnGRgS8" role="3clF47">
        <node concept="3cpWs8" id="7jrnksK$CEO" role="3cqZAp">
          <node concept="3cpWsn" id="7jrnksK$CEP" role="3cpWs9">
            <property role="TrG5h" value="repoRoot" />
            <node concept="3uibUv" id="7jrnksK$CEQ" role="1tU5fm">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
            <node concept="10Nm6u" id="7jrnksK$FqE" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbJ" id="7jrnksK$JT$" role="3cqZAp">
          <node concept="3clFbS" id="7jrnksK$JTA" role="3clFbx">
            <node concept="3SKdUt" id="7jrnksK_4Di" role="3cqZAp">
              <node concept="1PaTwC" id="7jrnksK_4Dj" role="1aUNEU">
                <node concept="3oM_SD" id="7jrnksK_4Dk" role="1PaTwD">
                  <property role="3oM_SC" value="find" />
                </node>
                <node concept="3oM_SD" id="7jrnksK_50T" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7jrnksK_5o2" role="1PaTwD">
                  <property role="3oM_SC" value="root" />
                </node>
                <node concept="3oM_SD" id="7jrnksK_66U" role="1PaTwD">
                  <property role="3oM_SC" value="that" />
                </node>
                <node concept="3oM_SD" id="7jrnksK_6I9" role="1PaTwD">
                  <property role="3oM_SC" value="contains" />
                </node>
                <node concept="3oM_SD" id="7jrnksK_6If" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="7jrnksK_75s" role="1PaTwD">
                  <property role="3oM_SC" value="revisions" />
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="7jrnksKz5mS" role="3cqZAp">
              <node concept="2GrKxI" id="7jrnksKz5mU" role="2Gsz3X">
                <property role="TrG5h" value="rr" />
              </node>
              <node concept="37vLTw" id="7jrnksKz6pS" role="2GsD0m">
                <ref role="3cqZAo" node="2XovqnGRs4g" resolve="repoRoots" />
              </node>
              <node concept="3clFbS" id="7jrnksKz5mY" role="2LFqv$">
                <node concept="3J1_TO" id="7jrnksK$g2r" role="3cqZAp">
                  <node concept="3uVAMA" id="7jrnksK$gmz" role="1zxBo5">
                    <node concept="XOnhg" id="7jrnksK$gm$" role="1zc67B">
                      <property role="TrG5h" value="ex" />
                      <node concept="nSUau" id="7jrnksK$gm_" role="1tU5fm">
                        <node concept="3uibUv" id="7jrnksK$hs4" role="nSUat">
                          <ref role="3uigEE" to="jlcu:~VcsException" resolve="VcsException" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="7jrnksK$gmA" role="1zc67A" />
                  </node>
                  <node concept="3clFbS" id="7jrnksK$g2t" role="1zxBo7">
                    <node concept="3clFbF" id="7jrnksK$ioO" role="3cqZAp">
                      <node concept="2YIFZM" id="7jrnksK$iHf" role="3clFbG">
                        <ref role="1Pybhc" to="oy9a:~GitChangeUtils" resolve="GitChangeUtils" />
                        <ref role="37wK5l" to="oy9a:~GitChangeUtils.resolveReference(com.intellij.openapi.project.Project,com.intellij.openapi.vfs.VirtualFile,java.lang.String)" resolve="resolveReference" />
                        <node concept="37vLTw" id="7jrnksK$ja9" role="37wK5m">
                          <ref role="3cqZAo" node="4kPMkltJPHc" resolve="project" />
                        </node>
                        <node concept="2GrUjf" id="7jrnksK$oBT" role="37wK5m">
                          <ref role="2Gs0qQ" node="7jrnksKz5mU" resolve="rr" />
                        </node>
                        <node concept="37vLTw" id="7jrnksK$qtK" role="37wK5m">
                          <ref role="3cqZAo" node="2XovqnGRw1d" resolve="leftRevision" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7jrnksK$rL0" role="3cqZAp">
                      <node concept="2YIFZM" id="7jrnksK$rL1" role="3clFbG">
                        <ref role="1Pybhc" to="oy9a:~GitChangeUtils" resolve="GitChangeUtils" />
                        <ref role="37wK5l" to="oy9a:~GitChangeUtils.resolveReference(com.intellij.openapi.project.Project,com.intellij.openapi.vfs.VirtualFile,java.lang.String)" resolve="resolveReference" />
                        <node concept="37vLTw" id="7jrnksK$rL2" role="37wK5m">
                          <ref role="3cqZAo" node="4kPMkltJPHc" resolve="project" />
                        </node>
                        <node concept="2GrUjf" id="7jrnksK$rL3" role="37wK5m">
                          <ref role="2Gs0qQ" node="7jrnksKz5mU" resolve="rr" />
                        </node>
                        <node concept="37vLTw" id="7jrnksK$rL4" role="37wK5m">
                          <ref role="3cqZAo" node="2XovqnGRzYc" resolve="rightRevision" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7jrnksK$GPg" role="3cqZAp">
                      <node concept="37vLTI" id="7jrnksK$Iid" role="3clFbG">
                        <node concept="2GrUjf" id="7jrnksK$IZP" role="37vLTx">
                          <ref role="2Gs0qQ" node="7jrnksKz5mU" resolve="rr" />
                        </node>
                        <node concept="37vLTw" id="7jrnksK$GPe" role="37vLTJ">
                          <ref role="3cqZAo" node="7jrnksK$CEP" resolve="repoRoot" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="7jrnksK$Rkb" role="3clFbw">
            <node concept="2OqwBi" id="7jrnksK$NS_" role="3uHU7B">
              <node concept="37vLTw" id="7jrnksK$Kzn" role="2Oq$k0">
                <ref role="3cqZAo" node="2XovqnGRs4g" resolve="repoRoots" />
              </node>
              <node concept="34oBXx" id="7jrnksK$Q1z" role="2OqNvi" />
            </node>
            <node concept="3cmrfG" id="7jrnksK$TWT" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
          <node concept="9aQIb" id="7jrnksK$X9X" role="9aQIa">
            <node concept="3clFbS" id="7jrnksK$X9Y" role="9aQI4">
              <node concept="3clFbF" id="7jrnksK$YD8" role="3cqZAp">
                <node concept="37vLTI" id="7jrnksK$Zht" role="3clFbG">
                  <node concept="2OqwBi" id="7jrnksK_1Fo" role="37vLTx">
                    <node concept="37vLTw" id="7jrnksK_0dZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="2XovqnGRs4g" resolve="repoRoots" />
                    </node>
                    <node concept="1uHKPH" id="7jrnksK_3JN" role="2OqNvi" />
                  </node>
                  <node concept="37vLTw" id="7jrnksK$YD7" role="37vLTJ">
                    <ref role="3cqZAo" node="7jrnksK$CEP" resolve="repoRoot" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2XovqnGSBnh" role="3cqZAp">
          <node concept="3clFbS" id="2XovqnGSBni" role="1zxBo7">
            <node concept="3cpWs8" id="2XovqnGSBnj" role="3cqZAp">
              <node concept="3cpWsn" id="2XovqnGSBnk" role="3cpWs9">
                <property role="TrG5h" value="changes" />
                <node concept="3uibUv" id="2XovqnGSBnl" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                  <node concept="3uibUv" id="2XovqnGSBnm" role="11_B2D">
                    <ref role="3uigEE" to="1037:~Change" resolve="Change" />
                  </node>
                </node>
                <node concept="2YIFZM" id="2XovqnGSBnn" role="33vP2m">
                  <ref role="1Pybhc" to="oy9a:~GitChangeUtils" resolve="GitChangeUtils" />
                  <ref role="37wK5l" to="oy9a:~GitChangeUtils.getDiff(com.intellij.openapi.project.Project,com.intellij.openapi.vfs.VirtualFile,java.lang.String,java.lang.String,java.util.Collection)" resolve="getDiff" />
                  <node concept="37vLTw" id="2XovqnGSBno" role="37wK5m">
                    <ref role="3cqZAo" node="4kPMkltJPHc" resolve="project" />
                  </node>
                  <node concept="37vLTw" id="2XovqnGTGTa" role="37wK5m">
                    <ref role="3cqZAo" node="7jrnksK$CEP" resolve="repoRoot" />
                  </node>
                  <node concept="37vLTw" id="2XovqnGSBnt" role="37wK5m">
                    <ref role="3cqZAo" node="2XovqnGRw1d" resolve="leftRevision" />
                  </node>
                  <node concept="37vLTw" id="2XovqnGSBnu" role="37wK5m">
                    <ref role="3cqZAo" node="2XovqnGRzYc" resolve="rightRevision" />
                  </node>
                  <node concept="2ShNRf" id="2XovqnGSBnv" role="37wK5m">
                    <node concept="Tc6Ow" id="2XovqnGSBnw" role="2ShVmc">
                      <node concept="3uibUv" id="2XovqnGSBnx" role="HW$YZ">
                        <ref role="3uigEE" to="jlcu:~FilePath" resolve="FilePath" />
                      </node>
                      <node concept="2YIFZM" id="2XovqnGTKr8" role="HW$Y0">
                        <ref role="37wK5l" to="7g4e:~VcsUtil.getFilePath(com.intellij.openapi.vfs.VirtualFile)" resolve="getFilePath" />
                        <ref role="1Pybhc" to="7g4e:~VcsUtil" resolve="VcsUtil" />
                        <node concept="37vLTw" id="2XovqnGTKr9" role="37wK5m">
                          <ref role="3cqZAo" node="7jrnksK$CEP" resolve="repoRoot" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2XovqnGSBn$" role="3cqZAp">
              <node concept="1rXfSq" id="2XovqnGSBn_" role="3cqZAk">
                <ref role="37wK5l" node="2XovqnGQA7R" resolve="diffChanges" />
                <node concept="37vLTw" id="2XovqnGSBnA" role="37wK5m">
                  <ref role="3cqZAo" node="2XovqnGSBnk" resolve="changes" />
                </node>
                <node concept="37vLTw" id="2XovqnGSBnB" role="37wK5m">
                  <ref role="3cqZAo" node="7jrnksK$CEP" resolve="repoRoot" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="2XovqnGSBnC" role="1zxBo5">
            <node concept="3clFbS" id="2XovqnGSBnD" role="1zc67A">
              <node concept="YS8fn" id="2XovqnGSBnE" role="3cqZAp">
                <node concept="2ShNRf" id="2XovqnGSBnF" role="YScLw">
                  <node concept="1pGfFk" id="2XovqnGSBnG" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="2XovqnGSBnH" role="37wK5m">
                      <ref role="3cqZAo" node="2XovqnGSBnI" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="2XovqnGSBnI" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="2XovqnGSBnJ" role="1tU5fm">
                <node concept="3uibUv" id="2XovqnGSBnK" role="nSUat">
                  <ref role="3uigEE" to="jlcu:~VcsException" resolve="VcsException" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="2_VYLT0lJFk" role="3clF45">
        <node concept="1ajhzC" id="2_VYLT0lJFl" role="_ZDj9">
          <node concept="_YKpA" id="2_VYLT0lJFm" role="1ajl9A">
            <node concept="3uibUv" id="2_VYLT0lJFn" role="_ZDj9">
              <ref role="3uigEE" node="27MnIr9Ypso" resolve="DiffImage" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2XovqnGRdnD" role="jymVt" />
    <node concept="2YIFZL" id="2_VYLT0mAD8" role="jymVt">
      <property role="TrG5h" value="onThreadPool" />
      <node concept="3clFbS" id="2XovqnGZjrC" role="3clF47">
        <node concept="3cpWs8" id="2XovqnGZF2e" role="3cqZAp">
          <node concept="3cpWsn" id="2XovqnGZF2f" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="2XovqnGZF2g" role="1tU5fm">
              <ref role="3uigEE" to="ixe9:~FutureResult" resolve="FutureResult" />
              <node concept="16syzq" id="2XovqnGZFMg" role="11_B2D">
                <ref role="16sUi3" node="2XovqnGZ$a5" resolve="T" />
              </node>
            </node>
            <node concept="2ShNRf" id="2XovqnGZFmT" role="33vP2m">
              <node concept="1pGfFk" id="2XovqnGZFev" role="2ShVmc">
                <ref role="37wK5l" to="ixe9:~FutureResult.&lt;init&gt;()" resolve="FutureResult" />
                <node concept="16syzq" id="2XovqnGZFQr" role="1pMfVU">
                  <ref role="16sUi3" node="2XovqnGZ$a5" resolve="T" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2XovqnGZDhi" role="3cqZAp">
          <node concept="2OqwBi" id="2XovqnGZDB8" role="3clFbG">
            <node concept="2YIFZM" id="2XovqnGZDhS" role="2Oq$k0">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
            <node concept="liA8E" id="2XovqnGZDTj" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.executeOnPooledThread(java.lang.Runnable)" resolve="executeOnPooledThread" />
              <node concept="1bVj0M" id="2XovqnGZEqA" role="37wK5m">
                <node concept="3clFbS" id="2XovqnGZEqB" role="1bW5cS">
                  <node concept="3J1_TO" id="2XovqnGZMpv" role="3cqZAp">
                    <node concept="3uVAMA" id="2XovqnGZMuO" role="1zxBo5">
                      <node concept="XOnhg" id="2XovqnGZMuP" role="1zc67B">
                        <property role="TrG5h" value="ex" />
                        <node concept="nSUau" id="2XovqnGZMuQ" role="1tU5fm">
                          <node concept="3uibUv" id="2XovqnGZRVn" role="nSUat">
                            <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="2XovqnGZMuR" role="1zc67A">
                        <node concept="3clFbF" id="2XovqnGZQAf" role="3cqZAp">
                          <node concept="2OqwBi" id="2XovqnGZR2p" role="3clFbG">
                            <node concept="37vLTw" id="2XovqnGZQAe" role="2Oq$k0">
                              <ref role="3cqZAo" node="2XovqnGZF2f" resolve="result" />
                            </node>
                            <node concept="liA8E" id="2XovqnGZRn2" role="2OqNvi">
                              <ref role="37wK5l" to="ixe9:~FutureResult.setException(java.lang.Throwable)" resolve="setException" />
                              <node concept="37vLTw" id="2XovqnGZRHf" role="37wK5m">
                                <ref role="3cqZAo" node="2XovqnGZMuP" resolve="ex" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="2XovqnGZMpx" role="1zxBo7">
                      <node concept="3clFbF" id="2XovqnGZO3w" role="3cqZAp">
                        <node concept="2OqwBi" id="2XovqnGZOv6" role="3clFbG">
                          <node concept="37vLTw" id="2XovqnGZO3u" role="2Oq$k0">
                            <ref role="3cqZAo" node="2XovqnGZF2f" resolve="result" />
                          </node>
                          <node concept="liA8E" id="2XovqnGZORD" role="2OqNvi">
                            <ref role="37wK5l" to="ixe9:~FutureResult.set(java.lang.Object)" resolve="set" />
                            <node concept="2OqwBi" id="2XovqnGZP5$" role="37wK5m">
                              <node concept="37vLTw" id="2XovqnGZP5_" role="2Oq$k0">
                                <ref role="3cqZAo" node="2XovqnGZw5t" resolve="c" />
                              </node>
                              <node concept="1Bd96e" id="2XovqnGZP5A" role="2OqNvi" />
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
        <node concept="3cpWs6" id="2XovqnGZJWD" role="3cqZAp">
          <node concept="37vLTw" id="2XovqnGZK4L" role="3cqZAk">
            <ref role="3cqZAo" node="2XovqnGZF2f" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2XovqnGZw5t" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="1ajhzC" id="2XovqnGZz$E" role="1tU5fm">
          <node concept="16syzq" id="2XovqnGZCsj" role="1ajl9A">
            <ref role="16sUi3" node="2XovqnGZ$a5" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2XovqnGZFVS" role="3clF45">
        <ref role="3uigEE" to="5zyv:~Future" resolve="Future" />
        <node concept="16syzq" id="2XovqnGZJKY" role="11_B2D">
          <ref role="16sUi3" node="2XovqnGZ$a5" resolve="T" />
        </node>
      </node>
      <node concept="16euLQ" id="2XovqnGZ$a5" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="3Tm1VV" id="2_VYLT0mrLX" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2_VYLT0nedV" role="jymVt" />
    <node concept="2YIFZL" id="2_VYLT0na85" role="jymVt">
      <property role="TrG5h" value="onEDT" />
      <node concept="3clFbS" id="2_VYLT0na86" role="3clF47">
        <node concept="3cpWs8" id="2_VYLT0na87" role="3cqZAp">
          <node concept="3cpWsn" id="2_VYLT0na88" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="3uibUv" id="2_VYLT0na89" role="1tU5fm">
              <ref role="3uigEE" to="ixe9:~FutureResult" resolve="FutureResult" />
              <node concept="16syzq" id="2_VYLT0na8a" role="11_B2D">
                <ref role="16sUi3" node="2_VYLT0na8I" resolve="T" />
              </node>
            </node>
            <node concept="2ShNRf" id="2_VYLT0na8b" role="33vP2m">
              <node concept="1pGfFk" id="2_VYLT0na8c" role="2ShVmc">
                <ref role="37wK5l" to="ixe9:~FutureResult.&lt;init&gt;()" resolve="FutureResult" />
                <node concept="16syzq" id="2_VYLT0na8d" role="1pMfVU">
                  <ref role="16sUi3" node="2_VYLT0na8I" resolve="T" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2_VYLT0nlQl" role="3cqZAp">
          <node concept="2YIFZM" id="2_VYLT0nn1E" role="3clFbG">
            <ref role="37wK5l" to="3a50:~ThreadUtils.runInUIThreadNoWait(java.lang.Runnable)" resolve="runInUIThreadNoWait" />
            <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
            <node concept="1bVj0M" id="2_VYLT0nnpm" role="37wK5m">
              <node concept="3clFbS" id="2_VYLT0nnpn" role="1bW5cS">
                <node concept="3J1_TO" id="2_VYLT0na8k" role="3cqZAp">
                  <node concept="3uVAMA" id="2_VYLT0na8l" role="1zxBo5">
                    <node concept="XOnhg" id="2_VYLT0na8m" role="1zc67B">
                      <property role="TrG5h" value="ex" />
                      <node concept="nSUau" id="2_VYLT0na8n" role="1tU5fm">
                        <node concept="3uibUv" id="2_VYLT0na8o" role="nSUat">
                          <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="2_VYLT0na8p" role="1zc67A">
                      <node concept="3clFbF" id="2_VYLT0na8q" role="3cqZAp">
                        <node concept="2OqwBi" id="2_VYLT0na8r" role="3clFbG">
                          <node concept="37vLTw" id="2_VYLT0na8s" role="2Oq$k0">
                            <ref role="3cqZAo" node="2_VYLT0na88" resolve="result" />
                          </node>
                          <node concept="liA8E" id="2_VYLT0na8t" role="2OqNvi">
                            <ref role="37wK5l" to="ixe9:~FutureResult.setException(java.lang.Throwable)" resolve="setException" />
                            <node concept="37vLTw" id="2_VYLT0na8u" role="37wK5m">
                              <ref role="3cqZAo" node="2_VYLT0na8m" resolve="ex" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="2_VYLT0na8v" role="1zxBo7">
                    <node concept="3clFbF" id="2_VYLT0na8w" role="3cqZAp">
                      <node concept="2OqwBi" id="2_VYLT0na8x" role="3clFbG">
                        <node concept="37vLTw" id="2_VYLT0na8y" role="2Oq$k0">
                          <ref role="3cqZAo" node="2_VYLT0na88" resolve="result" />
                        </node>
                        <node concept="liA8E" id="2_VYLT0na8z" role="2OqNvi">
                          <ref role="37wK5l" to="ixe9:~FutureResult.set(java.lang.Object)" resolve="set" />
                          <node concept="2OqwBi" id="2_VYLT0na8$" role="37wK5m">
                            <node concept="37vLTw" id="2_VYLT0na8_" role="2Oq$k0">
                              <ref role="3cqZAo" node="2_VYLT0na8D" resolve="c" />
                            </node>
                            <node concept="1Bd96e" id="2_VYLT0na8A" role="2OqNvi" />
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
        <node concept="3cpWs6" id="2_VYLT0na8B" role="3cqZAp">
          <node concept="37vLTw" id="2_VYLT0na8C" role="3cqZAk">
            <ref role="3cqZAo" node="2_VYLT0na88" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2_VYLT0na8D" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="1ajhzC" id="2_VYLT0na8E" role="1tU5fm">
          <node concept="16syzq" id="2_VYLT0na8F" role="1ajl9A">
            <ref role="16sUi3" node="2_VYLT0na8I" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2_VYLT0na8G" role="3clF45">
        <ref role="3uigEE" to="5zyv:~Future" resolve="Future" />
        <node concept="16syzq" id="2_VYLT0na8H" role="11_B2D">
          <ref role="16sUi3" node="2_VYLT0na8I" resolve="T" />
        </node>
      </node>
      <node concept="16euLQ" id="2_VYLT0na8I" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="3Tm1VV" id="2_VYLT0na8J" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2XovqnGZflE" role="jymVt" />
    <node concept="3clFb_" id="4kPMkltJrRg" role="jymVt">
      <property role="TrG5h" value="diffCommit" />
      <node concept="37vLTG" id="4kPMkltJzfP" role="3clF46">
        <property role="TrG5h" value="commit" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4kPMkltJCAM" role="1tU5fm">
          <ref role="3uigEE" to="hr4p:~GitCommit" resolve="GitCommit" />
        </node>
      </node>
      <node concept="37vLTG" id="27MnIr9XsaK" role="3clF46">
        <property role="TrG5h" value="repoRoot" />
        <node concept="3uibUv" id="2XovqnGU362" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4kPMkltJrRj" role="1B3o_S" />
      <node concept="3clFbS" id="4kPMkltJrRk" role="3clF47">
        <node concept="3cpWs8" id="27MnIra0_Ic" role="3cqZAp">
          <node concept="3cpWsn" id="27MnIra0_Id" role="3cpWs9">
            <property role="TrG5h" value="changes" />
            <node concept="A3Dl8" id="27MnIra0AHb" role="1tU5fm">
              <node concept="3uibUv" id="27MnIra0AHd" role="A3Ik2">
                <ref role="3uigEE" to="1037:~Change" resolve="Change" />
              </node>
            </node>
            <node concept="2OqwBi" id="27MnIra0_Ie" role="33vP2m">
              <node concept="37vLTw" id="27MnIra0_If" role="2Oq$k0">
                <ref role="3cqZAo" node="4kPMkltJzfP" resolve="commit" />
              </node>
              <node concept="liA8E" id="27MnIra0_Ig" role="2OqNvi">
                <ref role="37wK5l" to="e0ho:~VcsChangesLazilyParsedDetails.getChanges()" resolve="getChanges" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="27MnIra0PP1" role="3cqZAp">
          <node concept="1rXfSq" id="2XovqnGQYcl" role="3cqZAk">
            <ref role="37wK5l" node="2XovqnGQA7R" resolve="diffChanges" />
            <node concept="37vLTw" id="2XovqnGR4Bh" role="37wK5m">
              <ref role="3cqZAo" node="27MnIra0_Id" resolve="changes" />
            </node>
            <node concept="37vLTw" id="2XovqnGR9T1" role="37wK5m">
              <ref role="3cqZAo" node="27MnIr9XsaK" resolve="repoRoot" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4kPMkltJM4e" role="Sfmx6">
        <ref role="3uigEE" to="iz75:~DiffRequestProducerException" resolve="DiffRequestProducerException" />
      </node>
      <node concept="_YKpA" id="2_VYLT0lG8z" role="3clF45">
        <node concept="1ajhzC" id="2_VYLT0lG8$" role="_ZDj9">
          <node concept="_YKpA" id="2_VYLT0lG8_" role="1ajl9A">
            <node concept="3uibUv" id="2_VYLT0lG8A" role="_ZDj9">
              <ref role="3uigEE" node="27MnIr9Ypso" resolve="DiffImage" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="27MnIra0Xkm" role="jymVt" />
    <node concept="3clFb_" id="2XovqnGQA7R" role="jymVt">
      <property role="TrG5h" value="diffChanges" />
      <node concept="37vLTG" id="2XovqnGQHyf" role="3clF46">
        <property role="TrG5h" value="changes" />
        <node concept="A3Dl8" id="2XovqnGQK9k" role="1tU5fm">
          <node concept="3uibUv" id="2XovqnGQKEP" role="A3Ik2">
            <ref role="3uigEE" to="1037:~Change" resolve="Change" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2XovqnGQLj6" role="3clF46">
        <property role="TrG5h" value="repoRoot" />
        <node concept="3uibUv" id="2XovqnGTZqA" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2XovqnGQA7U" role="1B3o_S" />
      <node concept="3clFbS" id="2XovqnGQA7V" role="3clF47">
        <node concept="3cpWs6" id="2XovqnGQVGC" role="3cqZAp">
          <node concept="2OqwBi" id="2XovqnGQVGD" role="3cqZAk">
            <node concept="2OqwBi" id="2XovqnGQVGE" role="2Oq$k0">
              <node concept="2OqwBi" id="2XovqnGQVGF" role="2Oq$k0">
                <node concept="37vLTw" id="2XovqnGQVGG" role="2Oq$k0">
                  <ref role="3cqZAo" node="2XovqnGQHyf" resolve="changes" />
                </node>
                <node concept="3zZkjj" id="2XovqnGQVGH" role="2OqNvi">
                  <node concept="1bVj0M" id="2XovqnGQVGI" role="23t8la">
                    <node concept="3clFbS" id="2XovqnGQVGJ" role="1bW5cS">
                      <node concept="3clFbF" id="2XovqnGQVGK" role="3cqZAp">
                        <node concept="1rXfSq" id="2XovqnGQVGL" role="3clFbG">
                          <ref role="37wK5l" node="2QFzCYK40mo" resolve="isModel" />
                          <node concept="37vLTw" id="2XovqnGQVGM" role="37wK5m">
                            <ref role="3cqZAo" node="2XovqnGQVGN" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="2XovqnGQVGN" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="2XovqnGQVGO" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3$u5V9" id="2XovqnGQVGP" role="2OqNvi">
                <node concept="1bVj0M" id="2XovqnGQVGQ" role="23t8la">
                  <node concept="3clFbS" id="2XovqnGQVGR" role="1bW5cS">
                    <node concept="3clFbF" id="2XovqnGQVGS" role="3cqZAp">
                      <node concept="1rXfSq" id="2XovqnGQVGT" role="3clFbG">
                        <ref role="37wK5l" node="27MnIr9XY_j" resolve="diffChange" />
                        <node concept="37vLTw" id="2XovqnGQVGU" role="37wK5m">
                          <ref role="3cqZAo" node="2XovqnGQVGW" resolve="it" />
                        </node>
                        <node concept="37vLTw" id="2XovqnGQVGV" role="37wK5m">
                          <ref role="3cqZAo" node="2XovqnGQLj6" resolve="repoRoot" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="2XovqnGQVGW" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="2XovqnGQVGX" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="2XovqnGQVGY" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="2XovqnGQSAn" role="3clF45">
        <node concept="1ajhzC" id="2_VYLT0lACd" role="_ZDj9">
          <node concept="_YKpA" id="2_VYLT0lACe" role="1ajl9A">
            <node concept="3uibUv" id="2_VYLT0lACf" role="_ZDj9">
              <ref role="3uigEE" node="27MnIr9Ypso" resolve="DiffImage" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2XovqnGQyLq" role="jymVt" />
    <node concept="3clFb_" id="27MnIr9XY_j" role="jymVt">
      <property role="TrG5h" value="diffChange" />
      <node concept="37vLTG" id="27MnIr9Y8b7" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="27MnIr9YbuG" role="1tU5fm">
          <ref role="3uigEE" to="1037:~Change" resolve="Change" />
        </node>
      </node>
      <node concept="37vLTG" id="27MnIr9XY_m" role="3clF46">
        <property role="TrG5h" value="repoRoot" />
        <node concept="3uibUv" id="2XovqnGTVIw" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="1ajhzC" id="2_VYLT0i08O" role="3clF45">
        <node concept="_YKpA" id="27MnIr9Yp5L" role="1ajl9A">
          <node concept="3uibUv" id="2_VYLT0hSOI" role="_ZDj9">
            <ref role="3uigEE" node="27MnIr9Ypso" resolve="DiffImage" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="27MnIr9XY_p" role="1B3o_S" />
      <node concept="3clFbS" id="27MnIr9XY_q" role="3clF47">
        <node concept="3cpWs8" id="27MnIr9XY_G" role="3cqZAp">
          <node concept="3cpWsn" id="27MnIr9XY_H" role="3cpWs9">
            <property role="TrG5h" value="context" />
            <node concept="3uibUv" id="27MnIr9XY_I" role="1tU5fm">
              <ref role="3uigEE" to="yt4f:~DiffContext" resolve="DiffContext" />
            </node>
            <node concept="2ShNRf" id="27MnIr9XY_J" role="33vP2m">
              <node concept="YeOm9" id="27MnIr9XY_K" role="2ShVmc">
                <node concept="1Y3b0j" id="27MnIr9XY_L" role="YeSDq">
                  <ref role="37wK5l" to="yt4f:~DiffContext.&lt;init&gt;()" resolve="DiffContext" />
                  <ref role="1Y3XeK" to="yt4f:~DiffContext" resolve="DiffContext" />
                  <node concept="3clFb_" id="27MnIr9XY_M" role="jymVt">
                    <property role="TrG5h" value="getProject" />
                    <node concept="2AHcQZ" id="27MnIr9XY_N" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                    </node>
                    <node concept="2AHcQZ" id="27MnIr9XY_O" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                    <node concept="3clFbS" id="27MnIr9XY_P" role="3clF47">
                      <node concept="3cpWs6" id="27MnIr9XY_Q" role="3cqZAp">
                        <node concept="37vLTw" id="27MnIr9XY_R" role="3cqZAk">
                          <ref role="3cqZAo" node="4kPMkltJPHc" resolve="project" />
                        </node>
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="27MnIr9XY_S" role="1B3o_S" />
                    <node concept="3uibUv" id="27MnIr9XY_T" role="3clF45">
                      <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="27MnIr9XY_U" role="jymVt">
                    <property role="TrG5h" value="isWindowFocused" />
                    <node concept="2AHcQZ" id="27MnIr9XY_V" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                    <node concept="3clFbS" id="27MnIr9XY_W" role="3clF47">
                      <node concept="3cpWs6" id="27MnIr9XY_X" role="3cqZAp">
                        <node concept="3clFbT" id="27MnIr9XY_Y" role="3cqZAk" />
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="27MnIr9XY_Z" role="1B3o_S" />
                    <node concept="10P_77" id="27MnIr9XYA0" role="3clF45" />
                  </node>
                  <node concept="3clFb_" id="27MnIr9XYA1" role="jymVt">
                    <property role="TrG5h" value="isFocusedInWindow" />
                    <node concept="2AHcQZ" id="27MnIr9XYA2" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                    <node concept="3clFbS" id="27MnIr9XYA3" role="3clF47">
                      <node concept="3cpWs6" id="27MnIr9XYA4" role="3cqZAp">
                        <node concept="3clFbT" id="27MnIr9XYA5" role="3cqZAk" />
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="27MnIr9XYA6" role="1B3o_S" />
                    <node concept="10P_77" id="27MnIr9XYA7" role="3clF45" />
                  </node>
                  <node concept="3clFb_" id="27MnIr9XYA8" role="jymVt">
                    <property role="TrG5h" value="requestFocusInWindow" />
                    <node concept="2AHcQZ" id="27MnIr9XYA9" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                    <node concept="3clFbS" id="27MnIr9XYAa" role="3clF47" />
                    <node concept="3Tm1VV" id="27MnIr9XYAb" role="1B3o_S" />
                    <node concept="3cqZAl" id="27MnIr9XYAc" role="3clF45" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="27MnIr9XYAd" role="3cqZAp">
          <node concept="3cpWsn" id="27MnIr9XYAe" role="3cpWs9">
            <property role="TrG5h" value="changeDiffRequestProducer" />
            <node concept="3uibUv" id="27MnIr9XYAf" role="1tU5fm">
              <ref role="3uigEE" to="3tm9:~ChangeDiffRequestProducer" resolve="ChangeDiffRequestProducer" />
            </node>
            <node concept="2YIFZM" id="27MnIr9XYAg" role="33vP2m">
              <ref role="1Pybhc" to="3tm9:~ChangeDiffRequestProducer" resolve="ChangeDiffRequestProducer" />
              <ref role="37wK5l" to="3tm9:~ChangeDiffRequestProducer.create(com.intellij.openapi.project.Project,com.intellij.openapi.vcs.changes.Change)" resolve="create" />
              <node concept="37vLTw" id="27MnIr9XYAh" role="37wK5m">
                <ref role="3cqZAo" node="4kPMkltJPHc" resolve="project" />
              </node>
              <node concept="37vLTw" id="27MnIr9XYAi" role="37wK5m">
                <ref role="3cqZAo" node="27MnIr9Y8b7" resolve="change" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="27MnIr9XYAj" role="3cqZAp">
          <node concept="3cpWsn" id="27MnIr9XYAk" role="3cpWs9">
            <property role="TrG5h" value="diffRequest" />
            <node concept="3uibUv" id="27MnIr9XYAl" role="1tU5fm">
              <ref role="3uigEE" to="phib:~DiffRequest" resolve="DiffRequest" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2_VYLT0jWks" role="3cqZAp">
          <node concept="3uVAMA" id="2_VYLT0k0Dg" role="1zxBo5">
            <node concept="XOnhg" id="2_VYLT0k0Dh" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="2_VYLT0k0Di" role="1tU5fm">
                <node concept="3uibUv" id="2_VYLT0k0KW" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2_VYLT0k0Dj" role="1zc67A">
              <node concept="YS8fn" id="2_VYLT0k8p0" role="3cqZAp">
                <node concept="2ShNRf" id="2_VYLT0k8Pu" role="YScLw">
                  <node concept="1pGfFk" id="2_VYLT0kGYl" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="2_VYLT0kHfa" role="37wK5m">
                      <ref role="3cqZAo" node="2_VYLT0k0Dh" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2_VYLT0jWku" role="1zxBo7">
            <node concept="3clFbF" id="2_VYLT0ljuY" role="3cqZAp">
              <node concept="37vLTI" id="2_VYLT0ljv0" role="3clFbG">
                <node concept="2OqwBi" id="27MnIr9XYAm" role="37vLTx">
                  <node concept="37vLTw" id="27MnIr9XYAn" role="2Oq$k0">
                    <ref role="3cqZAo" node="27MnIr9XYAe" resolve="changeDiffRequestProducer" />
                  </node>
                  <node concept="liA8E" id="27MnIr9XYAo" role="2OqNvi">
                    <ref role="37wK5l" to="3tm9:~ChangeDiffRequestProducer.process(com.intellij.openapi.util.UserDataHolder,com.intellij.openapi.progress.ProgressIndicator)" resolve="process" />
                    <node concept="37vLTw" id="27MnIr9XYAp" role="37wK5m">
                      <ref role="3cqZAo" node="27MnIr9XY_H" resolve="context" />
                    </node>
                    <node concept="2ShNRf" id="27MnIr9XYAq" role="37wK5m">
                      <node concept="1pGfFk" id="27MnIr9XYAr" role="2ShVmc">
                        <ref role="37wK5l" to="xygl:~EmptyProgressIndicator.&lt;init&gt;()" resolve="EmptyProgressIndicator" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="2_VYLT0ljv4" role="37vLTJ">
                  <ref role="3cqZAo" node="27MnIr9XYAk" resolve="diffRequest" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2XovqnH1_iL" role="3cqZAp">
          <node concept="3clFbS" id="2XovqnH1_iN" role="3clFbx">
            <node concept="RRSsy" id="2XovqnH1DRa" role="3cqZAp">
              <property role="RRSoG" value="gZ5fh_4/error" />
              <node concept="Xl_RD" id="2XovqnH1DRc" role="RRSoy">
                <property role="Xl_RC" value="Diff failed" />
              </node>
              <node concept="2OqwBi" id="2XovqnH1CO9" role="RRSow">
                <node concept="1eOMI4" id="2XovqnH1BTN" role="2Oq$k0">
                  <node concept="10QFUN" id="2XovqnH1BTK" role="1eOMHV">
                    <node concept="3uibUv" id="2XovqnH1BTP" role="10QFUM">
                      <ref role="3uigEE" to="phib:~ErrorDiffRequest" resolve="ErrorDiffRequest" />
                    </node>
                    <node concept="37vLTw" id="2XovqnH1CmL" role="10QFUP">
                      <ref role="3cqZAo" node="27MnIr9XYAk" resolve="diffRequest" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2XovqnH1Dfo" role="2OqNvi">
                  <ref role="37wK5l" to="phib:~ErrorDiffRequest.getException()" resolve="getException" />
                </node>
              </node>
            </node>
            <node concept="YS8fn" id="2_VYLT0j0vA" role="3cqZAp">
              <node concept="2ShNRf" id="2_VYLT0l5yx" role="YScLw">
                <node concept="1pGfFk" id="2_VYLT0l7mb" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                  <node concept="2OqwBi" id="2_VYLT0j0EM" role="37wK5m">
                    <node concept="1eOMI4" id="2_VYLT0j0EN" role="2Oq$k0">
                      <node concept="10QFUN" id="2_VYLT0j0EO" role="1eOMHV">
                        <node concept="3uibUv" id="2_VYLT0j0EP" role="10QFUM">
                          <ref role="3uigEE" to="phib:~ErrorDiffRequest" resolve="ErrorDiffRequest" />
                        </node>
                        <node concept="37vLTw" id="2_VYLT0j0EQ" role="10QFUP">
                          <ref role="3cqZAo" node="27MnIr9XYAk" resolve="diffRequest" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="2_VYLT0j0ER" role="2OqNvi">
                      <ref role="37wK5l" to="phib:~ErrorDiffRequest.getException()" resolve="getException" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="2XovqnH1Bax" role="3clFbw">
            <node concept="3uibUv" id="2XovqnH1Bwn" role="2ZW6by">
              <ref role="3uigEE" to="phib:~ErrorDiffRequest" resolve="ErrorDiffRequest" />
            </node>
            <node concept="37vLTw" id="2XovqnH1ACZ" role="2ZW6bz">
              <ref role="3cqZAo" node="27MnIr9XYAk" resolve="diffRequest" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2_VYLT0ihHY" role="3cqZAp">
          <node concept="1bVj0M" id="2_VYLT0ilwB" role="3cqZAk">
            <node concept="3clFbS" id="2_VYLT0ilwD" role="1bW5cS">
              <node concept="3clFbF" id="2_VYLT0iwZq" role="3cqZAp">
                <node concept="1rXfSq" id="2_VYLT0iwZs" role="3clFbG">
                  <ref role="37wK5l" node="2_VYLT0giqu" resolve="renderImages" />
                  <node concept="37vLTw" id="2_VYLT0iwZt" role="37wK5m">
                    <ref role="3cqZAo" node="27MnIr9XY_m" resolve="repoRoot" />
                  </node>
                  <node concept="37vLTw" id="2_VYLT0iwZu" role="37wK5m">
                    <ref role="3cqZAo" node="27MnIr9Y8b7" resolve="change" />
                  </node>
                  <node concept="37vLTw" id="2_VYLT0iwZv" role="37wK5m">
                    <ref role="3cqZAo" node="27MnIr9XYAk" resolve="diffRequest" />
                  </node>
                  <node concept="37vLTw" id="2_VYLT0iwZw" role="37wK5m">
                    <ref role="3cqZAo" node="27MnIr9XY_H" resolve="context" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="P$JXv" id="2_VYLT0i7GP" role="lGtFl">
        <node concept="TZ5HA" id="2_VYLT0i7GQ" role="TZ5H$">
          <node concept="1dT_AC" id="2_VYLT0i7GR" role="1dT_Ay">
            <property role="1dT_AB" value="Call this method outside EDT and then execute the returned function on EDT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2_VYLT0gC7v" role="jymVt" />
    <node concept="3clFb_" id="2_VYLT0giqu" role="jymVt">
      <property role="TrG5h" value="renderImages" />
      <node concept="3Tm1VV" id="2_VYLT0hk8f" role="1B3o_S" />
      <node concept="_YKpA" id="2_VYLT0guue" role="3clF45">
        <node concept="3uibUv" id="2_VYLT0gzjd" role="_ZDj9">
          <ref role="3uigEE" node="27MnIr9Ypso" resolve="DiffImage" />
        </node>
      </node>
      <node concept="37vLTG" id="2_VYLT0giq7" role="3clF46">
        <property role="TrG5h" value="repoRoot" />
        <node concept="3uibUv" id="2_VYLT0giq8" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="37vLTG" id="2_VYLT0giq9" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="2_VYLT0giqa" role="1tU5fm">
          <ref role="3uigEE" to="1037:~Change" resolve="Change" />
        </node>
      </node>
      <node concept="37vLTG" id="2_VYLT0giqb" role="3clF46">
        <property role="TrG5h" value="diffRequest" />
        <node concept="3uibUv" id="2_VYLT0giqc" role="1tU5fm">
          <ref role="3uigEE" to="phib:~DiffRequest" resolve="DiffRequest" />
        </node>
      </node>
      <node concept="37vLTG" id="2_VYLT0giqd" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="2_VYLT0giqe" role="1tU5fm">
          <ref role="3uigEE" to="yt4f:~DiffContext" resolve="DiffContext" />
        </node>
      </node>
      <node concept="3clFbS" id="2_VYLT0gilT" role="3clF47">
        <node concept="3clFbF" id="2_VYLT0gqpn" role="3cqZAp">
          <node concept="2YIFZM" id="2_VYLT0grnK" role="3clFbG">
            <ref role="37wK5l" to="3a50:~ThreadUtils.assertEDT()" resolve="assertEDT" />
            <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
          </node>
        </node>
        <node concept="3cpWs8" id="2_VYLT0gilU" role="3cqZAp">
          <node concept="3cpWsn" id="2_VYLT0gilV" role="3cpWs9">
            <property role="TrG5h" value="images" />
            <node concept="_YKpA" id="2_VYLT0gilW" role="1tU5fm">
              <node concept="3uibUv" id="2_VYLT0gilX" role="_ZDj9">
                <ref role="3uigEE" node="27MnIr9Ypso" resolve="DiffImage" />
              </node>
            </node>
            <node concept="2ShNRf" id="2_VYLT0gilY" role="33vP2m">
              <node concept="Tc6Ow" id="2_VYLT0gilZ" role="2ShVmc">
                <node concept="3uibUv" id="2_VYLT0gim0" role="HW$YZ">
                  <ref role="3uigEE" node="27MnIr9Ypso" resolve="DiffImage" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2_VYLT0gimg" role="3cqZAp">
          <node concept="3cpWsn" id="2_VYLT0gimh" role="3cpWs9">
            <property role="TrG5h" value="modelDiffViewer" />
            <node concept="3uibUv" id="2_VYLT0gimi" role="1tU5fm">
              <ref role="3uigEE" to="qyr2:1R9fMbxrLzY" resolve="ModelDiffViewer" />
            </node>
            <node concept="2ShNRf" id="2_VYLT0gimj" role="33vP2m">
              <node concept="1pGfFk" id="2_VYLT0gimk" role="2ShVmc">
                <ref role="37wK5l" to="qyr2:5zPLqcHLMf9" resolve="ModelDiffViewer" />
                <node concept="37vLTw" id="2_VYLT0giqf" role="37wK5m">
                  <ref role="3cqZAo" node="2_VYLT0giqd" resolve="context" />
                </node>
                <node concept="10QFUN" id="2_VYLT0gimm" role="37wK5m">
                  <node concept="37vLTw" id="2_VYLT0giqi" role="10QFUP">
                    <ref role="3cqZAo" node="2_VYLT0giqb" resolve="diffRequest" />
                  </node>
                  <node concept="3uibUv" id="2_VYLT0gimo" role="10QFUM">
                    <ref role="3uigEE" to="phib:~ContentDiffRequest" resolve="ContentDiffRequest" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="2_VYLT0gimp" role="3cqZAp">
          <node concept="3clFbS" id="2_VYLT0gimq" role="1zxBo7">
            <node concept="3cpWs8" id="2_VYLT0gimr" role="3cqZAp">
              <node concept="3cpWsn" id="2_VYLT0gims" role="3cpWs9">
                <property role="TrG5h" value="viewer" />
                <node concept="3uibUv" id="2_VYLT0gimt" role="1tU5fm">
                  <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
                </node>
                <node concept="2OqwBi" id="2_VYLT0gimu" role="33vP2m">
                  <node concept="37vLTw" id="2_VYLT0gimv" role="2Oq$k0">
                    <ref role="3cqZAo" node="2_VYLT0gimh" resolve="modelDiffViewer" />
                  </node>
                  <node concept="liA8E" id="2_VYLT0gimw" role="2OqNvi">
                    <ref role="37wK5l" to="qyr2:1R9fMbxrL$u" resolve="getComponent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3J1_TO" id="2_VYLT0gimx" role="3cqZAp">
              <node concept="3uVAMA" id="2_VYLT0gimy" role="1zxBo5">
                <node concept="XOnhg" id="2_VYLT0gimz" role="1zc67B">
                  <property role="TrG5h" value="ex" />
                  <node concept="nSUau" id="2_VYLT0gim$" role="1tU5fm">
                    <node concept="3uibUv" id="2_VYLT0gim_" role="nSUat">
                      <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="2_VYLT0gimA" role="1zc67A">
                  <node concept="RRSsy" id="2_VYLT0gimB" role="3cqZAp">
                    <property role="RRSoG" value="gZ5fksE/warn" />
                    <node concept="Xl_RD" id="2_VYLT0gimC" role="RRSoy">
                      <property role="Xl_RC" value="Failed to install HeaderlessDividerPainter" />
                    </node>
                    <node concept="37vLTw" id="2_VYLT0gimD" role="RRSow">
                      <ref role="3cqZAo" node="2_VYLT0gimz" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2_VYLT0gimE" role="1zxBo7">
                <node concept="3clFbF" id="2_VYLT0gimF" role="3cqZAp">
                  <node concept="2OqwBi" id="2_VYLT0gimG" role="3clFbG">
                    <node concept="2OqwBi" id="2_VYLT0gimH" role="2Oq$k0">
                      <node concept="2OqwBi" id="2_VYLT0gimI" role="2Oq$k0">
                        <node concept="1rXfSq" id="2_VYLT0gimJ" role="2Oq$k0">
                          <ref role="37wK5l" node="2QFzCYK4dwL" resolve="collectComponents" />
                          <node concept="37vLTw" id="2_VYLT0gimK" role="37wK5m">
                            <ref role="3cqZAo" node="2_VYLT0gims" resolve="viewer" />
                          </node>
                        </node>
                        <node concept="UnYns" id="2_VYLT0gimL" role="2OqNvi">
                          <node concept="3uibUv" id="2_VYLT0gimM" role="UnYnz">
                            <ref role="3uigEE" to="ksd0:~DiffSplitter" resolve="DiffSplitter" />
                          </node>
                        </node>
                      </node>
                      <node concept="1uHKPH" id="2_VYLT0gimN" role="2OqNvi" />
                    </node>
                    <node concept="liA8E" id="2_VYLT0gimO" role="2OqNvi">
                      <ref role="37wK5l" to="ksd0:~DiffSplitter.setPainter(com.intellij.diff.tools.util.DiffSplitter$Painter)" resolve="setPainter" />
                      <node concept="2ShNRf" id="2_VYLT0gimP" role="37wK5m">
                        <node concept="1pGfFk" id="2_VYLT0gimQ" role="2ShVmc">
                          <ref role="37wK5l" node="4bv8_gxkLFo" resolve="HeadlessDividerPainter" />
                          <node concept="2OqwBi" id="2_VYLT0gimR" role="37wK5m">
                            <node concept="2OqwBi" id="2_VYLT0gimS" role="2Oq$k0">
                              <node concept="37vLTw" id="2_VYLT0gimT" role="2Oq$k0">
                                <ref role="3cqZAo" node="2_VYLT0gimh" resolve="modelDiffViewer" />
                              </node>
                              <node concept="1PnCL0" id="2_VYLT0gimU" role="2OqNvi">
                                <ref role="2Oxat5" to="qyr2:5zPLqcHLKP4" resolve="myViewer" />
                              </node>
                            </node>
                            <node concept="1PnCL0" id="2_VYLT0gimV" role="2OqNvi">
                              <ref role="2Oxat5" to="p37l:5zPLqcHJB9w" resolve="myRootDifferencePane" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2_VYLT0gimW" role="3cqZAp">
              <node concept="3cpWsn" id="2_VYLT0gimX" role="3cpWs9">
                <property role="TrG5h" value="diffTree" />
                <node concept="3uibUv" id="2_VYLT0gimY" role="1tU5fm">
                  <ref role="3uigEE" to="hdhb:42hl10VHaI8" resolve="DiffModelTree" />
                </node>
                <node concept="2OqwBi" id="2_VYLT0gimZ" role="33vP2m">
                  <node concept="2OqwBi" id="2_VYLT0gin0" role="2Oq$k0">
                    <node concept="1rXfSq" id="2_VYLT0gin1" role="2Oq$k0">
                      <ref role="37wK5l" node="2QFzCYK4dwL" resolve="collectComponents" />
                      <node concept="37vLTw" id="2_VYLT0gin2" role="37wK5m">
                        <ref role="3cqZAo" node="2_VYLT0gims" resolve="viewer" />
                      </node>
                    </node>
                    <node concept="UnYns" id="2_VYLT0gin3" role="2OqNvi">
                      <node concept="3uibUv" id="2_VYLT0gin4" role="UnYnz">
                        <ref role="3uigEE" to="hdhb:42hl10VHaI8" resolve="DiffModelTree" />
                      </node>
                    </node>
                  </node>
                  <node concept="1uHKPH" id="2_VYLT0gin5" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2_VYLT0gin6" role="3cqZAp">
              <node concept="3y3z36" id="2_VYLT0gGRZ" role="3clFbw">
                <node concept="37vLTw" id="2_VYLT0ginh" role="3uHU7B">
                  <ref role="3cqZAo" node="2_VYLT0gimX" resolve="diffTree" />
                </node>
                <node concept="10Nm6u" id="2_VYLT0gini" role="3uHU7w" />
              </node>
              <node concept="3clFbS" id="2_VYLT0gink" role="3clFbx">
                <node concept="3cpWs8" id="2_VYLT0ginl" role="3cqZAp">
                  <node concept="3cpWsn" id="2_VYLT0ginm" role="3cpWs9">
                    <property role="TrG5h" value="rows" />
                    <node concept="A3Dl8" id="2_VYLT0ginn" role="1tU5fm">
                      <node concept="3uibUv" id="2_VYLT0gino" role="A3Ik2">
                        <ref role="3uigEE" to="rgfa:~TreePath" resolve="TreePath" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2_VYLT0ginp" role="33vP2m">
                      <node concept="1rXfSq" id="2_VYLT0ginq" role="2Oq$k0">
                        <ref role="37wK5l" node="2XovqnGG59U" resolve="getRows" />
                        <node concept="37vLTw" id="2_VYLT0ginr" role="37wK5m">
                          <ref role="3cqZAo" node="2_VYLT0gimX" resolve="diffTree" />
                        </node>
                      </node>
                      <node concept="3zZkjj" id="2_VYLT0gins" role="2OqNvi">
                        <node concept="1bVj0M" id="2_VYLT0gint" role="23t8la">
                          <node concept="3clFbS" id="2_VYLT0ginu" role="1bW5cS">
                            <node concept="3clFbF" id="2_VYLT0ginv" role="3cqZAp">
                              <node concept="3y3z36" id="2_VYLT0ginw" role="3clFbG">
                                <node concept="10Nm6u" id="2_VYLT0ginx" role="3uHU7w" />
                                <node concept="0kSF2" id="2_VYLT0giny" role="3uHU7B">
                                  <node concept="3uibUv" id="2_VYLT0ginz" role="0kSFW">
                                    <ref role="3uigEE" to="hdhb:42hl10VHaJ2" resolve="DiffModelTree.RootTreeNode" />
                                  </node>
                                  <node concept="2OqwBi" id="2_VYLT0gin$" role="0kSFX">
                                    <node concept="37vLTw" id="2_VYLT0gin_" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2_VYLT0ginB" resolve="it" />
                                    </node>
                                    <node concept="liA8E" id="2_VYLT0ginA" role="2OqNvi">
                                      <ref role="37wK5l" to="rgfa:~TreePath.getLastPathComponent()" resolve="getLastPathComponent" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="2_VYLT0ginB" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="2_VYLT0ginC" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Gpval" id="2_VYLT0hhNU" role="3cqZAp">
                  <node concept="3clFbS" id="2_VYLT0hhNZ" role="2LFqv$">
                    <node concept="3cpWs8" id="2_VYLT0hhO0" role="3cqZAp">
                      <node concept="3cpWsn" id="2_VYLT0hhO1" role="3cpWs9">
                        <property role="TrG5h" value="treeNode" />
                        <node concept="3uibUv" id="2_VYLT0hhO2" role="1tU5fm">
                          <ref role="3uigEE" to="hdhb:42hl10VHaJ2" resolve="DiffModelTree.RootTreeNode" />
                        </node>
                        <node concept="0kSF2" id="2_VYLT0hhO3" role="33vP2m">
                          <node concept="3uibUv" id="2_VYLT0hhO4" role="0kSFW">
                            <ref role="3uigEE" to="hdhb:42hl10VHaJ2" resolve="DiffModelTree.RootTreeNode" />
                          </node>
                          <node concept="2OqwBi" id="2_VYLT0hhO5" role="0kSFX">
                            <node concept="2GrUjf" id="2_VYLT0hhPr" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="2_VYLT0hhPq" resolve="row" />
                            </node>
                            <node concept="liA8E" id="2_VYLT0hhO7" role="2OqNvi">
                              <ref role="37wK5l" to="rgfa:~TreePath.getLastPathComponent()" resolve="getLastPathComponent" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2_VYLT0hhO8" role="3cqZAp">
                      <node concept="2OqwBi" id="2_VYLT0hhO9" role="3clFbG">
                        <node concept="37vLTw" id="2_VYLT0hhOa" role="2Oq$k0">
                          <ref role="3cqZAo" node="2_VYLT0gimX" resolve="diffTree" />
                        </node>
                        <node concept="liA8E" id="2_VYLT0hhOb" role="2OqNvi">
                          <ref role="37wK5l" to="dxuu:~JTree.setSelectionPath(javax.swing.tree.TreePath)" resolve="setSelectionPath" />
                          <node concept="2GrUjf" id="2_VYLT0hhPs" role="37wK5m">
                            <ref role="2Gs0qQ" node="2_VYLT0hhPq" resolve="row" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="2_VYLT0hhOd" role="3cqZAp">
                      <node concept="3cpWsn" id="2_VYLT0hhOe" role="3cpWs9">
                        <property role="TrG5h" value="editorComponents" />
                        <node concept="A3Dl8" id="2_VYLT0hhOf" role="1tU5fm">
                          <node concept="3uibUv" id="2_VYLT0hhOg" role="A3Ik2">
                            <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="2_VYLT0hhOh" role="33vP2m">
                          <node concept="1rXfSq" id="2_VYLT0hhOi" role="2Oq$k0">
                            <ref role="37wK5l" node="2QFzCYK4dwL" resolve="collectComponents" />
                            <node concept="37vLTw" id="2_VYLT0hhOj" role="37wK5m">
                              <ref role="3cqZAo" node="2_VYLT0gims" resolve="viewer" />
                            </node>
                          </node>
                          <node concept="UnYns" id="2_VYLT0hhOk" role="2OqNvi">
                            <node concept="3uibUv" id="2_VYLT0hhOl" role="UnYnz">
                              <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2_VYLT0hhOm" role="3cqZAp">
                      <node concept="2OqwBi" id="2_VYLT0hhOn" role="3clFbG">
                        <node concept="37vLTw" id="2_VYLT0hhOo" role="2Oq$k0">
                          <ref role="3cqZAo" node="2_VYLT0hhOe" resolve="editorComponents" />
                        </node>
                        <node concept="2es0OD" id="2_VYLT0hhOp" role="2OqNvi">
                          <node concept="1bVj0M" id="2_VYLT0hhOq" role="23t8la">
                            <property role="3yWfEV" value="true" />
                            <node concept="3clFbS" id="2_VYLT0hhOr" role="1bW5cS">
                              <node concept="3clFbF" id="2_VYLT0hhOs" role="3cqZAp">
                                <node concept="2OqwBi" id="2_VYLT0hhOt" role="3clFbG">
                                  <node concept="2OqwBi" id="2_VYLT0hhOu" role="2Oq$k0">
                                    <node concept="2OqwBi" id="2_VYLT0hhOv" role="2Oq$k0">
                                      <node concept="2OqwBi" id="2_VYLT0hhOw" role="2Oq$k0">
                                        <node concept="37vLTw" id="2_VYLT0hhOx" role="2Oq$k0">
                                          <ref role="3cqZAo" node="2_VYLT0hhOI" resolve="editor" />
                                        </node>
                                        <node concept="liA8E" id="2_VYLT0hhOy" role="2OqNvi">
                                          <ref role="37wK5l" to="exr9:~EditorComponent.getEditorContext()" resolve="getEditorContext" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="2_VYLT0hhOz" role="2OqNvi">
                                        <ref role="37wK5l" to="exr9:~EditorContext.getRepository()" resolve="getRepository" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="2_VYLT0hhO$" role="2OqNvi">
                                      <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="2_VYLT0hhO_" role="2OqNvi">
                                    <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                                    <node concept="1bVj0M" id="2_VYLT0hhOA" role="37wK5m">
                                      <property role="3yWfEV" value="true" />
                                      <node concept="3clFbS" id="2_VYLT0hhOB" role="1bW5cS">
                                        <node concept="3clFbF" id="2_VYLT0hhOC" role="3cqZAp">
                                          <node concept="2OqwBi" id="2_VYLT0hhOD" role="3clFbG">
                                            <node concept="2OqwBi" id="2_VYLT0hhOE" role="2Oq$k0">
                                              <node concept="37vLTw" id="2_VYLT0hhOF" role="2Oq$k0">
                                                <ref role="3cqZAo" node="2_VYLT0hhOI" resolve="editor" />
                                              </node>
                                              <node concept="liA8E" id="2_VYLT0hhOG" role="2OqNvi">
                                                <ref role="37wK5l" to="exr9:~EditorComponent.getHighlightManager()" resolve="getHighlightManager" />
                                              </node>
                                            </node>
                                            <node concept="1PvZjq" id="2_VYLT0hhOH" role="2OqNvi">
                                              <ref role="37wK5l" to="exr9:~NodeHighlightManager.refreshMessagesCache()" resolve="refreshMessagesCache" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="2_VYLT0hhOI" role="1bW2Oz">
                              <property role="TrG5h" value="editor" />
                              <node concept="2jxLKc" id="2_VYLT0hhOJ" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="2_VYLT0hhOK" role="3cqZAp" />
                    <node concept="3cpWs8" id="2_VYLT0hhOL" role="3cqZAp">
                      <node concept="3cpWsn" id="2_VYLT0hhOM" role="3cpWs9">
                        <property role="TrG5h" value="componentToPaint" />
                        <node concept="3uibUv" id="2_VYLT0hhON" role="1tU5fm">
                          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                        </node>
                        <node concept="1rXfSq" id="2_VYLT0hhOO" role="33vP2m">
                          <ref role="37wK5l" node="27MnIraei6p" resolve="commonAncestor" />
                          <node concept="2OqwBi" id="2_VYLT0hhOP" role="37wK5m">
                            <node concept="37vLTw" id="2_VYLT0hhOQ" role="2Oq$k0">
                              <ref role="3cqZAo" node="2_VYLT0hhOe" resolve="editorComponents" />
                            </node>
                            <node concept="UnYns" id="2_VYLT0hhOR" role="2OqNvi">
                              <node concept="3uibUv" id="2_VYLT0hhOS" role="UnYnz">
                                <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2_VYLT0hhOT" role="3cqZAp">
                      <node concept="1rXfSq" id="2_VYLT0hhOU" role="3clFbG">
                        <ref role="37wK5l" node="2QFzCYK4SMF" resolve="layoutDiffView" />
                        <node concept="37vLTw" id="2_VYLT0hhOV" role="37wK5m">
                          <ref role="3cqZAo" node="2_VYLT0hhOM" resolve="componentToPaint" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="2_VYLT0hhOW" role="3cqZAp">
                      <node concept="3cpWsn" id="2_VYLT0hhOX" role="3cpWs9">
                        <property role="TrG5h" value="img" />
                        <node concept="3uibUv" id="2_VYLT0hhOY" role="1tU5fm">
                          <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
                        </node>
                        <node concept="1rXfSq" id="2_VYLT0hhOZ" role="33vP2m">
                          <ref role="37wK5l" node="2QFzCYK566q" resolve="paintComponent" />
                          <node concept="37vLTw" id="2_VYLT0hhP0" role="37wK5m">
                            <ref role="3cqZAo" node="2_VYLT0hhOM" resolve="componentToPaint" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2_VYLT0hhP1" role="3cqZAp">
                      <node concept="2OqwBi" id="2_VYLT0hhP2" role="3clFbG">
                        <node concept="37vLTw" id="2_VYLT0hhP3" role="2Oq$k0">
                          <ref role="3cqZAo" node="2_VYLT0gilV" resolve="images" />
                        </node>
                        <node concept="TSZUe" id="2_VYLT0hhP4" role="2OqNvi">
                          <node concept="2ShNRf" id="2_VYLT0hhP5" role="25WWJ7">
                            <node concept="1pGfFk" id="2_VYLT0hhP6" role="2ShVmc">
                              <ref role="37wK5l" node="27MnIr9YL9i" resolve="DiffImage" />
                              <node concept="37vLTw" id="2_VYLT0hhP7" role="37wK5m">
                                <ref role="3cqZAo" node="2_VYLT0hhOX" resolve="img" />
                              </node>
                              <node concept="2ShNRf" id="2_VYLT0hhP8" role="37wK5m">
                                <node concept="1pGfFk" id="2_VYLT0hhP9" role="2ShVmc">
                                  <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                                  <node concept="2OqwBi" id="2_VYLT0hhPa" role="37wK5m">
                                    <node concept="37vLTw" id="2_VYLT0hhPb" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2_VYLT0hhOM" resolve="componentToPaint" />
                                    </node>
                                    <node concept="liA8E" id="2_VYLT0hhPc" role="2OqNvi">
                                      <ref role="37wK5l" to="z60i:~Component.getWidth()" resolve="getWidth" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="2_VYLT0hhPd" role="37wK5m">
                                    <node concept="37vLTw" id="2_VYLT0hhPe" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2_VYLT0hhOM" resolve="componentToPaint" />
                                    </node>
                                    <node concept="liA8E" id="2_VYLT0hhPf" role="2OqNvi">
                                      <ref role="37wK5l" to="z60i:~Component.getHeight()" resolve="getHeight" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1rXfSq" id="2_VYLT0hhPg" role="37wK5m">
                                <ref role="37wK5l" node="27MnIra7RKs" resolve="relativize" />
                                <node concept="1rXfSq" id="2_VYLT0hhPh" role="37wK5m">
                                  <ref role="37wK5l" node="2QFzCYK41LB" resolve="getAffectedFile" />
                                  <node concept="37vLTw" id="2_VYLT0hhPi" role="37wK5m">
                                    <ref role="3cqZAo" node="2_VYLT0giq9" resolve="change" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="2_VYLT0hhPj" role="37wK5m">
                                  <ref role="3cqZAo" node="2_VYLT0giq7" resolve="repoRoot" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="2_VYLT0hhPk" role="37wK5m">
                                <node concept="37vLTw" id="2_VYLT0hhPl" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2_VYLT0hhO1" resolve="treeNode" />
                                </node>
                                <node concept="liA8E" id="2_VYLT0hhPm" role="2OqNvi">
                                  <ref role="37wK5l" to="hdhb:42hl10VHaLR" resolve="getRootId" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="2_VYLT0hhPn" role="37wK5m">
                                <node concept="37vLTw" id="2_VYLT0hhPo" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2_VYLT0hhO1" resolve="treeNode" />
                                </node>
                                <node concept="liA8E" id="2_VYLT0hhPp" role="2OqNvi">
                                  <ref role="37wK5l" to="hdhb:2alxbCQFCET" resolve="getPresentation" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2_VYLT0hhNY" role="2GsD0m">
                    <ref role="3cqZAo" node="2_VYLT0ginm" resolve="rows" />
                  </node>
                  <node concept="2GrKxI" id="2_VYLT0hhPq" role="2Gsz3X">
                    <property role="TrG5h" value="row" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="2_VYLT0gipW" role="1zxBo6">
            <node concept="3clFbS" id="2_VYLT0gipX" role="1wplMD">
              <node concept="3clFbF" id="2_VYLT0gipY" role="3cqZAp">
                <node concept="2OqwBi" id="2_VYLT0gipZ" role="3clFbG">
                  <node concept="37vLTw" id="2_VYLT0giq0" role="2Oq$k0">
                    <ref role="3cqZAo" node="2_VYLT0gimh" resolve="modelDiffViewer" />
                  </node>
                  <node concept="liA8E" id="2_VYLT0giq1" role="2OqNvi">
                    <ref role="37wK5l" to="qyr2:1R9fMbxrL$Q" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2_VYLT0haRR" role="3cqZAp">
          <node concept="37vLTw" id="2_VYLT0hdx9" role="3cqZAk">
            <ref role="3cqZAo" node="2_VYLT0gilV" resolve="images" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2XovqnGG22r" role="jymVt" />
    <node concept="3clFb_" id="2XovqnGG59U" role="jymVt">
      <property role="TrG5h" value="getRows" />
      <node concept="37vLTG" id="2XovqnGGqvN" role="3clF46">
        <property role="TrG5h" value="tree" />
        <node concept="3uibUv" id="2XovqnGGs_3" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JTree" resolve="JTree" />
        </node>
      </node>
      <node concept="A3Dl8" id="2XovqnGG$qL" role="3clF45">
        <node concept="3uibUv" id="2XovqnGGBjy" role="A3Ik2">
          <ref role="3uigEE" to="rgfa:~TreePath" resolve="TreePath" />
        </node>
      </node>
      <node concept="3Tmbuc" id="2XovqnGGdJL" role="1B3o_S" />
      <node concept="3clFbS" id="2XovqnGG59Y" role="3clF47">
        <node concept="3cpWs8" id="2XovqnGGttj" role="3cqZAp">
          <node concept="3cpWsn" id="2XovqnGGttm" role="3cpWs9">
            <property role="TrG5h" value="rows" />
            <node concept="_YKpA" id="2XovqnGGtth" role="1tU5fm">
              <node concept="3uibUv" id="2XovqnGGtyk" role="_ZDj9">
                <ref role="3uigEE" to="rgfa:~TreePath" resolve="TreePath" />
              </node>
            </node>
            <node concept="2ShNRf" id="2XovqnGGtQY" role="33vP2m">
              <node concept="Tc6Ow" id="2XovqnGGtIY" role="2ShVmc">
                <node concept="3uibUv" id="2XovqnGGtIZ" role="HW$YZ">
                  <ref role="3uigEE" to="rgfa:~TreePath" resolve="TreePath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="2XovqnGGwQd" role="3cqZAp">
          <node concept="3cpWsn" id="2XovqnGGwQe" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="2XovqnGGwQf" role="1tU5fm" />
            <node concept="3cmrfG" id="2XovqnGGwQg" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="2XovqnGGwQh" role="1Dwp0S">
            <node concept="37vLTw" id="2XovqnGGwQi" role="3uHU7B">
              <ref role="3cqZAo" node="2XovqnGGwQe" resolve="i" />
            </node>
            <node concept="2OqwBi" id="2XovqnGGwQj" role="3uHU7w">
              <node concept="37vLTw" id="2XovqnGGEao" role="2Oq$k0">
                <ref role="3cqZAo" node="2XovqnGGqvN" resolve="tree" />
              </node>
              <node concept="liA8E" id="2XovqnGGwQl" role="2OqNvi">
                <ref role="37wK5l" to="dxuu:~JTree.getRowCount()" resolve="getRowCount" />
              </node>
            </node>
          </node>
          <node concept="3uNrnE" id="2XovqnGGwQm" role="1Dwrff">
            <node concept="37vLTw" id="2XovqnGGwQn" role="2$L3a6">
              <ref role="3cqZAo" node="2XovqnGGwQe" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="2XovqnGGwQo" role="2LFqv$">
            <node concept="3clFbF" id="2XovqnGGIjj" role="3cqZAp">
              <node concept="2OqwBi" id="2XovqnGGJzg" role="3clFbG">
                <node concept="37vLTw" id="2XovqnGGIjh" role="2Oq$k0">
                  <ref role="3cqZAo" node="2XovqnGGttm" resolve="rows" />
                </node>
                <node concept="TSZUe" id="2XovqnGGKtI" role="2OqNvi">
                  <node concept="2OqwBi" id="2XovqnGGKvB" role="25WWJ7">
                    <node concept="37vLTw" id="2XovqnGGKvC" role="2Oq$k0">
                      <ref role="3cqZAo" node="2XovqnGGqvN" resolve="tree" />
                    </node>
                    <node concept="liA8E" id="2XovqnGGKvD" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~JTree.getPathForRow(int)" resolve="getPathForRow" />
                      <node concept="37vLTw" id="2XovqnGGKvE" role="37wK5m">
                        <ref role="3cqZAo" node="2XovqnGGwQe" resolve="i" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2XovqnGGtWn" role="3cqZAp" />
        <node concept="3cpWs6" id="2XovqnGGu4S" role="3cqZAp">
          <node concept="37vLTw" id="2XovqnGGud2" role="3cqZAk">
            <ref role="3cqZAo" node="2XovqnGGttm" resolve="rows" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4kPMkltK4_z" role="jymVt" />
    <node concept="2YIFZL" id="2QFzCYK41LB" role="jymVt">
      <property role="TrG5h" value="getAffectedFile" />
      <node concept="37vLTG" id="2QFzCYK41LC" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="2QFzCYK47rA" role="1tU5fm">
          <ref role="3uigEE" to="1037:~Change" resolve="Change" />
        </node>
      </node>
      <node concept="3clFbS" id="2QFzCYK41LE" role="3clF47">
        <node concept="3cpWs8" id="2QFzCYK47Sk" role="3cqZAp">
          <node concept="3cpWsn" id="2QFzCYK47Sl" role="3cpWs9">
            <property role="TrG5h" value="rev" />
            <node concept="3uibUv" id="2QFzCYK47Px" role="1tU5fm">
              <ref role="3uigEE" to="1037:~ContentRevision" resolve="ContentRevision" />
            </node>
            <node concept="2OqwBi" id="2QFzCYK47Sm" role="33vP2m">
              <node concept="37vLTw" id="2QFzCYK47Sn" role="2Oq$k0">
                <ref role="3cqZAo" node="2QFzCYK41LC" resolve="change" />
              </node>
              <node concept="liA8E" id="2QFzCYK47So" role="2OqNvi">
                <ref role="37wK5l" to="1037:~Change.getAfterRevision()" resolve="getAfterRevision" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2QFzCYK48da" role="3cqZAp">
          <node concept="3clFbS" id="2QFzCYK48dc" role="3clFbx">
            <node concept="3clFbF" id="2QFzCYK48Jv" role="3cqZAp">
              <node concept="37vLTI" id="2QFzCYK48Vi" role="3clFbG">
                <node concept="2OqwBi" id="2QFzCYK49ap" role="37vLTx">
                  <node concept="37vLTw" id="2QFzCYK4907" role="2Oq$k0">
                    <ref role="3cqZAo" node="2QFzCYK41LC" resolve="change" />
                  </node>
                  <node concept="liA8E" id="2QFzCYK49jV" role="2OqNvi">
                    <ref role="37wK5l" to="1037:~Change.getBeforeRevision()" resolve="getBeforeRevision" />
                  </node>
                </node>
                <node concept="37vLTw" id="2QFzCYK48Jt" role="37vLTJ">
                  <ref role="3cqZAo" node="2QFzCYK47Sl" resolve="rev" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2QFzCYK48$m" role="3clFbw">
            <node concept="10Nm6u" id="2QFzCYK48D2" role="3uHU7w" />
            <node concept="37vLTw" id="2QFzCYK48lV" role="3uHU7B">
              <ref role="3cqZAo" node="2QFzCYK47Sl" resolve="rev" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2QFzCYK41LF" role="3cqZAp">
          <node concept="2OqwBi" id="2QFzCYK41LG" role="3cqZAk">
            <node concept="37vLTw" id="2QFzCYK49xM" role="2Oq$k0">
              <ref role="3cqZAo" node="2QFzCYK47Sl" resolve="rev" />
            </node>
            <node concept="liA8E" id="2QFzCYK41LK" role="2OqNvi">
              <ref role="37wK5l" to="1037:~ContentRevision.getFile()" resolve="getFile" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2QFzCYK41LL" role="1B3o_S" />
      <node concept="3uibUv" id="2QFzCYK49EP" role="3clF45">
        <ref role="3uigEE" to="jlcu:~FilePath" resolve="FilePath" />
      </node>
    </node>
    <node concept="2tJIrI" id="27MnIra7Rd6" role="jymVt" />
    <node concept="3clFb_" id="27MnIra7RKs" role="jymVt">
      <property role="TrG5h" value="relativize" />
      <node concept="37vLTG" id="27MnIra8aw7" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="27MnIra8cjU" role="1tU5fm">
          <ref role="3uigEE" to="jlcu:~FilePath" resolve="FilePath" />
        </node>
      </node>
      <node concept="37vLTG" id="27MnIra8cLO" role="3clF46">
        <property role="TrG5h" value="repoRoot" />
        <node concept="3uibUv" id="2XovqnGTO2b" role="1tU5fm">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="17QB3L" id="27MnIra8kaE" role="3clF45" />
      <node concept="3Tm1VV" id="27MnIra7RKv" role="1B3o_S" />
      <node concept="3clFbS" id="27MnIra7RKw" role="3clF47">
        <node concept="3cpWs8" id="27MnIra8uXL" role="3cqZAp">
          <node concept="3cpWsn" id="27MnIra8uXM" role="3cpWs9">
            <property role="TrG5h" value="file" />
            <node concept="17QB3L" id="27MnIra8vXJ" role="1tU5fm" />
            <node concept="2OqwBi" id="27MnIra8uXN" role="33vP2m">
              <node concept="37vLTw" id="27MnIra8zei" role="2Oq$k0">
                <ref role="3cqZAo" node="27MnIra8aw7" resolve="path" />
              </node>
              <node concept="liA8E" id="27MnIra8uXP" role="2OqNvi">
                <ref role="37wK5l" to="jlcu:~FilePath.getPath()" resolve="getPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="27MnIra8wZh" role="3cqZAp">
          <node concept="3cpWsn" id="27MnIra8wZi" role="3cpWs9">
            <property role="TrG5h" value="folder" />
            <node concept="17QB3L" id="27MnIra8y3F" role="1tU5fm" />
            <node concept="2OqwBi" id="27MnIra8wZj" role="33vP2m">
              <node concept="37vLTw" id="27MnIra8wZk" role="2Oq$k0">
                <ref role="3cqZAo" node="27MnIra8cLO" resolve="repoRoot" />
              </node>
              <node concept="liA8E" id="2XovqnGTS0$" role="2OqNvi">
                <ref role="37wK5l" to="jlff:~VirtualFile.getPath()" resolve="getPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="27MnIra8z_j" role="3cqZAp">
          <node concept="3clFbS" id="27MnIra8z_l" role="3clFbx">
            <node concept="3cpWs8" id="27MnIra9oJE" role="3cqZAp">
              <node concept="3cpWsn" id="27MnIra9oJF" role="3cpWs9">
                <property role="TrG5h" value="relative" />
                <node concept="17QB3L" id="27MnIra9tZI" role="1tU5fm" />
                <node concept="2OqwBi" id="27MnIra9oJG" role="33vP2m">
                  <node concept="37vLTw" id="27MnIra9oJH" role="2Oq$k0">
                    <ref role="3cqZAo" node="27MnIra8uXM" resolve="file" />
                  </node>
                  <node concept="liA8E" id="27MnIra9oJI" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                    <node concept="2OqwBi" id="27MnIra9oJJ" role="37wK5m">
                      <node concept="37vLTw" id="27MnIra9oJK" role="2Oq$k0">
                        <ref role="3cqZAo" node="27MnIra8wZi" resolve="folder" />
                      </node>
                      <node concept="liA8E" id="27MnIra9oJL" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="27MnIra9z2K" role="3cqZAp">
              <node concept="3clFbS" id="27MnIra9z2M" role="3clFbx">
                <node concept="3clFbF" id="27MnIra9B3y" role="3cqZAp">
                  <node concept="37vLTI" id="27MnIra9Bt3" role="3clFbG">
                    <node concept="2OqwBi" id="27MnIra9C5Y" role="37vLTx">
                      <node concept="37vLTw" id="27MnIra9BGn" role="2Oq$k0">
                        <ref role="3cqZAo" node="27MnIra9oJF" resolve="relative" />
                      </node>
                      <node concept="liA8E" id="27MnIra9Chc" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                        <node concept="3cmrfG" id="27MnIra9Cov" role="37wK5m">
                          <property role="3cmrfH" value="1" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="27MnIra9B3w" role="37vLTJ">
                      <ref role="3cqZAo" node="27MnIra9oJF" resolve="relative" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="27MnIra9ArB" role="3clFbw">
                <node concept="37vLTw" id="27MnIra9_XS" role="2Oq$k0">
                  <ref role="3cqZAo" node="27MnIra9oJF" resolve="relative" />
                </node>
                <node concept="liA8E" id="27MnIra9AF0" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
                  <node concept="Xl_RD" id="27MnIra9ANq" role="37wK5m">
                    <property role="Xl_RC" value="/" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="27MnIra8GTK" role="3cqZAp">
              <node concept="37vLTw" id="27MnIra9oJM" role="3cqZAk">
                <ref role="3cqZAo" node="27MnIra9oJF" resolve="relative" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="27MnIra8$nf" role="3clFbw">
            <node concept="37vLTw" id="27MnIra8zU3" role="2Oq$k0">
              <ref role="3cqZAo" node="27MnIra8uXM" resolve="file" />
            </node>
            <node concept="liA8E" id="27MnIra8$C4" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String)" resolve="startsWith" />
              <node concept="37vLTw" id="27MnIra8$Kb" role="37wK5m">
                <ref role="3cqZAo" node="27MnIra8wZi" resolve="folder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="27MnIra94b$" role="3cqZAp">
          <node concept="37vLTw" id="27MnIra970_" role="3cqZAk">
            <ref role="3cqZAo" node="27MnIra8uXM" resolve="file" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4kPMkltK63S" role="jymVt" />
    <node concept="2YIFZL" id="2QFzCYK40mo" role="jymVt">
      <property role="TrG5h" value="isModel" />
      <node concept="37vLTG" id="2QFzCYK40mp" role="3clF46">
        <property role="TrG5h" value="change" />
        <node concept="3uibUv" id="2QFzCYK5pK6" role="1tU5fm">
          <ref role="3uigEE" to="1037:~Change" resolve="Change" />
        </node>
      </node>
      <node concept="3clFbS" id="2QFzCYK40mr" role="3clF47">
        <node concept="3cpWs8" id="2QFzCYK40mt" role="3cqZAp">
          <node concept="3cpWsn" id="2QFzCYK40ms" role="3cpWs9">
            <property role="TrG5h" value="ext" />
            <node concept="17QB3L" id="2QFzCYK4cRu" role="1tU5fm" />
            <node concept="2OqwBi" id="2QFzCYK40mv" role="33vP2m">
              <node concept="2OqwBi" id="2QFzCYK40mw" role="2Oq$k0">
                <node concept="1rXfSq" id="2QFzCYK40mx" role="2Oq$k0">
                  <ref role="37wK5l" node="2QFzCYK41LB" resolve="getAffectedFile" />
                  <node concept="37vLTw" id="2QFzCYK40my" role="37wK5m">
                    <ref role="3cqZAo" node="2QFzCYK40mp" resolve="change" />
                  </node>
                </node>
                <node concept="liA8E" id="2QFzCYK40mz" role="2OqNvi">
                  <ref role="37wK5l" to="jlcu:~FilePath.getFileType()" resolve="getFileType" />
                </node>
              </node>
              <node concept="liA8E" id="2QFzCYK40m$" role="2OqNvi">
                <ref role="37wK5l" to="fglx:~FileType.getDefaultExtension()" resolve="getDefaultExtension" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2QFzCYK40m_" role="3cqZAp">
          <node concept="3y3z36" id="2QFzCYK40mA" role="3cqZAk">
            <node concept="2OqwBi" id="2QFzCYK40mB" role="3uHU7B">
              <node concept="2YIFZM" id="2QFzCYK4bT_" role="2Oq$k0">
                <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
              </node>
              <node concept="liA8E" id="2QFzCYK40mD" role="2OqNvi">
                <ref role="37wK5l" to="dush:~PersistenceFacade.getModelFactory(org.jetbrains.mps.openapi.persistence.datasource.DataSourceType)" resolve="getModelFactory" />
                <node concept="2YIFZM" id="2QFzCYK4cCr" role="37wK5m">
                  <ref role="37wK5l" to="bxo2:~FileExtensionDataSourceType.of(java.lang.String)" resolve="of" />
                  <ref role="1Pybhc" to="bxo2:~FileExtensionDataSourceType" resolve="FileExtensionDataSourceType" />
                  <node concept="37vLTw" id="2QFzCYK4cNm" role="37wK5m">
                    <ref role="3cqZAo" node="2QFzCYK40ms" resolve="ext" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="10Nm6u" id="2QFzCYK40mG" role="3uHU7w" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2QFzCYK40mH" role="1B3o_S" />
      <node concept="10P_77" id="2QFzCYK40mI" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4kPMkltK7g7" role="jymVt" />
    <node concept="2YIFZL" id="2QFzCYK4dwL" role="jymVt">
      <property role="TrG5h" value="collectComponents" />
      <node concept="37vLTG" id="2QFzCYK4dwM" role="3clF46">
        <property role="TrG5h" value="comp" />
        <node concept="3uibUv" id="2QFzCYK4dwN" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="3clFbS" id="2QFzCYK4dwO" role="3clF47">
        <node concept="3cpWs8" id="2QFzCYK4dwQ" role="3cqZAp">
          <node concept="3cpWsn" id="2QFzCYK4dwP" role="3cpWs9">
            <property role="TrG5h" value="acc" />
            <node concept="3uibUv" id="2QFzCYK4dwR" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="2QFzCYK4dwS" role="11_B2D">
                <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
              </node>
            </node>
            <node concept="2ShNRf" id="2QFzCYK4fkF" role="33vP2m">
              <node concept="1pGfFk" id="2QFzCYK4fkK" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="2QFzCYK4$BI" role="1pMfVU">
                  <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QFzCYK4dwU" role="3cqZAp">
          <node concept="1rXfSq" id="2QFzCYK4dwV" role="3clFbG">
            <ref role="37wK5l" node="2QFzCYK4dx3" resolve="collectComponents" />
            <node concept="37vLTw" id="2QFzCYK4dwW" role="37wK5m">
              <ref role="3cqZAo" node="2QFzCYK4dwM" resolve="comp" />
            </node>
            <node concept="37vLTw" id="2QFzCYK4dwX" role="37wK5m">
              <ref role="3cqZAo" node="2QFzCYK4dwP" resolve="acc" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2QFzCYK4dwY" role="3cqZAp">
          <node concept="37vLTw" id="2QFzCYK4dwZ" role="3cqZAk">
            <ref role="3cqZAo" node="2QFzCYK4dwP" resolve="acc" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2QFzCYK4dx0" role="1B3o_S" />
      <node concept="_YKpA" id="2QFzCYK4_gV" role="3clF45">
        <node concept="3uibUv" id="2QFzCYK4_gX" role="_ZDj9">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4kPMkltK8Ef" role="jymVt" />
    <node concept="2YIFZL" id="2QFzCYK4dx3" role="jymVt">
      <property role="TrG5h" value="collectComponents" />
      <node concept="37vLTG" id="2QFzCYK4dx4" role="3clF46">
        <property role="TrG5h" value="comp" />
        <node concept="3uibUv" id="2QFzCYK4dx5" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="37vLTG" id="2QFzCYK4dx6" role="3clF46">
        <property role="TrG5h" value="acc" />
        <node concept="_YKpA" id="2QFzCYK4Bco" role="1tU5fm">
          <node concept="3uibUv" id="2QFzCYK4Bcq" role="_ZDj9">
            <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2QFzCYK4dx9" role="3clF47">
        <node concept="3clFbJ" id="27MnIr9WLIY" role="3cqZAp">
          <node concept="3clFbS" id="27MnIr9WLJ0" role="3clFbx">
            <node concept="3cpWs6" id="27MnIr9WN87" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="27MnIr9WMBt" role="3clFbw">
            <node concept="10Nm6u" id="27MnIr9WMII" role="3uHU7w" />
            <node concept="37vLTw" id="27MnIr9WLWU" role="3uHU7B">
              <ref role="3cqZAo" node="2QFzCYK4dx4" resolve="comp" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QFzCYK4dxa" role="3cqZAp">
          <node concept="2OqwBi" id="2QFzCYK4f90" role="3clFbG">
            <node concept="37vLTw" id="2QFzCYK4f8Z" role="2Oq$k0">
              <ref role="3cqZAo" node="2QFzCYK4dx6" resolve="acc" />
            </node>
            <node concept="TSZUe" id="2QFzCYK4CjE" role="2OqNvi">
              <node concept="37vLTw" id="2QFzCYK4CtF" role="25WWJ7">
                <ref role="3cqZAo" node="2QFzCYK4dx4" resolve="comp" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2QFzCYK4dxd" role="3cqZAp">
          <node concept="2ZW3vV" id="2QFzCYK4dxg" role="3clFbw">
            <node concept="37vLTw" id="2QFzCYK4dxe" role="2ZW6bz">
              <ref role="3cqZAo" node="2QFzCYK4dx4" resolve="comp" />
            </node>
            <node concept="3uibUv" id="2QFzCYK4dxf" role="2ZW6by">
              <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
            </node>
          </node>
          <node concept="3clFbS" id="2QFzCYK4dxi" role="3clFbx">
            <node concept="1DcWWT" id="2QFzCYK4dxj" role="3cqZAp">
              <node concept="2OqwBi" id="2QFzCYK4dxt" role="1DdaDG">
                <node concept="1eOMI4" id="2QFzCYK4dxx" role="2Oq$k0">
                  <node concept="10QFUN" id="2QFzCYK4dxu" role="1eOMHV">
                    <node concept="37vLTw" id="2QFzCYK4dxv" role="10QFUP">
                      <ref role="3cqZAo" node="2QFzCYK4dx4" resolve="comp" />
                    </node>
                    <node concept="3uibUv" id="2QFzCYK4dxw" role="10QFUM">
                      <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2QFzCYK4dxy" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.getComponents()" resolve="getComponents" />
                </node>
              </node>
              <node concept="3cpWsn" id="2QFzCYK4dxq" role="1Duv9x">
                <property role="TrG5h" value="child" />
                <node concept="3uibUv" id="2QFzCYK4dxs" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                </node>
              </node>
              <node concept="3clFbS" id="2QFzCYK4dxl" role="2LFqv$">
                <node concept="3clFbF" id="2QFzCYK4dxm" role="3cqZAp">
                  <node concept="1rXfSq" id="2QFzCYK4dxn" role="3clFbG">
                    <ref role="37wK5l" node="2QFzCYK4dx3" resolve="collectComponents" />
                    <node concept="37vLTw" id="2QFzCYK4dxo" role="37wK5m">
                      <ref role="3cqZAo" node="2QFzCYK4dxq" resolve="child" />
                    </node>
                    <node concept="37vLTw" id="2QFzCYK4dxp" role="37wK5m">
                      <ref role="3cqZAo" node="2QFzCYK4dx6" resolve="acc" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2QFzCYK4dxz" role="1B3o_S" />
      <node concept="3cqZAl" id="2QFzCYK4dx$" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4kPMkltK9Vn" role="jymVt" />
    <node concept="2YIFZL" id="2QFzCYK566q" role="jymVt">
      <property role="TrG5h" value="paintComponent" />
      <node concept="37vLTG" id="2QFzCYK566r" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="27MnIraeCkM" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="3clFbS" id="2QFzCYK566t" role="3clF47">
        <node concept="3cpWs8" id="2QFzCYK566v" role="3cqZAp">
          <node concept="3cpWsn" id="2QFzCYK566u" role="3cpWs9">
            <property role="TrG5h" value="img" />
            <node concept="3uibUv" id="2QFzCYK5cp0" role="1tU5fm">
              <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
            </node>
            <node concept="2YIFZM" id="2QFzCYK5mfR" role="33vP2m">
              <ref role="1Pybhc" to="g1qu:~UIUtil" resolve="UIUtil" />
              <ref role="37wK5l" to="g1qu:~UIUtil.createImage(java.awt.Component,int,int,int)" resolve="createImage" />
              <node concept="37vLTw" id="2QFzCYK5mfS" role="37wK5m">
                <ref role="3cqZAo" node="2QFzCYK566r" resolve="component" />
              </node>
              <node concept="2OqwBi" id="2QFzCYK5mfT" role="37wK5m">
                <node concept="37vLTw" id="2QFzCYK5mfU" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QFzCYK566r" resolve="component" />
                </node>
                <node concept="liA8E" id="2QFzCYK5mfV" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.getWidth()" resolve="getWidth" />
                </node>
              </node>
              <node concept="2OqwBi" id="2QFzCYK5mfW" role="37wK5m">
                <node concept="37vLTw" id="2QFzCYK5mfX" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QFzCYK566r" resolve="component" />
                </node>
                <node concept="liA8E" id="2QFzCYK5mfY" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.getHeight()" resolve="getHeight" />
                </node>
              </node>
              <node concept="10M0yZ" id="2QFzCYK5mfZ" role="37wK5m">
                <ref role="1PxDUh" to="jan3:~BufferedImage" resolve="BufferedImage" />
                <ref role="3cqZAo" to="jan3:~BufferedImage.TYPE_INT_ARGB" resolve="TYPE_INT_ARGB" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2QFzCYK566B" role="3cqZAp">
          <node concept="3cpWsn" id="2QFzCYK566A" role="3cpWs9">
            <property role="TrG5h" value="g" />
            <node concept="3uibUv" id="2QFzCYK566C" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
            </node>
            <node concept="2OqwBi" id="2QFzCYK5eOu" role="33vP2m">
              <node concept="37vLTw" id="2QFzCYK5eOt" role="2Oq$k0">
                <ref role="3cqZAo" node="2QFzCYK566u" resolve="img" />
              </node>
              <node concept="liA8E" id="2QFzCYK5eOv" role="2OqNvi">
                <ref role="37wK5l" to="jan3:~BufferedImage.createGraphics()" resolve="createGraphics" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QFzCYK566E" role="3cqZAp">
          <node concept="2OqwBi" id="2QFzCYK59S1" role="3clFbG">
            <node concept="37vLTw" id="2QFzCYK59S0" role="2Oq$k0">
              <ref role="3cqZAo" node="2QFzCYK566A" resolve="g" />
            </node>
            <node concept="liA8E" id="2QFzCYK59S2" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)" resolve="setRenderingHint" />
              <node concept="10M0yZ" id="2QFzCYK5ena" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                <ref role="3cqZAo" to="z60i:~RenderingHints.KEY_TEXT_ANTIALIASING" resolve="KEY_TEXT_ANTIALIASING" />
              </node>
              <node concept="10M0yZ" id="2QFzCYK5etr" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                <ref role="3cqZAo" to="z60i:~RenderingHints.VALUE_TEXT_ANTIALIAS_ON" resolve="VALUE_TEXT_ANTIALIAS_ON" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QFzCYK566I" role="3cqZAp">
          <node concept="2OqwBi" id="2QFzCYK5ePG" role="3clFbG">
            <node concept="37vLTw" id="2QFzCYK5ePF" role="2Oq$k0">
              <ref role="3cqZAo" node="2QFzCYK566A" resolve="g" />
            </node>
            <node concept="liA8E" id="2QFzCYK5ePH" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)" resolve="setRenderingHint" />
              <node concept="10M0yZ" id="2QFzCYK5ePI" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                <ref role="3cqZAo" to="z60i:~RenderingHints.KEY_ANTIALIASING" resolve="KEY_ANTIALIASING" />
              </node>
              <node concept="10M0yZ" id="2QFzCYK5ePJ" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                <ref role="3cqZAo" to="z60i:~RenderingHints.VALUE_ANTIALIAS_ON" resolve="VALUE_ANTIALIAS_ON" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QFzCYK566M" role="3cqZAp">
          <node concept="2OqwBi" id="2QFzCYK59QY" role="3clFbG">
            <node concept="37vLTw" id="2QFzCYK59QX" role="2Oq$k0">
              <ref role="3cqZAo" node="2QFzCYK566A" resolve="g" />
            </node>
            <node concept="liA8E" id="2QFzCYK59QZ" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)" resolve="setRenderingHint" />
              <node concept="10M0yZ" id="2QFzCYK5eQI" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                <ref role="3cqZAo" to="z60i:~RenderingHints.KEY_RENDERING" resolve="KEY_RENDERING" />
              </node>
              <node concept="10M0yZ" id="2QFzCYK5ecg" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~RenderingHints" resolve="RenderingHints" />
                <ref role="3cqZAo" to="z60i:~RenderingHints.VALUE_RENDER_QUALITY" resolve="VALUE_RENDER_QUALITY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QFzCYK566Q" role="3cqZAp">
          <node concept="2OqwBi" id="2QFzCYK5acc" role="3clFbG">
            <node concept="37vLTw" id="2QFzCYK5acb" role="2Oq$k0">
              <ref role="3cqZAo" node="2QFzCYK566r" resolve="component" />
            </node>
            <node concept="liA8E" id="2QFzCYK5acd" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.paint(java.awt.Graphics)" resolve="paint" />
              <node concept="37vLTw" id="2QFzCYK5ace" role="37wK5m">
                <ref role="3cqZAo" node="2QFzCYK566A" resolve="g" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2QFzCYK566T" role="3cqZAp">
          <node concept="37vLTw" id="2QFzCYK566U" role="3cqZAk">
            <ref role="3cqZAo" node="2QFzCYK566u" resolve="img" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2QFzCYK566V" role="1B3o_S" />
      <node concept="3uibUv" id="2QFzCYK566W" role="3clF45">
        <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
      </node>
    </node>
    <node concept="2tJIrI" id="4kPMkltKbgA" role="jymVt" />
    <node concept="2YIFZL" id="2QFzCYK4SMF" role="jymVt">
      <property role="TrG5h" value="layoutDiffView" />
      <node concept="37vLTG" id="2QFzCYK4SMG" role="3clF46">
        <property role="TrG5h" value="viewer" />
        <node concept="3uibUv" id="27MnIragtS9" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="3clFbS" id="2QFzCYK4SMI" role="3clF47">
        <node concept="3clFbF" id="2QFzCYK4SMJ" role="3cqZAp">
          <node concept="2OqwBi" id="2QFzCYK4YOq" role="3clFbG">
            <node concept="37vLTw" id="2QFzCYK4YOp" role="2Oq$k0">
              <ref role="3cqZAo" node="2QFzCYK4SMG" resolve="viewer" />
            </node>
            <node concept="liA8E" id="2QFzCYK4YOr" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.setPreferredSize(java.awt.Dimension)" resolve="setPreferredSize" />
              <node concept="10Nm6u" id="2QFzCYK4YOs" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2QFzCYK4SMN" role="3cqZAp">
          <node concept="3cpWsn" id="2QFzCYK4SMM" role="3cpWs9">
            <property role="TrG5h" value="components" />
            <node concept="_YKpA" id="2QFzCYK5TZj" role="1tU5fm">
              <node concept="3uibUv" id="2QFzCYK5TZl" role="_ZDj9">
                <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
              </node>
            </node>
            <node concept="1rXfSq" id="2QFzCYK4SMQ" role="33vP2m">
              <ref role="37wK5l" node="2QFzCYK4dwL" resolve="collectComponents" />
              <node concept="37vLTw" id="2QFzCYK4SMR" role="37wK5m">
                <ref role="3cqZAo" node="2QFzCYK4SMG" resolve="viewer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QFzCYK4SMS" role="3cqZAp">
          <node concept="2OqwBi" id="2QFzCYK4YiR" role="3clFbG">
            <node concept="37vLTw" id="2QFzCYK4YiQ" role="2Oq$k0">
              <ref role="3cqZAo" node="2QFzCYK4SMM" resolve="components" />
            </node>
            <node concept="2es0OD" id="2QFzCYK5ZeS" role="2OqNvi">
              <node concept="1bVj0M" id="2QFzCYK5ZeU" role="23t8la">
                <node concept="3clFbS" id="2QFzCYK5ZeV" role="1bW5cS">
                  <node concept="3clFbF" id="2QFzCYK60ev" role="3cqZAp">
                    <node concept="2OqwBi" id="2QFzCYK60uE" role="3clFbG">
                      <node concept="37vLTw" id="2QFzCYK60eu" role="2Oq$k0">
                        <ref role="3cqZAo" node="2QFzCYK5ZeW" resolve="it" />
                      </node>
                      <node concept="liA8E" id="2QFzCYK61Ex" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Component.setPreferredSize(java.awt.Dimension)" resolve="setPreferredSize" />
                        <node concept="10Nm6u" id="2QFzCYK62P2" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2QFzCYK5ZeW" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2QFzCYK5ZeX" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QFzCYK6dYB" role="3cqZAp">
          <node concept="2OqwBi" id="2QFzCYK6nU8" role="3clFbG">
            <node concept="2OqwBi" id="2QFzCYK6iUk" role="2Oq$k0">
              <node concept="37vLTw" id="2QFzCYK6dY_" role="2Oq$k0">
                <ref role="3cqZAo" node="2QFzCYK4SMM" resolve="components" />
              </node>
              <node concept="UnYns" id="2QFzCYK6md1" role="2OqNvi">
                <node concept="3uibUv" id="2QFzCYK6mVU" role="UnYnz">
                  <ref role="3uigEE" to="dxuu:~JTree" resolve="JTree" />
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="2QFzCYK6rr$" role="2OqNvi">
              <node concept="1bVj0M" id="2QFzCYK6rrA" role="23t8la">
                <node concept="3clFbS" id="2QFzCYK6rrB" role="1bW5cS">
                  <node concept="3clFbF" id="2QFzCYK6s8C" role="3cqZAp">
                    <node concept="2OqwBi" id="2QFzCYK6syt" role="3clFbG">
                      <node concept="37vLTw" id="2QFzCYK6s8B" role="2Oq$k0">
                        <ref role="3cqZAo" node="2QFzCYK6rrC" resolve="it" />
                      </node>
                      <node concept="liA8E" id="2QFzCYK6uey" role="2OqNvi">
                        <ref role="37wK5l" to="dxuu:~JTree.setVisibleRowCount(int)" resolve="setVisibleRowCount" />
                        <node concept="2OqwBi" id="2QFzCYK6wjt" role="37wK5m">
                          <node concept="37vLTw" id="2QFzCYK6v8x" role="2Oq$k0">
                            <ref role="3cqZAo" node="2QFzCYK6rrC" resolve="it" />
                          </node>
                          <node concept="liA8E" id="2QFzCYK6y3L" role="2OqNvi">
                            <ref role="37wK5l" to="dxuu:~JTree.getRowCount()" resolve="getRowCount" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2QFzCYK6rrC" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2QFzCYK6rrD" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QFzCYK4SNc" role="3cqZAp">
          <node concept="2OqwBi" id="2QFzCYK4Y3a" role="3clFbG">
            <node concept="37vLTw" id="2QFzCYK4Y39" role="2Oq$k0">
              <ref role="3cqZAo" node="2QFzCYK4SMG" resolve="viewer" />
            </node>
            <node concept="liA8E" id="2QFzCYK4Y3b" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.setSize(java.awt.Dimension)" resolve="setSize" />
              <node concept="2OqwBi" id="2QFzCYK4Y3c" role="37wK5m">
                <node concept="37vLTw" id="2QFzCYK4Y3d" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QFzCYK4SMG" resolve="viewer" />
                </node>
                <node concept="liA8E" id="2QFzCYK4Y3e" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.getPreferredSize()" resolve="getPreferredSize" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QFzCYK4SNf" role="3cqZAp">
          <node concept="2OqwBi" id="2QFzCYK4ZdX" role="3clFbG">
            <node concept="37vLTw" id="2QFzCYK4ZdW" role="2Oq$k0">
              <ref role="3cqZAo" node="2QFzCYK4SMG" resolve="viewer" />
            </node>
            <node concept="liA8E" id="2QFzCYK4ZdY" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.setSize(int,int)" resolve="setSize" />
              <node concept="3cpWs3" id="2QFzCYK4ZdZ" role="37wK5m">
                <node concept="2OqwBi" id="2QFzCYK4Ze0" role="3uHU7B">
                  <node concept="37vLTw" id="2QFzCYK4Ze1" role="2Oq$k0">
                    <ref role="3cqZAo" node="2QFzCYK4SMG" resolve="viewer" />
                  </node>
                  <node concept="liA8E" id="2QFzCYK4Ze2" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Component.getWidth()" resolve="getWidth" />
                  </node>
                </node>
                <node concept="3cmrfG" id="2QFzCYK4Ze3" role="3uHU7w">
                  <property role="3cmrfH" value="10" />
                </node>
              </node>
              <node concept="3cpWs3" id="2QFzCYK4ZeM" role="37wK5m">
                <node concept="2OqwBi" id="2QFzCYK52Kh" role="3uHU7B">
                  <node concept="37vLTw" id="2QFzCYK52Kg" role="2Oq$k0">
                    <ref role="3cqZAo" node="2QFzCYK4SMG" resolve="viewer" />
                  </node>
                  <node concept="liA8E" id="2QFzCYK52Ki" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Component.getHeight()" resolve="getHeight" />
                  </node>
                </node>
                <node concept="3cmrfG" id="2QFzCYK4ZeO" role="3uHU7w">
                  <property role="3cmrfH" value="10" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2QFzCYK4SNn" role="3cqZAp">
          <node concept="1rXfSq" id="2QFzCYK4SNo" role="3clFbG">
            <ref role="37wK5l" node="2QFzCYK6Bpg" resolve="layoutAll" />
            <node concept="37vLTw" id="2QFzCYK4SNp" role="37wK5m">
              <ref role="3cqZAo" node="2QFzCYK4SMG" resolve="viewer" />
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="2QFzCYK4SNq" role="3cqZAp">
          <node concept="3cpWsn" id="2QFzCYK4SNr" role="1Duv9x">
            <property role="TrG5h" value="timeout" />
            <node concept="10Oyi0" id="2QFzCYK4SNt" role="1tU5fm" />
            <node concept="3cmrfG" id="2QFzCYK4SNu" role="33vP2m">
              <property role="3cmrfH" value="5" />
            </node>
          </node>
          <node concept="3eOSWO" id="2QFzCYK4SNv" role="1Dwp0S">
            <node concept="37vLTw" id="2QFzCYK4SNw" role="3uHU7B">
              <ref role="3cqZAo" node="2QFzCYK4SNr" resolve="timeout" />
            </node>
            <node concept="3cmrfG" id="2QFzCYK4SNx" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3uO5VW" id="2QFzCYK4SNz" role="1Dwrff">
            <node concept="37vLTw" id="2QFzCYK4SN$" role="2$L3a6">
              <ref role="3cqZAo" node="2QFzCYK4SNr" resolve="timeout" />
            </node>
          </node>
          <node concept="3clFbS" id="2QFzCYK4SNA" role="2LFqv$">
            <node concept="1Dw8fO" id="2QFzCYK4SNB" role="3cqZAp">
              <node concept="3cpWsn" id="2QFzCYK4SNC" role="1Duv9x">
                <property role="TrG5h" value="timeout2" />
                <node concept="10Oyi0" id="2QFzCYK4SNE" role="1tU5fm" />
                <node concept="3cmrfG" id="2QFzCYK4SNF" role="33vP2m">
                  <property role="3cmrfH" value="20" />
                </node>
              </node>
              <node concept="3eOSWO" id="2QFzCYK4SNG" role="1Dwp0S">
                <node concept="37vLTw" id="2QFzCYK4SNH" role="3uHU7B">
                  <ref role="3cqZAo" node="2QFzCYK4SNC" resolve="timeout2" />
                </node>
                <node concept="3cmrfG" id="2QFzCYK4SNI" role="3uHU7w">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="3uO5VW" id="2QFzCYK4SNK" role="1Dwrff">
                <node concept="37vLTw" id="2QFzCYK4SNL" role="2$L3a6">
                  <ref role="3cqZAo" node="2QFzCYK4SNC" resolve="timeout2" />
                </node>
              </node>
              <node concept="3clFbS" id="2QFzCYK4SNN" role="2LFqv$">
                <node concept="3cpWs8" id="2QFzCYK4SNP" role="3cqZAp">
                  <node concept="3cpWsn" id="2QFzCYK4SNO" role="3cpWs9">
                    <property role="TrG5h" value="anySplitterChanged" />
                    <node concept="10P_77" id="2QFzCYK4SNQ" role="1tU5fm" />
                    <node concept="3clFbT" id="2QFzCYK4SNR" role="33vP2m" />
                  </node>
                </node>
                <node concept="1DcWWT" id="2QFzCYK4SNS" role="3cqZAp">
                  <node concept="2OqwBi" id="2QFzCYK6Svz" role="1DdaDG">
                    <node concept="37vLTw" id="2QFzCYK6Q1s" role="2Oq$k0">
                      <ref role="3cqZAo" node="2QFzCYK4SMM" resolve="components" />
                    </node>
                    <node concept="UnYns" id="2QFzCYK6TUL" role="2OqNvi">
                      <node concept="3uibUv" id="2QFzCYK6VZf" role="UnYnz">
                        <ref role="3uigEE" to="jkm4:~Splitter" resolve="Splitter" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="2QFzCYK4SPH" role="1Duv9x">
                    <property role="TrG5h" value="splitter" />
                    <node concept="3uibUv" id="2QFzCYK6Wwt" role="1tU5fm">
                      <ref role="3uigEE" to="jkm4:~Splitter" resolve="Splitter" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="2QFzCYK4SNU" role="2LFqv$">
                    <node concept="3clFbJ" id="27MnIr9XcKK" role="3cqZAp">
                      <node concept="3clFbS" id="27MnIr9XcKM" role="3clFbx">
                        <node concept="3N13vt" id="27MnIr9Xkk9" role="3cqZAp" />
                      </node>
                      <node concept="22lmx$" id="27MnIr9XgJa" role="3clFbw">
                        <node concept="3clFbC" id="27MnIr9XjAC" role="3uHU7w">
                          <node concept="10Nm6u" id="27MnIr9Xk2P" role="3uHU7w" />
                          <node concept="2OqwBi" id="27MnIr9XhVl" role="3uHU7B">
                            <node concept="37vLTw" id="27MnIr9Xh7n" role="2Oq$k0">
                              <ref role="3cqZAo" node="2QFzCYK4SPH" resolve="splitter" />
                            </node>
                            <node concept="liA8E" id="27MnIr9Xj0N" role="2OqNvi">
                              <ref role="37wK5l" to="jkm4:~Splitter.getSecondComponent()" resolve="getSecondComponent" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="27MnIr9XgmA" role="3uHU7B">
                          <node concept="2OqwBi" id="27MnIr9XeHr" role="3uHU7B">
                            <node concept="37vLTw" id="27MnIr9XdUw" role="2Oq$k0">
                              <ref role="3cqZAo" node="2QFzCYK4SPH" resolve="splitter" />
                            </node>
                            <node concept="liA8E" id="27MnIr9XfLQ" role="2OqNvi">
                              <ref role="37wK5l" to="jkm4:~Splitter.getFirstComponent()" resolve="getFirstComponent" />
                            </node>
                          </node>
                          <node concept="10Nm6u" id="27MnIr9Xguq" role="3uHU7w" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="2QFzCYK4SNW" role="3cqZAp">
                      <node concept="3cpWsn" id="2QFzCYK4SNV" role="3cpWs9">
                        <property role="TrG5h" value="additional1" />
                        <node concept="10OMs4" id="2QFzCYK4SNX" role="1tU5fm" />
                      </node>
                    </node>
                    <node concept="3cpWs8" id="2QFzCYK4SNZ" role="3cqZAp">
                      <node concept="3cpWsn" id="2QFzCYK4SNY" role="3cpWs9">
                        <property role="TrG5h" value="additional2" />
                        <node concept="10OMs4" id="2QFzCYK4SO0" role="1tU5fm" />
                      </node>
                    </node>
                    <node concept="3cpWs8" id="2QFzCYK4SO2" role="3cqZAp">
                      <node concept="3cpWsn" id="2QFzCYK4SO1" role="3cpWs9">
                        <property role="TrG5h" value="size1" />
                        <node concept="10OMs4" id="2QFzCYK4SO3" role="1tU5fm" />
                      </node>
                    </node>
                    <node concept="3cpWs8" id="2QFzCYK4SO5" role="3cqZAp">
                      <node concept="3cpWsn" id="2QFzCYK4SO4" role="3cpWs9">
                        <property role="TrG5h" value="size2" />
                        <node concept="10OMs4" id="2QFzCYK4SO6" role="1tU5fm" />
                      </node>
                    </node>
                    <node concept="3clFbJ" id="2QFzCYK4SO7" role="3cqZAp">
                      <node concept="2OqwBi" id="2QFzCYK4YbW" role="3clFbw">
                        <node concept="37vLTw" id="2QFzCYK4YbV" role="2Oq$k0">
                          <ref role="3cqZAo" node="2QFzCYK4SPH" resolve="splitter" />
                        </node>
                        <node concept="liA8E" id="2QFzCYK4YbX" role="2OqNvi">
                          <ref role="37wK5l" to="jkm4:~Splitter.isVertical()" resolve="isVertical" />
                        </node>
                      </node>
                      <node concept="9aQIb" id="2QFzCYK4SO_" role="9aQIa">
                        <node concept="3clFbS" id="2QFzCYK4SOA" role="9aQI4">
                          <node concept="3clFbF" id="2QFzCYK4SOB" role="3cqZAp">
                            <node concept="37vLTI" id="2QFzCYK4SOC" role="3clFbG">
                              <node concept="37vLTw" id="2QFzCYK4SOD" role="37vLTJ">
                                <ref role="3cqZAo" node="2QFzCYK4SNV" resolve="additional1" />
                              </node>
                              <node concept="2OqwBi" id="2QFzCYK4SOE" role="37vLTx">
                                <node concept="1rXfSq" id="2QFzCYK4SOF" role="2Oq$k0">
                                  <ref role="37wK5l" node="2QFzCYK6Y4T" resolve="calcAdditionalRequiredSize" />
                                  <node concept="2OqwBi" id="2QFzCYK4Zc3" role="37wK5m">
                                    <node concept="37vLTw" id="2QFzCYK4Zc2" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2QFzCYK4SPH" resolve="splitter" />
                                    </node>
                                    <node concept="liA8E" id="2QFzCYK4Zc4" role="2OqNvi">
                                      <ref role="37wK5l" to="jkm4:~Splitter.getFirstComponent()" resolve="getFirstComponent" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OwXpG" id="2QFzCYK4SOH" role="2OqNvi">
                                  <ref role="2Oxat6" to="z60i:~Dimension.width" resolve="width" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="2QFzCYK4SOI" role="3cqZAp">
                            <node concept="37vLTI" id="2QFzCYK4SOJ" role="3clFbG">
                              <node concept="37vLTw" id="2QFzCYK4SOK" role="37vLTJ">
                                <ref role="3cqZAo" node="2QFzCYK4SNY" resolve="additional2" />
                              </node>
                              <node concept="2OqwBi" id="2QFzCYK4SOL" role="37vLTx">
                                <node concept="1rXfSq" id="2QFzCYK4SOM" role="2Oq$k0">
                                  <ref role="37wK5l" node="2QFzCYK6Y4T" resolve="calcAdditionalRequiredSize" />
                                  <node concept="2OqwBi" id="2QFzCYK4ZBR" role="37wK5m">
                                    <node concept="37vLTw" id="2QFzCYK4ZBQ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2QFzCYK4SPH" resolve="splitter" />
                                    </node>
                                    <node concept="liA8E" id="2QFzCYK4ZBS" role="2OqNvi">
                                      <ref role="37wK5l" to="jkm4:~Splitter.getSecondComponent()" resolve="getSecondComponent" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OwXpG" id="2QFzCYK4SOO" role="2OqNvi">
                                  <ref role="2Oxat6" to="z60i:~Dimension.width" resolve="width" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="2QFzCYK4SOP" role="3cqZAp">
                            <node concept="37vLTI" id="2QFzCYK4SOQ" role="3clFbG">
                              <node concept="37vLTw" id="2QFzCYK4SOR" role="37vLTJ">
                                <ref role="3cqZAo" node="2QFzCYK4SO1" resolve="size1" />
                              </node>
                              <node concept="2OqwBi" id="2QFzCYK4SOS" role="37vLTx">
                                <node concept="2OqwBi" id="2QFzCYK4Yqx" role="2Oq$k0">
                                  <node concept="37vLTw" id="2QFzCYK4Yqw" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2QFzCYK4SPH" resolve="splitter" />
                                  </node>
                                  <node concept="liA8E" id="2QFzCYK4Yqy" role="2OqNvi">
                                    <ref role="37wK5l" to="jkm4:~Splitter.getFirstComponent()" resolve="getFirstComponent" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="2QFzCYK4SOU" role="2OqNvi">
                                  <ref role="37wK5l" to="dxuu:~JComponent.getWidth()" resolve="getWidth" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="2QFzCYK4SOV" role="3cqZAp">
                            <node concept="37vLTI" id="2QFzCYK4SOW" role="3clFbG">
                              <node concept="37vLTw" id="2QFzCYK4SOX" role="37vLTJ">
                                <ref role="3cqZAo" node="2QFzCYK4SO4" resolve="size2" />
                              </node>
                              <node concept="2OqwBi" id="2QFzCYK4SOY" role="37vLTx">
                                <node concept="2OqwBi" id="2QFzCYK4ZA$" role="2Oq$k0">
                                  <node concept="37vLTw" id="2QFzCYK4ZAz" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2QFzCYK4SPH" resolve="splitter" />
                                  </node>
                                  <node concept="liA8E" id="2QFzCYK4ZA_" role="2OqNvi">
                                    <ref role="37wK5l" to="jkm4:~Splitter.getSecondComponent()" resolve="getSecondComponent" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="2QFzCYK4SP0" role="2OqNvi">
                                  <ref role="37wK5l" to="dxuu:~JComponent.getWidth()" resolve="getWidth" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="2QFzCYK4SOa" role="3clFbx">
                        <node concept="3clFbF" id="2QFzCYK4SOb" role="3cqZAp">
                          <node concept="37vLTI" id="2QFzCYK4SOc" role="3clFbG">
                            <node concept="37vLTw" id="2QFzCYK4SOd" role="37vLTJ">
                              <ref role="3cqZAo" node="2QFzCYK4SNV" resolve="additional1" />
                            </node>
                            <node concept="2OqwBi" id="2QFzCYK4SOe" role="37vLTx">
                              <node concept="1rXfSq" id="2QFzCYK4SOf" role="2Oq$k0">
                                <ref role="37wK5l" node="2QFzCYK6Y4T" resolve="calcAdditionalRequiredSize" />
                                <node concept="2OqwBi" id="2QFzCYK4Y1g" role="37wK5m">
                                  <node concept="37vLTw" id="2QFzCYK4Y1f" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2QFzCYK4SPH" resolve="splitter" />
                                  </node>
                                  <node concept="liA8E" id="2QFzCYK4Y1h" role="2OqNvi">
                                    <ref role="37wK5l" to="jkm4:~Splitter.getFirstComponent()" resolve="getFirstComponent" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2OwXpG" id="2QFzCYK4SOh" role="2OqNvi">
                                <ref role="2Oxat6" to="z60i:~Dimension.height" resolve="height" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="2QFzCYK4SOi" role="3cqZAp">
                          <node concept="37vLTI" id="2QFzCYK4SOj" role="3clFbG">
                            <node concept="37vLTw" id="2QFzCYK4SOk" role="37vLTJ">
                              <ref role="3cqZAo" node="2QFzCYK4SNY" resolve="additional2" />
                            </node>
                            <node concept="2OqwBi" id="2QFzCYK4SOl" role="37vLTx">
                              <node concept="1rXfSq" id="2QFzCYK4SOm" role="2Oq$k0">
                                <ref role="37wK5l" node="2QFzCYK6Y4T" resolve="calcAdditionalRequiredSize" />
                                <node concept="2OqwBi" id="2QFzCYK4Z6h" role="37wK5m">
                                  <node concept="37vLTw" id="2QFzCYK4Z6g" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2QFzCYK4SPH" resolve="splitter" />
                                  </node>
                                  <node concept="liA8E" id="2QFzCYK4Z6i" role="2OqNvi">
                                    <ref role="37wK5l" to="jkm4:~Splitter.getSecondComponent()" resolve="getSecondComponent" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2OwXpG" id="2QFzCYK4SOo" role="2OqNvi">
                                <ref role="2Oxat6" to="z60i:~Dimension.height" resolve="height" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="2QFzCYK4SOp" role="3cqZAp">
                          <node concept="37vLTI" id="2QFzCYK4SOq" role="3clFbG">
                            <node concept="37vLTw" id="2QFzCYK4SOr" role="37vLTJ">
                              <ref role="3cqZAo" node="2QFzCYK4SO1" resolve="size1" />
                            </node>
                            <node concept="2OqwBi" id="2QFzCYK4SOs" role="37vLTx">
                              <node concept="2OqwBi" id="2QFzCYK4XW5" role="2Oq$k0">
                                <node concept="37vLTw" id="2QFzCYK4XW4" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2QFzCYK4SPH" resolve="splitter" />
                                </node>
                                <node concept="liA8E" id="2QFzCYK4XW6" role="2OqNvi">
                                  <ref role="37wK5l" to="jkm4:~Splitter.getFirstComponent()" resolve="getFirstComponent" />
                                </node>
                              </node>
                              <node concept="liA8E" id="2QFzCYK4SOu" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JComponent.getHeight()" resolve="getHeight" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="2QFzCYK4SOv" role="3cqZAp">
                          <node concept="37vLTI" id="2QFzCYK4SOw" role="3clFbG">
                            <node concept="37vLTw" id="2QFzCYK4SOx" role="37vLTJ">
                              <ref role="3cqZAo" node="2QFzCYK4SO4" resolve="size2" />
                            </node>
                            <node concept="2OqwBi" id="2QFzCYK4SOy" role="37vLTx">
                              <node concept="2OqwBi" id="2QFzCYK4ZVD" role="2Oq$k0">
                                <node concept="37vLTw" id="2QFzCYK4ZVC" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2QFzCYK4SPH" resolve="splitter" />
                                </node>
                                <node concept="liA8E" id="2QFzCYK4ZVE" role="2OqNvi">
                                  <ref role="37wK5l" to="jkm4:~Splitter.getSecondComponent()" resolve="getSecondComponent" />
                                </node>
                              </node>
                              <node concept="liA8E" id="2QFzCYK4SO$" role="2OqNvi">
                                <ref role="37wK5l" to="dxuu:~JComponent.getHeight()" resolve="getHeight" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="2QFzCYK4SP2" role="3cqZAp">
                      <node concept="3cpWsn" id="2QFzCYK4SP1" role="3cpWs9">
                        <property role="TrG5h" value="newProportion" />
                        <node concept="10OMs4" id="2QFzCYK4SP3" role="1tU5fm" />
                        <node concept="FJ1c_" id="2QFzCYK4SP4" role="33vP2m">
                          <node concept="1eOMI4" id="2QFzCYK4SP8" role="3uHU7B">
                            <node concept="3cpWs3" id="2QFzCYK4SP5" role="1eOMHV">
                              <node concept="37vLTw" id="2QFzCYK4SP6" role="3uHU7B">
                                <ref role="3cqZAo" node="2QFzCYK4SO1" resolve="size1" />
                              </node>
                              <node concept="37vLTw" id="2QFzCYK4SP7" role="3uHU7w">
                                <ref role="3cqZAo" node="2QFzCYK4SNV" resolve="additional1" />
                              </node>
                            </node>
                          </node>
                          <node concept="1eOMI4" id="2QFzCYK4SPg" role="3uHU7w">
                            <node concept="3cpWs3" id="2QFzCYK4SP9" role="1eOMHV">
                              <node concept="3cpWs3" id="2QFzCYK4SPa" role="3uHU7B">
                                <node concept="3cpWs3" id="2QFzCYK4SPb" role="3uHU7B">
                                  <node concept="37vLTw" id="2QFzCYK4SPc" role="3uHU7B">
                                    <ref role="3cqZAo" node="2QFzCYK4SO1" resolve="size1" />
                                  </node>
                                  <node concept="37vLTw" id="2QFzCYK4SPd" role="3uHU7w">
                                    <ref role="3cqZAo" node="2QFzCYK4SO4" resolve="size2" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="2QFzCYK4SPe" role="3uHU7w">
                                  <ref role="3cqZAo" node="2QFzCYK4SNV" resolve="additional1" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="2QFzCYK4SPf" role="3uHU7w">
                                <ref role="3cqZAo" node="2QFzCYK4SNY" resolve="additional2" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2QFzCYK4SPh" role="3cqZAp">
                      <node concept="37vLTI" id="2QFzCYK4SPi" role="3clFbG">
                        <node concept="37vLTw" id="2QFzCYK4SPj" role="37vLTJ">
                          <ref role="3cqZAo" node="2QFzCYK4SP1" resolve="newProportion" />
                        </node>
                        <node concept="2YIFZM" id="2QFzCYK4ZDK" role="37vLTx">
                          <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                          <ref role="37wK5l" to="wyt6:~Math.min(float,float)" resolve="min" />
                          <node concept="2$xPTn" id="2QFzCYK4ZDL" role="37wK5m">
                            <property role="2$xPTl" value="1.0f" />
                          </node>
                          <node concept="37vLTw" id="2QFzCYK4ZDM" role="37wK5m">
                            <ref role="3cqZAo" node="2QFzCYK4SP1" resolve="newProportion" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2QFzCYK4SPn" role="3cqZAp">
                      <node concept="37vLTI" id="2QFzCYK4SPo" role="3clFbG">
                        <node concept="37vLTw" id="2QFzCYK4SPp" role="37vLTJ">
                          <ref role="3cqZAo" node="2QFzCYK4SP1" resolve="newProportion" />
                        </node>
                        <node concept="2YIFZM" id="2QFzCYK4Yyd" role="37vLTx">
                          <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                          <ref role="37wK5l" to="wyt6:~Math.max(float,float)" resolve="max" />
                          <node concept="2$xPTn" id="2QFzCYK4Yye" role="37wK5m">
                            <property role="2$xPTl" value="0.0f" />
                          </node>
                          <node concept="37vLTw" id="2QFzCYK4Yyf" role="37wK5m">
                            <ref role="3cqZAo" node="2QFzCYK4SP1" resolve="newProportion" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="2QFzCYK4SPt" role="3cqZAp">
                      <node concept="3y3z36" id="2QFzCYK4SPu" role="3clFbw">
                        <node concept="37vLTw" id="2QFzCYK4SPv" role="3uHU7B">
                          <ref role="3cqZAo" node="2QFzCYK4SP1" resolve="newProportion" />
                        </node>
                        <node concept="2OqwBi" id="2QFzCYK4XVj" role="3uHU7w">
                          <node concept="37vLTw" id="2QFzCYK4XVi" role="2Oq$k0">
                            <ref role="3cqZAo" node="2QFzCYK4SPH" resolve="splitter" />
                          </node>
                          <node concept="liA8E" id="2QFzCYK4XVk" role="2OqNvi">
                            <ref role="37wK5l" to="jkm4:~Splitter.getProportion()" resolve="getProportion" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="2QFzCYK4SPy" role="3clFbx">
                        <node concept="3clFbF" id="2QFzCYK4SPz" role="3cqZAp">
                          <node concept="37vLTI" id="2QFzCYK4SP$" role="3clFbG">
                            <node concept="37vLTw" id="2QFzCYK4SP_" role="37vLTJ">
                              <ref role="3cqZAo" node="2QFzCYK4SNO" resolve="anySplitterChanged" />
                            </node>
                            <node concept="3clFbT" id="2QFzCYK4SPA" role="37vLTx">
                              <property role="3clFbU" value="true" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="2QFzCYK4SPB" role="3cqZAp">
                          <node concept="2OqwBi" id="2QFzCYK4ZWW" role="3clFbG">
                            <node concept="37vLTw" id="2QFzCYK4ZWV" role="2Oq$k0">
                              <ref role="3cqZAo" node="2QFzCYK4SPH" resolve="splitter" />
                            </node>
                            <node concept="liA8E" id="2QFzCYK4ZWX" role="2OqNvi">
                              <ref role="37wK5l" to="jkm4:~Splitter.setProportion(float)" resolve="setProportion" />
                              <node concept="37vLTw" id="2QFzCYK4ZWY" role="37wK5m">
                                <ref role="3cqZAo" node="2QFzCYK4SP1" resolve="newProportion" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="2QFzCYK4SPE" role="3cqZAp">
                          <node concept="1rXfSq" id="2QFzCYK4SPF" role="3clFbG">
                            <ref role="37wK5l" node="2QFzCYK6Bpg" resolve="layoutAll" />
                            <node concept="37vLTw" id="2QFzCYK4SPG" role="37wK5m">
                              <ref role="3cqZAo" node="2QFzCYK4SMG" resolve="viewer" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="2QFzCYK4SPS" role="3cqZAp">
                  <node concept="3fqX7Q" id="2QFzCYK4SPT" role="3clFbw">
                    <node concept="37vLTw" id="2QFzCYK4SPU" role="3fr31v">
                      <ref role="3cqZAo" node="2QFzCYK4SNO" resolve="anySplitterChanged" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="2QFzCYK4SPW" role="3clFbx">
                    <node concept="3zACq4" id="2QFzCYK4SPV" role="3cqZAp" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2QFzCYK4SPY" role="3cqZAp">
              <node concept="3cpWsn" id="2QFzCYK4SPX" role="3cpWs9">
                <property role="TrG5h" value="additionalRequiredSize" />
                <node concept="3uibUv" id="2QFzCYK4SPZ" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
                </node>
                <node concept="1rXfSq" id="2QFzCYK4SQ0" role="33vP2m">
                  <ref role="37wK5l" node="2QFzCYK6Y4T" resolve="calcAdditionalRequiredSize" />
                  <node concept="37vLTw" id="2QFzCYK4SQ1" role="37wK5m">
                    <ref role="3cqZAo" node="2QFzCYK4SMG" resolve="viewer" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2QFzCYK4SQ3" role="3cqZAp">
              <node concept="3cpWsn" id="2QFzCYK4SQ2" role="3cpWs9">
                <property role="TrG5h" value="size" />
                <node concept="3uibUv" id="2QFzCYK4SQ4" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
                </node>
                <node concept="2OqwBi" id="2QFzCYK4ZXK" role="33vP2m">
                  <node concept="37vLTw" id="2QFzCYK4ZXJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="2QFzCYK4SMG" resolve="viewer" />
                  </node>
                  <node concept="liA8E" id="2QFzCYK4ZXL" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Component.getSize()" resolve="getSize" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2QFzCYK4SQ6" role="3cqZAp">
              <node concept="2OqwBi" id="2QFzCYK4Y7Q" role="3clFbG">
                <node concept="37vLTw" id="2QFzCYK4Y7P" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QFzCYK4SMG" resolve="viewer" />
                </node>
                <node concept="liA8E" id="2QFzCYK4Y7R" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.setSize(java.awt.Dimension)" resolve="setSize" />
                  <node concept="2ShNRf" id="2QFzCYK52mP" role="37wK5m">
                    <node concept="1pGfFk" id="2QFzCYK52nc" role="2ShVmc">
                      <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                      <node concept="3cpWs3" id="2QFzCYK52nd" role="37wK5m">
                        <node concept="2OqwBi" id="2QFzCYK54HJ" role="3uHU7B">
                          <node concept="37vLTw" id="2QFzCYK54HI" role="2Oq$k0">
                            <ref role="3cqZAo" node="2QFzCYK4SQ2" resolve="size" />
                          </node>
                          <node concept="2OwXpG" id="2QFzCYK54HK" role="2OqNvi">
                            <ref role="2Oxat6" to="z60i:~Dimension.width" resolve="width" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="2QFzCYK54IZ" role="3uHU7w">
                          <node concept="37vLTw" id="2QFzCYK54IY" role="2Oq$k0">
                            <ref role="3cqZAo" node="2QFzCYK4SPX" resolve="additionalRequiredSize" />
                          </node>
                          <node concept="2OwXpG" id="2QFzCYK54J0" role="2OqNvi">
                            <ref role="2Oxat6" to="z60i:~Dimension.width" resolve="width" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs3" id="2QFzCYK52ng" role="37wK5m">
                        <node concept="2OqwBi" id="2QFzCYK54Hd" role="3uHU7B">
                          <node concept="37vLTw" id="2QFzCYK54Hc" role="2Oq$k0">
                            <ref role="3cqZAo" node="2QFzCYK4SQ2" resolve="size" />
                          </node>
                          <node concept="2OwXpG" id="2QFzCYK54He" role="2OqNvi">
                            <ref role="2Oxat6" to="z60i:~Dimension.height" resolve="height" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="2QFzCYK52ni" role="3uHU7w">
                          <node concept="37vLTw" id="2QFzCYK52nj" role="2Oq$k0">
                            <ref role="3cqZAo" node="2QFzCYK4SPX" resolve="additionalRequiredSize" />
                          </node>
                          <node concept="2OwXpG" id="2QFzCYK52nk" role="2OqNvi">
                            <ref role="2Oxat6" to="z60i:~Dimension.height" resolve="height" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2QFzCYK4SQf" role="3cqZAp">
              <node concept="1rXfSq" id="2QFzCYK4SQg" role="3clFbG">
                <ref role="37wK5l" node="2QFzCYK6Bpg" resolve="layoutAll" />
                <node concept="37vLTw" id="2QFzCYK4SQh" role="37wK5m">
                  <ref role="3cqZAo" node="2QFzCYK4SMG" resolve="viewer" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2QFzCYK4SQi" role="3cqZAp">
              <node concept="2OqwBi" id="2QFzCYK4Z50" role="3clFbw">
                <node concept="37vLTw" id="2QFzCYK4Z4Z" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QFzCYK4SPX" resolve="additionalRequiredSize" />
                </node>
                <node concept="liA8E" id="2QFzCYK4Z51" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Dimension.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2ShNRf" id="2QFzCYK4Z52" role="37wK5m">
                    <node concept="1pGfFk" id="2QFzCYK4Z53" role="2ShVmc">
                      <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                      <node concept="3cmrfG" id="2QFzCYK4Z54" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                      <node concept="3cmrfG" id="2QFzCYK4Z55" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2QFzCYK4SQo" role="3clFbx">
                <node concept="3zACq4" id="2QFzCYK4SQn" role="3cqZAp" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2QFzCYK4SQp" role="1B3o_S" />
      <node concept="3cqZAl" id="2QFzCYK4SQq" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4kPMkltKcIV" role="jymVt" />
    <node concept="2YIFZL" id="2QFzCYK6Bpg" role="jymVt">
      <property role="TrG5h" value="layoutAll" />
      <node concept="37vLTG" id="2QFzCYK6Bph" role="3clF46">
        <property role="TrG5h" value="comp" />
        <node concept="3uibUv" id="2QFzCYK6Bpi" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="3clFbS" id="2QFzCYK6Bpj" role="3clF47">
        <node concept="3clFbF" id="2QFzCYK6Bpk" role="3cqZAp">
          <node concept="2OqwBi" id="2QFzCYK6H3v" role="3clFbG">
            <node concept="37vLTw" id="2QFzCYK6H3u" role="2Oq$k0">
              <ref role="3cqZAo" node="2QFzCYK6Bph" resolve="comp" />
            </node>
            <node concept="liA8E" id="2QFzCYK6H3w" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.doLayout()" resolve="doLayout" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2QFzCYK6Bpm" role="3cqZAp">
          <node concept="2ZW3vV" id="2QFzCYK6Bpp" role="3clFbw">
            <node concept="37vLTw" id="2QFzCYK6Bpn" role="2ZW6bz">
              <ref role="3cqZAo" node="2QFzCYK6Bph" resolve="comp" />
            </node>
            <node concept="3uibUv" id="2QFzCYK6Bpo" role="2ZW6by">
              <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
            </node>
          </node>
          <node concept="3clFbS" id="2QFzCYK6Bpr" role="3clFbx">
            <node concept="1DcWWT" id="2QFzCYK6Bps" role="3cqZAp">
              <node concept="2OqwBi" id="2QFzCYK6Bp_" role="1DdaDG">
                <node concept="1eOMI4" id="2QFzCYK6BpD" role="2Oq$k0">
                  <node concept="10QFUN" id="2QFzCYK6BpA" role="1eOMHV">
                    <node concept="37vLTw" id="2QFzCYK6BpB" role="10QFUP">
                      <ref role="3cqZAo" node="2QFzCYK6Bph" resolve="comp" />
                    </node>
                    <node concept="3uibUv" id="2QFzCYK6BpC" role="10QFUM">
                      <ref role="3uigEE" to="z60i:~Container" resolve="Container" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2QFzCYK6BpE" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.getComponents()" resolve="getComponents" />
                </node>
              </node>
              <node concept="3cpWsn" id="2QFzCYK6Bpy" role="1Duv9x">
                <property role="TrG5h" value="child" />
                <node concept="3uibUv" id="2QFzCYK6Bp$" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                </node>
              </node>
              <node concept="3clFbS" id="2QFzCYK6Bpu" role="2LFqv$">
                <node concept="3clFbF" id="2QFzCYK6Bpv" role="3cqZAp">
                  <node concept="1rXfSq" id="2QFzCYK6Bpw" role="3clFbG">
                    <ref role="37wK5l" node="2QFzCYK6Bpg" resolve="layoutAll" />
                    <node concept="37vLTw" id="2QFzCYK6Bpx" role="37wK5m">
                      <ref role="3cqZAo" node="2QFzCYK6Bpy" resolve="child" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2QFzCYK6BpF" role="1B3o_S" />
      <node concept="3cqZAl" id="2QFzCYK6BpG" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4kPMkltKdVa" role="jymVt" />
    <node concept="2YIFZL" id="2QFzCYK6Y4T" role="jymVt">
      <property role="TrG5h" value="calcAdditionalRequiredSize" />
      <node concept="37vLTG" id="2QFzCYK6Y4U" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="2QFzCYK6Y4V" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="3clFbS" id="2QFzCYK6Y4W" role="3clF47">
        <node concept="3cpWs6" id="2QFzCYK6Y4X" role="3cqZAp">
          <node concept="2OqwBi" id="2QFzCYK6Y4Y" role="3cqZAk">
            <node concept="2OqwBi" id="2QFzCYK6Y4Z" role="2Oq$k0">
              <node concept="2OqwBi" id="2QFzCYK79FQ" role="2Oq$k0">
                <node concept="1rXfSq" id="2QFzCYK6Y52" role="2Oq$k0">
                  <ref role="37wK5l" node="2QFzCYK4dwL" resolve="collectComponents" />
                  <node concept="37vLTw" id="2QFzCYK6Y53" role="37wK5m">
                    <ref role="3cqZAo" node="2QFzCYK6Y4U" resolve="component" />
                  </node>
                </node>
                <node concept="3zZkjj" id="2QFzCYK7aFo" role="2OqNvi">
                  <node concept="1bVj0M" id="2QFzCYK7aFq" role="23t8la">
                    <node concept="3clFbS" id="2QFzCYK7aFr" role="1bW5cS">
                      <node concept="3clFbF" id="2QFzCYK7dGV" role="3cqZAp">
                        <node concept="3fqX7Q" id="2QFzCYK7fjn" role="3clFbG">
                          <node concept="1eOMI4" id="2QFzCYK7fjp" role="3fr31v">
                            <node concept="2ZW3vV" id="2QFzCYK7mnR" role="1eOMHV">
                              <node concept="3uibUv" id="2QFzCYK7nVy" role="2ZW6by">
                                <ref role="3uigEE" to="dxuu:~JScrollPane" resolve="JScrollPane" />
                              </node>
                              <node concept="37vLTw" id="2QFzCYK7i8m" role="2ZW6bz">
                                <ref role="3cqZAo" node="2QFzCYK7aFs" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="2QFzCYK7aFs" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="2QFzCYK7aFt" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3$u5V9" id="2QFzCYK7uts" role="2OqNvi">
                <node concept="1bVj0M" id="2QFzCYK7utu" role="23t8la">
                  <node concept="3clFbS" id="2QFzCYK7utv" role="1bW5cS">
                    <node concept="3cpWs8" id="2QFzCYK7vyr" role="3cqZAp">
                      <node concept="3cpWsn" id="2QFzCYK7vyq" role="3cpWs9">
                        <property role="TrG5h" value="preferredSize" />
                        <node concept="3uibUv" id="2QFzCYK7vys" role="1tU5fm">
                          <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
                        </node>
                        <node concept="2OqwBi" id="2QFzCYK7xuT" role="33vP2m">
                          <node concept="37vLTw" id="4kPMkltJlcw" role="2Oq$k0">
                            <ref role="3cqZAo" node="2QFzCYK7utw" resolve="c" />
                          </node>
                          <node concept="liA8E" id="2QFzCYK7xuU" role="2OqNvi">
                            <ref role="37wK5l" to="z60i:~Component.getPreferredSize()" resolve="getPreferredSize" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="2QFzCYK7vyv" role="3cqZAp">
                      <node concept="3cpWsn" id="2QFzCYK7vyu" role="3cpWs9">
                        <property role="TrG5h" value="size" />
                        <node concept="3uibUv" id="2QFzCYK7vyw" role="1tU5fm">
                          <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
                        </node>
                        <node concept="2OqwBi" id="2QFzCYK7wJN" role="33vP2m">
                          <node concept="37vLTw" id="4kPMkltJne7" role="2Oq$k0">
                            <ref role="3cqZAo" node="2QFzCYK7utw" resolve="c" />
                          </node>
                          <node concept="liA8E" id="2QFzCYK7wJO" role="2OqNvi">
                            <ref role="37wK5l" to="z60i:~Component.getSize()" resolve="getSize" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="2QFzCYK7vyy" role="3cqZAp">
                      <node concept="2ShNRf" id="2QFzCYK7xmL" role="3cqZAk">
                        <node concept="1pGfFk" id="2QFzCYK7xnA" role="2ShVmc">
                          <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                          <node concept="2YIFZM" id="2QFzCYK7C$F" role="37wK5m">
                            <ref role="37wK5l" to="wyt6:~Math.max(int,int)" resolve="max" />
                            <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                            <node concept="3cmrfG" id="2QFzCYK7C$G" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="3cpWsd" id="2QFzCYK7C$H" role="37wK5m">
                              <node concept="2OqwBi" id="2QFzCYK7C$I" role="3uHU7B">
                                <node concept="37vLTw" id="2QFzCYK7C$J" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2QFzCYK7vyq" resolve="preferredSize" />
                                </node>
                                <node concept="2OwXpG" id="2QFzCYK7C$K" role="2OqNvi">
                                  <ref role="2Oxat6" to="z60i:~Dimension.width" resolve="width" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="2QFzCYK7C$L" role="3uHU7w">
                                <node concept="37vLTw" id="2QFzCYK7C$M" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2QFzCYK7vyu" resolve="size" />
                                </node>
                                <node concept="2OwXpG" id="2QFzCYK7C$N" role="2OqNvi">
                                  <ref role="2Oxat6" to="z60i:~Dimension.width" resolve="width" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2YIFZM" id="2QFzCYK7yUp" role="37wK5m">
                            <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                            <ref role="37wK5l" to="wyt6:~Math.max(int,int)" resolve="max" />
                            <node concept="3cmrfG" id="2QFzCYK7yUq" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                            <node concept="3cpWsd" id="2QFzCYK7yUr" role="37wK5m">
                              <node concept="2OqwBi" id="2QFzCYK7yUs" role="3uHU7B">
                                <node concept="37vLTw" id="2QFzCYK7yUt" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2QFzCYK7vyq" resolve="preferredSize" />
                                </node>
                                <node concept="2OwXpG" id="2QFzCYK7yUu" role="2OqNvi">
                                  <ref role="2Oxat6" to="z60i:~Dimension.height" resolve="height" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="2QFzCYK7yUv" role="3uHU7w">
                                <node concept="37vLTw" id="2QFzCYK7yUw" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2QFzCYK7vyu" resolve="size" />
                                </node>
                                <node concept="2OwXpG" id="2QFzCYK7yUx" role="2OqNvi">
                                  <ref role="2Oxat6" to="z60i:~Dimension.height" resolve="height" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="2QFzCYK7utw" role="1bW2Oz">
                    <property role="TrG5h" value="c" />
                    <node concept="2jxLKc" id="2QFzCYK7utx" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1MD8d$" id="2QFzCYK7GSq" role="2OqNvi">
              <node concept="1bVj0M" id="2QFzCYK7GSw" role="23t8la">
                <node concept="3clFbS" id="2QFzCYK7GSx" role="1bW5cS">
                  <node concept="3clFbF" id="2QFzCYK8037" role="3cqZAp">
                    <node concept="2ShNRf" id="2QFzCYK7WdY" role="3clFbG">
                      <node concept="1pGfFk" id="2QFzCYK7We$" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                        <node concept="2YIFZM" id="2QFzCYK81z$" role="37wK5m">
                          <ref role="37wK5l" to="wyt6:~Math.max(int,int)" resolve="max" />
                          <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                          <node concept="2OqwBi" id="2QFzCYK89iq" role="37wK5m">
                            <node concept="37vLTw" id="2QFzCYK86kR" role="2Oq$k0">
                              <ref role="3cqZAo" node="2QFzCYK7GSy" resolve="s" />
                            </node>
                            <node concept="2OwXpG" id="2QFzCYK8bd1" role="2OqNvi">
                              <ref role="2Oxat6" to="z60i:~Dimension.width" resolve="width" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2QFzCYK8gKe" role="37wK5m">
                            <node concept="37vLTw" id="2QFzCYK8fEO" role="2Oq$k0">
                              <ref role="3cqZAo" node="2QFzCYK7GS$" resolve="it" />
                            </node>
                            <node concept="2OwXpG" id="2QFzCYK8is5" role="2OqNvi">
                              <ref role="2Oxat6" to="z60i:~Dimension.width" resolve="width" />
                            </node>
                          </node>
                        </node>
                        <node concept="2YIFZM" id="2QFzCYK834r" role="37wK5m">
                          <ref role="37wK5l" to="wyt6:~Math.max(int,int)" resolve="max" />
                          <ref role="1Pybhc" to="wyt6:~Math" resolve="Math" />
                          <node concept="2OqwBi" id="2QFzCYK8lXu" role="37wK5m">
                            <node concept="37vLTw" id="2QFzCYK8kZh" role="2Oq$k0">
                              <ref role="3cqZAo" node="2QFzCYK7GSy" resolve="s" />
                            </node>
                            <node concept="2OwXpG" id="2QFzCYK8nCe" role="2OqNvi">
                              <ref role="2Oxat6" to="z60i:~Dimension.height" resolve="height" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2QFzCYK8ruJ" role="37wK5m">
                            <node concept="37vLTw" id="2QFzCYK8qp7" role="2Oq$k0">
                              <ref role="3cqZAo" node="2QFzCYK7GS$" resolve="it" />
                            </node>
                            <node concept="2OwXpG" id="2QFzCYK8t_T" role="2OqNvi">
                              <ref role="2Oxat6" to="z60i:~Dimension.height" resolve="height" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="2QFzCYK7GSy" role="1bW2Oz">
                  <property role="TrG5h" value="s" />
                  <node concept="3uibUv" id="2QFzCYK7Tox" role="1tU5fm">
                    <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
                  </node>
                </node>
                <node concept="Rh6nW" id="2QFzCYK7GS$" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2QFzCYK7GS_" role="1tU5fm" />
                </node>
              </node>
              <node concept="2ShNRf" id="2QFzCYK7I$1" role="1MDeny">
                <node concept="1pGfFk" id="2QFzCYK7LE2" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                  <node concept="3cmrfG" id="2QFzCYK7NVR" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3cmrfG" id="2QFzCYK7SlW" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2QFzCYK6Y5b" role="1B3o_S" />
      <node concept="3uibUv" id="2QFzCYK6Y5c" role="3clF45">
        <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
      </node>
    </node>
    <node concept="2tJIrI" id="2QFzCYK3YZl" role="jymVt" />
    <node concept="2YIFZL" id="27MnIradQ2_" role="jymVt">
      <property role="TrG5h" value="commonAncestor" />
      <node concept="3clFbS" id="27MnIrad7w1" role="3clF47">
        <node concept="3cpWs8" id="27MnIradwhy" role="3cqZAp">
          <node concept="3cpWsn" id="27MnIradwh_" role="3cpWs9">
            <property role="TrG5h" value="ancestors" />
            <node concept="2hMVRd" id="27MnIradwhu" role="1tU5fm">
              <node concept="3uibUv" id="27MnIradwof" role="2hN53Y">
                <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
              </node>
            </node>
            <node concept="2ShNRf" id="27MnIradxIl" role="33vP2m">
              <node concept="2i4dXS" id="27MnIradxAn" role="2ShVmc">
                <node concept="3uibUv" id="27MnIradxAo" role="HW$YZ">
                  <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="27MnIradspa" role="3cqZAp">
          <node concept="3cpWsn" id="27MnIradspb" role="1Duv9x">
            <property role="TrG5h" value="ancestor" />
            <node concept="3uibUv" id="27MnIradsu2" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
            </node>
            <node concept="37vLTw" id="27MnIradtEX" role="33vP2m">
              <ref role="3cqZAo" node="27MnIradgLi" resolve="c1" />
            </node>
          </node>
          <node concept="3clFbS" id="27MnIradspc" role="2LFqv$">
            <node concept="3clFbF" id="27MnIradz2E" role="3cqZAp">
              <node concept="2OqwBi" id="27MnIradzIt" role="3clFbG">
                <node concept="37vLTw" id="27MnIradz2D" role="2Oq$k0">
                  <ref role="3cqZAo" node="27MnIradwh_" resolve="ancestors" />
                </node>
                <node concept="TSZUe" id="27MnIrad$mm" role="2OqNvi">
                  <node concept="37vLTw" id="27MnIrad$La" role="25WWJ7">
                    <ref role="3cqZAo" node="27MnIradspb" resolve="ancestor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="27MnIradur$" role="1Dwp0S">
            <node concept="10Nm6u" id="27MnIraduyV" role="3uHU7w" />
            <node concept="37vLTw" id="27MnIradu1V" role="3uHU7B">
              <ref role="3cqZAo" node="27MnIradspb" resolve="ancestor" />
            </node>
          </node>
          <node concept="37vLTI" id="27MnIradv14" role="1Dwrff">
            <node concept="2OqwBi" id="27MnIradvuF" role="37vLTx">
              <node concept="37vLTw" id="27MnIradv8L" role="2Oq$k0">
                <ref role="3cqZAo" node="27MnIradspb" resolve="ancestor" />
              </node>
              <node concept="liA8E" id="27MnIradvKN" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.getParent()" resolve="getParent" />
              </node>
            </node>
            <node concept="37vLTw" id="27MnIraduEK" role="37vLTJ">
              <ref role="3cqZAo" node="27MnIradspb" resolve="ancestor" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="27MnIradAhN" role="3cqZAp" />
        <node concept="1Dw8fO" id="27MnIrad$T4" role="3cqZAp">
          <node concept="3cpWsn" id="27MnIrad$T5" role="1Duv9x">
            <property role="TrG5h" value="ancestor" />
            <node concept="3uibUv" id="27MnIrad$T6" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
            </node>
            <node concept="37vLTw" id="27MnIradArR" role="33vP2m">
              <ref role="3cqZAo" node="27MnIradkX2" resolve="c2" />
            </node>
          </node>
          <node concept="3clFbS" id="27MnIrad$T8" role="2LFqv$">
            <node concept="3clFbJ" id="27MnIradAUd" role="3cqZAp">
              <node concept="3clFbS" id="27MnIradAUf" role="3clFbx">
                <node concept="3cpWs6" id="27MnIradD9U" role="3cqZAp">
                  <node concept="37vLTw" id="27MnIradDhu" role="3cqZAk">
                    <ref role="3cqZAo" node="27MnIrad$T5" resolve="ancestor" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="27MnIradBWl" role="3clFbw">
                <node concept="37vLTw" id="27MnIradB99" role="2Oq$k0">
                  <ref role="3cqZAo" node="27MnIradwh_" resolve="ancestors" />
                </node>
                <node concept="3JPx81" id="27MnIradCRT" role="2OqNvi">
                  <node concept="37vLTw" id="27MnIradD0L" role="25WWJ7">
                    <ref role="3cqZAo" node="27MnIrad$T5" resolve="ancestor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="27MnIrad$Te" role="1Dwp0S">
            <node concept="10Nm6u" id="27MnIrad$Tf" role="3uHU7w" />
            <node concept="37vLTw" id="27MnIrad$Tg" role="3uHU7B">
              <ref role="3cqZAo" node="27MnIrad$T5" resolve="ancestor" />
            </node>
          </node>
          <node concept="37vLTI" id="27MnIrad$Th" role="1Dwrff">
            <node concept="2OqwBi" id="27MnIrad$Ti" role="37vLTx">
              <node concept="37vLTw" id="27MnIrad$Tj" role="2Oq$k0">
                <ref role="3cqZAo" node="27MnIrad$T5" resolve="ancestor" />
              </node>
              <node concept="liA8E" id="27MnIrad$Tk" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.getParent()" resolve="getParent" />
              </node>
            </node>
            <node concept="37vLTw" id="27MnIrad$Tl" role="37vLTJ">
              <ref role="3cqZAo" node="27MnIrad$T5" resolve="ancestor" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="27MnIrad$QL" role="3cqZAp" />
        <node concept="3cpWs6" id="27MnIradJ8V" role="3cqZAp">
          <node concept="10Nm6u" id="27MnIradJh1" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="27MnIradgLi" role="3clF46">
        <property role="TrG5h" value="c1" />
        <node concept="3uibUv" id="27MnIradjCi" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="37vLTG" id="27MnIradkX2" role="3clF46">
        <property role="TrG5h" value="c2" />
        <node concept="3uibUv" id="27MnIradny2" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
        </node>
      </node>
      <node concept="3uibUv" id="27MnIradoWM" role="3clF45">
        <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
      </node>
      <node concept="3Tm1VV" id="4bv8_gxjOQp" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="27MnIradWz2" role="jymVt" />
    <node concept="2YIFZL" id="27MnIraei6p" role="jymVt">
      <property role="TrG5h" value="commonAncestor" />
      <node concept="3clFbS" id="27MnIradZYv" role="3clF47">
        <node concept="3clFbF" id="27MnIraepf3" role="3cqZAp">
          <node concept="2OqwBi" id="27MnIraepSJ" role="3clFbG">
            <node concept="37vLTw" id="27MnIraepf2" role="2Oq$k0">
              <ref role="3cqZAo" node="27MnIrae9Nz" resolve="components" />
            </node>
            <node concept="1MCZdW" id="27MnIraeqq9" role="2OqNvi">
              <node concept="1bVj0M" id="27MnIraeqqb" role="23t8la">
                <node concept="3clFbS" id="27MnIraeqqc" role="1bW5cS">
                  <node concept="3clFbF" id="27MnIraeqKd" role="3cqZAp">
                    <node concept="1rXfSq" id="27MnIraeqKc" role="3clFbG">
                      <ref role="37wK5l" node="27MnIradQ2_" resolve="commonAncestor" />
                      <node concept="37vLTw" id="27MnIraerfC" role="37wK5m">
                        <ref role="3cqZAo" node="27MnIraeqqd" resolve="a" />
                      </node>
                      <node concept="37vLTw" id="27MnIraesb8" role="37wK5m">
                        <ref role="3cqZAo" node="27MnIraeqqf" resolve="b" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="27MnIraeqqd" role="1bW2Oz">
                  <property role="TrG5h" value="a" />
                  <node concept="2jxLKc" id="27MnIraeqqe" role="1tU5fm" />
                </node>
                <node concept="Rh6nW" id="27MnIraeqqf" role="1bW2Oz">
                  <property role="TrG5h" value="b" />
                  <node concept="2jxLKc" id="27MnIraeqqg" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="27MnIrae9Nz" role="3clF46">
        <property role="TrG5h" value="components" />
        <node concept="A3Dl8" id="27MnIraecx0" role="1tU5fm">
          <node concept="3uibUv" id="27MnIraf_sN" role="A3Ik2">
            <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="27MnIraeWsq" role="3clF45">
        <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
      </node>
      <node concept="3Tm6S6" id="4bv8_gxjNjS" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="2QFzCYK30u3" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="27MnIr9Ypso">
    <property role="TrG5h" value="DiffImage" />
    <node concept="312cEg" id="27MnIr9Ypvg" role="jymVt">
      <property role="TrG5h" value="image" />
      <node concept="3Tm6S6" id="27MnIr9Ypvh" role="1B3o_S" />
      <node concept="3uibUv" id="27MnIr9YpzW" role="1tU5fm">
        <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
      </node>
    </node>
    <node concept="312cEg" id="27MnIrafnLN" role="jymVt">
      <property role="TrG5h" value="size" />
      <node concept="3Tm6S6" id="27MnIrafnLO" role="1B3o_S" />
      <node concept="3uibUv" id="27MnIrafo4a" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
      </node>
    </node>
    <node concept="312cEg" id="27MnIr9ZJLk" role="jymVt">
      <property role="TrG5h" value="affectedFile" />
      <node concept="3Tm6S6" id="27MnIr9ZJLl" role="1B3o_S" />
      <node concept="17QB3L" id="27MnIra7OYc" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="27MnIr9ZSP9" role="jymVt">
      <property role="TrG5h" value="rootNodeId" />
      <node concept="3Tm6S6" id="27MnIr9ZSPa" role="1B3o_S" />
      <node concept="3uibUv" id="27MnIr9ZT2B" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
      </node>
    </node>
    <node concept="312cEg" id="27MnIr9YGjy" role="jymVt">
      <property role="TrG5h" value="rootNodePresentation" />
      <node concept="3Tm6S6" id="27MnIr9YGjz" role="1B3o_S" />
      <node concept="17QB3L" id="27MnIr9YGm8" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="27MnIr9YL8G" role="jymVt" />
    <node concept="3Tm1VV" id="27MnIr9Ypsp" role="1B3o_S" />
    <node concept="3clFbW" id="27MnIr9YL9i" role="jymVt">
      <node concept="3cqZAl" id="27MnIr9YL9j" role="3clF45" />
      <node concept="3Tm1VV" id="27MnIr9YL9k" role="1B3o_S" />
      <node concept="3clFbS" id="27MnIr9YL9m" role="3clF47">
        <node concept="3clFbF" id="27MnIr9YL9q" role="3cqZAp">
          <node concept="37vLTI" id="27MnIr9YL9s" role="3clFbG">
            <node concept="2OqwBi" id="27MnIr9YL9w" role="37vLTJ">
              <node concept="Xjq3P" id="27MnIr9YL9x" role="2Oq$k0" />
              <node concept="2OwXpG" id="27MnIr9YL9y" role="2OqNvi">
                <ref role="2Oxat6" node="27MnIr9Ypvg" resolve="image" />
              </node>
            </node>
            <node concept="37vLTw" id="27MnIr9YL9z" role="37vLTx">
              <ref role="3cqZAo" node="27MnIr9YL9p" resolve="image" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="27MnIrafo_b" role="3cqZAp">
          <node concept="37vLTI" id="27MnIrafp5Y" role="3clFbG">
            <node concept="37vLTw" id="27MnIrafpfd" role="37vLTx">
              <ref role="3cqZAo" node="27MnIrafoiF" resolve="size" />
            </node>
            <node concept="2OqwBi" id="27MnIrafoK7" role="37vLTJ">
              <node concept="Xjq3P" id="27MnIrafo_9" role="2Oq$k0" />
              <node concept="2OwXpG" id="27MnIrafoQI" role="2OqNvi">
                <ref role="2Oxat6" node="27MnIrafnLN" resolve="size" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="27MnIr9YL9A" role="3cqZAp">
          <node concept="37vLTI" id="27MnIr9YL9C" role="3clFbG">
            <node concept="2OqwBi" id="27MnIr9YL9G" role="37vLTJ">
              <node concept="Xjq3P" id="27MnIr9YL9H" role="2Oq$k0" />
              <node concept="2OwXpG" id="27MnIr9ZQjw" role="2OqNvi">
                <ref role="2Oxat6" node="27MnIr9ZJLk" resolve="affectedFile" />
              </node>
            </node>
            <node concept="37vLTw" id="27MnIr9YL9J" role="37vLTx">
              <ref role="3cqZAo" node="27MnIr9YL9_" resolve="affectedFile" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="27MnIr9ZTm6" role="3cqZAp">
          <node concept="37vLTI" id="27MnIr9ZTMj" role="3clFbG">
            <node concept="37vLTw" id="27MnIr9ZU16" role="37vLTx">
              <ref role="3cqZAo" node="27MnIr9ZT3f" resolve="rootNodeId" />
            </node>
            <node concept="2OqwBi" id="27MnIr9ZTwH" role="37vLTJ">
              <node concept="Xjq3P" id="27MnIr9ZTm4" role="2Oq$k0" />
              <node concept="2OwXpG" id="27MnIr9ZTEU" role="2OqNvi">
                <ref role="2Oxat6" node="27MnIr9ZSP9" resolve="rootNodeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="27MnIr9YL9M" role="3cqZAp">
          <node concept="37vLTI" id="27MnIr9YL9O" role="3clFbG">
            <node concept="2OqwBi" id="27MnIr9YL9S" role="37vLTJ">
              <node concept="Xjq3P" id="27MnIr9YL9T" role="2Oq$k0" />
              <node concept="2OwXpG" id="27MnIr9YL9U" role="2OqNvi">
                <ref role="2Oxat6" node="27MnIr9YGjy" resolve="rootNodePresentation" />
              </node>
            </node>
            <node concept="37vLTw" id="27MnIr9YL9V" role="37vLTx">
              <ref role="3cqZAo" node="27MnIr9YL9L" resolve="rootNodePresentation" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="27MnIr9YL9p" role="3clF46">
        <property role="TrG5h" value="image" />
        <node concept="3uibUv" id="27MnIr9YL9o" role="1tU5fm">
          <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
        </node>
      </node>
      <node concept="37vLTG" id="27MnIrafoiF" role="3clF46">
        <property role="TrG5h" value="size" />
        <node concept="3uibUv" id="27MnIrafooU" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
        </node>
      </node>
      <node concept="37vLTG" id="27MnIr9YL9_" role="3clF46">
        <property role="TrG5h" value="affectedFile" />
        <node concept="17QB3L" id="27MnIra7P7a" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="27MnIr9ZT3f" role="3clF46">
        <property role="TrG5h" value="rootNodeId" />
        <node concept="3uibUv" id="27MnIr9ZTa7" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
        </node>
      </node>
      <node concept="37vLTG" id="27MnIr9YL9L" role="3clF46">
        <property role="TrG5h" value="rootNodePresentation" />
        <node concept="17QB3L" id="27MnIr9YL9K" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="27MnIr9YLgF" role="jymVt" />
    <node concept="3clFb_" id="27MnIr9YLmB" role="jymVt">
      <property role="TrG5h" value="getImage" />
      <node concept="3uibUv" id="27MnIr9YLmC" role="3clF45">
        <ref role="3uigEE" to="jan3:~BufferedImage" resolve="BufferedImage" />
      </node>
      <node concept="3Tm1VV" id="27MnIr9YLmD" role="1B3o_S" />
      <node concept="3clFbS" id="27MnIr9YLmE" role="3clF47">
        <node concept="3clFbF" id="27MnIr9YLmF" role="3cqZAp">
          <node concept="2OqwBi" id="27MnIr9YLm$" role="3clFbG">
            <node concept="Xjq3P" id="27MnIr9YLm_" role="2Oq$k0" />
            <node concept="2OwXpG" id="27MnIr9YLmA" role="2OqNvi">
              <ref role="2Oxat6" node="27MnIr9Ypvg" resolve="image" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="27MnIr9YLx6" role="jymVt" />
    <node concept="3clFb_" id="27MnIrafpgg" role="jymVt">
      <property role="TrG5h" value="getSize" />
      <node concept="3uibUv" id="27MnIrafpgh" role="3clF45">
        <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
      </node>
      <node concept="3Tm1VV" id="27MnIrafpgi" role="1B3o_S" />
      <node concept="3clFbS" id="27MnIrafpgj" role="3clF47">
        <node concept="3clFbF" id="27MnIrafpgk" role="3cqZAp">
          <node concept="2OqwBi" id="27MnIrafpgd" role="3clFbG">
            <node concept="Xjq3P" id="27MnIrafpge" role="2Oq$k0" />
            <node concept="2OwXpG" id="27MnIrafpgf" role="2OqNvi">
              <ref role="2Oxat6" node="27MnIrafnLN" resolve="size" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="27MnIrafpZm" role="jymVt" />
    <node concept="3clFb_" id="27MnIr9YLmJ" role="jymVt">
      <property role="TrG5h" value="getAffectedFile" />
      <node concept="17QB3L" id="27MnIra7Pjh" role="3clF45" />
      <node concept="3Tm1VV" id="27MnIr9YLmL" role="1B3o_S" />
      <node concept="3clFbS" id="27MnIr9YLmM" role="3clF47">
        <node concept="3clFbF" id="27MnIr9YLmN" role="3cqZAp">
          <node concept="2OqwBi" id="27MnIr9YLmG" role="3clFbG">
            <node concept="Xjq3P" id="27MnIr9YLmH" role="2Oq$k0" />
            <node concept="2OwXpG" id="27MnIr9ZQlr" role="2OqNvi">
              <ref role="2Oxat6" node="27MnIr9ZJLk" resolve="affectedFile" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="27MnIr9YL$k" role="jymVt" />
    <node concept="3clFb_" id="27MnIr9ZUc2" role="jymVt">
      <property role="TrG5h" value="getRootNodeId" />
      <node concept="3uibUv" id="27MnIr9ZUc3" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
      </node>
      <node concept="3Tm1VV" id="27MnIr9ZUc4" role="1B3o_S" />
      <node concept="3clFbS" id="27MnIr9ZUc5" role="3clF47">
        <node concept="3clFbF" id="27MnIr9ZUc6" role="3cqZAp">
          <node concept="2OqwBi" id="27MnIr9ZUbZ" role="3clFbG">
            <node concept="Xjq3P" id="27MnIr9ZUc0" role="2Oq$k0" />
            <node concept="2OwXpG" id="27MnIr9ZUc1" role="2OqNvi">
              <ref role="2Oxat6" node="27MnIr9ZSP9" resolve="rootNodeId" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="27MnIr9ZUoP" role="jymVt" />
    <node concept="3clFb_" id="27MnIr9YLmR" role="jymVt">
      <property role="TrG5h" value="getRootNodePresentation" />
      <node concept="17QB3L" id="27MnIr9YLmS" role="3clF45" />
      <node concept="3Tm1VV" id="27MnIr9YLmT" role="1B3o_S" />
      <node concept="3clFbS" id="27MnIr9YLmU" role="3clF47">
        <node concept="3clFbF" id="27MnIr9YLmV" role="3cqZAp">
          <node concept="2OqwBi" id="27MnIr9YLmO" role="3clFbG">
            <node concept="Xjq3P" id="27MnIr9YLmP" role="2Oq$k0" />
            <node concept="2OwXpG" id="27MnIr9YLmQ" role="2OqNvi">
              <ref role="2Oxat6" node="27MnIr9YGjy" resolve="rootNodePresentation" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="27MnIra9NjO" role="jymVt" />
    <node concept="3clFb_" id="27MnIra9NuW" role="jymVt">
      <property role="TrG5h" value="getId" />
      <node concept="17QB3L" id="27MnIra9NIP" role="3clF45" />
      <node concept="3Tm1VV" id="27MnIra9NuZ" role="1B3o_S" />
      <node concept="3clFbS" id="27MnIra9Nv0" role="3clF47">
        <node concept="3cpWs8" id="27MnIra9Q2c" role="3cqZAp">
          <node concept="3cpWsn" id="27MnIra9Q2d" role="3cpWs9">
            <property role="TrG5h" value="id" />
            <node concept="17QB3L" id="27MnIra9PT4" role="1tU5fm" />
            <node concept="3cpWs3" id="27MnIra9Q2e" role="33vP2m">
              <node concept="1rXfSq" id="27MnIra9Q2f" role="3uHU7w">
                <ref role="37wK5l" node="27MnIr9YLmR" resolve="getRootNodePresentation" />
              </node>
              <node concept="3cpWs3" id="27MnIra9Q2g" role="3uHU7B">
                <node concept="3cpWs3" id="27MnIra9Q2h" role="3uHU7B">
                  <node concept="3cpWs3" id="27MnIra9Q2i" role="3uHU7B">
                    <node concept="37vLTw" id="27MnIra9Q2j" role="3uHU7B">
                      <ref role="3cqZAo" node="27MnIr9ZJLk" resolve="affectedFile" />
                    </node>
                    <node concept="Xl_RD" id="27MnIra9Q2k" role="3uHU7w">
                      <property role="Xl_RC" value="-" />
                    </node>
                  </node>
                  <node concept="1rXfSq" id="27MnIra9Q2l" role="3uHU7w">
                    <ref role="37wK5l" node="27MnIr9ZUc2" resolve="getRootNodeId" />
                  </node>
                </node>
                <node concept="Xl_RD" id="27MnIra9Q2m" role="3uHU7w">
                  <property role="Xl_RC" value="-" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="27MnIra9VRy" role="3cqZAp">
          <node concept="2OqwBi" id="27MnIraaJDP" role="3cqZAk">
            <node concept="37vLTw" id="27MnIraaJ62" role="2Oq$k0">
              <ref role="3cqZAo" node="27MnIra9Q2d" resolve="id" />
            </node>
            <node concept="liA8E" id="27MnIraaJVL" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.replaceAll(java.lang.String,java.lang.String)" resolve="replaceAll" />
              <node concept="Xl_RD" id="27MnIraaKbm" role="37wK5m">
                <property role="Xl_RC" value="[^a-zA-Z0-9\\.\\-]" />
              </node>
              <node concept="Xl_RD" id="27MnIraaKCg" role="37wK5m">
                <property role="Xl_RC" value="_" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="27MnIra3H8T">
    <property role="TrG5h" value="DiffServlet" />
    <node concept="2tJIrI" id="27MnIra3Q1b" role="jymVt" />
    <node concept="312cEg" id="27MnIra3QfK" role="jymVt">
      <property role="TrG5h" value="diffRequests" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="27MnIra3QfL" role="1B3o_S" />
      <node concept="2ShNRf" id="2XovqnGUQPq" role="33vP2m">
        <node concept="3rGOSV" id="2XovqnGUQx0" role="2ShVmc">
          <node concept="1LlUBW" id="2XovqnGUQx1" role="3rHrn6">
            <node concept="17QB3L" id="2XovqnGUQx2" role="1Lm7xW" />
            <node concept="17QB3L" id="2XovqnGUQx3" role="1Lm7xW" />
          </node>
          <node concept="3uibUv" id="2_VYLT0nWbL" role="3rHtpV">
            <ref role="3uigEE" to="5zyv:~Future" resolve="Future" />
            <node concept="3uibUv" id="2_VYLT0nWbM" role="11_B2D">
              <ref role="3uigEE" to="5zyv:~Future" resolve="Future" />
              <node concept="_YKpA" id="2_VYLT0nWbN" role="11_B2D">
                <node concept="_YKpA" id="2_VYLT0nWbO" role="_ZDj9">
                  <node concept="3uibUv" id="2_VYLT0nWbP" role="_ZDj9">
                    <ref role="3uigEE" node="27MnIr9Ypso" resolve="DiffImage" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3rvAFt" id="2XovqnGUEhw" role="1tU5fm">
        <node concept="1LlUBW" id="2XovqnGUFOi" role="3rvQeY">
          <node concept="17QB3L" id="2XovqnGUJ5p" role="1Lm7xW" />
          <node concept="17QB3L" id="2XovqnGUMp8" role="1Lm7xW" />
        </node>
        <node concept="3uibUv" id="2_VYLT0nUw1" role="3rvSg0">
          <ref role="3uigEE" to="5zyv:~Future" resolve="Future" />
          <node concept="3uibUv" id="2_VYLT0nUw2" role="11_B2D">
            <ref role="3uigEE" to="5zyv:~Future" resolve="Future" />
            <node concept="_YKpA" id="2_VYLT0nUw3" role="11_B2D">
              <node concept="_YKpA" id="2_VYLT0nUw4" role="_ZDj9">
                <node concept="3uibUv" id="2_VYLT0nUw5" role="_ZDj9">
                  <ref role="3uigEE" node="27MnIr9Ypso" resolve="DiffImage" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="27MnIra3Q63" role="jymVt" />
    <node concept="3clFb_" id="QucyCqZ7q5" role="jymVt">
      <property role="TrG5h" value="doGet" />
      <node concept="3Tmbuc" id="QucyCqZ7q6" role="1B3o_S" />
      <node concept="3cqZAl" id="QucyCqZ7q8" role="3clF45" />
      <node concept="37vLTG" id="QucyCqZ7q9" role="3clF46">
        <property role="TrG5h" value="req" />
        <node concept="3uibUv" id="QucyCqZ7qa" role="1tU5fm">
          <ref role="3uigEE" to="nwfd:~HttpServletRequest" resolve="HttpServletRequest" />
        </node>
      </node>
      <node concept="37vLTG" id="QucyCqZ7qb" role="3clF46">
        <property role="TrG5h" value="resp" />
        <node concept="3uibUv" id="QucyCqZ7qc" role="1tU5fm">
          <ref role="3uigEE" to="nwfd:~HttpServletResponse" resolve="HttpServletResponse" />
        </node>
      </node>
      <node concept="3uibUv" id="QucyCqZ7qd" role="Sfmx6">
        <ref role="3uigEE" to="opgt:~ServletException" resolve="ServletException" />
      </node>
      <node concept="3uibUv" id="QucyCqZ7qe" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="3clFbS" id="QucyCqZ7qf" role="3clF47">
        <node concept="3J1_TO" id="2XovqnH4boc" role="3cqZAp">
          <node concept="3uVAMA" id="2XovqnH4e7n" role="1zxBo5">
            <node concept="XOnhg" id="2XovqnH4e7o" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="2XovqnH4e7p" role="1tU5fm">
                <node concept="3uibUv" id="2XovqnH4g0J" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2XovqnH4e7q" role="1zc67A">
              <node concept="RRSsy" id="2XovqnH4sW2" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="2XovqnH4sW4" role="RRSoy" />
                <node concept="37vLTw" id="2XovqnH4vFz" role="RRSow">
                  <ref role="3cqZAo" node="2XovqnH4e7o" resolve="ex" />
                </node>
              </node>
              <node concept="YS8fn" id="2XovqnH4z0u" role="3cqZAp">
                <node concept="2ShNRf" id="2XovqnH4zkz" role="YScLw">
                  <node concept="1pGfFk" id="2XovqnH4BMW" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="2XovqnH4C$u" role="37wK5m">
                      <ref role="3cqZAo" node="2XovqnH4e7o" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2XovqnH4boe" role="1zxBo7">
            <node concept="3cpWs8" id="27MnIra7wFR" role="3cqZAp">
              <node concept="3cpWsn" id="27MnIra7wFS" role="3cpWs9">
                <property role="TrG5h" value="pathInfo" />
                <node concept="17QB3L" id="27MnIra7xEX" role="1tU5fm" />
                <node concept="2OqwBi" id="27MnIra7wFT" role="33vP2m">
                  <node concept="37vLTw" id="27MnIra7wFU" role="2Oq$k0">
                    <ref role="3cqZAo" node="QucyCqZ7q9" resolve="req" />
                  </node>
                  <node concept="liA8E" id="27MnIra7wFV" role="2OqNvi">
                    <ref role="37wK5l" to="nwfd:~HttpServletRequest.getPathInfo()" resolve="getPathInfo" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2XovqnGWjQ1" role="3cqZAp" />
            <node concept="3cpWs8" id="2XovqnGVaFV" role="3cqZAp">
              <node concept="3cpWsn" id="2XovqnGVaFY" role="3cpWs9">
                <property role="TrG5h" value="images" />
                <node concept="10Nm6u" id="2XovqnGVeFz" role="33vP2m" />
                <node concept="3uibUv" id="2_VYLT0nKPy" role="1tU5fm">
                  <ref role="3uigEE" to="5zyv:~Future" resolve="Future" />
                  <node concept="3uibUv" id="2_VYLT0nKPO" role="11_B2D">
                    <ref role="3uigEE" to="5zyv:~Future" resolve="Future" />
                    <node concept="_YKpA" id="2_VYLT0nKPP" role="11_B2D">
                      <node concept="_YKpA" id="2_VYLT0nKPQ" role="_ZDj9">
                        <node concept="3uibUv" id="2_VYLT0nKPR" role="_ZDj9">
                          <ref role="3uigEE" node="27MnIr9Ypso" resolve="DiffImage" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2XovqnGXb$X" role="3cqZAp" />
            <node concept="3clFbJ" id="2XovqnGM7x$" role="3cqZAp">
              <node concept="3clFbS" id="2XovqnGM7xA" role="3clFbx">
                <node concept="1HWtB8" id="2XovqnGMfDX" role="3cqZAp">
                  <node concept="37vLTw" id="2XovqnGXj_J" role="1HWFw0">
                    <ref role="3cqZAo" node="27MnIra3QfK" resolve="diffRequests" />
                  </node>
                  <node concept="3clFbS" id="2XovqnGMfE1" role="1HWHxc">
                    <node concept="3clFbF" id="2XovqnGMP_J" role="3cqZAp">
                      <node concept="2OqwBi" id="2XovqnGXmBJ" role="3clFbG">
                        <node concept="37vLTw" id="2XovqnGMP_L" role="2Oq$k0">
                          <ref role="3cqZAo" node="27MnIra3QfK" resolve="diffRequests" />
                        </node>
                        <node concept="1yHZxX" id="2XovqnGXoD0" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2XovqnGNvRA" role="3cqZAp">
                  <node concept="2OqwBi" id="2XovqnGNvRB" role="3clFbG">
                    <node concept="37vLTw" id="2XovqnGNvRC" role="2Oq$k0">
                      <ref role="3cqZAo" node="QucyCqZ7qb" resolve="resp" />
                    </node>
                    <node concept="liA8E" id="2XovqnGNvRD" role="2OqNvi">
                      <ref role="37wK5l" to="nwfd:~HttpServletResponse.setStatus(int)" resolve="setStatus" />
                      <node concept="10M0yZ" id="2XovqnGNvRE" role="37wK5m">
                        <ref role="3cqZAo" to="nwfd:~HttpServletResponse.SC_OK" resolve="SC_OK" />
                        <ref role="1PxDUh" to="nwfd:~HttpServletResponse" resolve="HttpServletResponse" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2XovqnGXpg0" role="3cqZAp">
                  <node concept="2OqwBi" id="2XovqnGXpW$" role="3clFbG">
                    <node concept="37vLTw" id="2XovqnGXpfY" role="2Oq$k0">
                      <ref role="3cqZAo" node="QucyCqZ7qb" resolve="resp" />
                    </node>
                    <node concept="liA8E" id="2XovqnGXqea" role="2OqNvi">
                      <ref role="37wK5l" to="opgt:~ServletResponse.setContentType(java.lang.String)" resolve="setContentType" />
                      <node concept="Xl_RD" id="2XovqnGXqzQ" role="37wK5m">
                        <property role="Xl_RC" value="text/plain" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2XovqnGXr7l" role="3cqZAp">
                  <node concept="2OqwBi" id="2XovqnGXsjB" role="3clFbG">
                    <node concept="2OqwBi" id="2XovqnGXrIl" role="2Oq$k0">
                      <node concept="37vLTw" id="2XovqnGXr7j" role="2Oq$k0">
                        <ref role="3cqZAo" node="QucyCqZ7qb" resolve="resp" />
                      </node>
                      <node concept="liA8E" id="2XovqnGXrY8" role="2OqNvi">
                        <ref role="37wK5l" to="opgt:~ServletResponse.getWriter()" resolve="getWriter" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2XovqnGXsLr" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                      <node concept="Xl_RD" id="2XovqnGXu1t" role="37wK5m">
                        <property role="Xl_RC" value="Cache cleared" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="2XovqnGNwoh" role="3cqZAp" />
              </node>
              <node concept="17R0WA" id="2XovqnGNso6" role="3clFbw">
                <node concept="Xl_RD" id="2XovqnGNuPV" role="3uHU7w">
                  <property role="Xl_RC" value="/clear" />
                </node>
                <node concept="37vLTw" id="2XovqnGMarR" role="3uHU7B">
                  <ref role="3cqZAo" node="27MnIra7wFS" resolve="pathInfo" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2XovqnGVVCl" role="3cqZAp" />
            <node concept="3clFbJ" id="2XovqnGWnYB" role="3cqZAp">
              <node concept="3clFbS" id="2XovqnGWnYD" role="3clFbx">
                <node concept="3cpWs8" id="2XovqnGVj6z" role="3cqZAp">
                  <node concept="3cpWsn" id="2XovqnGVj6A" role="3cpWs9">
                    <property role="TrG5h" value="leftRevision" />
                    <node concept="17QB3L" id="2XovqnGVj6x" role="1tU5fm" />
                    <node concept="2OqwBi" id="2XovqnGWMtS" role="33vP2m">
                      <node concept="37vLTw" id="2XovqnGWLJC" role="2Oq$k0">
                        <ref role="3cqZAo" node="27MnIra7wFS" resolve="pathInfo" />
                      </node>
                      <node concept="liA8E" id="2XovqnGWMW9" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                        <node concept="3cmrfG" id="2XovqnGWNWW" role="37wK5m">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="3cpWs3" id="2XovqnGWRwn" role="37wK5m">
                          <node concept="3cmrfG" id="2XovqnGWSjk" role="3uHU7B">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="3cmrfG" id="2XovqnGWQtL" role="3uHU7w">
                            <property role="3cmrfH" value="40" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="2XovqnGVoQi" role="3cqZAp">
                  <node concept="3cpWsn" id="2XovqnGVoQl" role="3cpWs9">
                    <property role="TrG5h" value="rightRevision" />
                    <node concept="17QB3L" id="2XovqnGVoQg" role="1tU5fm" />
                    <node concept="2OqwBi" id="2XovqnGWUr5" role="33vP2m">
                      <node concept="37vLTw" id="2XovqnGWTGP" role="2Oq$k0">
                        <ref role="3cqZAo" node="27MnIra7wFS" resolve="pathInfo" />
                      </node>
                      <node concept="liA8E" id="2XovqnGWUTm" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                        <node concept="3cpWs3" id="2XovqnGWZeU" role="37wK5m">
                          <node concept="3cmrfG" id="2XovqnGWZyT" role="3uHU7w">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="3cpWs3" id="2XovqnGWXZ9" role="3uHU7B">
                            <node concept="3cmrfG" id="2XovqnGWVUh" role="3uHU7B">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="3cmrfG" id="2XovqnGWYj8" role="3uHU7w">
                              <property role="3cmrfH" value="40" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs3" id="2XovqnGX6OP" role="37wK5m">
                          <node concept="3cmrfG" id="2XovqnGX78O" role="3uHU7w">
                            <property role="3cmrfH" value="40" />
                          </node>
                          <node concept="3cpWs3" id="2XovqnGX51o" role="3uHU7B">
                            <node concept="3cpWs3" id="2XovqnGX3e9" role="3uHU7B">
                              <node concept="3cmrfG" id="2XovqnGX1DI" role="3uHU7B">
                                <property role="3cmrfH" value="1" />
                              </node>
                              <node concept="3cmrfG" id="2XovqnGX3y8" role="3uHU7w">
                                <property role="3cmrfH" value="40" />
                              </node>
                            </node>
                            <node concept="3cmrfG" id="2XovqnGX5ln" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2XovqnGWxx8" role="3cqZAp">
                  <node concept="37vLTI" id="2XovqnGWywv" role="3clFbG">
                    <node concept="2OqwBi" id="2XovqnGWzAb" role="37vLTx">
                      <node concept="37vLTw" id="2XovqnGWzg3" role="2Oq$k0">
                        <ref role="3cqZAo" node="27MnIra7wFS" resolve="pathInfo" />
                      </node>
                      <node concept="liA8E" id="2XovqnGWzK$" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                        <node concept="3cpWs3" id="2XovqnGWC0z" role="37wK5m">
                          <node concept="3cmrfG" id="2XovqnGWCky" role="3uHU7w">
                            <property role="3cmrfH" value="40" />
                          </node>
                          <node concept="3cpWs3" id="2XovqnGWA_D" role="3uHU7B">
                            <node concept="3cpWs3" id="2XovqnGW__j" role="3uHU7B">
                              <node concept="3cmrfG" id="2XovqnGW$p6" role="3uHU7B">
                                <property role="3cmrfH" value="1" />
                              </node>
                              <node concept="3cmrfG" id="2XovqnGW_Ti" role="3uHU7w">
                                <property role="3cmrfH" value="40" />
                              </node>
                            </node>
                            <node concept="3cmrfG" id="2XovqnGWATC" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="2XovqnGWxx6" role="37vLTJ">
                      <ref role="3cqZAo" node="27MnIra7wFS" resolve="pathInfo" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2XovqnGWGnh" role="3cqZAp" />
                <node concept="1HWtB8" id="2XovqnGV2kS" role="3cqZAp">
                  <node concept="37vLTw" id="2XovqnGV5AB" role="1HWFw0">
                    <ref role="3cqZAo" node="27MnIra3QfK" resolve="diffRequests" />
                  </node>
                  <node concept="3clFbS" id="2XovqnGV2kW" role="1HWHxc">
                    <node concept="3clFbF" id="2XovqnGVf2n" role="3cqZAp">
                      <node concept="37vLTI" id="2XovqnGVf_v" role="3clFbG">
                        <node concept="3EllGN" id="2XovqnGVvTk" role="37vLTx">
                          <node concept="1Ls8ON" id="2XovqnGVxIS" role="3ElVtu">
                            <node concept="37vLTw" id="2XovqnGVyN0" role="1Lso8e">
                              <ref role="3cqZAo" node="2XovqnGVj6A" resolve="leftRevision" />
                            </node>
                            <node concept="37vLTw" id="2XovqnGVz_A" role="1Lso8e">
                              <ref role="3cqZAo" node="2XovqnGVoQl" resolve="rightRevision" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="2XovqnGVs62" role="3ElQJh">
                            <ref role="3cqZAo" node="27MnIra3QfK" resolve="diffRequests" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="2XovqnGVf2m" role="37vLTJ">
                          <ref role="3cqZAo" node="2XovqnGVaFY" resolve="images" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="2XovqnGV$eK" role="3cqZAp">
                      <node concept="3clFbS" id="2XovqnGV$eM" role="3clFbx">
                        <node concept="3cpWs8" id="4bv8_gxn3jO" role="3cqZAp">
                          <node concept="3cpWsn" id="4bv8_gxn3jP" role="3cpWs9">
                            <property role="TrG5h" value="project" />
                            <node concept="3uibUv" id="4bv8_gxn30k" role="1tU5fm">
                              <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
                            </node>
                            <node concept="2OqwBi" id="4bv8_gxn3jQ" role="33vP2m">
                              <node concept="2OqwBi" id="4bv8_gxn3jR" role="2Oq$k0">
                                <node concept="2OqwBi" id="4bv8_gxn3jS" role="2Oq$k0">
                                  <node concept="2OqwBi" id="4bv8_gxn3jT" role="2Oq$k0">
                                    <node concept="2YIFZM" id="4bv8_gxn3jU" role="2Oq$k0">
                                      <ref role="1Pybhc" to="4nm9:~ProjectManager" resolve="ProjectManager" />
                                      <ref role="37wK5l" to="4nm9:~ProjectManager.getInstance()" resolve="getInstance" />
                                    </node>
                                    <node concept="liA8E" id="4bv8_gxn3jV" role="2OqNvi">
                                      <ref role="37wK5l" to="4nm9:~ProjectManager.getOpenProjects()" resolve="getOpenProjects" />
                                    </node>
                                  </node>
                                  <node concept="39bAoz" id="4bv8_gxn3jW" role="2OqNvi" />
                                </node>
                                <node concept="3QWeyG" id="4bv8_gxn3jX" role="2OqNvi">
                                  <node concept="2ShNRf" id="4bv8_gxn3jY" role="576Qk">
                                    <node concept="2HTt$P" id="4bv8_gxn3jZ" role="2ShVmc">
                                      <node concept="3uibUv" id="4bv8_gxn3k0" role="2HTBi0">
                                        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
                                      </node>
                                      <node concept="2OqwBi" id="4bv8_gxn3k1" role="2HTEbv">
                                        <node concept="2YIFZM" id="4bv8_gxn3k2" role="2Oq$k0">
                                          <ref role="1Pybhc" to="4nm9:~ProjectManager" resolve="ProjectManager" />
                                          <ref role="37wK5l" to="4nm9:~ProjectManager.getInstance()" resolve="getInstance" />
                                        </node>
                                        <node concept="liA8E" id="4bv8_gxn3k3" role="2OqNvi">
                                          <ref role="37wK5l" to="4nm9:~ProjectManager.getDefaultProject()" resolve="getDefaultProject" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="1uHKPH" id="4bv8_gxn3k4" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="4bv8_gxn5ne" role="3cqZAp">
                          <node concept="3clFbS" id="4bv8_gxn5ng" role="3clFbx">
                            <node concept="3clFbF" id="4bv8_gxn7SR" role="3cqZAp">
                              <node concept="2OqwBi" id="4bv8_gxn7SS" role="3clFbG">
                                <node concept="37vLTw" id="4bv8_gxn7ST" role="2Oq$k0">
                                  <ref role="3cqZAo" node="QucyCqZ7qb" resolve="resp" />
                                </node>
                                <node concept="liA8E" id="4bv8_gxn7SU" role="2OqNvi">
                                  <ref role="37wK5l" to="nwfd:~HttpServletResponse.setStatus(int)" resolve="setStatus" />
                                  <node concept="10M0yZ" id="4bv8_gxn9qz" role="37wK5m">
                                    <ref role="3cqZAo" to="nwfd:~HttpServletResponse.SC_INTERNAL_SERVER_ERROR" resolve="SC_INTERNAL_SERVER_ERROR" />
                                    <ref role="1PxDUh" to="nwfd:~HttpServletResponse" resolve="HttpServletResponse" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="4bv8_gxn7SX" role="3cqZAp">
                              <node concept="2OqwBi" id="4bv8_gxn7SY" role="3clFbG">
                                <node concept="37vLTw" id="4bv8_gxn7SZ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="QucyCqZ7qb" resolve="resp" />
                                </node>
                                <node concept="liA8E" id="4bv8_gxn7T0" role="2OqNvi">
                                  <ref role="37wK5l" to="opgt:~ServletResponse.setContentType(java.lang.String)" resolve="setContentType" />
                                  <node concept="Xl_RD" id="4bv8_gxn7T1" role="37wK5m">
                                    <property role="Xl_RC" value="text/plain" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="4bv8_gxn7T2" role="3cqZAp">
                              <node concept="2OqwBi" id="4bv8_gxn7T3" role="3clFbG">
                                <node concept="2OqwBi" id="4bv8_gxn7T4" role="2Oq$k0">
                                  <node concept="37vLTw" id="4bv8_gxn7T5" role="2Oq$k0">
                                    <ref role="3cqZAo" node="QucyCqZ7qb" resolve="resp" />
                                  </node>
                                  <node concept="liA8E" id="4bv8_gxn7T6" role="2OqNvi">
                                    <ref role="37wK5l" to="opgt:~ServletResponse.getWriter()" resolve="getWriter" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="4bv8_gxn7T7" role="2OqNvi">
                                  <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                                  <node concept="Xl_RD" id="4bv8_gxnasK" role="37wK5m">
                                    <property role="Xl_RC" value="No project found" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="4bv8_gxn7T9" role="3cqZAp" />
                          </node>
                          <node concept="3clFbC" id="4bv8_gxn78o" role="3clFbw">
                            <node concept="10Nm6u" id="4bv8_gxn7EO" role="3uHU7w" />
                            <node concept="37vLTw" id="4bv8_gxn6cZ" role="3uHU7B">
                              <ref role="3cqZAo" node="4bv8_gxn3jP" resolve="project" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="4VOkv45UEY4" role="3cqZAp">
                          <node concept="3cpWsn" id="4VOkv45UEY5" role="3cpWs9">
                            <property role="TrG5h" value="mpsProject" />
                            <node concept="3uibUv" id="4VOkv45UEDw" role="1tU5fm">
                              <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
                            </node>
                            <node concept="2YIFZM" id="4VOkv45UEY6" role="33vP2m">
                              <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
                              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                              <node concept="37vLTw" id="4VOkv45UEY7" role="37wK5m">
                                <ref role="3cqZAo" node="4bv8_gxn3jP" resolve="project" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="4VOkv45UM0K" role="3cqZAp">
                          <node concept="3clFbS" id="4VOkv45UM0M" role="3clFbx">
                            <node concept="3clFbF" id="4VOkv45UOWp" role="3cqZAp">
                              <node concept="2OqwBi" id="4VOkv45UOWq" role="3clFbG">
                                <node concept="37vLTw" id="4VOkv45UOWr" role="2Oq$k0">
                                  <ref role="3cqZAo" node="QucyCqZ7qb" resolve="resp" />
                                </node>
                                <node concept="liA8E" id="4VOkv45UOWs" role="2OqNvi">
                                  <ref role="37wK5l" to="nwfd:~HttpServletResponse.setStatus(int)" resolve="setStatus" />
                                  <node concept="10M0yZ" id="4VOkv45UOWt" role="37wK5m">
                                    <ref role="3cqZAo" to="nwfd:~HttpServletResponse.SC_INTERNAL_SERVER_ERROR" resolve="SC_INTERNAL_SERVER_ERROR" />
                                    <ref role="1PxDUh" to="nwfd:~HttpServletResponse" resolve="HttpServletResponse" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="4VOkv45UOWv" role="3cqZAp">
                              <node concept="2OqwBi" id="4VOkv45UOWw" role="3clFbG">
                                <node concept="37vLTw" id="4VOkv45UOWx" role="2Oq$k0">
                                  <ref role="3cqZAo" node="QucyCqZ7qb" resolve="resp" />
                                </node>
                                <node concept="liA8E" id="4VOkv45UOWy" role="2OqNvi">
                                  <ref role="37wK5l" to="opgt:~ServletResponse.setContentType(java.lang.String)" resolve="setContentType" />
                                  <node concept="Xl_RD" id="4VOkv45UOWz" role="37wK5m">
                                    <property role="Xl_RC" value="text/plain" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="4VOkv45UOW$" role="3cqZAp">
                              <node concept="2OqwBi" id="4VOkv45UOW_" role="3clFbG">
                                <node concept="2OqwBi" id="4VOkv45UOWA" role="2Oq$k0">
                                  <node concept="37vLTw" id="4VOkv45UOWB" role="2Oq$k0">
                                    <ref role="3cqZAo" node="QucyCqZ7qb" resolve="resp" />
                                  </node>
                                  <node concept="liA8E" id="4VOkv45UOWC" role="2OqNvi">
                                    <ref role="37wK5l" to="opgt:~ServletResponse.getWriter()" resolve="getWriter" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="4VOkv45UOWD" role="2OqNvi">
                                  <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                                  <node concept="Xl_RD" id="4VOkv45UOWE" role="37wK5m">
                                    <property role="Xl_RC" value="MPS project not initialized yet" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="4VOkv45UOWF" role="3cqZAp" />
                          </node>
                          <node concept="3clFbC" id="4VOkv45UOnj" role="3clFbw">
                            <node concept="10Nm6u" id="4VOkv45UOGl" role="3uHU7w" />
                            <node concept="37vLTw" id="4VOkv45UNdx" role="3uHU7B">
                              <ref role="3cqZAo" node="4VOkv45UEY5" resolve="mpsProject" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="2XovqnGVLnn" role="3cqZAp">
                          <node concept="37vLTI" id="2XovqnGVM2R" role="3clFbG">
                            <node concept="37vLTw" id="2XovqnGVLnl" role="37vLTJ">
                              <ref role="3cqZAo" node="2XovqnGVaFY" resolve="images" />
                            </node>
                            <node concept="2YIFZM" id="2_VYLT0mQNq" role="37vLTx">
                              <ref role="37wK5l" node="2_VYLT0mAD8" resolve="onThreadPool" />
                              <ref role="1Pybhc" node="2QFzCYK30u2" resolve="DiffImages" />
                              <node concept="1bVj0M" id="2_VYLT0mRIP" role="37wK5m">
                                <node concept="3clFbS" id="2_VYLT0mRIQ" role="1bW5cS">
                                  <node concept="3cpWs8" id="2_VYLT0mUly" role="3cqZAp">
                                    <node concept="3cpWsn" id="2_VYLT0mUlz" role="3cpWs9">
                                      <property role="TrG5h" value="diffRenderers" />
                                      <node concept="_YKpA" id="2_VYLT0mU4m" role="1tU5fm">
                                        <node concept="1ajhzC" id="2_VYLT0mU4z" role="_ZDj9">
                                          <node concept="_YKpA" id="2_VYLT0mU4$" role="1ajl9A">
                                            <node concept="3uibUv" id="2_VYLT0mU4_" role="_ZDj9">
                                              <ref role="3uigEE" node="27MnIr9Ypso" resolve="DiffImage" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="2_VYLT0mUl$" role="33vP2m">
                                        <node concept="2ShNRf" id="2_VYLT0mUl_" role="2Oq$k0">
                                          <node concept="1pGfFk" id="2_VYLT0mUlA" role="2ShVmc">
                                            <ref role="37wK5l" node="4kPMkltJSq1" resolve="DiffImages" />
                                            <node concept="37vLTw" id="2_VYLT0mUlB" role="37wK5m">
                                              <ref role="3cqZAo" node="4bv8_gxn3jP" resolve="project" />
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="2_VYLT0mUlC" role="2OqNvi">
                                          <ref role="37wK5l" node="2XovqnGUhMw" resolve="diffRevisions" />
                                          <node concept="37vLTw" id="2_VYLT0mUlD" role="37wK5m">
                                            <ref role="3cqZAo" node="2XovqnGVj6A" resolve="leftRevision" />
                                          </node>
                                          <node concept="37vLTw" id="2_VYLT0mUlE" role="37wK5m">
                                            <ref role="3cqZAo" node="2XovqnGVoQl" resolve="rightRevision" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs6" id="2_VYLT0nImB" role="3cqZAp">
                                    <node concept="2YIFZM" id="2_VYLT0nImD" role="3cqZAk">
                                      <ref role="37wK5l" node="2_VYLT0na85" resolve="onEDT" />
                                      <ref role="1Pybhc" node="2QFzCYK30u2" resolve="DiffImages" />
                                      <node concept="1bVj0M" id="2_VYLT0nImE" role="37wK5m">
                                        <property role="3yWfEV" value="true" />
                                        <node concept="3clFbS" id="2_VYLT0nImF" role="1bW5cS">
                                          <node concept="3cpWs8" id="2_VYLT0p8aE" role="3cqZAp">
                                            <node concept="3cpWsn" id="2_VYLT0p8aF" role="3cpWs9">
                                              <property role="TrG5h" value="list" />
                                              <node concept="_YKpA" id="2_VYLT0nYac" role="1tU5fm">
                                                <node concept="_YKpA" id="2_VYLT0nYai" role="_ZDj9">
                                                  <node concept="3uibUv" id="2_VYLT0nYaj" role="_ZDj9">
                                                    <ref role="3uigEE" node="27MnIr9Ypso" resolve="DiffImage" />
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="2OqwBi" id="2_VYLT0p8aG" role="33vP2m">
                                                <node concept="2OqwBi" id="2_VYLT0p8aH" role="2Oq$k0">
                                                  <node concept="37vLTw" id="2_VYLT0p8aI" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="2_VYLT0mUlz" resolve="diffRenderers" />
                                                  </node>
                                                  <node concept="3$u5V9" id="2_VYLT0p8aJ" role="2OqNvi">
                                                    <node concept="1bVj0M" id="2_VYLT0p8aK" role="23t8la">
                                                      <node concept="3clFbS" id="2_VYLT0p8aL" role="1bW5cS">
                                                        <node concept="3clFbF" id="2_VYLT0p8aM" role="3cqZAp">
                                                          <node concept="2OqwBi" id="2_VYLT0p8aN" role="3clFbG">
                                                            <node concept="37vLTw" id="2_VYLT0p8aO" role="2Oq$k0">
                                                              <ref role="3cqZAo" node="2_VYLT0p8aQ" resolve="it" />
                                                            </node>
                                                            <node concept="1Bd96e" id="2_VYLT0p8aP" role="2OqNvi" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="Rh6nW" id="2_VYLT0p8aQ" role="1bW2Oz">
                                                        <property role="TrG5h" value="it" />
                                                        <node concept="2jxLKc" id="2_VYLT0p8aR" role="1tU5fm" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="ANE8D" id="2_VYLT0p8aS" role="2OqNvi" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3clFbF" id="2_VYLT0nImG" role="3cqZAp">
                                            <node concept="37vLTw" id="2_VYLT0p8aT" role="3clFbG">
                                              <ref role="3cqZAo" node="2_VYLT0p8aF" resolve="list" />
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
                        <node concept="3clFbF" id="2XovqnGVBy$" role="3cqZAp">
                          <node concept="37vLTI" id="2XovqnGVBy_" role="3clFbG">
                            <node concept="3EllGN" id="2XovqnGVDDw" role="37vLTJ">
                              <node concept="1Ls8ON" id="2XovqnGVFy3" role="3ElVtu">
                                <node concept="37vLTw" id="2XovqnGVHeZ" role="1Lso8e">
                                  <ref role="3cqZAo" node="2XovqnGVj6A" resolve="leftRevision" />
                                </node>
                                <node concept="37vLTw" id="2XovqnGVIfw" role="1Lso8e">
                                  <ref role="3cqZAo" node="2XovqnGVoQl" resolve="rightRevision" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="2XovqnGVByA" role="3ElQJh">
                                <ref role="3cqZAo" node="27MnIra3QfK" resolve="diffRequests" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="2XovqnGVN4_" role="37vLTx">
                              <ref role="3cqZAo" node="2XovqnGVaFY" resolve="images" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="2XovqnGV_Mu" role="3clFbw">
                        <node concept="37vLTw" id="2XovqnGV$HQ" role="3uHU7B">
                          <ref role="3cqZAo" node="2XovqnGVaFY" resolve="images" />
                        </node>
                        <node concept="10Nm6u" id="2XovqnGV_Fg" role="3uHU7w" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="2XovqnGXBx4" role="9aQIa">
                <node concept="3clFbS" id="2XovqnGXBx5" role="9aQI4">
                  <node concept="3clFbF" id="2XovqnGXHT3" role="3cqZAp">
                    <node concept="2OqwBi" id="2XovqnGXHT4" role="3clFbG">
                      <node concept="37vLTw" id="2XovqnGXHT5" role="2Oq$k0">
                        <ref role="3cqZAo" node="QucyCqZ7qb" resolve="resp" />
                      </node>
                      <node concept="liA8E" id="2XovqnGXHT6" role="2OqNvi">
                        <ref role="37wK5l" to="nwfd:~HttpServletResponse.setStatus(int)" resolve="setStatus" />
                        <node concept="10M0yZ" id="2XovqnGXIW1" role="37wK5m">
                          <ref role="3cqZAo" to="nwfd:~HttpServletResponse.SC_NOT_FOUND" resolve="SC_NOT_FOUND" />
                          <ref role="1PxDUh" to="nwfd:~HttpServletResponse" resolve="HttpServletResponse" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2XovqnGXHT9" role="3cqZAp">
                    <node concept="2OqwBi" id="2XovqnGXHTa" role="3clFbG">
                      <node concept="37vLTw" id="2XovqnGXHTb" role="2Oq$k0">
                        <ref role="3cqZAo" node="QucyCqZ7qb" resolve="resp" />
                      </node>
                      <node concept="liA8E" id="2XovqnGXHTc" role="2OqNvi">
                        <ref role="37wK5l" to="opgt:~ServletResponse.setContentType(java.lang.String)" resolve="setContentType" />
                        <node concept="Xl_RD" id="2XovqnGXHTd" role="37wK5m">
                          <property role="Xl_RC" value="text/plain" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2XovqnGXHTe" role="3cqZAp">
                    <node concept="2OqwBi" id="2XovqnGXHTf" role="3clFbG">
                      <node concept="2OqwBi" id="2XovqnGXHTg" role="2Oq$k0">
                        <node concept="37vLTw" id="2XovqnGXHTh" role="2Oq$k0">
                          <ref role="3cqZAo" node="QucyCqZ7qb" resolve="resp" />
                        </node>
                        <node concept="liA8E" id="2XovqnGXHTi" role="2OqNvi">
                          <ref role="37wK5l" to="opgt:~ServletResponse.getWriter()" resolve="getWriter" />
                        </node>
                      </node>
                      <node concept="liA8E" id="2XovqnGXHTj" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                        <node concept="3cpWs3" id="4VOkv45VHhI" role="37wK5m">
                          <node concept="Xl_RD" id="4VOkv45VGBv" role="3uHU7w">
                            <property role="Xl_RC" value=")" />
                          </node>
                          <node concept="3cpWs3" id="4VOkv45VGix" role="3uHU7B">
                            <node concept="Xl_RD" id="2XovqnGXHTk" role="3uHU7B">
                              <property role="Xl_RC" value="No revisions provided (path: " />
                            </node>
                            <node concept="37vLTw" id="4VOkv45VIcH" role="3uHU7w">
                              <ref role="3cqZAo" node="27MnIra7wFS" resolve="pathInfo" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="2XovqnGYcFv" role="3cqZAp" />
                </node>
              </node>
              <node concept="2OqwBi" id="2XovqnGWtZQ" role="3clFbw">
                <node concept="37vLTw" id="2XovqnGWrji" role="2Oq$k0">
                  <ref role="3cqZAo" node="27MnIra7wFS" resolve="pathInfo" />
                </node>
                <node concept="liA8E" id="2XovqnGWvn2" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.matches(java.lang.String)" resolve="matches" />
                  <node concept="Xl_RD" id="2XovqnGWwWG" role="37wK5m">
                    <property role="Xl_RC" value="\\/[0-9a-f]{40}\\/[0-9a-f]{40}\\/.*" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2XovqnGM31s" role="3cqZAp" />
            <node concept="3clFbJ" id="27MnIra7BzL" role="3cqZAp">
              <node concept="3clFbS" id="27MnIra7BzN" role="3clFbx">
                <node concept="3clFbF" id="QucyCqZ8BW" role="3cqZAp">
                  <node concept="2OqwBi" id="QucyCqZ8NK" role="3clFbG">
                    <node concept="37vLTw" id="QucyCqZ8BU" role="2Oq$k0">
                      <ref role="3cqZAo" node="QucyCqZ7qb" resolve="resp" />
                    </node>
                    <node concept="liA8E" id="QucyCqZ92V" role="2OqNvi">
                      <ref role="37wK5l" to="nwfd:~HttpServletResponse.setStatus(int)" resolve="setStatus" />
                      <node concept="10M0yZ" id="2TMlwYi2sOs" role="37wK5m">
                        <ref role="1PxDUh" to="nwfd:~HttpServletResponse" resolve="HttpServletResponse" />
                        <ref role="3cqZAo" to="nwfd:~HttpServletResponse.SC_OK" resolve="SC_OK" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2TMlwYi2sYV" role="3cqZAp">
                  <node concept="2OqwBi" id="2TMlwYi2tcQ" role="3clFbG">
                    <node concept="37vLTw" id="2TMlwYi2sYT" role="2Oq$k0">
                      <ref role="3cqZAo" node="QucyCqZ7qb" resolve="resp" />
                    </node>
                    <node concept="liA8E" id="2TMlwYi2ts0" role="2OqNvi">
                      <ref role="37wK5l" to="opgt:~ServletResponse.setContentType(java.lang.String)" resolve="setContentType" />
                      <node concept="Xl_RD" id="2TMlwYi2ty4" role="37wK5m">
                        <property role="Xl_RC" value="text/html" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="27MnIra4Hya" role="3cqZAp">
                  <node concept="3cpWsn" id="27MnIra4Hyb" role="3cpWs9">
                    <property role="TrG5h" value="writer" />
                    <node concept="3uibUv" id="27MnIra4Hql" role="1tU5fm">
                      <ref role="3uigEE" to="guwi:~PrintWriter" resolve="PrintWriter" />
                    </node>
                    <node concept="2OqwBi" id="27MnIra4Hyc" role="33vP2m">
                      <node concept="37vLTw" id="27MnIra4Hyd" role="2Oq$k0">
                        <ref role="3cqZAo" node="QucyCqZ7qb" resolve="resp" />
                      </node>
                      <node concept="liA8E" id="27MnIra4Hye" role="2OqNvi">
                        <ref role="37wK5l" to="opgt:~ServletResponse.getWriter()" resolve="getWriter" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="27MnIra5qYY" role="3cqZAp">
                  <node concept="2OqwBi" id="27MnIra5sev" role="3clFbG">
                    <node concept="37vLTw" id="27MnIra5qYW" role="2Oq$k0">
                      <ref role="3cqZAo" node="27MnIra4Hyb" resolve="writer" />
                    </node>
                    <node concept="liA8E" id="27MnIra5tkv" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                      <node concept="Xl_RD" id="27MnIra5tNc" role="37wK5m">
                        <property role="Xl_RC" value="&lt;html&gt;" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="27MnIra5xAK" role="3cqZAp">
                  <node concept="2OqwBi" id="27MnIra5xAL" role="3clFbG">
                    <node concept="37vLTw" id="27MnIra5xAM" role="2Oq$k0">
                      <ref role="3cqZAo" node="27MnIra4Hyb" resolve="writer" />
                    </node>
                    <node concept="liA8E" id="27MnIra5xAN" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                      <node concept="Xl_RD" id="27MnIra5xAO" role="37wK5m">
                        <property role="Xl_RC" value="&lt;body&gt;" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="27MnIra4UQL" role="3cqZAp">
                  <node concept="2OqwBi" id="27MnIra4VWl" role="3clFbG">
                    <node concept="37vLTw" id="27MnIra4UQJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="27MnIra4Hyb" resolve="writer" />
                    </node>
                    <node concept="liA8E" id="27MnIra4WPn" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                      <node concept="Xl_RD" id="27MnIra4XcI" role="37wK5m">
                        <property role="Xl_RC" value="&lt;h1&gt;Diff&lt;/h1&gt;" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="27MnIrabzh7" role="3cqZAp">
                  <node concept="2OqwBi" id="27MnIrabzh8" role="3clFbG">
                    <node concept="37vLTw" id="27MnIrabzh9" role="2Oq$k0">
                      <ref role="3cqZAo" node="27MnIra4Hyb" resolve="writer" />
                    </node>
                    <node concept="liA8E" id="27MnIrabzha" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                      <node concept="Xl_RD" id="27MnIrabzhb" role="37wK5m">
                        <property role="Xl_RC" value="&lt;br/&gt;" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="27MnIragIDT" role="3cqZAp">
                  <node concept="2OqwBi" id="27MnIragIDU" role="3clFbG">
                    <node concept="37vLTw" id="27MnIragIDV" role="2Oq$k0">
                      <ref role="3cqZAo" node="27MnIra4Hyb" resolve="writer" />
                    </node>
                    <node concept="liA8E" id="27MnIragIDW" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                      <node concept="Xl_RD" id="27MnIragIDX" role="37wK5m">
                        <property role="Xl_RC" value="&lt;br/&gt;" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Gpval" id="27MnIra4M7U" role="3cqZAp">
                  <node concept="2GrKxI" id="27MnIra4M7W" role="2Gsz3X">
                    <property role="TrG5h" value="image" />
                  </node>
                  <node concept="2OqwBi" id="2XovqnGES99" role="2GsD0m">
                    <node concept="1rXfSq" id="2_VYLT0nZBZ" role="2Oq$k0">
                      <ref role="37wK5l" node="5qbHjZpKv8N" resolve="futureGet" />
                      <node concept="1rXfSq" id="2XovqnGEQgR" role="37wK5m">
                        <ref role="37wK5l" node="5qbHjZpKv8N" resolve="futureGet" />
                        <node concept="37vLTw" id="2XovqnGX$7n" role="37wK5m">
                          <ref role="3cqZAo" node="2XovqnGVaFY" resolve="images" />
                        </node>
                      </node>
                    </node>
                    <node concept="3goQfb" id="2XovqnGETRJ" role="2OqNvi">
                      <node concept="1bVj0M" id="2XovqnGETRL" role="23t8la">
                        <node concept="3clFbS" id="2XovqnGETRM" role="1bW5cS">
                          <node concept="3clFbF" id="2XovqnGEVzd" role="3cqZAp">
                            <node concept="37vLTw" id="2_VYLT0o46_" role="3clFbG">
                              <ref role="3cqZAo" node="2XovqnGETRN" resolve="it" />
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="2XovqnGETRN" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="2XovqnGETRO" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="27MnIra4M80" role="2LFqv$">
                    <node concept="3clFbF" id="27MnIrabfXr" role="3cqZAp">
                      <node concept="2OqwBi" id="27MnIrabh0p" role="3clFbG">
                        <node concept="37vLTw" id="27MnIrabfXp" role="2Oq$k0">
                          <ref role="3cqZAo" node="27MnIra4Hyb" resolve="writer" />
                        </node>
                        <node concept="liA8E" id="27MnIrabh6b" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                          <node concept="Xl_RD" id="27MnIrabhCf" role="37wK5m">
                            <property role="Xl_RC" value="&lt;h2&gt;" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="27MnIra4OmJ" role="3cqZAp">
                      <node concept="2OqwBi" id="27MnIra54kv" role="3clFbG">
                        <node concept="2OqwBi" id="27MnIra5eIt" role="2Oq$k0">
                          <node concept="2OqwBi" id="27MnIra4P0b" role="2Oq$k0">
                            <node concept="37vLTw" id="27MnIra4OmI" role="2Oq$k0">
                              <ref role="3cqZAo" node="27MnIra4Hyb" resolve="writer" />
                            </node>
                            <node concept="liA8E" id="27MnIra4P$2" role="2OqNvi">
                              <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                              <node concept="2YIFZM" id="27MnIra7jvE" role="37wK5m">
                                <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                                <node concept="2OqwBi" id="27MnIra4ZFZ" role="37wK5m">
                                  <node concept="2GrUjf" id="27MnIra4Zwq" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="27MnIra4M7W" resolve="image" />
                                  </node>
                                  <node concept="liA8E" id="27MnIra50jK" role="2OqNvi">
                                    <ref role="37wK5l" node="27MnIr9YLmJ" resolve="getAffectedFile" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="27MnIra5fHv" role="2OqNvi">
                            <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                            <node concept="Xl_RD" id="27MnIra5gNG" role="37wK5m">
                              <property role="Xl_RC" value=" - " />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="27MnIra55pe" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                          <node concept="2OqwBi" id="27MnIra56Iz" role="37wK5m">
                            <node concept="2GrUjf" id="27MnIra56da" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="27MnIra4M7W" resolve="image" />
                            </node>
                            <node concept="liA8E" id="27MnIra57_c" role="2OqNvi">
                              <ref role="37wK5l" node="27MnIr9YLmR" resolve="getRootNodePresentation" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="27MnIrabiSs" role="3cqZAp">
                      <node concept="2OqwBi" id="27MnIrabjO_" role="3clFbG">
                        <node concept="37vLTw" id="27MnIrabiSq" role="2Oq$k0">
                          <ref role="3cqZAo" node="27MnIra4Hyb" resolve="writer" />
                        </node>
                        <node concept="liA8E" id="27MnIrabjQh" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                          <node concept="Xl_RD" id="27MnIrabkwP" role="37wK5m">
                            <property role="Xl_RC" value="&lt;/h2&gt;" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="27MnIrab52U" role="3cqZAp">
                      <node concept="2OqwBi" id="27MnIrab6cm" role="3clFbG">
                        <node concept="37vLTw" id="27MnIrab52S" role="2Oq$k0">
                          <ref role="3cqZAo" node="27MnIra4Hyb" resolve="writer" />
                        </node>
                        <node concept="liA8E" id="27MnIrab6KO" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                          <node concept="Xl_RD" id="27MnIrab7p_" role="37wK5m">
                            <property role="Xl_RC" value="&lt;div&gt;" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="27MnIrabmtv" role="3cqZAp">
                      <node concept="2OqwBi" id="27MnIracnje" role="3clFbG">
                        <node concept="2OqwBi" id="27MnIracxuC" role="2Oq$k0">
                          <node concept="2OqwBi" id="27MnIrabo5G" role="2Oq$k0">
                            <node concept="2OqwBi" id="27MnIrabpoq" role="2Oq$k0">
                              <node concept="2OqwBi" id="27MnIrabmtw" role="2Oq$k0">
                                <node concept="37vLTw" id="27MnIrabmtx" role="2Oq$k0">
                                  <ref role="3cqZAo" node="27MnIra4Hyb" resolve="writer" />
                                </node>
                                <node concept="liA8E" id="27MnIrabmty" role="2OqNvi">
                                  <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                                  <node concept="Xl_RD" id="27MnIrabmtz" role="37wK5m">
                                    <property role="Xl_RC" value="&lt;img src=\&quot;" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="27MnIrabpEN" role="2OqNvi">
                                <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                                <node concept="2OqwBi" id="27MnIrabqGO" role="37wK5m">
                                  <node concept="2GrUjf" id="27MnIrabqxL" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="27MnIra4M7W" resolve="image" />
                                  </node>
                                  <node concept="liA8E" id="27MnIrabrCs" role="2OqNvi">
                                    <ref role="37wK5l" node="27MnIra9NuW" resolve="getId" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="27MnIraboti" role="2OqNvi">
                              <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                              <node concept="Xl_RD" id="27MnIraclz$" role="37wK5m">
                                <property role="Xl_RC" value=".png\&quot; style=\&quot;height:auto;max-width:100%;width:" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="27MnIracyMi" role="2OqNvi">
                            <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                            <node concept="2YIFZM" id="27MnIracE0_" role="37wK5m">
                              <ref role="37wK5l" to="wyt6:~Integer.toString(int)" resolve="toString" />
                              <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                              <node concept="2OqwBi" id="27MnIrac_SA" role="37wK5m">
                                <node concept="2OqwBi" id="27MnIrac$ry" role="2Oq$k0">
                                  <node concept="2GrUjf" id="27MnIraczNT" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="27MnIra4M7W" resolve="image" />
                                  </node>
                                  <node concept="liA8E" id="27MnIrafUcq" role="2OqNvi">
                                    <ref role="37wK5l" node="27MnIrafpgg" resolve="getSize" />
                                  </node>
                                </node>
                                <node concept="2OwXpG" id="27MnIrafXwx" role="2OqNvi">
                                  <ref role="2Oxat6" to="z60i:~Dimension.width" resolve="width" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="27MnIracoLE" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                          <node concept="Xl_RD" id="27MnIractGg" role="37wK5m">
                            <property role="Xl_RC" value="px\&quot; /&gt;" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="27MnIrab8By" role="3cqZAp">
                      <node concept="2OqwBi" id="27MnIrab9L4" role="3clFbG">
                        <node concept="37vLTw" id="27MnIrab8Bw" role="2Oq$k0">
                          <ref role="3cqZAo" node="27MnIra4Hyb" resolve="writer" />
                        </node>
                        <node concept="liA8E" id="27MnIraba74" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                          <node concept="Xl_RD" id="27MnIrabaD7" role="37wK5m">
                            <property role="Xl_RC" value="&lt;/div&gt;" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="27MnIragMkc" role="3cqZAp">
                      <node concept="2OqwBi" id="27MnIragMkd" role="3clFbG">
                        <node concept="37vLTw" id="27MnIragMke" role="2Oq$k0">
                          <ref role="3cqZAo" node="27MnIra4Hyb" resolve="writer" />
                        </node>
                        <node concept="liA8E" id="27MnIragMkf" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                          <node concept="Xl_RD" id="27MnIragMkg" role="37wK5m">
                            <property role="Xl_RC" value="&lt;br/&gt;" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="27MnIragNZE" role="3cqZAp">
                      <node concept="2OqwBi" id="27MnIragNZF" role="3clFbG">
                        <node concept="37vLTw" id="27MnIragNZG" role="2Oq$k0">
                          <ref role="3cqZAo" node="27MnIra4Hyb" resolve="writer" />
                        </node>
                        <node concept="liA8E" id="27MnIragNZH" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                          <node concept="Xl_RD" id="27MnIragNZI" role="37wK5m">
                            <property role="Xl_RC" value="&lt;br/&gt;" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="27MnIrah9Ee" role="3cqZAp">
                      <node concept="2OqwBi" id="27MnIrah9Ef" role="3clFbG">
                        <node concept="37vLTw" id="27MnIrah9Eg" role="2Oq$k0">
                          <ref role="3cqZAo" node="27MnIra4Hyb" resolve="writer" />
                        </node>
                        <node concept="liA8E" id="27MnIrah9Eh" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                          <node concept="Xl_RD" id="27MnIrah9Ei" role="37wK5m">
                            <property role="Xl_RC" value="&lt;br/&gt;" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="27MnIra5ycA" role="3cqZAp">
                  <node concept="2OqwBi" id="27MnIra5ycB" role="3clFbG">
                    <node concept="37vLTw" id="27MnIra5ycC" role="2Oq$k0">
                      <ref role="3cqZAo" node="27MnIra4Hyb" resolve="writer" />
                    </node>
                    <node concept="liA8E" id="27MnIra5ycD" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                      <node concept="Xl_RD" id="27MnIra5ycE" role="37wK5m">
                        <property role="Xl_RC" value="&lt;/body&gt;" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="27MnIra5uvM" role="3cqZAp">
                  <node concept="2OqwBi" id="27MnIra5uvN" role="3clFbG">
                    <node concept="37vLTw" id="27MnIra5uvO" role="2Oq$k0">
                      <ref role="3cqZAo" node="27MnIra4Hyb" resolve="writer" />
                    </node>
                    <node concept="liA8E" id="27MnIra5uvP" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~PrintWriter.append(java.lang.CharSequence)" resolve="append" />
                      <node concept="Xl_RD" id="27MnIra5uvQ" role="37wK5m">
                        <property role="Xl_RC" value="&lt;/html&gt;" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="27MnIrabPiT" role="3cqZAp" />
              </node>
              <node concept="17R0WA" id="27MnIra7Efr" role="3clFbw">
                <node concept="Xl_RD" id="27MnIra7FjP" role="3uHU7w">
                  <property role="Xl_RC" value="/" />
                </node>
                <node concept="37vLTw" id="27MnIra7CPl" role="3uHU7B">
                  <ref role="3cqZAo" node="27MnIra7wFS" resolve="pathInfo" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="27MnIrabQWM" role="3cqZAp" />
            <node concept="3cpWs8" id="27MnIrabN$Y" role="3cqZAp">
              <node concept="3cpWsn" id="27MnIrabN$Z" role="3cpWs9">
                <property role="TrG5h" value="image" />
                <node concept="3uibUv" id="27MnIrabN$9" role="1tU5fm">
                  <ref role="3uigEE" node="27MnIr9Ypso" resolve="DiffImage" />
                </node>
                <node concept="2OqwBi" id="27MnIrabN_0" role="33vP2m">
                  <node concept="1z4cxt" id="27MnIrabN_2" role="2OqNvi">
                    <node concept="1bVj0M" id="27MnIrabN_3" role="23t8la">
                      <node concept="3clFbS" id="27MnIrabN_4" role="1bW5cS">
                        <node concept="3clFbF" id="27MnIrabN_5" role="3cqZAp">
                          <node concept="17R0WA" id="27MnIrabN_6" role="3clFbG">
                            <node concept="37vLTw" id="27MnIrabN_7" role="3uHU7w">
                              <ref role="3cqZAo" node="27MnIra7wFS" resolve="pathInfo" />
                            </node>
                            <node concept="3cpWs3" id="27MnIrabN_8" role="3uHU7B">
                              <node concept="3cpWs3" id="27MnIrabN_9" role="3uHU7B">
                                <node concept="Xl_RD" id="27MnIrabN_a" role="3uHU7B">
                                  <property role="Xl_RC" value="/" />
                                </node>
                                <node concept="2OqwBi" id="27MnIrabN_b" role="3uHU7w">
                                  <node concept="37vLTw" id="27MnIrabN_c" role="2Oq$k0">
                                    <ref role="3cqZAo" node="27MnIrabN_f" resolve="it" />
                                  </node>
                                  <node concept="liA8E" id="27MnIrabN_d" role="2OqNvi">
                                    <ref role="37wK5l" node="27MnIra9NuW" resolve="getId" />
                                  </node>
                                </node>
                              </node>
                              <node concept="Xl_RD" id="27MnIrabN_e" role="3uHU7w">
                                <property role="Xl_RC" value=".png" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="27MnIrabN_f" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="27MnIrabN_g" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2_VYLT0o72k" role="2Oq$k0">
                    <node concept="1rXfSq" id="2_VYLT0o72l" role="2Oq$k0">
                      <ref role="37wK5l" node="5qbHjZpKv8N" resolve="futureGet" />
                      <node concept="1rXfSq" id="2_VYLT0o72m" role="37wK5m">
                        <ref role="37wK5l" node="5qbHjZpKv8N" resolve="futureGet" />
                        <node concept="37vLTw" id="2_VYLT0o72n" role="37wK5m">
                          <ref role="3cqZAo" node="2XovqnGVaFY" resolve="images" />
                        </node>
                      </node>
                    </node>
                    <node concept="3goQfb" id="2_VYLT0o72o" role="2OqNvi">
                      <node concept="1bVj0M" id="2_VYLT0o72p" role="23t8la">
                        <node concept="3clFbS" id="2_VYLT0o72q" role="1bW5cS">
                          <node concept="3clFbF" id="2_VYLT0o72r" role="3cqZAp">
                            <node concept="37vLTw" id="2_VYLT0o72s" role="3clFbG">
                              <ref role="3cqZAo" node="2_VYLT0o72t" resolve="it" />
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="2_VYLT0o72t" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="2_VYLT0o72u" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="27MnIrabU0i" role="3cqZAp">
              <node concept="3clFbS" id="27MnIrabU0k" role="3clFbx">
                <node concept="3clFbF" id="27MnIrac3W1" role="3cqZAp">
                  <node concept="2OqwBi" id="27MnIrac4rn" role="3clFbG">
                    <node concept="37vLTw" id="27MnIrac3VZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="QucyCqZ7qb" resolve="resp" />
                    </node>
                    <node concept="liA8E" id="27MnIrac4B6" role="2OqNvi">
                      <ref role="37wK5l" to="nwfd:~HttpServletResponse.setStatus(int)" resolve="setStatus" />
                      <node concept="10M0yZ" id="27MnIrac5p7" role="37wK5m">
                        <ref role="3cqZAo" to="nwfd:~HttpServletResponse.SC_OK" resolve="SC_OK" />
                        <ref role="1PxDUh" to="nwfd:~HttpServletResponse" resolve="HttpServletResponse" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="27MnIrac2vR" role="3cqZAp">
                  <node concept="2OqwBi" id="27MnIrac2YM" role="3clFbG">
                    <node concept="37vLTw" id="27MnIrac2vP" role="2Oq$k0">
                      <ref role="3cqZAo" node="QucyCqZ7qb" resolve="resp" />
                    </node>
                    <node concept="liA8E" id="27MnIrac396" role="2OqNvi">
                      <ref role="37wK5l" to="opgt:~ServletResponse.setContentType(java.lang.String)" resolve="setContentType" />
                      <node concept="Xl_RD" id="27MnIrac3uv" role="37wK5m">
                        <property role="Xl_RC" value="image/png" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="27MnIrac7bo" role="3cqZAp">
                  <node concept="2YIFZM" id="27MnIrac7e_" role="3clFbG">
                    <ref role="1Pybhc" to="oqcp:~ImageIO" resolve="ImageIO" />
                    <ref role="37wK5l" to="oqcp:~ImageIO.write(java.awt.image.RenderedImage,java.lang.String,java.io.OutputStream)" resolve="write" />
                    <node concept="2OqwBi" id="27MnIrac7CR" role="37wK5m">
                      <node concept="37vLTw" id="27MnIrac7$p" role="2Oq$k0">
                        <ref role="3cqZAo" node="27MnIrabN$Z" resolve="image" />
                      </node>
                      <node concept="liA8E" id="27MnIrac7Ly" role="2OqNvi">
                        <ref role="37wK5l" node="27MnIr9YLmB" resolve="getImage" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="27MnIrac8bw" role="37wK5m">
                      <property role="Xl_RC" value="png" />
                    </node>
                    <node concept="2OqwBi" id="27MnIrac8ws" role="37wK5m">
                      <node concept="37vLTw" id="27MnIrac8wt" role="2Oq$k0">
                        <ref role="3cqZAo" node="QucyCqZ7qb" resolve="resp" />
                      </node>
                      <node concept="liA8E" id="27MnIrac8wu" role="2OqNvi">
                        <ref role="37wK5l" to="opgt:~ServletResponse.getOutputStream()" resolve="getOutputStream" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="2XovqnGLybg" role="3cqZAp" />
              </node>
              <node concept="3y3z36" id="27MnIrabWbs" role="3clFbw">
                <node concept="10Nm6u" id="27MnIrabX$$" role="3uHU7w" />
                <node concept="37vLTw" id="27MnIrabV$_" role="3uHU7B">
                  <ref role="3cqZAo" node="27MnIrabN$Z" resolve="image" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="27MnIra7zPg" role="3cqZAp" />
            <node concept="3clFbF" id="27MnIrabYSL" role="3cqZAp">
              <node concept="2OqwBi" id="27MnIrac0Bb" role="3clFbG">
                <node concept="37vLTw" id="27MnIrabYSJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="QucyCqZ7qb" resolve="resp" />
                </node>
                <node concept="liA8E" id="27MnIrac1mB" role="2OqNvi">
                  <ref role="37wK5l" to="nwfd:~HttpServletResponse.setStatus(int)" resolve="setStatus" />
                  <node concept="10M0yZ" id="27MnIrac276" role="37wK5m">
                    <ref role="3cqZAo" to="nwfd:~HttpServletResponse.SC_NOT_FOUND" resolve="SC_NOT_FOUND" />
                    <ref role="1PxDUh" to="nwfd:~HttpServletResponse" resolve="HttpServletResponse" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="QucyCqZ7qg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="27MnIra3HRd" role="jymVt" />
    <node concept="2YIFZL" id="5qbHjZpKv8N" role="jymVt">
      <property role="TrG5h" value="futureGet" />
      <node concept="3clFbS" id="27MnIra4ooy" role="3clF47">
        <node concept="3J1_TO" id="27MnIra4utx" role="3cqZAp">
          <node concept="3clFbS" id="27MnIra4uty" role="1zxBo7">
            <node concept="3cpWs6" id="27MnIra4yJb" role="3cqZAp">
              <node concept="2OqwBi" id="27MnIra4yJd" role="3cqZAk">
                <node concept="37vLTw" id="27MnIra4yJe" role="2Oq$k0">
                  <ref role="3cqZAo" node="27MnIra4pvq" resolve="future" />
                </node>
                <node concept="liA8E" id="27MnIra4yJf" role="2OqNvi">
                  <ref role="37wK5l" to="5zyv:~Future.get(long,java.util.concurrent.TimeUnit)" resolve="get" />
                  <node concept="3cmrfG" id="27MnIra4yJg" role="37wK5m">
                    <property role="3cmrfH" value="25" />
                  </node>
                  <node concept="Rm8GO" id="27MnIra4yJh" role="37wK5m">
                    <ref role="Rm8GQ" to="5zyv:~TimeUnit.SECONDS" resolve="SECONDS" />
                    <ref role="1Px2BO" to="5zyv:~TimeUnit" resolve="TimeUnit" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="27MnIra4ut$" role="1zxBo5">
            <node concept="3clFbS" id="27MnIra4ut_" role="1zc67A">
              <node concept="YS8fn" id="27MnIra4uZK" role="3cqZAp">
                <node concept="2ShNRf" id="27MnIra4vk$" role="YScLw">
                  <node concept="1pGfFk" id="27MnIra4xlE" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="27MnIra4xGJ" role="37wK5m">
                      <ref role="3cqZAo" node="27MnIra4utA" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="27MnIra4utA" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="27MnIra4utB" role="1tU5fm">
                <node concept="3uibUv" id="27MnIra4utz" role="nSUat">
                  <ref role="3uigEE" to="5zyv:~ExecutionException" resolve="ExecutionException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="27MnIra4utD" role="1zxBo5">
            <node concept="3clFbS" id="27MnIra4utE" role="1zc67A">
              <node concept="YS8fn" id="27MnIra4y1a" role="3cqZAp">
                <node concept="2ShNRf" id="27MnIra4y1b" role="YScLw">
                  <node concept="1pGfFk" id="27MnIra4y1c" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="27MnIra4y1d" role="37wK5m">
                      <ref role="3cqZAo" node="27MnIra4utF" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="27MnIra4utF" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="27MnIra4utG" role="1tU5fm">
                <node concept="3uibUv" id="27MnIra4utC" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="27MnIra4utI" role="1zxBo5">
            <node concept="3clFbS" id="27MnIra4utJ" role="1zc67A">
              <node concept="YS8fn" id="27MnIra4y0Y" role="3cqZAp">
                <node concept="2ShNRf" id="27MnIra4y0Z" role="YScLw">
                  <node concept="1pGfFk" id="27MnIra4y10" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="27MnIra4y11" role="37wK5m">
                      <ref role="3cqZAo" node="27MnIra4utK" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="27MnIra4utK" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="27MnIra4utL" role="1tU5fm">
                <node concept="3uibUv" id="27MnIra4utH" role="nSUat">
                  <ref role="3uigEE" to="5zyv:~TimeoutException" resolve="TimeoutException" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="27MnIra4pvq" role="3clF46">
        <property role="TrG5h" value="future" />
        <node concept="3uibUv" id="27MnIra4q2u" role="1tU5fm">
          <ref role="3uigEE" to="5zyv:~Future" resolve="Future" />
          <node concept="16syzq" id="27MnIra4qIo" role="11_B2D">
            <ref role="16sUi3" node="27MnIra4q3g" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="27MnIra4qQO" role="3clF45">
        <ref role="16sUi3" node="27MnIra4q3g" resolve="T" />
      </node>
      <node concept="16euLQ" id="27MnIra4q3g" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="3Tm1VV" id="27MnIra4oox" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="27MnIra3H8U" role="1B3o_S" />
    <node concept="3uibUv" id="27MnIra3HfJ" role="1zkMxy">
      <ref role="3uigEE" to="nwfd:~HttpServlet" resolve="HttpServlet" />
    </node>
  </node>
  <node concept="312cEu" id="4bv8_gxi_fG">
    <property role="TrG5h" value="HeadlessDividerPainter" />
    <node concept="312cEg" id="4bv8_gxi_uM" role="jymVt">
      <property role="TrG5h" value="rootDifferencePane" />
      <node concept="3Tm6S6" id="4bv8_gxi_uN" role="1B3o_S" />
      <node concept="3uibUv" id="4bv8_gxi_Dx" role="1tU5fm">
        <ref role="3uigEE" to="p37l:7DvDtq9MCV9" resolve="RootDifferencePane" />
      </node>
    </node>
    <node concept="2tJIrI" id="4bv8_gxi_oJ" role="jymVt" />
    <node concept="3Tm1VV" id="4bv8_gxi_fH" role="1B3o_S" />
    <node concept="3uibUv" id="4bv8_gxi_jA" role="EKbjA">
      <ref role="3uigEE" to="ksd0:~DiffSplitter$Painter" resolve="DiffSplitter.Painter" />
    </node>
    <node concept="3clFbW" id="4bv8_gxkLFo" role="jymVt">
      <node concept="3cqZAl" id="4bv8_gxkLFp" role="3clF45" />
      <node concept="3Tm1VV" id="4bv8_gxkLFq" role="1B3o_S" />
      <node concept="3clFbS" id="4bv8_gxkLFs" role="3clF47">
        <node concept="3clFbF" id="4bv8_gxkLFw" role="3cqZAp">
          <node concept="37vLTI" id="4bv8_gxkLFy" role="3clFbG">
            <node concept="2OqwBi" id="4bv8_gxkLFA" role="37vLTJ">
              <node concept="Xjq3P" id="4bv8_gxkLFB" role="2Oq$k0" />
              <node concept="2OwXpG" id="4bv8_gxkLFC" role="2OqNvi">
                <ref role="2Oxat6" node="4bv8_gxi_uM" resolve="rootDifferencePane" />
              </node>
            </node>
            <node concept="37vLTw" id="4bv8_gxkLFD" role="37vLTx">
              <ref role="3cqZAo" node="4bv8_gxkLFv" resolve="rootDifferencePane" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4bv8_gxkLFv" role="3clF46">
        <property role="TrG5h" value="rootDifferencePane" />
        <node concept="3uibUv" id="4bv8_gxkLFu" role="1tU5fm">
          <ref role="3uigEE" to="p37l:7DvDtq9MCV9" resolve="RootDifferencePane" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4bv8_gxkLXJ" role="jymVt" />
    <node concept="3clFb_" id="4bv8_gxi_k0" role="jymVt">
      <property role="TrG5h" value="paint" />
      <node concept="3Tm1VV" id="4bv8_gxi_k1" role="1B3o_S" />
      <node concept="3cqZAl" id="4bv8_gxi_k3" role="3clF45" />
      <node concept="37vLTG" id="4bv8_gxi_k4" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="4bv8_gxi_k5" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
        <node concept="2AHcQZ" id="4bv8_gxi_k6" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4bv8_gxi_k7" role="3clF46">
        <property role="TrG5h" value="divider" />
        <node concept="3uibUv" id="4bv8_gxi_k8" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
        </node>
        <node concept="2AHcQZ" id="4bv8_gxi_k9" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4bv8_gxi_ka" role="3clF47">
        <node concept="3cpWs8" id="4bv8_gxiGet" role="3cqZAp">
          <node concept="3cpWsn" id="4bv8_gxiGeu" role="3cpWs9">
            <property role="TrG5h" value="layout" />
            <node concept="3uibUv" id="4bv8_gxiG7F" role="1tU5fm">
              <ref role="3uigEE" to="hdhb:1zZcg$udfju" resolve="TripleChangeGroupLayout" />
            </node>
            <node concept="2OqwBi" id="4bv8_gxiGev" role="33vP2m">
              <node concept="37vLTw" id="4bv8_gxiGew" role="2Oq$k0">
                <ref role="3cqZAo" node="4bv8_gxi_uM" resolve="rootDifferencePane" />
              </node>
              <node concept="1PnCL0" id="4bv8_gxiGex" role="2OqNvi">
                <ref role="2Oxat5" to="p37l:1zZcg$v3iuq" resolve="myMainLayout" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4bv8_gxiVsZ" role="3cqZAp" />
        <node concept="3cpWs8" id="4bv8_gxiQT7" role="3cqZAp">
          <node concept="3cpWsn" id="4bv8_gxiQT8" role="3cpWs9">
            <property role="TrG5h" value="leftEditor" />
            <node concept="3uibUv" id="4bv8_gxiNRD" role="1tU5fm">
              <ref role="3uigEE" to="hdhb:42hl10VHay4" resolve="DiffEditor" />
            </node>
            <node concept="2OqwBi" id="4bv8_gxiQT9" role="33vP2m">
              <node concept="37vLTw" id="4bv8_gxiQTa" role="2Oq$k0">
                <ref role="3cqZAo" node="4bv8_gxi_uM" resolve="rootDifferencePane" />
              </node>
              <node concept="1PnCL0" id="4bv8_gxiQTb" role="2OqNvi">
                <ref role="2Oxat5" to="p37l:7DvDtqax92K" resolve="myOldEditor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4bv8_gxiRbO" role="3cqZAp">
          <node concept="3cpWsn" id="4bv8_gxiRbP" role="3cpWs9">
            <property role="TrG5h" value="rightEditor" />
            <node concept="3uibUv" id="4bv8_gxiR9_" role="1tU5fm">
              <ref role="3uigEE" to="hdhb:42hl10VHay4" resolve="DiffEditor" />
            </node>
            <node concept="2OqwBi" id="4bv8_gxiRbQ" role="33vP2m">
              <node concept="37vLTw" id="4bv8_gxiRbR" role="2Oq$k0">
                <ref role="3cqZAo" node="4bv8_gxi_uM" resolve="rootDifferencePane" />
              </node>
              <node concept="1PnCL0" id="4bv8_gxiRbS" role="2OqNvi">
                <ref role="2Oxat5" to="p37l:7DvDtqax92N" resolve="myNewEditor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4bv8_gxjA$M" role="3cqZAp" />
        <node concept="3cpWs8" id="4bv8_gxkavJ" role="3cqZAp">
          <node concept="3cpWsn" id="4bv8_gxkavK" role="3cpWs9">
            <property role="TrG5h" value="offsetY" />
            <node concept="10Oyi0" id="4bv8_gxkamX" role="1tU5fm" />
            <node concept="3cpWsd" id="4bv8_gxkavL" role="33vP2m">
              <node concept="2OqwBi" id="4bv8_gxkavM" role="3uHU7B">
                <node concept="2OqwBi" id="4bv8_gxkavN" role="2Oq$k0">
                  <node concept="37vLTw" id="4bv8_gxkavO" role="2Oq$k0">
                    <ref role="3cqZAo" node="4bv8_gxiQT8" resolve="leftEditor" />
                  </node>
                  <node concept="liA8E" id="4bv8_gxkavP" role="2OqNvi">
                    <ref role="37wK5l" to="hdhb:4FJKT$Leixn" resolve="getComponent" />
                    <node concept="3clFbT" id="4bv8_gxkavQ" role="37wK5m" />
                  </node>
                </node>
                <node concept="liA8E" id="4bv8_gxkavR" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.getY()" resolve="getY" />
                </node>
              </node>
              <node concept="2OqwBi" id="4bv8_gxkavS" role="3uHU7w">
                <node concept="37vLTw" id="4bv8_gxkavT" role="2Oq$k0">
                  <ref role="3cqZAo" node="4bv8_gxi_k7" resolve="divider" />
                </node>
                <node concept="liA8E" id="4bv8_gxkavU" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.getY()" resolve="getY" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4bv8_gxk3dO" role="3cqZAp" />
        <node concept="3cpWs8" id="4bv8_gxiGSj" role="3cqZAp">
          <node concept="3cpWsn" id="4bv8_gxiGSk" role="3cpWs9">
            <property role="TrG5h" value="gg" />
            <node concept="3uibUv" id="4bv8_gxiGSl" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
            </node>
            <node concept="10QFUN" id="4bv8_gxj3MW" role="33vP2m">
              <node concept="2OqwBi" id="4bv8_gxj3MI" role="10QFUP">
                <node concept="37vLTw" id="4bv8_gxj3MJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="4bv8_gxi_k4" resolve="g" />
                </node>
                <node concept="liA8E" id="4bv8_gxj3MK" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.create(int,int,int,int)" resolve="create" />
                  <node concept="3cmrfG" id="4bv8_gxj3ML" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="4bv8_gxkbiq" role="37wK5m">
                    <ref role="3cqZAo" node="4bv8_gxkavK" resolve="offsetY" />
                  </node>
                  <node concept="2OqwBi" id="4bv8_gxj3MN" role="37wK5m">
                    <node concept="37vLTw" id="4bv8_gxj3MO" role="2Oq$k0">
                      <ref role="3cqZAo" node="4bv8_gxi_k7" resolve="divider" />
                    </node>
                    <node concept="liA8E" id="4bv8_gxj3MP" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~JComponent.getWidth()" resolve="getWidth" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4bv8_gxj3MQ" role="37wK5m">
                    <node concept="2OqwBi" id="4bv8_gxj3MR" role="2Oq$k0">
                      <node concept="37vLTw" id="4bv8_gxj3MS" role="2Oq$k0">
                        <ref role="3cqZAo" node="4bv8_gxiQT8" resolve="leftEditor" />
                      </node>
                      <node concept="liA8E" id="4bv8_gxj3MT" role="2OqNvi">
                        <ref role="37wK5l" to="hdhb:4FJKT$Leixn" resolve="getComponent" />
                        <node concept="3clFbT" id="4bv8_gxj3MU" role="37wK5m" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4bv8_gxj3MV" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~JComponent.getHeight()" resolve="getHeight" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="4bv8_gxj3MH" role="10QFUM">
                <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="4bv8_gxj6xh" role="3cqZAp">
          <node concept="3clFbS" id="4bv8_gxj6xj" role="1zxBo7">
            <node concept="3clFbF" id="4bv8_gxiIto" role="3cqZAp">
              <node concept="2OqwBi" id="4bv8_gxiIQX" role="3clFbG">
                <node concept="37vLTw" id="4bv8_gxiItm" role="2Oq$k0">
                  <ref role="3cqZAo" node="4bv8_gxiGSk" resolve="gg" />
                </node>
                <node concept="liA8E" id="4bv8_gxiJ3I" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                  <node concept="2YIFZM" id="4bv8_gxiLqf" role="37wK5m">
                    <ref role="37wK5l" to="xo69:~DiffDrawUtil.getDividerColor()" resolve="getDividerColor" />
                    <ref role="1Pybhc" to="xo69:~DiffDrawUtil" resolve="DiffDrawUtil" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4bv8_gxiLIC" role="3cqZAp">
              <node concept="2OqwBi" id="4bv8_gxiM8C" role="3clFbG">
                <node concept="37vLTw" id="4bv8_gxiLIA" role="2Oq$k0">
                  <ref role="3cqZAo" node="4bv8_gxiGSk" resolve="gg" />
                </node>
                <node concept="liA8E" id="4bv8_gxiMmI" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Graphics2D.fill(java.awt.Shape)" resolve="fill" />
                  <node concept="2OqwBi" id="4bv8_gxiMWu" role="37wK5m">
                    <node concept="37vLTw" id="4bv8_gxiMAc" role="2Oq$k0">
                      <ref role="3cqZAo" node="4bv8_gxiGSk" resolve="gg" />
                    </node>
                    <node concept="liA8E" id="4bv8_gxiMZP" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Graphics.getClipBounds()" resolve="getClipBounds" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4bv8_gxiU7Q" role="3cqZAp">
              <node concept="2OqwBi" id="4bv8_gxiUNs" role="3clFbG">
                <node concept="37vLTw" id="4bv8_gxiU7O" role="2Oq$k0">
                  <ref role="3cqZAo" node="4bv8_gxiGeu" resolve="layout" />
                </node>
                <node concept="1PvZjq" id="4bv8_gxiV6v" role="2OqNvi">
                  <ref role="37wK5l" to="hdhb:6GIMOf7VJho" resolve="paintPolygons" />
                  <node concept="37vLTw" id="4bv8_gxiV9b" role="37wK5m">
                    <ref role="3cqZAo" node="4bv8_gxiGSk" resolve="gg" />
                  </node>
                  <node concept="2OqwBi" id="4bv8_gxiV9c" role="37wK5m">
                    <node concept="37vLTw" id="4bv8_gxiV9d" role="2Oq$k0">
                      <ref role="3cqZAo" node="4bv8_gxi_k7" resolve="divider" />
                    </node>
                    <node concept="liA8E" id="4bv8_gxiV9e" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~JComponent.getWidth()" resolve="getWidth" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4bv8_gxiV9f" role="37wK5m">
                    <ref role="3cqZAo" node="4bv8_gxiQT8" resolve="leftEditor" />
                  </node>
                  <node concept="37vLTw" id="4bv8_gxiV9g" role="37wK5m">
                    <ref role="3cqZAo" node="4bv8_gxiRbP" resolve="rightEditor" />
                  </node>
                  <node concept="3clFbT" id="4bv8_gxiV9h" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="4bv8_gxj6Fc" role="1zxBo6">
            <node concept="3clFbS" id="4bv8_gxj6Fd" role="1wplMD">
              <node concept="3clFbF" id="4bv8_gxj52i" role="3cqZAp">
                <node concept="2OqwBi" id="4bv8_gxj5q6" role="3clFbG">
                  <node concept="37vLTw" id="4bv8_gxj52g" role="2Oq$k0">
                    <ref role="3cqZAo" node="4bv8_gxiGSk" resolve="gg" />
                  </node>
                  <node concept="liA8E" id="4bv8_gxj5v4" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.dispose()" resolve="dispose" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4bv8_gxi_kb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

